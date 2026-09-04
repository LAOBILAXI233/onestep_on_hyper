.class Lcom/android/volley/ExecutorDelivery$1;
.super Ljava/lang/Object;
.source "ExecutorDelivery.java"

.implements Ljava/util/concurrent/Executor;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/ExecutorDelivery;-><init>(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/android/volley/ExecutorDelivery;

.field private final synthetic val$handler:Landroid/os/Handler;


.method constructor <init>(Lcom/android/volley/ExecutorDelivery;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/volley/ExecutorDelivery$1;->this$0:Lcom/android/volley/ExecutorDelivery;

    iput-object p2, p0, Lcom/android/volley/ExecutorDelivery$1;->val$handler:Landroid/os/Handler;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/volley/ExecutorDelivery$1;->val$handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    return-void
.end method
