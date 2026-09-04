.class Lcom/android/volley/CacheDispatcher$1;
.super Ljava/lang/Object;
.source "CacheDispatcher.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/CacheDispatcher;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/android/volley/CacheDispatcher;

.field private final synthetic val$request:Lcom/android/volley/Request;


.method constructor <init>(Lcom/android/volley/CacheDispatcher;Lcom/android/volley/Request;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/volley/CacheDispatcher$1;->this$0:Lcom/android/volley/CacheDispatcher;

    iput-object p2, p0, Lcom/android/volley/CacheDispatcher$1;->val$request:Lcom/android/volley/Request;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 2

    .prologue
    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/android/volley/CacheDispatcher$1;->this$0:Lcom/android/volley/CacheDispatcher;

    invoke-static {v0}, Lcom/android/volley/CacheDispatcher;->access$0(Lcom/android/volley/CacheDispatcher;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/android/volley/CacheDispatcher$1;->val$request:Lcom/android/volley/Request;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    goto :goto_0
.end method
