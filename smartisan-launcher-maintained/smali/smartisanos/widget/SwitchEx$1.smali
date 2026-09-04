.class Lsmartisanos/widget/SwitchEx$1;
.super Landroid/os/Handler;
.source "SwitchEx.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisanos/widget/SwitchEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lsmartisanos/widget/SwitchEx;


.method constructor <init>(Lsmartisanos/widget/SwitchEx;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lsmartisanos/widget/SwitchEx$1;->this$0:Lsmartisanos/widget/SwitchEx;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


.method public dispatchMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 84
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 85
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 86
    .local v0, "checked":Z
    iget-object v1, p0, Lsmartisanos/widget/SwitchEx$1;->this$0:Lsmartisanos/widget/SwitchEx;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lsmartisanos/widget/SwitchEx;->access$000(Lsmartisanos/widget/SwitchEx;ZZ)V

    .line 88
    .end local v0    # "checked":Z
    :cond_0
    return-void
.end method
