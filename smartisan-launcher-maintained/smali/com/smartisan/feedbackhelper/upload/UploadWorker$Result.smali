.class public final enum Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;
.super Ljava/lang/Enum;
.source "UploadWorker.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisan/feedbackhelper/upload/UploadWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;",
        ">;"
    }
.end annotation


.field private static final synthetic $VALUES:[Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;

.field public static final enum CANCELLED:Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;

.field public static final enum FAILED:Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;

.field public static final enum INVALID:Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;

.field public static final enum SUCCESSFUL:Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;


.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v2}, Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;->INVALID:Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;

    new-instance v0, Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;

    const-string v1, "CANCELLED"

    invoke-direct {v0, v1, v3}, Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;->CANCELLED:Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;

    new-instance v0, Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v4}, Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;->FAILED:Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;

    new-instance v0, Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;

    const-string v1, "SUCCESSFUL"

    invoke-direct {v0, v1, v5}, Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;->SUCCESSFUL:Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;

    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;

    sget-object v1, Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;->INVALID:Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;

    aput-object v1, v0, v2

    sget-object v1, Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;->CANCELLED:Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;

    aput-object v1, v0, v3

    sget-object v1, Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;->FAILED:Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;

    aput-object v1, v0, v4

    sget-object v1, Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;->SUCCESSFUL:Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;

    aput-object v1, v0, v5

    sput-object v0, Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;->$VALUES:[Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v0, Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;

    return-object v0
.end method

.method public static values()[Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;->$VALUES:[Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;

    invoke-virtual {v0}, [Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;

    return-object v0
.end method
