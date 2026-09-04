.class Lcom/smartisanos/launcher/theme/ChangeThemeHandler$1$1;
.super Lcom/smartisanos/smengine/Event;
.source "ChangeThemeHandler.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/theme/ChangeThemeHandler$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$1:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$1;


.method constructor <init>(Lcom/smartisanos/launcher/theme/ChangeThemeHandler$1;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/smartisanos/launcher/theme/ChangeThemeHandler$1;
    .param p2, "type"    # I

    .prologue
    .line 117
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$1$1;->this$1:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$1;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 2

    .prologue
    .line 119
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    .line 120
    invoke-static {}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    const-string v1, "mShadowTextureRunnable startChangeThemeAnim"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$1$1;->this$1:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$1;

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$1;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    invoke-static {v0}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->access$100(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;)V

    .line 123
    return-void
.end method
