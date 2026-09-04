.class Landroid/support/v4/content/ModernAsyncTask$InternalHandler;
.super Landroid/os/Handler;
.source "ModernAsyncTask.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/ModernAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalHandler"
.end annotation


.method public constructor <init>()V
    .locals 1

    .prologue
    .line 483
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 484
    return-void
.end method


.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 489
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/content/ModernAsyncTask$AsyncTaskResult;

    .line 490
    .local v0, "result":Landroid/support/v4/content/ModernAsyncTask$AsyncTaskResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 499
    :goto_0
    return-void

    .line 493
    :pswitch_0
    iget-object v1, v0, Landroid/support/v4/content/ModernAsyncTask$AsyncTaskResult;->mTask:Landroid/support/v4/content/ModernAsyncTask;

    iget-object v2, v0, Landroid/support/v4/content/ModernAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/support/v4/content/ModernAsyncTask;->finish(Ljava/lang/Object;)V

    goto :goto_0

    .line 496
    :pswitch_1
    iget-object v1, v0, Landroid/support/v4/content/ModernAsyncTask$AsyncTaskResult;->mTask:Landroid/support/v4/content/ModernAsyncTask;

    iget-object v2, v0, Landroid/support/v4/content/ModernAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/support/v4/content/ModernAsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    goto :goto_0

    .line 490
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
