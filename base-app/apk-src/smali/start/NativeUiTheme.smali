.class public Lstart/NativeUiTheme;
.super Ljava/lang/Object;
.source "NativeUiTheme.java"

# Native UI groundwork: Android-side dark WebView background.
# Called only by future native UI wiring; does not change the production base.
.method public static applyDarkBackground(Landroid/webkit/WebView;)V
    .locals 1

    if-eqz p0, :done

    const/high16 v0, -0x1000000
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    :done
    return-void
.end method
