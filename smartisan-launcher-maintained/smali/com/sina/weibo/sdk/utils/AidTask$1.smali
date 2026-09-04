.class Lcom/sina/weibo/sdk/utils/AidTask$1;
.super Ljava/lang/Object;
.source "AidTask.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sina/weibo/sdk/utils/AidTask;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/sina/weibo/sdk/utils/AidTask;


.method constructor <init>(Lcom/sina/weibo/sdk/utils/AidTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sina/weibo/sdk/utils/AidTask$1;->this$0:Lcom/sina/weibo/sdk/utils/AidTask;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 2

    .prologue
    .line 156
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 162
    return-void

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/sina/weibo/sdk/utils/AidTask$1;->this$0:Lcom/sina/weibo/sdk/utils/AidTask;

    invoke-static {v1, v0}, Lcom/sina/weibo/sdk/utils/AidTask;->access$0(Lcom/sina/weibo/sdk/utils/AidTask;I)Ljava/io/File;

    move-result-object v1

    .line 159
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :catch_0
    move-exception v1

    goto :goto_1
.end method
