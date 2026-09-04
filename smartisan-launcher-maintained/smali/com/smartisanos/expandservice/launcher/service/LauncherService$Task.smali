.class public final enum Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;
.super Ljava/lang/Enum;
.source "LauncherService.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/expandservice/launcher/service/LauncherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;",
        ">;"
    }
.end annotation


.field private static final synthetic $VALUES:[Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;

.field public static final enum INIT_CATEGORY_DATA:Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;

.field public static final enum INIT_CATEGORY_PREDEFINED_DATA:Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;

.field public static final enum INSTALL_SHORTCUT:Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;

.field public static final enum SYNC_APP_CATEGORY_BY_PACKAGE:Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;

.field public static final enum SYNC_APP_CATEGORY_FOR_ALL:Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;

.field public static final enum UNINSTALL_SHORTCUT:Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;


.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    new-instance v0, Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;

    const-string v1, "INIT_CATEGORY_DATA"

    invoke-direct {v0, v1, v3}, Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;->INIT_CATEGORY_DATA:Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;

    .line 48
    new-instance v0, Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;

    const-string v1, "INIT_CATEGORY_PREDEFINED_DATA"

    invoke-direct {v0, v1, v4}, Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;->INIT_CATEGORY_PREDEFINED_DATA:Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;

    .line 49
    new-instance v0, Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;

    const-string v1, "SYNC_APP_CATEGORY_BY_PACKAGE"

    invoke-direct {v0, v1, v5}, Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;->SYNC_APP_CATEGORY_BY_PACKAGE:Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;

    .line 50
    new-instance v0, Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;

    const-string v1, "SYNC_APP_CATEGORY_FOR_ALL"

    invoke-direct {v0, v1, v6}, Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;->SYNC_APP_CATEGORY_FOR_ALL:Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;

    .line 51
    new-instance v0, Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;

    const-string v1, "INSTALL_SHORTCUT"

    invoke-direct {v0, v1, v7}, Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;->INSTALL_SHORTCUT:Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;

    .line 52
    new-instance v0, Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;

    const-string v1, "UNINSTALL_SHORTCUT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;->UNINSTALL_SHORTCUT:Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;

    .line 46
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;

    sget-object v1, Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;->INIT_CATEGORY_DATA:Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;

    aput-object v1, v0, v3

    sget-object v1, Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;->INIT_CATEGORY_PREDEFINED_DATA:Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;

    aput-object v1, v0, v4

    sget-object v1, Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;->SYNC_APP_CATEGORY_BY_PACKAGE:Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;

    aput-object v1, v0, v5

    sget-object v1, Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;->SYNC_APP_CATEGORY_FOR_ALL:Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;

    aput-object v1, v0, v6

    sget-object v1, Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;->INSTALL_SHORTCUT:Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;->UNINSTALL_SHORTCUT:Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;

    aput-object v2, v0, v1

    sput-object v0, Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;->$VALUES:[Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;

    return-object v0
.end method

.method public static values()[Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;->$VALUES:[Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;

    invoke-virtual {v0}, [Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;

    return-object v0
.end method
