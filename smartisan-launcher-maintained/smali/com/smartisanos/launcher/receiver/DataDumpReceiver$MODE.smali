.class final enum Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;
.super Ljava/lang/Enum;
.source "DataDumpReceiver.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/receiver/DataDumpReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;",
        ">;"
    }
.end annotation


.field private static final synthetic $VALUES:[Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

.field public static final enum ALL:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

.field public static final enum DB:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

.field public static final enum FPS:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

.field public static final enum INFO_LOG:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

.field public static final enum LAYER:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

.field public static final enum MEMORY:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

.field public static final enum SCENE_DUMP:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

.field public static final enum UI:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

.field public static final enum XML:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;


.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 142
    new-instance v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v3}, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;->ALL:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    .line 143
    new-instance v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    const-string v1, "DB"

    invoke-direct {v0, v1, v4}, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;->DB:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    .line 144
    new-instance v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    const-string v1, "UI"

    invoke-direct {v0, v1, v5}, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;->UI:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    .line 145
    new-instance v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    const-string v1, "LAYER"

    invoke-direct {v0, v1, v6}, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;->LAYER:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    .line 146
    new-instance v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    const-string v1, "MEMORY"

    invoke-direct {v0, v1, v7}, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;->MEMORY:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    .line 147
    new-instance v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    const-string v1, "SCENE_DUMP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;->SCENE_DUMP:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    .line 148
    new-instance v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    const-string v1, "FPS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;->FPS:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    .line 149
    new-instance v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    const-string v1, "XML"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;->XML:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    .line 150
    new-instance v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    const-string v1, "INFO_LOG"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;->INFO_LOG:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    .line 141
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    sget-object v1, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;->ALL:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;->DB:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;->UI:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;->LAYER:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;->MEMORY:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;->SCENE_DUMP:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;->FPS:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;->XML:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;->INFO_LOG:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;->$VALUES:[Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

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
    .line 141
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 141
    const-class v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    return-object v0
.end method

.method public static values()[Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;->$VALUES:[Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    invoke-virtual {v0}, [Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    return-object v0
.end method
