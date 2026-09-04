.class public Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;
.super Landroid/app/Fragment;
.source "ReportProblemDescriptionFragment.java"

.implements Landroid/view/View$OnClickListener;


.field public static final EXTRA_CATEGORY_RESULT:Ljava/lang/String; = "category_result"


.field public canClick:Z

.field public mButtonCancel:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field public mEditString:Ljava/lang/String;

.field public mEditText:Landroid/widget/EditText;

.field public mEmailString:Ljava/lang/String;

.field mEmailText:Landroid/widget/EditText;

.field mFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field private mScreenShotsAdapter:Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;

.field private mSubmitButton:Landroid/widget/TextView;


.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->canClick:Z

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mSubmitButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->checkWhenToNext()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->destroy()V

    return-void
.end method

.method private checkWhenToNext()Z
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mEditText:Landroid/widget/EditText;

    .line 329
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 332
    :cond_0
    const/4 v0, 0x0

    .line 334
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private destroy()V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/smartisan/feedbackhelper/FeedbackActivity;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/smartisan/feedbackhelper/FeedbackActivity;

    invoke-virtual {v0}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->onExit()V

    .line 354
    :cond_0
    return-void
.end method

.method public static getRealFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 90
    if-nez p1, :cond_0

    .line 111
    :goto_0
    return-object v3

    .line 92
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 93
    .local v9, "scheme":Ljava/lang/String;
    const/4 v7, 0x0

    .line 94
    .local v7, "data":Ljava/lang/String;
    if-nez v9, :cond_2

    .line 95
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    :cond_1
    :goto_1
    move-object v3, v7

    .line 111
    goto :goto_0

    .line 96
    :cond_2
    const-string v0, "file"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 98
    :cond_3
    const-string v0, "content"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v1

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 101
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 102
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 103
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 104
    .local v8, "index":I
    const/4 v0, -0x1

    if-le v8, v0, :cond_4

    .line 105
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 108
    .end local v8    # "index":I
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public static selectPicture(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "localFilesOnly"    # Z

    .prologue
    .line 275
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 276
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 277
    .local v0, "innerIntent":Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    if-eqz p3, :cond_0

    .line 279
    const-string v2, "android.intent.extra.LOCAL_ONLY"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 281
    :cond_0
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 282
    .local v1, "wrapperIntent":Landroid/content/Intent;
    check-cast p0, Lcom/smartisan/feedbackhelper/FeedbackActivity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0, v1, p1}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 284
    .end local v0    # "innerIntent":Landroid/content/Intent;
    .end local v1    # "wrapperIntent":Landroid/content/Intent;
    :cond_1
    return-void
.end method


.method public checkDescription()Z
    .locals 4

    .prologue
    .line 316
    iget-object v2, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "description":Ljava/lang/String;
    const/4 v1, 0x0

    .line 318
    .local v1, "showDialog":Z
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mScreenShotsAdapter:Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;

    .line 319
    invoke-virtual {v2}, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->isShotsEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 320
    const/4 v1, 0x0

    .line 324
    :goto_0
    return v1

    .line 322
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public cleanFormData()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mEditText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mEmailText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mScreenShotsAdapter:Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;

    invoke-virtual {v0}, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->clear()V

    .line 154
    return-void
.end method

.method public getmEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getmScreenShotsAdapter()Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mScreenShotsAdapter:Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;

    return-object v0
.end method

.method public handleSendImage(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 129
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 130
    .local v0, "imageUri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->getRealFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "imgPath":Ljava/lang/String;
    iget-object v2, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mScreenShotsAdapter:Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;

    invoke-virtual {v2, v1}, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->addShotsFile(Ljava/lang/String;)V

    .line 134
    .end local v1    # "imgPath":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public handleSendMultipleImages(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 137
    const-string v3, "android.intent.extra.STREAM"

    .line 138
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 139
    .local v1, "imageUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x5

    if-le v3, v4, :cond_0

    .line 140
    iget-object v3, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mContext:Landroid/content/Context;

    sget v4, Lcom/smartisan/feedbackhelper/R$string;->feedback_add_pic_limit:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 141
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 142
    invoke-virtual {p0}, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 144
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 145
    .local v0, "image":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->getRealFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "imgPath":Ljava/lang/String;
    iget-object v4, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mScreenShotsAdapter:Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;

    invoke-virtual {v4, v2}, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->addShotsFile(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    .end local v0    # "image":Landroid/net/Uri;
    .end local v2    # "imgPath":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public handleSendText(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 116
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "sharedText":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 119
    .local v0, "len":I
    const/16 v2, 0x3e8

    if-lt v0, v2, :cond_1

    .line 120
    invoke-virtual {p0}, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 126
    .end local v0    # "len":I
    :cond_0
    :goto_0
    return-void

    .line 122
    .restart local v0    # "len":I
    :cond_1
    iget-object v2, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v2, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 313
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mContext:Landroid/content/Context;

    .line 74
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/smartisan/feedbackhelper/FeedbackActivity;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/smartisan/feedbackhelper/FeedbackActivity;

    iget-object v0, v0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mDescriptionText:Ljava/lang/String;

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mEditString:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/smartisan/feedbackhelper/FeedbackActivity;

    iget-object v0, v0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mEmailText:Ljava/lang/String;

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mEmailString:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/smartisan/feedbackhelper/FeedbackActivity;

    iget-object v0, v0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mFileList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mFileList:Ljava/util/ArrayList;

    .line 78
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/smartisan/feedbackhelper/FeedbackActivity;

    iget-object v0, v0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->mScreenShotsAdapter:Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mScreenShotsAdapter:Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;

    .line 79
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/smartisan/feedbackhelper/FeedbackActivity;

    iget-object v0, v0, Lcom/smartisan/feedbackhelper/FeedbackActivity;->title:Lcom/smartisan/feedbackhelper/utils/Title;

    .line 80
    invoke-virtual {v0}, Lcom/smartisan/feedbackhelper/utils/Title;->getBackButton()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mButtonCancel:Landroid/widget/TextView;

    .line 82
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mHandler:Landroid/os/Handler;

    .line 83
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mScreenShotsAdapter:Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;

    if-nez v0, :cond_1

    .line 84
    new-instance v0, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;

    iget-object v1, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mScreenShotsAdapter:Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mScreenShotsAdapter:Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;

    iget-object v1, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->setFileList(Ljava/util/ArrayList;)V

    .line 87
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 160
    sget v5, Lcom/smartisan/feedbackhelper/R$layout;->fragment_problem_description:I

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 162
    .local v4, "view":Landroid/view/View;
    sget v5, Lcom/smartisan/feedbackhelper/R$id;->feedback_submit:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mSubmitButton:Landroid/widget/TextView;

    .line 163
    iget-object v5, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mSubmitButton:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 164
    sget v5, Lcom/smartisan/feedbackhelper/R$id;->et_problem_description:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mEditText:Landroid/widget/EditText;

    .line 165
    iget-object v5, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mEditString:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mEditString:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 166
    iget-object v5, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mEditText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mEditString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v5, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mSubmitButton:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 169
    :cond_0
    sget v5, Lcom/smartisan/feedbackhelper/R$id;->feedback_user_info_email:I

    .line 170
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mEmailText:Landroid/widget/EditText;

    .line 171
    iget-object v5, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mEmailString:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mEmailString:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 172
    iget-object v5, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mEmailText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mEmailString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 175
    :cond_1
    invoke-virtual {p0}, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 176
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, "type":Ljava/lang/String;
    const-string v5, "android.intent.action.SEND"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v3, :cond_4

    .line 180
    const-string v5, "text/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 181
    invoke-virtual {p0, v2}, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->handleSendText(Landroid/content/Intent;)V

    .line 191
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mEmailText:Landroid/widget/EditText;

    new-instance v6, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment$1;

    invoke-direct {v6, p0}, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment$1;-><init>(Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v5, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 198
    iget-object v5, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mEditText:Landroid/widget/EditText;

    new-instance v6, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment$2;

    invoke-direct {v6, p0}, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment$2;-><init>(Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v5, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mEditText:Landroid/widget/EditText;

    new-instance v6, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment$3;

    invoke-direct {v6, p0}, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment$3;-><init>(Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 236
    iget-object v5, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mButtonCancel:Landroid/widget/TextView;

    new-instance v6, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment$4;

    invoke-direct {v6, p0}, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment$4;-><init>(Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object v5, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mSubmitButton:Landroid/widget/TextView;

    new-instance v6, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment$5;

    invoke-direct {v6, p0}, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment$5;-><init>(Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    sget v5, Lcom/smartisan/feedbackhelper/R$id;->gd_problem_screen_shots:I

    .line 261
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    .line 262
    .local v1, "grid":Landroid/widget/GridView;
    iget-object v5, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mScreenShotsAdapter:Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;

    invoke-virtual {v1, v5}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 263
    new-instance v5, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment$6;

    invoke-direct {v5, p0}, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment$6;-><init>(Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;)V

    invoke-virtual {v1, v5}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 270
    return-object v4

    .line 182
    .end local v1    # "grid":Landroid/widget/GridView;
    :cond_3
    const-string v5, "image/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 183
    invoke-virtual {p0, v2}, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->handleSendImage(Landroid/content/Intent;)V

    goto :goto_0

    .line 185
    :cond_4
    const-string v5, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v3, :cond_2

    .line 186
    const-string v5, "image/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 187
    invoke-virtual {p0, v2}, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->handleSendMultipleImages(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 365
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 366
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 359
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 360
    return-void
.end method

.method public showDialog()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 338
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mContext:Landroid/content/Context;

    sget v1, Lcom/smartisan/feedbackhelper/R$string;->problem_description_dialog_info:I

    sget v4, Lcom/smartisan/feedbackhelper/R$string;->problem_description_dialog_cancel:I

    new-instance v5, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment$7;

    invoke-direct {v5, p0}, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment$7;-><init>(Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;)V

    sget v6, Lcom/smartisan/feedbackhelper/R$string;->problem_description_dialog_ok:I

    const/4 v7, 0x0

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/smartisan/feedbackhelper/utils/DialogHelper;->createDialog(Landroid/content/Context;IIIILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v8

    .line 347
    .local v8, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 348
    return-void
.end method
