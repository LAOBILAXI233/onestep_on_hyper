.class Lcom/sina/weibo/sdk/cmd/AppInvokeCmdExecutor$NotificationHandler;
.super Landroid/os/Handler;
.source "AppInvokeCmdExecutor.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/cmd/AppInvokeCmdExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationHandler"
.end annotation


.field final synthetic this$0:Lcom/sina/weibo/sdk/cmd/AppInvokeCmdExecutor;


.method public constructor <init>(Lcom/sina/weibo/sdk/cmd/AppInvokeCmdExecutor;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/sina/weibo/sdk/cmd/AppInvokeCmdExecutor$NotificationHandler;->this$0:Lcom/sina/weibo/sdk/cmd/AppInvokeCmdExecutor;

    .line 35
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 36
    return-void
.end method


.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 41
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 48
    :goto_0
    return-void

    .line 43
    :pswitch_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/cmd/AppInvokeCmdExecutor$NotificationHandler;->this$0:Lcom/sina/weibo/sdk/cmd/AppInvokeCmdExecutor;

    invoke-static {v0}, Lcom/sina/weibo/sdk/cmd/AppInvokeCmdExecutor;->access$1(Lcom/sina/weibo/sdk/cmd/AppInvokeCmdExecutor;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;

    invoke-static {v1, v0}, Lcom/sina/weibo/sdk/cmd/AppInvokeCmdExecutor;->access$2(Landroid/content/Context;Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;)V

    goto :goto_0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
