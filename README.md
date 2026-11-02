# 🧩 ModProd APK Creator

Crée une appli Android à partir d'une page HTML, **sur le téléphone**, sans recompiler à la main :
l'**APK de base** ModProd + le patch **« ModProd App »** pour Morphe Manager.

Ajouter les patches à Morphe Manager :
👉 https://morphe.software/add-source?github=MOD-PROD/modprod-apk-creator

## 📦 Contenu du dépôt

| Dossier | Rôle |
|---|---|
| `base-app/apk-src/` | Sources de l'APK de base (format **Apktool M** : smali, manifeste, res, assets). Modifiables sur le téléphone. |
| `patches/` | Projet Morphe : le patch **ModProd App** (Kotlin). |
| `docs/` | Documentation : [créer une appli](docs/CREER-UNE-APPLI.md), [APK de base](docs/APK-DE-BASE.md). |
| `.github/workflows/base-apk.yml` | Compile l'APK de base → release [**base-apk**](https://github.com/MOD-PROD/modprod-apk-creator/releases/tag/base-apk). |
| `.github/workflows/release.yml` | Compile les patches → release `vX.Y.Z` (fichier `.mpp`) lue par Morphe Manager. |

## 🚀 Créer une appli en 4 étapes

1. Télécharger **`modprod-base.apk`** depuis la release [base-apk](https://github.com/MOD-PROD/modprod-apk-creator/releases/tag/base-apk).
2. Dans **Morphe Manager** : ajouter la source ci-dessus, puis choisir l'APK de base depuis le stockage.
3. Patch **ModProd App** → remplir les options :
   - **Nom de l'appli** (obligatoire)
   - **Nom de package** (obligatoire, unique par appli, ex. `com.modprod.quantix`)
   - **Dossier de l'appli HTML** : dossier contenant la page `.html` (et ses images, css, js)
   - **Fichier de configuration** (`.js`, facultatif), **Icône** (`.png` carré, facultatif)
   - **Version (nom / code)** (facultatif)
4. Lancer le patch → installer l'appli créée.

Détails : [docs/CREER-UNE-APPLI.md](docs/CREER-UNE-APPLI.md).

## 🩹 Patches

<!-- PATCHES_START EXPANDED -->
> **[v1.0.1](https://github.com/MOD-PROD/modprod-apk-creator/releases/tag/v1.0.1)**&nbsp;&nbsp;•&nbsp;&nbsp;`main`&nbsp;&nbsp;•&nbsp;&nbsp;1 patches total
<details open>
<summary>📦 ModProd APK Base&nbsp;&nbsp;•&nbsp;&nbsp;1 patch</summary>
<br>

| 💊&nbsp;Patch | 📜&nbsp;Description | ⚙️&nbsp;Options |
|----------|----------------|-----------|
| [ModProd App](#modprod-app) | Transforme l'APK de base en une nouvelle appli : nom, nom de package, page HTML, configuration, icône et version. | • Nom de l'appli<br>• Nom de package<br>• Dossier de l'appli HTML<br>• Fichier de configuration<br>• Icône<br>• Version (nom)<br>• Version (code) |

</details>

<!-- PATCHES_END -->

## 🧑‍💻 Développement

- Messages de commit **sémantiques** : `feat:` (nouvelle fonction → nouvelle release), `fix:` (correction → release),
  `chore:` / `docs:` (pas de release).
- Ne pas modifier à la main `patches-list.json`, `patches-bundle.json`, `CHANGELOG.md` : la release s'en charge.
- Compilation locale des patches : `./gradlew buildAndroid` (jeton GitHub nécessaire dans `gradle.properties` :
  `gpr.user` / `gpr.key`, droit `read:packages`) → `patches/build/libs/patches-*.mpp`.
- Une modification de `base-app/apk-src/` recompile l'APK de base automatiquement (pas de release de patches).

Documentation Morphe : [patcher](https://github.com/MorpheApp/morphe-patcher/blob/main/docs/1_patcher_intro.md).

## 📜 Licence

Patches compatibles avec Morphe, sous licence [GNU GPL v3](LICENSE). Projet indépendant, non affilié au projet Morphe (voir [NOTICE](NOTICE)).
