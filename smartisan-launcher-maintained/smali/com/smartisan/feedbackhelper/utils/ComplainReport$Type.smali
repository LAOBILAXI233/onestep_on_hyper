.class public final enum Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;
.super Ljava/lang/Enum;
.source "ComplainReport.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisan/feedbackhelper/utils/ComplainReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;",
        ">;"
    }
.end annotation


.field private static final synthetic $VALUES:[Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;

.field public static final enum AUTO:Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;

.field public static final enum USER:Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;


.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 135
    new-instance v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;

    const-string v1, "AUTO"

    invoke-direct {v0, v1, v2}, Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;->AUTO:Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;

    new-instance v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;

    const-string v1, "USER"

    invoke-direct {v0, v1, v3}, Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;->USER:Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;

    .line 134
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;

    sget-object v1, Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;->AUTO:Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;->USER:Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;->$VALUES:[Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;

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
    .line 134
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static typeToString(Landroid/content/Context;Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;)Ljava/lang/String;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "type"    # Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;

    .prologue
    .line 138
    sget-object v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$2;->$SwitchMap$com$smartisan$feedbackhelper$utils$ComplainReport$Type:[I

    invoke-virtual {p1}, Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 144
    invoke-virtual {p1}, Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 140
    :pswitch_0
    sget v0, Lcom/smartisan/feedbackhelper/R$string;->type_auto:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 142
    :pswitch_1
    sget v0, Lcom/smartisan/feedbackhelper/R$string;->type_user:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 134
    const-class v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;

    return-object v0
.end method

.method public static values()[Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;->$VALUES:[Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;

    invoke-virtual {v0}, [Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;

    return-object v0
.end method
