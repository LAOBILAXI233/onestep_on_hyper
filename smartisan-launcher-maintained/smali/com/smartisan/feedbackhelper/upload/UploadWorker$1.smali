.class Lcom/smartisan/feedbackhelper/upload/UploadWorker$1;
.super Ljava/lang/Thread;
.source "UploadWorker.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisan/feedbackhelper/upload/UploadWorker;->startUpload(Lcom/smartisan/feedbackhelper/utils/ComplainReport;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisan/feedbackhelper/upload/UploadWorker;


.method constructor <init>(Lcom/smartisan/feedbackhelper/upload/UploadWorker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisan/feedbackhelper/upload/UploadWorker;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/smartisan/feedbackhelper/upload/UploadWorker$1;->this$0:Lcom/smartisan/feedbackhelper/upload/UploadWorker;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


.method public run()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/upload/UploadWorker$1;->this$0:Lcom/smartisan/feedbackhelper/upload/UploadWorker;

    invoke-static {v0}, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->access$000(Lcom/smartisan/feedbackhelper/upload/UploadWorker;)V

    .line 58
    return-void
.end method
