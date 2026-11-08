.class public Lstart/WebTheme;
.super Ljava/lang/Object;
.source "WebTheme.java"

# web_theme: auto | native | css | invert
# CSS/invert modes require a page-load injection hook and are not enabled here.
.method public static apply(Landroid/app/Activity;Landroid/webkit/WebView;)V
    .locals 5

    if-eqz p1, :done

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    move-result-object v1
    const-string v2, "web_theme"
    const-string v3, "string"
    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    move-result v0
    if-eqz v0, :done

    invoke-virtual {p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    move-result-object v0
    const-string v1, "native"
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :done

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
    move-result-object v2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v4, 0x21
    if-lt v3, v4, :legacy

    const/4 v3, 0x1
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAlgorithmicDarkeningAllowed(Z)V
    goto :done

    :legacy
    const/16 v4, 0x1d
    if-lt v3, v4, :done
    const/4 v3, 0x2
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setForceDark(I)V

    :done
    return-void
.end method
