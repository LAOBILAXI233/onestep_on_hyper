.class public Lcom/smartisan/feedbackhelper/utils/ComplainReport;
.super Ljava/lang/Object;
.source "ComplainReport.java"

.implements Landroid/os/Parcelable;


.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SimpleDateFormat"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;,
        Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;
    }
.end annotation


.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/smartisan/feedbackhelper/utils/ComplainReport;",
            ">;"
        }
    .end annotation
.end field


.field private apVersion:Ljava/lang/String;

.field private attachment:Ljava/lang/String;

.field private bpVersion:Ljava/lang/String;

.field private createTime:Ljava/util/Date;

.field private deleteAfterUploading:Ljava/lang/String;

.field private emailAdd:Ljava/lang/String;

.field private freeText:Ljava/lang/String;

.field private from:Ljava/lang/String;

.field private id:J

.field private logPath:Ljava/lang/String;

.field private mApkVersion:Ljava/lang/String;

.field private mPriority:I

.field private mShowNotification:I

.field private mUploadPaused:I

.field private mUploadedBytes:I

.field private packageName:Ljava/lang/String;

.field private process:Ljava/lang/String;

.field private screenshotPath:Ljava/lang/String;

.field private state:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

.field private summary:Ljava/lang/String;

.field private tag:Ljava/lang/String;

.field private type:Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;

.field private uploadId:Ljava/lang/String;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$1;

    invoke-direct {v0}, Lcom/smartisan/feedbackhelper/utils/ComplainReport$1;-><init>()V

    sput-object v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object v1, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->state:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    .line 150
    iput-object v1, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->type:Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;

    .line 151
    iput-object v1, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->createTime:Ljava/util/Date;

    .line 152
    iput-object v1, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->summary:Ljava/lang/String;

    .line 153
    iput-object v1, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->tag:Ljava/lang/String;

    .line 154
    iput-object v1, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->freeText:Ljava/lang/String;

    .line 155
    iput-object v1, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->uploadId:Ljava/lang/String;

    .line 159
    iput-object v1, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->screenshotPath:Ljava/lang/String;

    .line 160
    iput-object v1, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->attachment:Ljava/lang/String;

    .line 161
    iput-object v1, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->apVersion:Ljava/lang/String;

    .line 162
    iput-object v1, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->bpVersion:Ljava/lang/String;

    .line 163
    const-string v0, "false"

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->deleteAfterUploading:Ljava/lang/String;

    .line 164
    iput-object v1, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->mApkVersion:Ljava/lang/String;

    .line 165
    const/4 v0, 0x1

    iput v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->mShowNotification:I

    .line 166
    iput-object v1, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->from:Ljava/lang/String;

    .line 167
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->process:Ljava/lang/String;

    .line 168
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->packageName:Ljava/lang/String;

    .line 172
    sget-object v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->WAIT_USER_INPUT:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->state:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    .line 173
    sget-object v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;->USER:Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->type:Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;

    .line 174
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;-><init>()V

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->id:J

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->logPath:Ljava/lang/String;

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->valueOf(Ljava/lang/String;)Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->state:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;->valueOf(Ljava/lang/String;)Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->type:Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;

    .line 182
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->createTime:Ljava/util/Date;

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->summary:Ljava/lang/String;

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->tag:Ljava/lang/String;

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->freeText:Ljava/lang/String;

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->uploadId:Ljava/lang/String;

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->mUploadPaused:I

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->mPriority:I

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->mUploadedBytes:I

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->screenshotPath:Ljava/lang/String;

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->attachment:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->apVersion:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->bpVersion:Ljava/lang/String;

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->deleteAfterUploading:Ljava/lang/String;

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->mApkVersion:Ljava/lang/String;

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->from:Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->process:Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->packageName:Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->emailAdd:Ljava/lang/String;

    .line 200
    return-void
.end method


.method public describeContents()I
    .locals 1

    .prologue
    .line 437
    const/4 v0, 0x0

    return v0
.end method

.method public getApVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->apVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getApkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->mApkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getAttachment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->attachment:Ljava/lang/String;

    return-object v0
.end method

.method public getAttachments()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->getAttachment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 364
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->getAttachment()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\^\\|\\^"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getBpVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->bpVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->createTime:Ljava/util/Date;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->emailAdd:Ljava/lang/String;

    return-object v0
.end method

.method public getFreeText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->freeText:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 237
    iget-wide v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->id:J

    return-wide v0
.end method

.method public getLogPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->logPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->mPriority:I

    return v0
.end method

.method public getProcess()Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->process:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenshotPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->screenshotPath:Ljava/lang/String;

    return-object v0
.end method

.method public getShowNotification()I
    .locals 1

    .prologue
    .line 424
    iget v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->mShowNotification:I

    return v0
.end method

.method public getState()Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->state:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 293
    sget-object v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;->AUTO:Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;

    iget-object v1, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->type:Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;

    if-ne v0, v1, :cond_1

    .line 298
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->summary:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->tag:Ljava/lang/String;

    .line 300
    :goto_0
    return-object v0

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->summary:Ljava/lang/String;

    goto :goto_0

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->tag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->summary:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->tag:Ljava/lang/String;

    goto :goto_0
.end method

.method public getType()Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->type:Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;

    return-object v0
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->uploadId:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadPaused()I
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->mUploadPaused:I

    return v0
.end method

.method public getUploadedBytes()I
    .locals 1

    .prologue
    .line 345
    iget v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->mUploadedBytes:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->createTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEditable()Z
    .locals 2

    .prologue
    .line 420
    sget-object v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->WAIT_USER_INPUT:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    iget-object v1, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->state:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    invoke-virtual {v0, v1}, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;->USER:Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;

    iget-object v1, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->type:Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;

    invoke-virtual {v0, v1}, Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNotificationEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 428
    iget v1, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->mShowNotification:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUploadPaused()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 329
    iget v1, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->mUploadPaused:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setApVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "apVersion"    # Ljava/lang/String;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->apVersion:Ljava/lang/String;

    .line 377
    return-void
.end method

.method public setApkVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->mApkVersion:Ljava/lang/String;

    .line 393
    return-void
.end method

.method public setAttachment(Ljava/lang/String;)V
    .locals 0
    .param p1, "attachment"    # Ljava/lang/String;

    .prologue
    .line 368
    iput-object p1, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->attachment:Ljava/lang/String;

    .line 369
    return-void
.end method

.method public setBpVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "bpVersion"    # Ljava/lang/String;

    .prologue
    .line 384
    iput-object p1, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->bpVersion:Ljava/lang/String;

    .line 385
    return-void
.end method

.method public setCreateTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "createTime"    # Ljava/util/Date;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->createTime:Ljava/util/Date;

    .line 274
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "emailAdd"    # Ljava/lang/String;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->emailAdd:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public setFreeText(Ljava/lang/String;)V
    .locals 0
    .param p1, "freeText"    # Ljava/lang/String;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->freeText:Ljava/lang/String;

    .line 310
    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 400
    iput-object p1, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->from:Ljava/lang/String;

    .line 401
    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 241
    iput-wide p1, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->id:J

    .line 242
    return-void
.end method

.method public setLogPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "logPath"    # Ljava/lang/String;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->logPath:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 416
    iput-object p1, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->packageName:Ljava/lang/String;

    .line 417
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 337
    iput p1, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->mPriority:I

    .line 338
    return-void
.end method

.method public setProcess(Ljava/lang/String;)V
    .locals 0
    .param p1, "process"    # Ljava/lang/String;

    .prologue
    .line 408
    iput-object p1, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->process:Ljava/lang/String;

    .line 409
    return-void
.end method

.method public setScreenshotPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "screenshotPath"    # Ljava/lang/String;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->screenshotPath:Ljava/lang/String;

    .line 354
    return-void
.end method

.method public setShowNotification(I)V
    .locals 0
    .param p1, "showNotification"    # I

    .prologue
    .line 432
    iput p1, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->mShowNotification:I

    .line 433
    return-void
.end method

.method public setState(Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;)V
    .locals 0
    .param p1, "state"    # Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->state:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    .line 258
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->summary:Ljava/lang/String;

    .line 282
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->tag:Ljava/lang/String;

    .line 290
    return-void
.end method

.method public setType(Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;)V
    .locals 0
    .param p1, "type"    # Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->type:Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;

    .line 266
    return-void
.end method

.method public smartisanloadId(Ljava/lang/String;)V
    .locals 0
    .param p1, "uploadId"    # Ljava/lang/String;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->uploadId:Ljava/lang/String;

    .line 318
    return-void
.end method

.method public smartisanloadPaused(I)V
    .locals 0
    .param p1, "uploadPaused"    # I

    .prologue
    .line 325
    iput p1, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->mUploadPaused:I

    .line 326
    return-void
.end method

.method public smartisanloadedBytes(I)V
    .locals 0
    .param p1, "bytes"    # I

    .prologue
    .line 341
    iput p1, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->mUploadedBytes:I

    .line 342
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 441
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->summary:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "None"

    .line 444
    :goto_0
    return-object v0

    .line 441
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->summary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd_HH-mm-ss.SSSZ"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p0}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->getCreateTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->state:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    invoke-virtual {v1}, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 204
    iget-wide v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 205
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->logPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->state:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    invoke-virtual {v0}, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->type:Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;

    invoke-virtual {v0}, Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->createTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 209
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->summary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->freeText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->uploadId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    iget v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->mUploadPaused:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    iget v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->mPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    iget v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->mUploadedBytes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->screenshotPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->attachment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->apVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->bpVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->deleteAfterUploading:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->mApkVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->from:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->process:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->emailAdd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    return-void
.end method
