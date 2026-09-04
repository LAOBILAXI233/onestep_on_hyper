.class public Lcom/smartisan/feedbackhelper/utils/AsyncDialog;
.super Ljava/lang/Object;
.source "AsyncDialog.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisan/feedbackhelper/utils/AsyncDialog$ModalDialogAsyncTask;
    }
.end annotation


.field private final mActivity:Landroid/app/Activity;

.field private final mHandler:Landroid/os/Handler;

.field private mIsRunning:Z

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mShowProgressDialogRunnable:Ljava/lang/Runnable;


.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/smartisan/feedbackhelper/utils/AsyncDialog$1;

    invoke-direct {v0, p0}, Lcom/smartisan/feedbackhelper/utils/AsyncDialog$1;-><init>(Lcom/smartisan/feedbackhelper/utils/AsyncDialog;)V

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/utils/AsyncDialog;->mShowProgressDialogRunnable:Ljava/lang/Runnable;

    .line 38
    iput-object p1, p0, Lcom/smartisan/feedbackhelper/utils/AsyncDialog;->mActivity:Landroid/app/Activity;

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/utils/AsyncDialog;->mHandler:Landroid/os/Handler;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/smartisan/feedbackhelper/utils/AsyncDialog;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/feedbackhelper/utils/AsyncDialog;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/AsyncDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/smartisan/feedbackhelper/utils/AsyncDialog;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/smartisan/feedbackhelper/utils/AsyncDialog;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/smartisan/feedbackhelper/utils/AsyncDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/smartisan/feedbackhelper/utils/AsyncDialog;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/feedbackhelper/utils/AsyncDialog;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/AsyncDialog;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/smartisan/feedbackhelper/utils/AsyncDialog;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/feedbackhelper/utils/AsyncDialog;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/AsyncDialog;->mShowProgressDialogRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/smartisan/feedbackhelper/utils/AsyncDialog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/feedbackhelper/utils/AsyncDialog;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/AsyncDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$402(Lcom/smartisan/feedbackhelper/utils/AsyncDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/smartisan/feedbackhelper/utils/AsyncDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/smartisan/feedbackhelper/utils/AsyncDialog;->mIsRunning:Z

    return p1
.end method


.method public clearPendingProgressDialog()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/AsyncDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/smartisan/feedbackhelper/utils/AsyncDialog;->mShowProgressDialogRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisan/feedbackhelper/utils/AsyncDialog;->mIsRunning:Z

    .line 80
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/AsyncDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/AsyncDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/AsyncDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/AsyncDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 87
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/utils/AsyncDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0
.end method

.method public runAsync(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V
    .locals 3
    .param p1, "backgroundTask"    # Ljava/lang/Runnable;
    .param p2, "postExecuteTask"    # Ljava/lang/Runnable;
    .param p3, "dialogStringId"    # I

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/smartisan/feedbackhelper/utils/AsyncDialog;->mIsRunning:Z

    if-eqz v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    new-instance v0, Lcom/smartisan/feedbackhelper/utils/AsyncDialog$ModalDialogAsyncTask;

    invoke-direct {v0, p0, p3, p2}, Lcom/smartisan/feedbackhelper/utils/AsyncDialog$ModalDialogAsyncTask;-><init>(Lcom/smartisan/feedbackhelper/utils/AsyncDialog;ILjava/lang/Runnable;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Runnable;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 62
    invoke-virtual {v0, v1}, Lcom/smartisan/feedbackhelper/utils/AsyncDialog$ModalDialogAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
