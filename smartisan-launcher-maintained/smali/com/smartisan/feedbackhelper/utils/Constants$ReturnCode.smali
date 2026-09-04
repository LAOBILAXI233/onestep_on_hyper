.class public final enum Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;
.super Ljava/lang/Enum;
.source "Constants.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisan/feedbackhelper/utils/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReturnCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;",
        ">;"
    }
.end annotation


.field private static final synthetic $VALUES:[Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;

.field public static final enum BAD_REQUEST:Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;

.field public static final enum BATTERY_LOW:Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;

.field public static final enum NETWORK_DISCONNECTED:Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;

.field public static final enum SERVER_ERROR:Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;

.field public static final enum SUCCESS:Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;

.field public static final enum UNAUTHORIZED:Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;

.field public static final enum UPLOAD_DELETED:Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;

.field public static final enum UPLOAD_PAUSED:Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;


.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 212
    new-instance v0, Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;->SUCCESS:Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;

    new-instance v0, Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;

    const-string v1, "UNAUTHORIZED"

    invoke-direct {v0, v1, v4}, Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;->UNAUTHORIZED:Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;

    new-instance v0, Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;

    const-string v1, "BAD_REQUEST"

    invoke-direct {v0, v1, v5}, Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;->BAD_REQUEST:Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;

    new-instance v0, Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;

    const-string v1, "UPLOAD_DELETED"

    invoke-direct {v0, v1, v6}, Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;->UPLOAD_DELETED:Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;

    new-instance v0, Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;

    const-string v1, "NETWORK_DISCONNECTED"

    invoke-direct {v0, v1, v7}, Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;->NETWORK_DISCONNECTED:Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;

    new-instance v0, Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;

    const-string v1, "BATTERY_LOW"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;->BATTERY_LOW:Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;

    new-instance v0, Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;

    const-string v1, "UPLOAD_PAUSED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;->UPLOAD_PAUSED:Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;

    new-instance v0, Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;

    const-string v1, "SERVER_ERROR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;->SERVER_ERROR:Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;

    .line 211
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;

    sget-object v1, Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;->SUCCESS:Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;->UNAUTHORIZED:Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;->BAD_REQUEST:Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;->UPLOAD_DELETED:Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;->NETWORK_DISCONNECTED:Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;->BATTERY_LOW:Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;->UPLOAD_PAUSED:Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;->SERVER_ERROR:Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;->$VALUES:[Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;

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
    .line 211
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 211
    const-class v0, Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;

    return-object v0
.end method

.method public static values()[Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;
    .locals 1

    .prologue
    .line 211
    sget-object v0, Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;->$VALUES:[Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;

    invoke-virtual {v0}, [Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;

    return-object v0
.end method
