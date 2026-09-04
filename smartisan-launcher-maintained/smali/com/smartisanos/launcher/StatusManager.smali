.class public Lcom/smartisanos/launcher/StatusManager;
.super Ljava/lang/Object;
.source "StatusManager.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/StatusManager$onLauncherStatusChangedListener;
    }
.end annotation


.field public static final ON_ALL_CELL_RESET_BACKGROUND_ANIMATION:I = 0x200

.field public static final ON_CANCEL_UNINSTALL:I = 0x400

.field public static final ON_CELL_IN_TRASH:I = 0x40

.field public static final ON_CELL_UNINSTALL_ANIMATION:I = 0x10000

.field public static final ON_CHANGE_THEME_ANIMATING:I = 0x8

.field public static final ON_CLICK_ANIMATION_RUNNING:I = 0x2000

.field public static final ON_DRAG_OBJECT:I = 0x2

.field public static final ON_EDIT_MODEL:I = 0x8000

.field public static final ON_FOLDER_DOING_ANIM:I = 0x2000000

.field public static final ON_FOLDER_HAS_OPEN:I = 0x1000000

.field public static final ON_GRID_SWITCH:I = 0x4

.field public static final ON_HAVE_APP_WAITING_UPDATE:I = 0x1000

.field public static final ON_ICON_SORT_PREVIEW:I = 0x80000

.field public static final ON_ICON_SORT_RUNNING:I = 0x100000

.field public static final ON_LOCALE_CHANGED:I = 0x800000

.field public static final ON_PAGE_DOING_FLOATING_ANIM:I = 0x10

.field public static final ON_PAGE_HAS_FLOAT:I = 0x20

.field public static final ON_PAGE_IS_RESET:I = 0x80

.field public static final ON_PAGE_OR_DOCK_IS_UNSINK:I = 0x400000

.field public static final ON_PAGE_SCROLL:I = 0x1

.field public static final ON_SETTING_BTN_ANIMATION:I = 0x4000

.field public static final ON_SLIDE_DOCK_ANIMATION:I = 0x200000

.field public static final ON_TOUCH_IN_WINDOW:I = 0x100

.field public static final ON_UNLOCK_ANIM_PAGE_INIT:I = 0x40000

.field public static final ON_UNLOCK_SCREEN_ANIMATION_RUNNING:I = 0x20000

.field public static final ON_UPDATE_APP:I = 0x800

.field private static final PRESS_HOME_KEY_FLAG:I = 0x7f65df

.field public static final STATUS_ARR:[I

.field private static final SWITCH_PAGE_FLAG:I = 0x67683f

.field private static final TOUCH_DOWN_FLAG:I = 0x366cdc

.field private static final UNINSTALL_APP_FLAG:I = 0x38469f

.field private static final UPDATA_AND_ADD_APP_FLAG:I = 0x3946ff

.field private static final log:Lcom/smartisanos/launcher/LOG;

.field public static mStatusManager:Lcom/smartisanos/launcher/StatusManager;

.field public static final statusNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


.field private volatile mLauncherStatus:I

.field private mLauncherStatusChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/StatusManager$onLauncherStatusChangedListener;",
            ">;"
        }
    .end annotation
.end field


.method static constructor <clinit>()V
    .locals 14

    .prologue
    .line 13
    const-class v8, Lcom/smartisanos/launcher/StatusManager;

    invoke-static {v8}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v8

    sput-object v8, Lcom/smartisanos/launcher/StatusManager;->log:Lcom/smartisanos/launcher/LOG;

    .line 46
    const/16 v8, 0x1a

    new-array v8, v8, [I

    fill-array-data v8, :array_0

    sput-object v8, Lcom/smartisanos/launcher/StatusManager;->STATUS_ARR:[I

    .line 75
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    sput-object v8, Lcom/smartisanos/launcher/StatusManager;->statusNameMap:Ljava/util/Map;

    .line 77
    const-class v0, Lcom/smartisanos/launcher/StatusManager;

    .line 78
    .local v0, "clazz":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 79
    .local v3, "fields":[Ljava/lang/reflect/Field;
    new-instance v5, Lcom/smartisanos/launcher/StatusManager;

    invoke-direct {v5}, Lcom/smartisanos/launcher/StatusManager;-><init>()V

    .line 80
    .local v5, "obj":Lcom/smartisanos/launcher/StatusManager;
    array-length v9, v3

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v9, :cond_1

    aget-object v2, v3, v8

    .line 82
    .local v2, "f":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 84
    .local v6, "typeName":Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v10, "int"

    .line 85
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "ON_"

    .line 86
    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 87
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7

    .line 88
    .local v7, "value":I
    sget-object v10, Lcom/smartisanos/launcher/StatusManager;->log:Lcom/smartisanos/launcher/LOG;

    const-string v11, "DEBUG"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "StatusManager key ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "], value ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    sget-object v10, Lcom/smartisanos/launcher/StatusManager;->statusNameMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "typeName":Ljava/lang/String;
    .end local v7    # "value":I
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 91
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 95
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "f":Ljava/lang/reflect/Field;
    :cond_1
    return-void

    .line 46
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
        0x200
        0x400
        0x800
        0x1000
        0x2000
        0x4000
        0x8000
        0x10000
        0x20000
        0x40000
        0x80000
        0x100000
        0x200000
        0x400000
        0x800000
        0x1000000
        0x2000000
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisanos/launcher/StatusManager;->mLauncherStatus:I

    .line 123
    new-instance v0, Lcom/smartisanos/launcher/StatusManager$1;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/StatusManager$1;-><init>(Lcom/smartisanos/launcher/StatusManager;)V

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/StatusManager;->registerLauncherStatusChangedListener(Lcom/smartisanos/launcher/StatusManager$onLauncherStatusChangedListener;)V

    .line 136
    return-void
.end method

.method public static getInstance()Lcom/smartisanos/launcher/StatusManager;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/smartisanos/launcher/StatusManager;->mStatusManager:Lcom/smartisanos/launcher/StatusManager;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/smartisanos/launcher/StatusManager;

    invoke-direct {v0}, Lcom/smartisanos/launcher/StatusManager;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/StatusManager;->mStatusManager:Lcom/smartisanos/launcher/StatusManager;

    .line 119
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/StatusManager;->mStatusManager:Lcom/smartisanos/launcher/StatusManager;

    return-object v0
.end method


.method public canHandleTouchDown()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 153
    const/4 v0, 0x1

    .line 154
    .local v0, "result":Z
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 155
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/PageView;->getAnimationController()Lcom/smartisanos/launcher/view/AnimationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/AnimationController;->hasAnimationPlaying()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 157
    :cond_0
    :goto_0
    iget v3, p0, Lcom/smartisanos/launcher/StatusManager;->mLauncherStatus:I

    const v4, 0x366cdc

    and-int/2addr v3, v4

    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 155
    goto :goto_0

    :cond_2
    move v1, v2

    .line 157
    goto :goto_1
.end method

.method public canHomeKeyScrollToLeft()Z
    .locals 2

    .prologue
    .line 236
    iget v0, p0, Lcom/smartisanos/launcher/StatusManager;->mLauncherStatus:I

    const v1, 0x7f65df

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canSWitchPage()Z
    .locals 2

    .prologue
    .line 213
    iget v0, p0, Lcom/smartisanos/launcher/StatusManager;->mLauncherStatus:I

    const v1, 0x67683f

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canUninstallApp()Z
    .locals 2

    .prologue
    .line 194
    iget v0, p0, Lcom/smartisanos/launcher/StatusManager;->mLauncherStatus:I

    const v1, 0x38469f

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canUpdateAndAddApp()Z
    .locals 2

    .prologue
    .line 177
    iget v0, p0, Lcom/smartisanos/launcher/StatusManager;->mLauncherStatus:I

    const v1, 0x3946ff

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dumpStatus()V
    .locals 6

    .prologue
    .line 98
    sget-boolean v3, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-nez v3, :cond_1

    .line 108
    :cond_0
    return-void

    .line 101
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/smartisanos/launcher/StatusManager;->STATUS_ARR:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 102
    sget-object v3, Lcom/smartisanos/launcher/StatusManager;->STATUS_ARR:[I

    aget v1, v3, v0

    .line 103
    .local v1, "status":I
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 104
    sget-object v3, Lcom/smartisanos/launcher/StatusManager;->statusNameMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 105
    .local v2, "statusName":Ljava/lang/String;
    sget-object v3, Lcom/smartisanos/launcher/StatusManager;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "status error, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is true"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 101
    .end local v2    # "statusName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getLauncherStatus()I
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/smartisanos/launcher/StatusManager;->mLauncherStatus:I

    return v0
.end method

.method public getLauncherStatus(I)Z
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 280
    iget v0, p0, Lcom/smartisanos/launcher/StatusManager;->mLauncherStatus:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerLauncherStatusChangedListener(Lcom/smartisanos/launcher/StatusManager$onLauncherStatusChangedListener;)V
    .locals 1
    .param p1, "l"    # Lcom/smartisanos/launcher/StatusManager$onLauncherStatusChangedListener;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/smartisanos/launcher/StatusManager;->mLauncherStatusChangedListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/StatusManager;->mLauncherStatusChangedListeners:Ljava/util/ArrayList;

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/StatusManager;->mLauncherStatusChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/smartisanos/launcher/StatusManager;->mLauncherStatusChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisanos/launcher/StatusManager;->mLauncherStatus:I

    .line 259
    return-void
.end method

.method public setLauncherStatus(IZ)V
    .locals 6
    .param p1, "status"    # I
    .param p2, "value"    # Z

    .prologue
    .line 262
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v2

    if-ne v2, p2, :cond_1

    .line 277
    :cond_0
    return-void

    .line 265
    :cond_1
    sget-object v2, Lcom/smartisanos/launcher/StatusManager;->statusNameMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 266
    .local v1, "statusName":Ljava/lang/String;
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/smartisanos/launcher/StatusManager;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "DEBUG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setLauncherStatus status ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], value ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_2
    if-eqz p2, :cond_3

    .line 268
    iget v2, p0, Lcom/smartisanos/launcher/StatusManager;->mLauncherStatus:I

    or-int/2addr v2, p1

    iput v2, p0, Lcom/smartisanos/launcher/StatusManager;->mLauncherStatus:I

    .line 272
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/StatusManager;->mLauncherStatusChangedListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 273
    iget-object v2, p0, Lcom/smartisanos/launcher/StatusManager;->mLauncherStatusChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/StatusManager$onLauncherStatusChangedListener;

    .line 274
    .local v0, "l":Lcom/smartisanos/launcher/StatusManager$onLauncherStatusChangedListener;
    invoke-interface {v0, p1}, Lcom/smartisanos/launcher/StatusManager$onLauncherStatusChangedListener;->onLauncherStatusChanged(I)V

    goto :goto_1

    .line 270
    .end local v0    # "l":Lcom/smartisanos/launcher/StatusManager$onLauncherStatusChangedListener;
    :cond_3
    iget v2, p0, Lcom/smartisanos/launcher/StatusManager;->mLauncherStatus:I

    xor-int/lit8 v3, p1, -0x1

    and-int/2addr v2, v3

    iput v2, p0, Lcom/smartisanos/launcher/StatusManager;->mLauncherStatus:I

    goto :goto_0
.end method

.method public unRegisterLauncherStatusChangedListener(Lcom/smartisanos/launcher/StatusManager$onLauncherStatusChangedListener;)V
    .locals 1
    .param p1, "l"    # Lcom/smartisanos/launcher/StatusManager$onLauncherStatusChangedListener;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/smartisanos/launcher/StatusManager;->mLauncherStatusChangedListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/smartisanos/launcher/StatusManager;->mLauncherStatusChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 251
    :cond_0
    return-void
.end method
