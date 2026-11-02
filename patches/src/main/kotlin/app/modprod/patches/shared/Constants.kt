package app.modprod.patches.shared

import app.morphe.patcher.patch.ApkFileType
import app.morphe.patcher.patch.AppTarget
import app.morphe.patcher.patch.Compatibility

object Constants {
    /** Nom de package de l'APK de base (base-app/apk-src). */
    const val BASE_PACKAGE = "com.gonzo.htmlapp"

    /** Dossiers des assets de l'appli HTML dans l'APK de base. */
    const val ASSETS_ROOT = "assets/htmlapp/root/"
    const val ASSETS_INDEX = "${ASSETS_ROOT}index/"
    const val ASSETS_CONFIG = "${ASSETS_ROOT}config/"

    val COMPATIBILITY_BASE = Compatibility(
        name = "ModProd APK Base",
        packageName = BASE_PACKAGE,
        apkFileType = ApkFileType.APK,
        appIconColor = 0xF08A24,
        targets = listOf(
            // Toutes les versions de l'APK de base.
            AppTarget(version = null),
        ),
    )
}
