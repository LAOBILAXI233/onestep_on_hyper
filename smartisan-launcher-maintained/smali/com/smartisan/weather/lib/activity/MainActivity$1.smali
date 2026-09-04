.class Lcom/smartisan/weather/lib/activity/MainActivity$1;
.super Landroid/database/ContentObserver;
.source "MainActivity.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisan/weather/lib/activity/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisan/weather/lib/activity/MainActivity;


.method constructor <init>(Lcom/smartisan/weather/lib/activity/MainActivity;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisan/weather/lib/activity/MainActivity;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/smartisan/weather/lib/activity/MainActivity$1;->this$0:Lcom/smartisan/weather/lib/activity/MainActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 37
    const-string v0, "WeatherLib"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/smartisan/weather/lib/activity/MainActivity$1;->this$0:Lcom/smartisan/weather/lib/activity/MainActivity;

    invoke-static {v2}, Lcom/smartisan/weather/lib/activity/MainActivity;->access$000(Lcom/smartisan/weather/lib/activity/MainActivity;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":onChange"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/smartisan/weather/lib/activity/MainActivity$1;->this$0:Lcom/smartisan/weather/lib/activity/MainActivity;

    iget-object v1, p0, Lcom/smartisan/weather/lib/activity/MainActivity$1;->this$0:Lcom/smartisan/weather/lib/activity/MainActivity;

    invoke-static {v1}, Lcom/smartisan/weather/lib/activity/MainActivity;->access$100(Lcom/smartisan/weather/lib/activity/MainActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/smartisan/weather/lib/activity/MainActivity;->access$200(Lcom/smartisan/weather/lib/activity/MainActivity;I)V

    .line 39
    return-void
.end method
