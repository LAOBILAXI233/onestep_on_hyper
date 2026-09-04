.class Lcom/smartisanos/launcher/theme/ThemeItemActivity$4;
.super Ljava/lang/Object;
.source "ThemeItemActivity.java"

.implements Landroid/view/View$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/theme/ThemeItemActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;


.method constructor <init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    .prologue
    .line 467
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$4;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 471
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$4;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$4;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v1}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$800(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/theme/Theme;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$900(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Ljava/lang/String;)V

    .line 472
    return-void
.end method
