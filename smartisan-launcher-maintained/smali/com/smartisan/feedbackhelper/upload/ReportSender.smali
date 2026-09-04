.class public Lcom/smartisan/feedbackhelper/upload/ReportSender;
.super Ljava/lang/Object;
.source "ReportSender.java"


.field public static fileQueue:Lcom/android/volley/RequestQueue;

.field public static reportQueue:Lcom/android/volley/RequestQueue;


.field TAG:Ljava/lang/String;

.field context:Landroid/content/Context;

.field private fileUrl:Ljava/lang/String;

.field handler:Landroid/os/Handler;

.field private mUpWorker:Lcom/smartisan/feedbackhelper/upload/UploadWorker;

.field private reportUrl:Ljava/lang/String;

.field private uid:Ljava/lang/String;

.field private userType:I


.method public constructor <init>(Lcom/smartisan/feedbackhelper/upload/ReliableUploader;Lcom/smartisan/feedbackhelper/upload/UploadWorker;)V
    .locals 2
    .param p1, "mRuploader"    # Lcom/smartisan/feedbackhelper/upload/ReliableUploader;
    .param p2, "upWorker"    # Lcom/smartisan/feedbackhelper/upload/UploadWorker;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "BugReportReportSender"

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender;->TAG:Ljava/lang/String;

    .line 45
    const-string v0, "http://auto.smartisan.com/v2/api/report"

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender;->reportUrl:Ljava/lang/String;

    .line 46
    const-string v0, "http://auto.smartisan.com/v2/api/log?tid="

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender;->fileUrl:Ljava/lang/String;

    .line 218
    new-instance v0, Lcom/smartisan/feedbackhelper/upload/ReportSender$7;

    invoke-direct {v0, p0}, Lcom/smartisan/feedbackhelper/upload/ReportSender$7;-><init>(Lcom/smartisan/feedbackhelper/upload/ReportSender;)V

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender;->handler:Landroid/os/Handler;

    .line 56
    invoke-virtual {p1}, Lcom/smartisan/feedbackhelper/upload/ReliableUploader;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender;->context:Landroid/content/Context;

    .line 57
    invoke-static {}, Lcom/smartisan/feedbackhelper/utils/DeviceID;->getInstance()Lcom/smartisan/feedbackhelper/utils/DeviceID;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/smartisan/feedbackhelper/utils/DeviceID;->getId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender;->uid:Ljava/lang/String;

    .line 58
    sget-object v0, Lcom/smartisan/feedbackhelper/upload/ReportSender;->reportQueue:Lcom/android/volley/RequestQueue;

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    sput-object v0, Lcom/smartisan/feedbackhelper/upload/ReportSender;->reportQueue:Lcom/android/volley/RequestQueue;

    .line 61
    :cond_0
    sget-object v0, Lcom/smartisan/feedbackhelper/upload/ReportSender;->fileQueue:Lcom/android/volley/RequestQueue;

    if-nez v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender;->context:Landroid/content/Context;

    new-instance v1, Lcom/smartisan/feedbackhelper/utils/MultiPartStack;

    invoke-direct {v1}, Lcom/smartisan/feedbackhelper/utils/MultiPartStack;-><init>()V

    invoke-static {v0, v1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    sput-object v0, Lcom/smartisan/feedbackhelper/upload/ReportSender;->fileQueue:Lcom/android/volley/RequestQueue;

    .line 65
    :cond_1
    iput-object p2, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender;->mUpWorker:Lcom/smartisan/feedbackhelper/upload/UploadWorker;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/smartisan/feedbackhelper/upload/ReportSender;Lcom/smartisan/feedbackhelper/utils/ComplainReport;Lorg/json/JSONObject;)I
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/feedbackhelper/upload/ReportSender;
    .param p1, "x1"    # Lcom/smartisan/feedbackhelper/utils/ComplainReport;
    .param p2, "x2"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/smartisan/feedbackhelper/upload/ReportSender;->getReporttid(Lcom/smartisan/feedbackhelper/utils/ComplainReport;Lorg/json/JSONObject;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/smartisan/feedbackhelper/upload/ReportSender;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/feedbackhelper/upload/ReportSender;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender;->fileUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/smartisan/feedbackhelper/upload/ReportSender;Lcom/android/volley/RequestQueue;Ljava/lang/String;Lcom/smartisan/feedbackhelper/utils/ComplainReport;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisan/feedbackhelper/upload/ReportSender;
    .param p1, "x1"    # Lcom/android/volley/RequestQueue;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisan/feedbackhelper/upload/ReportSender;->putFile(Lcom/android/volley/RequestQueue;Ljava/lang/String;Lcom/smartisan/feedbackhelper/utils/ComplainReport;)V

    return-void
.end method

.method static synthetic access$300(Lcom/smartisan/feedbackhelper/upload/ReportSender;ILcom/smartisan/feedbackhelper/utils/ComplainReport;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisan/feedbackhelper/upload/ReportSender;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/smartisan/feedbackhelper/upload/ReportSender;->sendMsg(ILcom/smartisan/feedbackhelper/utils/ComplainReport;)V

    return-void
.end method

.method static synthetic access$400(Lcom/smartisan/feedbackhelper/upload/ReportSender;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/feedbackhelper/upload/ReportSender;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender;->uid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/smartisan/feedbackhelper/upload/ReportSender;)I
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/feedbackhelper/upload/ReportSender;

    .prologue
    .line 41
    iget v0, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender;->userType:I

    return v0
.end method

.method static synthetic access$600(Lcom/smartisan/feedbackhelper/upload/ReportSender;)Lcom/smartisan/feedbackhelper/upload/UploadWorker;
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/feedbackhelper/upload/ReportSender;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender;->mUpWorker:Lcom/smartisan/feedbackhelper/upload/UploadWorker;

    return-object v0
.end method

.method private getReporttid(Lcom/smartisan/feedbackhelper/utils/ComplainReport;Lorg/json/JSONObject;)I
    .locals 3
    .param p1, "cReport"    # Lcom/smartisan/feedbackhelper/utils/ComplainReport;
    .param p2, "obj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, "rTid":I
    invoke-virtual {p1}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->getUploadId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 138
    const-string v1, "data"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "tid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UploadID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->smartisanloadId(Ljava/lang/String;)V

    .line 146
    :goto_0
    return v0

    .line 140
    :cond_0
    invoke-virtual {p1}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->getUploadId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UploadID:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    invoke-virtual {p1}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->getUploadId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 143
    :cond_1
    const-string v1, "data"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "tid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UploadID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->smartisanloadId(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private postData(Lcom/android/volley/RequestQueue;Ljava/lang/String;Lcom/smartisan/feedbackhelper/utils/ComplainReport;)V
    .locals 7
    .param p1, "queue"    # Lcom/android/volley/RequestQueue;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "report"    # Lcom/smartisan/feedbackhelper/utils/ComplainReport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v1, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender;->context:Landroid/content/Context;

    invoke-static {v1, p3}, Lcom/smartisan/feedbackhelper/utils/JsonData;->toCreateReportRequest(Landroid/content/Context;Lcom/smartisan/feedbackhelper/utils/ComplainReport;)Lorg/json/JSONObject;

    move-result-object v4

    .line 99
    .local v4, "reportData":Lorg/json/JSONObject;
    new-instance v0, Lcom/smartisan/feedbackhelper/upload/ReportSender$3;

    const/4 v2, 0x1

    new-instance v5, Lcom/smartisan/feedbackhelper/upload/ReportSender$1;

    invoke-direct {v5, p0, p3}, Lcom/smartisan/feedbackhelper/upload/ReportSender$1;-><init>(Lcom/smartisan/feedbackhelper/upload/ReportSender;Lcom/smartisan/feedbackhelper/utils/ComplainReport;)V

    new-instance v6, Lcom/smartisan/feedbackhelper/upload/ReportSender$2;

    invoke-direct {v6, p0, p3}, Lcom/smartisan/feedbackhelper/upload/ReportSender$2;-><init>(Lcom/smartisan/feedbackhelper/upload/ReportSender;Lcom/smartisan/feedbackhelper/utils/ComplainReport;)V

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/smartisan/feedbackhelper/upload/ReportSender$3;-><init>(Lcom/smartisan/feedbackhelper/upload/ReportSender;ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 129
    .local v0, "objRequest":Lcom/android/volley/toolbox/JsonObjectRequest;
    const-string v1, "obj"

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setTag(Ljava/lang/Object;)V

    .line 130
    invoke-virtual {p1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 131
    invoke-virtual {p1}, Lcom/android/volley/RequestQueue;->start()V

    .line 132
    return-void
.end method

.method private putFile(Lcom/android/volley/RequestQueue;Ljava/lang/String;Lcom/smartisan/feedbackhelper/utils/ComplainReport;)V
    .locals 9
    .param p1, "queue"    # Lcom/android/volley/RequestQueue;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "report"    # Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    .prologue
    const/4 v3, 0x0

    .line 150
    invoke-virtual {p3}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->getLogPath()Ljava/lang/String;

    move-result-object v7

    .line 151
    .local v7, "filePath":Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 152
    .local v2, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    const-string v0, "Log-File"

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    new-instance v4, Lcom/smartisan/feedbackhelper/upload/ReportSender$4;

    invoke-direct {v4, p0, p3}, Lcom/smartisan/feedbackhelper/upload/ReportSender$4;-><init>(Lcom/smartisan/feedbackhelper/upload/ReportSender;Lcom/smartisan/feedbackhelper/utils/ComplainReport;)V

    .line 162
    .local v4, "mResonseListenerString":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Ljava/lang/String;>;"
    new-instance v5, Lcom/smartisan/feedbackhelper/upload/ReportSender$5;

    invoke-direct {v5, p0, p3}, Lcom/smartisan/feedbackhelper/upload/ReportSender$5;-><init>(Lcom/smartisan/feedbackhelper/upload/ReportSender;Lcom/smartisan/feedbackhelper/utils/ComplainReport;)V

    .local v5, "mErrorListener":Lcom/android/volley/Response$ErrorListener;
    move-object v0, p0

    move-object v1, p2

    move-object v6, v3

    .line 174
    invoke-direct/range {v0 .. v6}, Lcom/smartisan/feedbackhelper/upload/ReportSender;->putUploadFileRequest(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/Object;)Lcom/smartisan/feedbackhelper/utils/MultiPartStringRequest;

    move-result-object v8

    .line 176
    .local v8, "multiPartRequest":Lcom/smartisan/feedbackhelper/utils/MultiPartStringRequest;
    invoke-virtual {p1, v8}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 177
    return-void
.end method

.method private putUploadFileRequest(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/Object;)Lcom/smartisan/feedbackhelper/utils/MultiPartStringRequest;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p5, "errorListener"    # Lcom/android/volley/Response$ErrorListener;
    .param p6, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/smartisan/feedbackhelper/utils/MultiPartStringRequest;"
        }
    .end annotation

    .prologue
    .line 183
    .local p2, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "responseListener":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    .line 184
    :cond_0
    const/4 v0, 0x0

    .line 208
    :goto_0
    return-object v0

    .line 187
    :cond_1
    new-instance v0, Lcom/smartisan/feedbackhelper/upload/ReportSender$6;

    const/4 v2, 0x2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p4

    move-object v5, p5

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/smartisan/feedbackhelper/upload/ReportSender$6;-><init>(Lcom/smartisan/feedbackhelper/upload/ReportSender;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/Map;Ljava/util/Map;)V

    .line 208
    .local v0, "multiPartRequest":Lcom/smartisan/feedbackhelper/utils/MultiPartStringRequest;
    goto :goto_0
.end method

.method private sendMsg(ILcom/smartisan/feedbackhelper/utils/ComplainReport;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "obj"    # Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    .prologue
    .line 212
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 213
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 214
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 215
    iget-object v1, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 216
    return-void
.end method


.method public sendReport(Lcom/smartisan/feedbackhelper/utils/ComplainReport;)V
    .locals 3
    .param p1, "report"    # Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    .prologue
    .line 76
    :try_start_0
    sget-object v1, Lcom/smartisan/feedbackhelper/upload/ReportSender;->reportQueue:Lcom/android/volley/RequestQueue;

    iget-object v2, p0, Lcom/smartisan/feedbackhelper/upload/ReportSender;->reportUrl:Ljava/lang/String;

    invoke-direct {p0, v1, v2, p1}, Lcom/smartisan/feedbackhelper/upload/ReportSender;->postData(Lcom/android/volley/RequestQueue;Ljava/lang/String;Lcom/smartisan/feedbackhelper/utils/ComplainReport;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Lorg/json/JSONException;
    const/4 v1, -0x1

    invoke-direct {p0, v1, p1}, Lcom/smartisan/feedbackhelper/upload/ReportSender;->sendMsg(ILcom/smartisan/feedbackhelper/utils/ComplainReport;)V

    goto :goto_0
.end method
