.class Lcom/smartisan/weather/lib/NewUpdateService$1;
.super Landroid/os/Handler;
.source "NewUpdateService.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisan/weather/lib/NewUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisan/weather/lib/NewUpdateService;


.method constructor <init>(Lcom/smartisan/weather/lib/NewUpdateService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisan/weather/lib/NewUpdateService;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/smartisan/weather/lib/NewUpdateService$1;->this$0:Lcom/smartisan/weather/lib/NewUpdateService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 62
    iget-object v0, p0, Lcom/smartisan/weather/lib/NewUpdateService$1;->this$0:Lcom/smartisan/weather/lib/NewUpdateService;

    invoke-virtual {v0}, Lcom/smartisan/weather/lib/NewUpdateService;->stopSelf()V

    .line 63
    return-void
.end method
