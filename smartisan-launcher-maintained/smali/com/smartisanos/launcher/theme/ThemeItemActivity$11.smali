.class Lcom/smartisanos/launcher/theme/ThemeItemActivity$11;
.super Ljava/lang/Object;
.source "ThemeItemActivity.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/theme/ThemeItemActivity;->onClickSettingToChangeTheme()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

.field final synthetic val$theme:Lcom/smartisanos/launcher/theme/Theme;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;


.method constructor <init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Lcom/smartisanos/launcher/theme/Theme;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/theme/ThemeItemActivity;
    .param p2, "val$theme"    # Lcom/smartisanos/launcher/theme/Theme;
    .param p3, "val$dialog"    # Landroid/app/ProgressDialog;

    .prologue
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$11;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    iput-object p2, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$11;->val$theme:Lcom/smartisanos/launcher/theme/Theme;

    iput-object p3, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$11;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$11;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$11;->val$theme:Lcom/smartisanos/launcher/theme/Theme;

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/data/Utils;->getSystemSyncWallpaper(Landroid/content/Context;Lcom/smartisanos/launcher/theme/Theme;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/smartisanos/launcher/data/Utils;->syncSystemWallpaper(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$11;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    new-instance v1, Lcom/smartisanos/launcher/theme/ThemeItemActivity$11$1;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity$11$1;-><init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity$11;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
