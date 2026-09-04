.class Lcom/sina/weibo/sdk/utils/AidTask$3;
.super Ljava/lang/Object;
.source "AidTask.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sina/weibo/sdk/utils/AidTask;->generateAid(Ljava/lang/String;Lcom/sina/weibo/sdk/utils/AidTask$AidResultCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/sina/weibo/sdk/utils/AidTask;

.field private final synthetic val$callback:Lcom/sina/weibo/sdk/utils/AidTask$AidResultCallBack;


.method constructor <init>(Lcom/sina/weibo/sdk/utils/AidTask;Lcom/sina/weibo/sdk/utils/AidTask$AidResultCallBack;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sina/weibo/sdk/utils/AidTask$3;->this$0:Lcom/sina/weibo/sdk/utils/AidTask;

    iput-object p2, p0, Lcom/sina/weibo/sdk/utils/AidTask$3;->val$callback:Lcom/sina/weibo/sdk/utils/AidTask$AidResultCallBack;

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 5

    .prologue
    .line 270
    iget-object v0, p0, Lcom/sina/weibo/sdk/utils/AidTask$3;->this$0:Lcom/sina/weibo/sdk/utils/AidTask;

    invoke-static {v0}, Lcom/sina/weibo/sdk/utils/AidTask;->access$1(Lcom/sina/weibo/sdk/utils/AidTask;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 272
    iget-object v0, p0, Lcom/sina/weibo/sdk/utils/AidTask$3;->this$0:Lcom/sina/weibo/sdk/utils/AidTask;

    invoke-static {v0}, Lcom/sina/weibo/sdk/utils/AidTask;->access$2(Lcom/sina/weibo/sdk/utils/AidTask;)Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;

    move-result-object v1

    .line 273
    const/4 v0, 0x0

    .line 274
    if-nez v1, :cond_0

    .line 276
    :try_start_0
    iget-object v2, p0, Lcom/sina/weibo/sdk/utils/AidTask$3;->this$0:Lcom/sina/weibo/sdk/utils/AidTask;

    invoke-static {v2}, Lcom/sina/weibo/sdk/utils/AidTask;->access$3(Lcom/sina/weibo/sdk/utils/AidTask;)Ljava/lang/String;

    move-result-object v2

    .line 277
    invoke-static {v2}, Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;->parseJson(Ljava/lang/String;)Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;

    move-result-object v1

    .line 278
    iget-object v3, p0, Lcom/sina/weibo/sdk/utils/AidTask$3;->this$0:Lcom/sina/weibo/sdk/utils/AidTask;

    invoke-static {v3, v2}, Lcom/sina/weibo/sdk/utils/AidTask;->access$4(Lcom/sina/weibo/sdk/utils/AidTask;Ljava/lang/String;)V

    .line 279
    iget-object v2, p0, Lcom/sina/weibo/sdk/utils/AidTask$3;->this$0:Lcom/sina/weibo/sdk/utils/AidTask;

    invoke-static {v2, v1}, Lcom/sina/weibo/sdk/utils/AidTask;->access$5(Lcom/sina/weibo/sdk/utils/AidTask;Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;)V
    :try_end_0
    .catch Lcom/sina/weibo/sdk/exception/WeiboException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sina/weibo/sdk/utils/AidTask$3;->this$0:Lcom/sina/weibo/sdk/utils/AidTask;

    invoke-static {v2}, Lcom/sina/weibo/sdk/utils/AidTask;->access$1(Lcom/sina/weibo/sdk/utils/AidTask;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 287
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 288
    if-eqz v1, :cond_1

    .line 289
    const/16 v0, 0x3e9

    iput v0, v2, Landroid/os/Message;->what:I

    .line 290
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 295
    :goto_1
    iget-object v0, p0, Lcom/sina/weibo/sdk/utils/AidTask$3;->this$0:Lcom/sina/weibo/sdk/utils/AidTask;

    invoke-static {v0}, Lcom/sina/weibo/sdk/utils/AidTask;->access$6(Lcom/sina/weibo/sdk/utils/AidTask;)Lcom/sina/weibo/sdk/utils/AidTask$CallbackHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sina/weibo/sdk/utils/AidTask$3;->val$callback:Lcom/sina/weibo/sdk/utils/AidTask$AidResultCallBack;

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/utils/AidTask$CallbackHandler;->setCallback(Lcom/sina/weibo/sdk/utils/AidTask$AidResultCallBack;)V

    .line 296
    iget-object v0, p0, Lcom/sina/weibo/sdk/utils/AidTask$3;->this$0:Lcom/sina/weibo/sdk/utils/AidTask;

    invoke-static {v0}, Lcom/sina/weibo/sdk/utils/AidTask;->access$6(Lcom/sina/weibo/sdk/utils/AidTask;)Lcom/sina/weibo/sdk/utils/AidTask$CallbackHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sina/weibo/sdk/utils/AidTask$CallbackHandler;->sendMessage(Landroid/os/Message;)Z

    .line 297
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 282
    const-string v2, "AidTask"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AidTaskInit WeiboException Msg : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/exception/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 292
    :cond_1
    const/16 v1, 0x3ea

    iput v1, v2, Landroid/os/Message;->what:I

    .line 293
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1
.end method
