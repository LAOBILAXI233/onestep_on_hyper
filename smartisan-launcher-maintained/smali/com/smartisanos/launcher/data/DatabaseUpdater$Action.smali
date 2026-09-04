.class public final enum Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;
.super Ljava/lang/Enum;
.source "DatabaseUpdater.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/data/DatabaseUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;",
        ">;"
    }
.end annotation


.field private static final synthetic $VALUES:[Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

.field public static final enum EVENT_DATA_BACKUP:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

.field public static final enum EVENT_HANDLE_UNINSTALL:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

.field public static final enum EVENT_INIT_DATA:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

.field public static final enum EVENT_INSERT_APP:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

.field public static final enum EVENT_INSTALL_SHORTCUT:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

.field public static final enum EVENT_REFRESH:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

.field public static final enum EVENT_REFRESH_PAGE_TABLE:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

.field public static final enum EVENT_RELOAD_ICONS:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

.field public static final enum EVENT_REMOVE_APP:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

.field public static final enum EVENT_REMOVE_MULTI_APPS:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

.field public static final enum EVENT_REMOVE_NEW_FLAG_BY_INTENT:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

.field public static final enum EVENT_REQUEST_FETCH_ICON:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

.field public static final enum EVENT_ROLLBACK:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

.field public static final enum EVENT_SAVE_ICON:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

.field public static final enum EVENT_SORT_ICON:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

.field public static final enum EVENT_UNINSTALL_SHORTCUT:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

.field public static final enum EVENT_UPDATE_APP:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

.field public static final enum EVENT_UPDATE_ICON:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

.field public static final enum EVENT_UPDATE_ITEM:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

.field public static final enum EVENT_UPDATE_ITEM_TABLE:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

.field public static final enum EVENT_UPDATE_MESSAGE_COUNT:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

.field public static final enum EVENT_UPDATE_PAGE:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;


.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    new-instance v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const-string v1, "EVENT_REFRESH"

    invoke-direct {v0, v1, v3}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_REFRESH:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 39
    new-instance v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const-string v1, "EVENT_UPDATE_ITEM_TABLE"

    invoke-direct {v0, v1, v4}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_UPDATE_ITEM_TABLE:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 44
    new-instance v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const-string v1, "EVENT_UPDATE_ITEM"

    invoke-direct {v0, v1, v5}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_UPDATE_ITEM:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 48
    new-instance v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const-string v1, "EVENT_UPDATE_PAGE"

    invoke-direct {v0, v1, v6}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_UPDATE_PAGE:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 53
    new-instance v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const-string v1, "EVENT_UPDATE_ICON"

    invoke-direct {v0, v1, v7}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_UPDATE_ICON:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 57
    new-instance v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const-string v1, "EVENT_UPDATE_MESSAGE_COUNT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_UPDATE_MESSAGE_COUNT:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 61
    new-instance v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const-string v1, "EVENT_INSERT_APP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_INSERT_APP:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 62
    new-instance v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const-string v1, "EVENT_REMOVE_APP"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_REMOVE_APP:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 63
    new-instance v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const-string v1, "EVENT_UPDATE_APP"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_UPDATE_APP:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 64
    new-instance v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const-string v1, "EVENT_HANDLE_UNINSTALL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_HANDLE_UNINSTALL:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 69
    new-instance v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const-string v1, "EVENT_INIT_DATA"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_INIT_DATA:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 71
    new-instance v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const-string v1, "EVENT_REFRESH_PAGE_TABLE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_REFRESH_PAGE_TABLE:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 74
    new-instance v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const-string v1, "EVENT_DATA_BACKUP"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_DATA_BACKUP:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 75
    new-instance v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const-string v1, "EVENT_REMOVE_NEW_FLAG_BY_INTENT"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_REMOVE_NEW_FLAG_BY_INTENT:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 76
    new-instance v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const-string v1, "EVENT_RELOAD_ICONS"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_RELOAD_ICONS:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 77
    new-instance v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const-string v1, "EVENT_SORT_ICON"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_SORT_ICON:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 78
    new-instance v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const-string v1, "EVENT_ROLLBACK"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_ROLLBACK:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 79
    new-instance v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const-string v1, "EVENT_REMOVE_MULTI_APPS"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_REMOVE_MULTI_APPS:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 80
    new-instance v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const-string v1, "EVENT_INSTALL_SHORTCUT"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_INSTALL_SHORTCUT:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 81
    new-instance v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const-string v1, "EVENT_UNINSTALL_SHORTCUT"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_UNINSTALL_SHORTCUT:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 82
    new-instance v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const-string v1, "EVENT_SAVE_ICON"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_SAVE_ICON:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 83
    new-instance v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const-string v1, "EVENT_REQUEST_FETCH_ICON"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_REQUEST_FETCH_ICON:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 31
    const/16 v0, 0x16

    new-array v0, v0, [Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    sget-object v1, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_REFRESH:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_UPDATE_ITEM_TABLE:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_UPDATE_ITEM:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    aput-object v1, v0, v5

    sget-object v1, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_UPDATE_PAGE:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    aput-object v1, v0, v6

    sget-object v1, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_UPDATE_ICON:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_UPDATE_MESSAGE_COUNT:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_INSERT_APP:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_REMOVE_APP:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_UPDATE_APP:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_HANDLE_UNINSTALL:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_INIT_DATA:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_REFRESH_PAGE_TABLE:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_DATA_BACKUP:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_REMOVE_NEW_FLAG_BY_INTENT:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_RELOAD_ICONS:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_SORT_ICON:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_ROLLBACK:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_REMOVE_MULTI_APPS:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_INSTALL_SHORTCUT:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_UNINSTALL_SHORTCUT:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_SAVE_ICON:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_REQUEST_FETCH_ICON:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    aput-object v2, v0, v1

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->$VALUES:[Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    return-object v0
.end method

.method public static values()[Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->$VALUES:[Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-virtual {v0}, [Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    return-object v0
.end method
