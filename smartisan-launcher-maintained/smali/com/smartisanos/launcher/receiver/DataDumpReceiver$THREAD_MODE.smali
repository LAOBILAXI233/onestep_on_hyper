.class final enum Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;
.super Ljava/lang/Enum;
.source "DataDumpReceiver.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/receiver/DataDumpReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "THREAD_MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;",
        ">;"
    }
.end annotation


.field private static final synthetic $VALUES:[Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;

.field public static final enum GL_THREAD:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;

.field public static final enum MAIN_THREAD:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;


.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 153
    new-instance v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;

    const-string v1, "MAIN_THREAD"

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;->MAIN_THREAD:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;

    .line 154
    new-instance v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;

    const-string v1, "GL_THREAD"

    invoke-direct {v0, v1, v3}, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;->GL_THREAD:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;

    .line 152
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;

    sget-object v1, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;->MAIN_THREAD:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;->GL_THREAD:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;->$VALUES:[Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;

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
    .line 152
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 152
    const-class v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;

    return-object v0
.end method

.method public static values()[Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;->$VALUES:[Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;

    invoke-virtual {v0}, [Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;

    return-object v0
.end method
