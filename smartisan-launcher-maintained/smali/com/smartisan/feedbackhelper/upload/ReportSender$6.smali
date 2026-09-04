.class Lcom/smartisan/feedbackhelper/upload/ReportSender$6;
.super Lcom/smartisan/feedbackhelper/utils/MultiPartStringRequest;
.source "ReportSender.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisan/feedbackhelper/upload/ReportSender;->putUploadFileRequest(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/Object;)Lcom/smartisan/feedbackhelper/utils/MultiPartStringRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisan/feedbackhelper/upload/ReportSender;

.field final synthetic val$files:Ljava/util/Map;

.field final synthetic val$params:Ljava/util/Map;


.method constructor <init>(Lcom/smartisan/feedbackhelper/upload/ReportSender;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisan/feedbackhelper/upload/ReportSender;
    .param p2, "method"    # I
    .param p3, "url"    # Ljava/lang/String;
    .param p5, "errorListener"    # Lcom/android/volley/Response$ErrorListener;

    .prologue
    .line 188
    .local p4, "listener":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender$6;->this$0:Lcom/smartisan/feedbackhelper/upload/ReportSender;

    iput-object p6, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender$6;->val$files:Ljava/util/Map;

    iput-object p7, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender$6;->val$params:Ljava/util/Map;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/smartisan/feedbackhelper/utils/MultiPartStringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


.method public getFileUploads()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender$6;->val$files:Ljava/util/Map;

    return-object v0
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
    .line 201
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 202
    .local v0, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "X-deviceid"

    iget-object v2, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender$6;->this$0:Lcom/smartisan/feedbackhelper/upload/ReportSender;

    invoke-static {v2}, Lcom/smartisan/feedbackhelper/upload/ReportSender;->access$400(Lcom/smartisan/feedbackhelper/upload/ReportSender;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v1, "X-product"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v1, "X-usertype"

    iget-object v2, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender$6;->this$0:Lcom/smartisan/feedbackhelper/upload/ReportSender;

    invoke-static {v2}, Lcom/smartisan/feedbackhelper/upload/ReportSender;->access$500(Lcom/smartisan/feedbackhelper/upload/ReportSender;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    return-object v0
.end method

.method public getStringUploads()Ljava/util/Map;
    .locals 1
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

    .prologue
    .line 197
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender$6;->val$params:Ljava/util/Map;

    return-object v0
.end method
