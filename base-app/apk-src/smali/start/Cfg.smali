.class public Lstart/Cfg;
.super Ljava/lang/Object;
.source "Cfg.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/webkit/WebView;)V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const-string v3, "fullscr"

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v4}, Lstart/Cfg;->b(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    const-string v3, "flag_secure"

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v4}, Lstart/Cfg;->b(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    :cond_1
    const-string v3, "keepScreenOn"

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v4}, Lstart/Cfg;->b(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    :cond_2
    const-string v3, "Zoom"

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v4}, Lstart/Cfg;->b(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v4, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    const-string v3, "ScrollBars"

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v4}, Lstart/Cfg;->b(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    const-string v3, "portrait"

    const/4 v4, 0x1

    invoke-static {v0, v1, v3, v4}, Lstart/Cfg;->b(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, -0x1

    :goto_0
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    const-string v3, "isDebugMode"

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v4}, Lstart/Cfg;->b(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    return-void
.end method

.method private static b(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2

    const-string v0, "bool"

    invoke-virtual {p0, p2, v0, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    return v1

    :cond_0
    return p3
.end method
