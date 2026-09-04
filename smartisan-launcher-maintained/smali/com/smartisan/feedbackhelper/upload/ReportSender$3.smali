.class Lcom/smartisan/feedbackhelper/upload/ReportSender$3;
.super Lcom/android/volley/toolbox/JsonObjectRequest;
.source "ReportSender.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisan/feedbackhelper/upload/ReportSender;->postData(Lcom/android/volley/RequestQueue;Ljava/lang/String;Lcom/smartisan/feedbackhelper/utils/ComplainReport;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisan/feedbackhelper/upload/ReportSender;


.method constructor <init>(Lcom/smartisan/feedbackhelper/upload/ReportSender;ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 6
    .param p1, "this$0"    # Lcom/smartisan/feedbackhelper/upload/ReportSender;
    .param p2, "x0"    # I
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # Lorg/json/JSONObject;
    .param p6, "x4"    # Lcom/android/volley/Response$ErrorListener;

    .prologue
    .line 119
    .local p5, "x3":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Lorg/json/JSONObject;>;"
    iput-object p1, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender$3;->this$0:Lcom/smartisan/feedbackhelper/upload/ReportSender;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


.method public getHeaders()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 122
    .local v0, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "content-type"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v1, "X-deviceid"

    iget-object v2, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender$3;->this$0:Lcom/smartisan/feedbackhelper/upload/ReportSender;

    invoke-static {v2}, Lcom/smartisan/feedbackhelper/upload/ReportSender;->access$400(Lcom/smartisan/feedbackhelper/upload/ReportSender;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v1, "X-product"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v1, "X-usertype"

    iget-object v2, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender$3;->this$0:Lcom/smartisan/feedbackhelper/upload/ReportSender;

    invoke-static {v2}, Lcom/smartisan/feedbackhelper/upload/ReportSender;->access$500(Lcom/smartisan/feedbackhelper/upload/ReportSender;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-object v0
.end method
