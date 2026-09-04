.class Lcom/android/volley/Request$1;
.super Ljava/lang/Object;
.source "Request.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/Request;->finish(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/android/volley/Request;

.field private final synthetic val$tag:Ljava/lang/String;

.field private final synthetic val$threadId:J


.method constructor <init>(Lcom/android/volley/Request;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/volley/Request$1;->this$0:Lcom/android/volley/Request;

    iput-object p2, p0, Lcom/android/volley/Request$1;->val$tag:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/volley/Request$1;->val$threadId:J

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 4

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/volley/Request$1;->this$0:Lcom/android/volley/Request;

    invoke-static {v0}, Lcom/android/volley/Request;->access$1(Lcom/android/volley/Request;)Lcom/android/volley/VolleyLog$MarkerLog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/volley/Request$1;->val$tag:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/volley/Request$1;->val$threadId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/volley/VolleyLog$MarkerLog;->add(Ljava/lang/String;J)V

    .line 206
    iget-object v0, p0, Lcom/android/volley/Request$1;->this$0:Lcom/android/volley/Request;

    invoke-static {v0}, Lcom/android/volley/Request;->access$1(Lcom/android/volley/Request;)Lcom/android/volley/VolleyLog$MarkerLog;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/VolleyLog$MarkerLog;->finish(Ljava/lang/String;)V

    .line 207
    return-void
.end method
