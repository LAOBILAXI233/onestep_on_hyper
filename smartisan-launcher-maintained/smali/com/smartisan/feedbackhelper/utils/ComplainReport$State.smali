.class public final enum Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;
.super Ljava/lang/Enum;
.source "ComplainReport.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisan/feedbackhelper/utils/ComplainReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;",
        ">;"
    }
.end annotation


.field private static final synthetic $VALUES:[Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

.field public static final enum ARCHIVED_FULL:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

.field public static final enum ARCHIVED_PARTIAL:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

.field public static final enum BUILDING:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

.field public static final enum BUILD_FAILED:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

.field public static final enum COMPLETE_FAILED:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

.field public static final enum COMPLETING:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

.field public static final enum COMPRESSING:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

.field public static final enum COMPRESSION_PAUSED:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

.field public static final enum COMPRESS_FAILED:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

.field public static final enum READY_TO_ARCHIVE:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

.field public static final enum READY_TO_COMPLETE:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

.field public static final enum READY_TO_COMPRESS:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

.field public static final enum READY_TO_TRANSMIT:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

.field public static final enum READY_TO_UPLOAD:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

.field public static final enum TRANSMITTING:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

.field public static final enum TRANSMIT_FAILED:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

.field public static final enum USER_DELETED_DRAFT:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

.field public static final enum USER_DELETED_OUTBOX:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

.field public static final enum WAIT_USER_INPUT:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;


.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    new-instance v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    const-string v1, "BUILDING"

    invoke-direct {v0, v1, v3}, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->BUILDING:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    new-instance v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    const-string v1, "WAIT_USER_INPUT"

    invoke-direct {v0, v1, v4}, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->WAIT_USER_INPUT:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    .line 44
    new-instance v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    const-string v1, "READY_TO_UPLOAD"

    invoke-direct {v0, v1, v5}, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->READY_TO_UPLOAD:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    new-instance v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    const-string v1, "READY_TO_COMPRESS"

    invoke-direct {v0, v1, v6}, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->READY_TO_COMPRESS:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    new-instance v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    const-string v1, "COMPRESSING"

    invoke-direct {v0, v1, v7}, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->COMPRESSING:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    new-instance v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    const-string v1, "COMPRESSION_PAUSED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->COMPRESSION_PAUSED:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    new-instance v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    const-string v1, "READY_TO_TRANSMIT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->READY_TO_TRANSMIT:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    new-instance v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    const-string v1, "TRANSMITTING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->TRANSMITTING:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    new-instance v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    const-string v1, "READY_TO_COMPLETE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->READY_TO_COMPLETE:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    new-instance v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    const-string v1, "COMPLETING"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->COMPLETING:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    .line 46
    new-instance v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    const-string v1, "READY_TO_ARCHIVE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->READY_TO_ARCHIVE:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    new-instance v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    const-string v1, "ARCHIVED_FULL"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->ARCHIVED_FULL:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    new-instance v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    const-string v1, "ARCHIVED_PARTIAL"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->ARCHIVED_PARTIAL:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    .line 48
    new-instance v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    const-string v1, "BUILD_FAILED"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->BUILD_FAILED:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    new-instance v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    const-string v1, "COMPRESS_FAILED"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->COMPRESS_FAILED:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    new-instance v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    const-string v1, "TRANSMIT_FAILED"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->TRANSMIT_FAILED:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    new-instance v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    const-string v1, "COMPLETE_FAILED"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->COMPLETE_FAILED:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    new-instance v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    const-string v1, "USER_DELETED_OUTBOX"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->USER_DELETED_OUTBOX:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    new-instance v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    const-string v1, "USER_DELETED_DRAFT"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->USER_DELETED_DRAFT:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    .line 41
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    sget-object v1, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->BUILDING:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->WAIT_USER_INPUT:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->READY_TO_UPLOAD:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->READY_TO_COMPRESS:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->COMPRESSING:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->COMPRESSION_PAUSED:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->READY_TO_TRANSMIT:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->TRANSMITTING:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->READY_TO_COMPLETE:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->COMPLETING:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->READY_TO_ARCHIVE:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->ARCHIVED_FULL:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->ARCHIVED_PARTIAL:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->BUILD_FAILED:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->COMPRESS_FAILED:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->TRANSMIT_FAILED:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->COMPLETE_FAILED:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->USER_DELETED_OUTBOX:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->USER_DELETED_DRAFT:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->$VALUES:[Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

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

.method public static categoryToString(Landroid/content/Context;Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;)Ljava/lang/String;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "state"    # Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    .prologue
    .line 104
    sget-object v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$2;->$SwitchMap$com$smartisan$feedbackhelper$utils$ComplainReport$State:[I

    invoke-virtual {p1}, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 129
    :pswitch_0
    invoke-static {p0, p1}, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->stateToString(Landroid/content/Context;Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 106
    :pswitch_1
    sget v0, Lcom/smartisan/feedbackhelper/R$string;->ready_to_upload_report:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 109
    :pswitch_2
    sget v0, Lcom/smartisan/feedbackhelper/R$string;->ready_to_transmit_report:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 111
    :pswitch_3
    sget v0, Lcom/smartisan/feedbackhelper/R$string;->queued_for_upload:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 113
    :pswitch_4
    sget v0, Lcom/smartisan/feedbackhelper/R$string;->compressing_report:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 116
    :pswitch_5
    sget v0, Lcom/smartisan/feedbackhelper/R$string;->transmitting_report:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public static isUploadingState(Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;)Z
    .locals 1
    .param p0, "state"    # Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    .prologue
    .line 51
    sget-object v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->READY_TO_UPLOAD:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    invoke-virtual {v0, p0}, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->COMPRESSING:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    invoke-virtual {v0, p0}, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->READY_TO_TRANSMIT:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    .line 52
    invoke-virtual {v0, p0}, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->TRANSMITTING:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    .line 53
    invoke-virtual {v0, p0}, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->READY_TO_COMPLETE:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    .line 54
    invoke-virtual {v0, p0}, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static stateToString(Landroid/content/Context;Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;)Ljava/lang/String;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "state"    # Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    .prologue
    .line 58
    sget-object v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$2;->$SwitchMap$com$smartisan$feedbackhelper$utils$ComplainReport$State:[I

    invoke-virtual {p1}, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 98
    invoke-virtual {p1}, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 60
    :pswitch_0
    sget v0, Lcom/smartisan/feedbackhelper/R$string;->building_report:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 62
    :pswitch_1
    sget v0, Lcom/smartisan/feedbackhelper/R$string;->waiting_user_input_report:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 64
    :pswitch_2
    sget v0, Lcom/smartisan/feedbackhelper/R$string;->ready_to_upload_report:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 66
    :pswitch_3
    sget v0, Lcom/smartisan/feedbackhelper/R$string;->ready_to_compress_report:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 68
    :pswitch_4
    sget v0, Lcom/smartisan/feedbackhelper/R$string;->compressing_report:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 70
    :pswitch_5
    sget v0, Lcom/smartisan/feedbackhelper/R$string;->compressing_paused_report:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 72
    :pswitch_6
    sget v0, Lcom/smartisan/feedbackhelper/R$string;->ready_to_transmit_report:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 74
    :pswitch_7
    sget v0, Lcom/smartisan/feedbackhelper/R$string;->transmitting_report:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 76
    :pswitch_8
    sget v0, Lcom/smartisan/feedbackhelper/R$string;->ready_to_complete_report:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 78
    :pswitch_9
    sget v0, Lcom/smartisan/feedbackhelper/R$string;->completing_report:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 80
    :pswitch_a
    sget v0, Lcom/smartisan/feedbackhelper/R$string;->ready_to_archive_report:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 82
    :pswitch_b
    sget v0, Lcom/smartisan/feedbackhelper/R$string;->archived_full_report:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 84
    :pswitch_c
    sget v0, Lcom/smartisan/feedbackhelper/R$string;->archived_partial_report:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 86
    :pswitch_d
    sget v0, Lcom/smartisan/feedbackhelper/R$string;->build_failed_report:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 88
    :pswitch_e
    sget v0, Lcom/smartisan/feedbackhelper/R$string;->compress_failed_report:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 90
    :pswitch_f
    sget v0, Lcom/smartisan/feedbackhelper/R$string;->transmit_failed_report:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 92
    :pswitch_10
    sget v0, Lcom/smartisan/feedbackhelper/R$string;->complete_failed_report:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 94
    :pswitch_11
    sget v0, Lcom/smartisan/feedbackhelper/R$string;->user_deleted_outbox_report:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 96
    :pswitch_12
    sget v0, Lcom/smartisan/feedbackhelper/R$string;->user_deleted_draft_report:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    return-object v0
.end method

.method public static values()[Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->$VALUES:[Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    invoke-virtual {v0}, [Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    return-object v0
.end method
