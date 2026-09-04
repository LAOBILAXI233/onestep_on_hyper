.class Lcom/smartisanos/smengine/GestureDetector$GestureHandler;
.super Landroid/os/Handler;
.source "GestureDetector.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/smengine/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureHandler"
.end annotation


.field final synthetic this$0:Lcom/smartisanos/smengine/GestureDetector;


.method constructor <init>(Lcom/smartisanos/smengine/GestureDetector;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/smartisanos/smengine/GestureDetector$GestureHandler;->this$0:Lcom/smartisanos/smengine/GestureDetector;

    .line 262
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 263
    return-void
.end method

.method constructor <init>(Lcom/smartisanos/smengine/GestureDetector;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/smartisanos/smengine/GestureDetector$GestureHandler;->this$0:Lcom/smartisanos/smengine/GestureDetector;

    .line 266
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 267
    return-void
.end method


.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 271
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 288
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :pswitch_0
    iget-object v0, p0, Lcom/smartisanos/smengine/GestureDetector$GestureHandler;->this$0:Lcom/smartisanos/smengine/GestureDetector;

    invoke-static {v0}, Lcom/smartisanos/smengine/GestureDetector;->access$100(Lcom/smartisanos/smengine/GestureDetector;)Lcom/smartisanos/smengine/GestureDetector$OnGestureListener;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/smengine/GestureDetector$GestureHandler;->this$0:Lcom/smartisanos/smengine/GestureDetector;

    invoke-static {v1}, Lcom/smartisanos/smengine/GestureDetector;->access$000(Lcom/smartisanos/smengine/GestureDetector;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smartisanos/smengine/GestureDetector$OnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 277
    :pswitch_1
    iget-object v0, p0, Lcom/smartisanos/smengine/GestureDetector$GestureHandler;->this$0:Lcom/smartisanos/smengine/GestureDetector;

    invoke-static {v0}, Lcom/smartisanos/smengine/GestureDetector;->access$200(Lcom/smartisanos/smengine/GestureDetector;)V

    goto :goto_0

    .line 282
    :pswitch_2
    iget-object v0, p0, Lcom/smartisanos/smengine/GestureDetector$GestureHandler;->this$0:Lcom/smartisanos/smengine/GestureDetector;

    invoke-static {v0}, Lcom/smartisanos/smengine/GestureDetector;->access$300(Lcom/smartisanos/smengine/GestureDetector;)Lcom/smartisanos/smengine/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/smengine/GestureDetector$GestureHandler;->this$0:Lcom/smartisanos/smengine/GestureDetector;

    invoke-static {v0}, Lcom/smartisanos/smengine/GestureDetector;->access$400(Lcom/smartisanos/smengine/GestureDetector;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/smartisanos/smengine/GestureDetector$GestureHandler;->this$0:Lcom/smartisanos/smengine/GestureDetector;

    invoke-static {v0}, Lcom/smartisanos/smengine/GestureDetector;->access$300(Lcom/smartisanos/smengine/GestureDetector;)Lcom/smartisanos/smengine/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/smengine/GestureDetector$GestureHandler;->this$0:Lcom/smartisanos/smengine/GestureDetector;

    invoke-static {v1}, Lcom/smartisanos/smengine/GestureDetector;->access$000(Lcom/smartisanos/smengine/GestureDetector;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smartisanos/smengine/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 271
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
