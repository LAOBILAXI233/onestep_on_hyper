.class Lcom/smartisan/feedbackhelper/FeedbackActivity$3;
.super Ljava/lang/Thread;
.source "FeedbackActivity.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisan/feedbackhelper/FeedbackActivity;->uploadManualReport()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisan/feedbackhelper/FeedbackActivity;


.method constructor <init>(Lcom/smartisan/feedbackhelper/FeedbackActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisan/feedbackhelper/FeedbackActivity;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity$3;->this$0:Lcom/smartisan/feedbackhelper/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


.method public run()V
    .locals 10

    .prologue
    .line 337
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 339
    .local v6, "timeMillis":J
    :try_start_0
    iget-object v5, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity$3;->this$0:Lcom/smartisan/feedbackhelper/FeedbackActivity;

    const-string v8, "feedback"

    invoke-static {v8, v6, v7}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->makeLogDir(Ljava/lang/String;J)Ljava/io/File;

    move-result-object v8

    .line 340
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/smartisan/feedbackhelper/FeedbackActivity;->logPath:Ljava/lang/String;

    .line 341
    const-string v0, ""

    .line 342
    .local v0, "attach_pics":Ljava/lang/String;
    iget-object v5, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity$3;->this$0:Lcom/smartisan/feedbackhelper/FeedbackActivity;

    invoke-static {v5}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->access$300(Lcom/smartisan/feedbackhelper/FeedbackActivity;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity$3;->this$0:Lcom/smartisan/feedbackhelper/FeedbackActivity;

    .line 343
    invoke-static {v5}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->access$300(Lcom/smartisan/feedbackhelper/FeedbackActivity;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 344
    iget-object v5, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity$3;->this$0:Lcom/smartisan/feedbackhelper/FeedbackActivity;

    invoke-static {v5}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->access$300(Lcom/smartisan/feedbackhelper/FeedbackActivity;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 345
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity$3;->this$0:Lcom/smartisan/feedbackhelper/FeedbackActivity;

    invoke-static {v5}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->access$400(Lcom/smartisan/feedbackhelper/FeedbackActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 346
    iget-object v5, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity$3;->this$0:Lcom/smartisan/feedbackhelper/FeedbackActivity;

    invoke-static {v5}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->access$400(Lcom/smartisan/feedbackhelper/FeedbackActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 347
    .local v2, "filepath":Ljava/lang/String;
    iget-object v5, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity$3;->this$0:Lcom/smartisan/feedbackhelper/FeedbackActivity;

    iget-object v5, v5, Lcom/smartisan/feedbackhelper/FeedbackActivity;->logPath:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/smartisan/feedbackhelper/utils/Util;->compressPicture(Ljava/lang/String;Ljava/lang/String;)Z

    .line 345
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 350
    .end local v2    # "filepath":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_0
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity$3;->this$0:Lcom/smartisan/feedbackhelper/FeedbackActivity;

    const-class v8, Lcom/smartisan/feedbackhelper/utils/ReportGenerate;

    invoke-direct {v4, v5, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 352
    .local v4, "reportIntent":Landroid/content/Intent;
    const-string v5, "smartisan.intent.action.REPORT.DATA"

    .line 353
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    const-string v5, "tag"

    const-string v8, "sdk"

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    const-string v5, "from"

    const-string v8, "sdk"

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    const-string v5, "summary"

    iget-object v8, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity$3;->this$0:Lcom/smartisan/feedbackhelper/FeedbackActivity;

    iget-object v8, v8, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mAppName:Ljava/lang/String;

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    const-string v5, "description"

    iget-object v8, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity$3;->this$0:Lcom/smartisan/feedbackhelper/FeedbackActivity;

    iget-object v8, v8, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mDescriptionText:Ljava/lang/String;

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    const-string v5, "createtime"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 362
    const-string v5, "attach_files"

    iget-object v8, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity$3;->this$0:Lcom/smartisan/feedbackhelper/FeedbackActivity;

    iget-object v8, v8, Lcom/smartisan/feedbackhelper/FeedbackActivity;->logPath:Ljava/lang/String;

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    const-string v5, "snapshots"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    const-string v5, "email_add"

    iget-object v8, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity$3;->this$0:Lcom/smartisan/feedbackhelper/FeedbackActivity;

    iget-object v8, v8, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mEmailString:Ljava/lang/String;

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    const-string v5, "packageName"

    iget-object v8, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity$3;->this$0:Lcom/smartisan/feedbackhelper/FeedbackActivity;

    iget-object v8, v8, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    iget-object v5, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity$3;->this$0:Lcom/smartisan/feedbackhelper/FeedbackActivity;

    invoke-virtual {v5, v4}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Lcom/smartisan/feedbackhelper/utils/BugReportException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    .end local v0    # "attach_pics":Ljava/lang/String;
    .end local v4    # "reportIntent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 371
    :catch_0
    move-exception v1

    .line 372
    .local v1, "e":Lcom/smartisan/feedbackhelper/utils/BugReportException;
    iget-object v5, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity$3;->this$0:Lcom/smartisan/feedbackhelper/FeedbackActivity;

    iget-object v5, v5, Lcom/smartisan/feedbackhelper/FeedbackActivity;->tag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error processing others@"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
