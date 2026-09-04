.class public Lcom/sina/weibo/sdk/net/NetStateManager$NetStateReceive;
.super Landroid/content/BroadcastReceiver;
.source "NetStateManager.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/net/NetStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetStateReceive"
.end annotation


.field final synthetic this$0:Lcom/sina/weibo/sdk/net/NetStateManager;


.method public constructor <init>(Lcom/sina/weibo/sdk/net/NetStateManager;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sina/weibo/sdk/net/NetStateManager$NetStateReceive;->this$0:Lcom/sina/weibo/sdk/net/NetStateManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 49
    invoke-static {p1}, Lcom/sina/weibo/sdk/net/NetStateManager;->access$0(Landroid/content/Context;)V

    .line 50
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 52
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 53
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 54
    :cond_0
    sget-object v0, Lcom/sina/weibo/sdk/net/NetStateManager$NetState;->Mobile:Lcom/sina/weibo/sdk/net/NetStateManager$NetState;

    sput-object v0, Lcom/sina/weibo/sdk/net/NetStateManager;->CUR_NETSTATE:Lcom/sina/weibo/sdk/net/NetStateManager$NetState;

    .line 57
    :cond_1
    return-void
.end method
