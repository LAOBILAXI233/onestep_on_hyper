.class final enum Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;
.super Ljava/lang/Enum;
.source "UploadWorker.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisan/feedbackhelper/upload/UploadWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CompressSubstate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;",
        ">;"
    }
.end annotation


.field private static final synthetic $VALUES:[Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;

.field public static final enum CHANGE_LOGPATH:Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;

.field public static final enum CHANGE_STATE:Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;

.field public static final enum COMPRESS:Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;

.field public static final enum PREPARE:Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;

.field public static final enum REMOVE_FILES:Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;

.field public static final enum START_TO_UPLOAD:Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;


.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    new-instance v0, Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;

    const-string v1, "PREPARE"

    invoke-direct {v0, v1, v3}, Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;->PREPARE:Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;

    new-instance v0, Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;

    const-string v1, "COMPRESS"

    invoke-direct {v0, v1, v4}, Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;->COMPRESS:Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;

    new-instance v0, Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;

    const-string v1, "CHANGE_STATE"

    invoke-direct {v0, v1, v5}, Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;->CHANGE_STATE:Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;

    new-instance v0, Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;

    const-string v1, "REMOVE_FILES"

    invoke-direct {v0, v1, v6}, Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;->REMOVE_FILES:Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;

    new-instance v0, Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;

    const-string v1, "CHANGE_LOGPATH"

    invoke-direct {v0, v1, v7}, Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;->CHANGE_LOGPATH:Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;

    new-instance v0, Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;

    const-string v1, "START_TO_UPLOAD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;->START_TO_UPLOAD:Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;

    .line 41
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;

    sget-object v1, Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;->PREPARE:Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;

    aput-object v1, v0, v3

    sget-object v1, Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;->COMPRESS:Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;

    aput-object v1, v0, v4

    sget-object v1, Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;->CHANGE_STATE:Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;

    aput-object v1, v0, v5

    sget-object v1, Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;->REMOVE_FILES:Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;

    aput-object v1, v0, v6

    sget-object v1, Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;->CHANGE_LOGPATH:Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;->START_TO_UPLOAD:Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;

    aput-object v2, v0, v1

    sput-object v0, Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;->$VALUES:[Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v0, Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;

    return-object v0
.end method

.method public static values()[Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;->$VALUES:[Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;

    invoke-virtual {v0}, [Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;

    return-object v0
.end method
