.class Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide$8$2;
.super Ljava/lang/Object;
.source "ChangeThemeByFourFingerSlide.java"

.implements Landroid/content/DialogInterface$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide$8;


.method constructor <init>(Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide$8;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide$8;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide$8$2;->this$0:Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 229
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 230
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 232
    iget-object v1, p0, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide$8$2;->this$0:Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide$8;

    iget-object v1, v1, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide$8;->val$context:Landroid/content/Context;

    const-class v2, Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 233
    const-string v1, "extra_component_id"

    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/smartisanos/launcher/theme/ThemeManager;->getCurrentTheme(Landroid/content/Context;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v2

    iget-object v2, v2, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    iget-object v1, p0, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide$8$2;->this$0:Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide$8;

    iget-object v1, v1, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide$8;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 235
    return-void
.end method
