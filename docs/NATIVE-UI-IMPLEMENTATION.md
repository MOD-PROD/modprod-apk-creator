# Sauvegarde et développement isolé — interface native
Date : 2026-11-08

## Original conservé
- Sources de référence : branche `backup/apk-base-original-2026-11-08`.
- Release originale (NE PAS écraser) : https://github.com/MOD-PROD/modprod-apk-creator/releases/tag/base-apk
- Fichier : `apk-base.apk` (1 526 106 octets)
- SHA-256 fourni par GitHub : `cf995edf9cda3f68f68d20c6467f1c8aee59a1a67c901a54b4903975d12385e5`.
- Base Android TV inchangée.

## Travail
Branche : `feature/native-ui-asset-library`.
La release `base-apk` et le workflow APK Factory V1 doivent continuer d'utiliser l'original.
Ne pas fusionner les modifications sans build et tests sur appareil.

## Critères d'acceptation
1. En-tête Android natif optionnel, titre, jusqu'à quatre boutons (icône, URL HTTPS/action, libellé).
2. Navigation native indépendante de la WebView, position configurable, retour/accueil/menu.
3. Fond WebView sombre et couleurs des barres configurables, sans forcer le thème des sites tiers.
4. Icônes depuis Asset Library : référence, copie ou import ; ressources résolues et intégrées à la compilation.
5. Transmission des options depuis APK Factory au patch Android ; aucun contrôle inerte.
6. Tests de navigation, rotation, redémarrage, absence de réseau, et authentification externe.
7. Signature avec clé personnelle utilisateur uniquement : ne pas utiliser la clé administrative ModProd pour les APK utilisateurs.
8. Publication d'une nouvelle release distincte `apk-base-native-v2` après validation, jamais remplacement silencieux de `base-apk`.

## Retour arrière
Revenir à la release `base-apk` et aux sources de la branche de sauvegarde.
