.class public final synthetic LS/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    sget-boolean v0, Lstart/MainActivity;->H:Z

    const-string v0, "#1a1a1a"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-static {}, LS/e;->a()I

    move-result v0

    invoke-static {p2, v0}, LS/e;->b(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0}, LN/a;->m(Landroid/graphics/Insets;)I

    move-result v0

    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    return-object p2
.end method
