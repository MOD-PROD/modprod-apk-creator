.class public Lstart/ThemeLongClick;
.super Ljava/lang/Object;
.source "ThemeLongClick.java"

.implements Landroid/view/View$OnLongClickListener;

.field private final a:Lstart/MainActivity;

.method public constructor <init>(Lstart/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lstart/ThemeLongClick;->a:Lstart/MainActivity;
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lstart/ThemeLongClick;->a:Lstart/MainActivity;
    if-nez v0, :ret
    iget-object v1, v0, Lstart/MainActivity;->x:Landroid/webkit/WebView;
    invoke-static {v0, v1}, Lstart/WebThemePrefs;->showPicker(Landroid/app/Activity;Landroid/webkit/WebView;)V

    :ret
    const/4 v0, 0x1
    return v0
.end method
