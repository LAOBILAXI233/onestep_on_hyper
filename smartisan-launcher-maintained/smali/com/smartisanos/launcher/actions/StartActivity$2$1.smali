.class Lcom/smartisanos/launcher/actions/StartActivity$2$1;
.super Ljava/lang/Object;
.source "StartActivity.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/actions/StartActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/actions/StartActivity$2;


.method constructor <init>(Lcom/smartisanos/launcher/actions/StartActivity$2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/actions/StartActivity$2;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/smartisanos/launcher/actions/StartActivity$2$1;->this$0:Lcom/smartisanos/launcher/actions/StartActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/StartActivity$2$1;->this$0:Lcom/smartisanos/launcher/actions/StartActivity$2;

    iget-object v0, v0, Lcom/smartisanos/launcher/actions/StartActivity$2;->val$launcher:Lcom/smartisanos/home/Launcher;

    iget-boolean v0, v0, Lcom/smartisanos/home/Launcher;->mHasFocus:Z

    if-eqz v0, :cond_0

    .line 176
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->hideCellClickShadow()V

    .line 178
    :cond_0
    return-void
.end method
