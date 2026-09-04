.class Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;
.super Ljava/lang/Object;
.source "ExecutorDelivery.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/ExecutorDelivery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResponseDeliveryRunnable"
.end annotation


.field private final mRequest:Lcom/android/volley/Request;

.field private final mResponse:Lcom/android/volley/Response;

.field private final mRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/volley/ExecutorDelivery;


.method public constructor <init>(Lcom/android/volley/ExecutorDelivery;Lcom/android/volley/Request;Lcom/android/volley/Response;Ljava/lang/Runnable;)V
    .locals 0
    .param p2, "request"    # Lcom/android/volley/Request;
    .param p3, "response"    # Lcom/android/volley/Response;
    .param p4, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->this$0:Lcom/android/volley/ExecutorDelivery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p2, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/android/volley/Request;

    .line 84
    iput-object p3, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lcom/android/volley/Response;

    .line 85
    iput-object p4, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRunnable:Ljava/lang/Runnable;

    .line 86
    return-void
.end method


.method public run()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/android/volley/Request;

    invoke-virtual {v0}, Lcom/android/volley/Request;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/android/volley/Request;

    const-string v1, "canceled-at-delivery"

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->finish(Ljava/lang/String;)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lcom/android/volley/Response;

    invoke-virtual {v0}, Lcom/android/volley/Response;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/android/volley/Request;

    iget-object v1, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lcom/android/volley/Response;

    iget-object v1, v1, Lcom/android/volley/Response;->result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->deliverResponse(Ljava/lang/Object;)V

    .line 106
    :goto_1
    iget-object v0, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lcom/android/volley/Response;

    iget-boolean v0, v0, Lcom/android/volley/Response;->intermediate:Z

    if-eqz v0, :cond_3

    .line 107
    iget-object v0, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/android/volley/Request;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 113
    :goto_2
    iget-object v0, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/android/volley/Request;

    iget-object v1, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lcom/android/volley/Response;

    iget-object v1, v1, Lcom/android/volley/Response;->error:Lcom/android/volley/VolleyError;

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->deliverError(Lcom/android/volley/VolleyError;)V

    goto :goto_1

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/android/volley/Request;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->finish(Ljava/lang/String;)V

    goto :goto_2
.end method
