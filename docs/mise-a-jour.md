# Le fork, et comment le maintenir

## Pourquoi un fork

Le launcher Ascension restaure sa version des addons qu'il gère à chaque lancement du jeu. Il ne touche jamais aux addons tiers — sur une installation typique, WeakAuras, DBM ou Bagnon gardent des dates de fichiers vieilles de plusieurs mois, alors que VuhDo est réécrit à chaque démarrage.

Il suffit donc de faire tourner l'addon sous un nom que le launcher ne connaît pas :

| Origine | Fork |
|---|---|
| `VuhDo` | `VuhDoNaga` |
| `VuhDoOptions` | `VuhDoNagaOptions` |

Les originaux restent en place, **désactivés**. Le launcher peut continuer à les mettre à jour, sans aucun effet.

## Les quatre points qui font échouer un simple renommage

**1. Le `.toc` doit porter le nom du dossier.** `VuhDo.toc` → `VuhDoNaga.toc`.

**2. Les chemins en dur.** Une soixantaine de références à `Interface\AddOns\VuhDo\` (polices, images, textures) sont réparties dans une dizaine de fichiers. Piège : dans les `.lua`, les backslashes sont **échappés**.

```lua
["font"] = "Interface\\AddOns\\VuhDo\\Fonts\\ariblk.ttf",
```

Un remplacement sur simple backslash ne trouve que les `.xml` et laisse l'addon sans aucun graphisme. Il faut traiter les deux formes, et commencer par la plus spécifique (`VuhDoOptions` avant `VuhDo`).

**3. La dépendance du panneau d'options.** Dans `VuhDoNagaOptions.toc` :

```
## Dependencies: VuhDo   →   ## Dependencies: VuhDoNaga
```

Sans ça, le panneau d'options refuse de se charger.

**4. Les `SavedVariables` sont nommés d'après l'addon.** Il faut copier `VuhDo.lua` → `VuhDoNaga.lua` (et l'équivalent Options) dans **chaque** dossier `SavedVariables` — au niveau compte et au niveau personnage — sinon le fork démarre avec une configuration vierge.

Enfin, passer `VuhDo` et `VuhDoOptions` en `disabled` dans les `AddOns.txt`. Les deux versions chargées simultanément partageraient les variables globales `VUHDO_*`.

## Quand Ascension met VuhDo à jour

Rien n'est cassé si vous ne faites rien : le fork continue de tourner sur son ancienne version. Ne bougez que si vous voulez la mise à jour.

1. Fermer le jeu
2. Lancer le launcher pour qu'il télécharge le nouveau VuhDo
3. Fermer le jeu à nouveau
4. Lancer `scripts/Refaire-Fork.ps1`

Le script compare l'empreinte de `VuhDoKeySetup.lua` avec celle attendue :

- **inchangée** → il recopie le fichier patché tel quel, rien d'autre à faire
- **modifiée** → il refuse de le recopier et vous prévient. Il faut alors rejouer les quatre modifications ci-dessous sur la nouvelle version.

## Les quatre modifications du patch

Un seul fichier est concerné : `VuhDoKeySetup.lua`.

### A — Bloc d'en-tête

Après `VUHDO_FAST_ACCESS_ACTIONS = { };`, ajouter :

- `VUHDO_NAGA_KEY_SPELLS` — les 12 sorts, noms **anglais**
- `VUHDO_NAGA_PHYSICAL_KEYS` — `{ "1".."9", "0", ")", "=" }` en AZERTY
- `VUHDO_NAGA_CLICK_IDS` — `{ "w5".."w16" }`, série déjà employée par VuhDo pour la molette
- `VUHDO_NAGA_BINDING_LINES` — une ligne `SetBindingClick` pré-calculée par slot
- `VUHDO_nagaIsKnown(nom)` — lit le grimoire via `GetSpellName(i,"spell")`, avec cache

> Ne pas utiliser `GetSpellInfo` comme filtre : elle répond pour tout sort existant du jeu, même non appris. Les mots-clés `target` / `assist` / `focus` doivent contourner le filtre, ce ne sont pas des sorts.

### B — Boucle d'assignation

Dans `VUHDO_setupAllHealButtonAttributes`, juste avant le bloc `-- Tooltips and stuff for raid members only`, ajouter la boucle qui construit `tNagaSnippet` et assigne les sorts. Ses gardes sont **obligatoires** :

```lua
not anIsDisable and not anIsTgButton
and VUHDO_BUTTON_CACHE[aButton] ~= nil
and aButton["target"] ~= "focus" and aButton["target"] ~= "target"
```

Sans elles, VuhDo cherche `VUHDO_HOSTILE_SPELL_ASSIGNMENTS[<id>]`, qui n'existe pas pour ces identifiants, et lève une erreur Lua sur les boutons cible/focus.

### C — Le tiret (le point le plus piégeux)

L'assignation doit porter sur l'identifiant **préfixé d'un tiret** :

```lua
VUHDO_setupHealButtonAttributes("", "-" .. id, sort, aButton, false)
```

`SecureButton_GetButtonSuffix()` renvoie `"-"..bouton` pour tout nom non standard : un clic sur `w5` fait chercher `type-w5`, pas `typew5`. En revanche `SetBindingClick` reçoit le nom **sans** tiret.

Symptôme si on l'oublie : la touche est bien capturée au survol (la barre d'action ne répond plus), mais aucune action ne part.

### D — Injection dans `_onenter`

Dans les **deux** branches qui posent l'attribut `_onenter` (avec et sans molette), remplacer :

```lua
]=]);
```

par :

```lua
]=] .. tNagaSnippet);
```

## Tout annuler

Jeu fermé : supprimer `VuhDoNaga` et `VuhDoNagaOptions`, repasser `VuhDo` et `VuhDoOptions` en `enabled` dans les `AddOns.txt`. La configuration d'origine n'a jamais été modifiée.
