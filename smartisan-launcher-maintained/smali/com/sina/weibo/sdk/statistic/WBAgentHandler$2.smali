.class Lcom/sina/weibo/sdk/statistic/WBAgentHandler$2;
.super Ljava/lang/Object;
.source "WBAgentHandler.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sina/weibo/sdk/statistic/WBAgentHandler;->saveActivePages(Ljava/util/concurrent/CopyOnWriteArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/sina/weibo/sdk/statistic/WBAgentHandler;

.field private final synthetic val$content:Ljava/lang/String;


.method constructor <init>(Lcom/sina/weibo/sdk/statistic/WBAgentHandler;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sina/weibo/sdk/statistic/WBAgentHandler$2;->this$0:Lcom/sina/weibo/sdk/statistic/WBAgentHandler;

    iput-object p2, p0, Lcom/sina/weibo/sdk/statistic/WBAgentHandler$2;->val$content:Ljava/lang/String;

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 3

    .prologue
    .line 318
    const-string v0, "app_logs"

    invoke-static {v0}, Lcom/sina/weibo/sdk/statistic/LogFileUtil;->getAppLogPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    iget-object v1, p0, Lcom/sina/weibo/sdk/statistic/WBAgentHandler$2;->val$content:Ljava/lang/String;

    const/4 v2, 0x1

    .line 317
    invoke-static {v0, v1, v2}, Lcom/sina/weibo/sdk/statistic/LogFileUtil;->writeToFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 320
    return-void
.end method
