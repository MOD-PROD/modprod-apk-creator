# Créer une appli avec le patch « ModProd App »

## 1. Préparer les fichiers sur le téléphone

```
Download/MonAppli/
├── html/              ← « Dossier de l'appli HTML »
│   ├── index.html     ← la page (nom libre : index.html prioritaire, sinon le 1er .html)
│   └── images/…       ← fichiers utilisés par la page (facultatif)
├── config.js          ← « Fichier de configuration » (facultatif)
└── icone.png          ← « Icône », carrée, 512 × 512 conseillé (facultatif)
```

- La page part du modèle : `base-app/apk-src/assets/htmlapp/root/index/index.html`
  (blocs 1 à 8 : menu développeur, configuration, splash, saveFile, autoSave, bouton retour, liens externes).
- La configuration part de `base-app/apk-src/assets/htmlapp/root/config/config.js`.

## 2. Options du patch

| Option | Obligatoire | Effet dans l'APK |
|---|---|---|
| Nom de l'appli | oui | `res/values/strings.xml` → `app_name` |
| Nom de package | oui | manifeste : `package`, permission `….DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION`, `android:authorities` des providers |
| Dossier de l'appli HTML | non | remplace tout `assets/htmlapp/root/index/` |
| Fichier de configuration | non | remplace `assets/htmlapp/root/config/` par `config.js` |
| Icône | non | `res/mipmap*/ic_launcher.png` + `ic_launcher_round.png` + `assets/htmlapp/root/icon.png` |
| Version (nom) | non | `android:versionName` |
| Version (code) | non | `android:versionCode` (entier, +1 à chaque mise à jour) |

Règles du nom de package : minuscules, au moins deux segments (`com.modprod.monappli`),
lettres/chiffres/_, chaque segment commence par une lettre, pas de mot réservé Java (`new`, `class`, `int`…).

## 3. Mises à jour d'une appli

- Garder **le même nom de package** et augmenter **Version (code)**.
- Morphe Manager signe avec sa propre clé : toujours patcher depuis le même Morphe Manager
  (sinon Android refuse la mise à jour → exporter les données avant de désinstaller).

## 4. Tester sans repatcher

Dans l'appli : 10 touchers sur le logo → **Menu développeur** → *Charger un .html…*
La version de test remplace la page intégrée jusqu'à *Revenir à la version intégrée*.
