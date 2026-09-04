.class Lcom/smartisan/feedbackhelper/utils/AsyncDialog$ModalDialogAsyncTask;
.super Landroid/os/AsyncTask;
.source "AsyncDialog.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisan/feedbackhelper/utils/AsyncDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModalDialogAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


.field final mPostExecuteTask:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/smartisan/feedbackhelper/utils/AsyncDialog;


.method public constructor <init>(Lcom/smartisan/feedbackhelper/utils/AsyncDialog;ILjava/lang/Runnable;)V
    .locals 2
    .param p2, "dialogStringId"    # I
    .param p3, "postExecuteTask"    # Ljava/lang/Runnable;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/smartisan/feedbackhelper/utils/AsyncDialog$ModalDialogAsyncTask;->this$0:Lcom/smartisan/feedbackhelper/utils/AsyncDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 110
    iput-object p3, p0, Lcom/smartisan/feedbackhelper/utils/AsyncDialog$ModalDialogAsyncTask;->mPostExecuteTask:Ljava/lang/Runnable;

    .line 112
    invoke-static {p1}, Lcom/smartisan/feedbackhelper/utils/AsyncDialog;->access$000(Lcom/smartisan/feedbackhelper/utils/AsyncDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/smartisan/feedbackhelper/utils/AsyncDialog$ModalDialogAsyncTask;->createProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/smartisan/feedbackhelper/utils/AsyncDialog;->access$002(Lcom/smartisan/feedbackhelper/utils/AsyncDialog;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 115
    :cond_0
    invoke-static {p1}, Lcom/smartisan/feedbackhelper/utils/AsyncDialog;->access$000(Lcom/smartisan/feedbackhelper/utils/AsyncDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {p1}, Lcom/smartisan/feedbackhelper/utils/AsyncDialog;->access$100(Lcom/smartisan/feedbackhelper/utils/AsyncDialog;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 116
    return-void
.end method

.method private createProgressDialog()Landroid/app/ProgressDialog;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 122
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/smartisan/feedbackhelper/utils/AsyncDialog$ModalDialogAsyncTask;->this$0:Lcom/smartisan/feedbackhelper/utils/AsyncDialog;

    invoke-static {v1}, Lcom/smartisan/feedbackhelper/utils/AsyncDialog;->access$100(Lcom/smartisan/feedbackhelper/utils/AsyncDialog;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1030074

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 124
    .local v0, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 125
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 126
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 128
    return-object v0
.end method


.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    check-cast p1, [Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/smartisan/feedbackhelper/utils/AsyncDialog$ModalDialogAsyncTask;->doInBackground([Ljava/lang/Runnable;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Runnable;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Runnable;

    .prologue
    .line 147
    if-eqz p1, :cond_0

    .line 149
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 150
    aget-object v1, p1, v0

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    .end local v0    # "i":I
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 101
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/smartisan/feedbackhelper/utils/AsyncDialog$ModalDialogAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/AsyncDialog$ModalDialogAsyncTask;->mPostExecuteTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/AsyncDialog$ModalDialogAsyncTask;->mPostExecuteTask:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 178
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 138
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/AsyncDialog$ModalDialogAsyncTask;->this$0:Lcom/smartisan/feedbackhelper/utils/AsyncDialog;

    invoke-static {v0}, Lcom/smartisan/feedbackhelper/utils/AsyncDialog;->access$300(Lcom/smartisan/feedbackhelper/utils/AsyncDialog;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisan/feedbackhelper/utils/AsyncDialog$ModalDialogAsyncTask;->this$0:Lcom/smartisan/feedbackhelper/utils/AsyncDialog;

    invoke-static {v1}, Lcom/smartisan/feedbackhelper/utils/AsyncDialog;->access$200(Lcom/smartisan/feedbackhelper/utils/AsyncDialog;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 139
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/AsyncDialog$ModalDialogAsyncTask;->this$0:Lcom/smartisan/feedbackhelper/utils/AsyncDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/smartisan/feedbackhelper/utils/AsyncDialog;->access$402(Lcom/smartisan/feedbackhelper/utils/AsyncDialog;Z)Z

    .line 140
    return-void
.end method
