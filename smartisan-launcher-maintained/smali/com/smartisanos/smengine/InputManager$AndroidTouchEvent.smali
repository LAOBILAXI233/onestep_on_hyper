.class public Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;
.super Ljava/lang/Object;
.source "InputManager.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/smengine/InputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AndroidTouchEvent"
.end annotation


.field private static final MAX_RECYCLED:I = 0x20

.field private static sRecycleBin:Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;

.field public static final sRecycleLock:Ljava/lang/Object;

.field private static sRecycledCount:I


.field public mIsLastMoveEvent:Z

.field private mKeyEvent:Lcom/smartisanos/smengine/TKeyEvent;

.field private mMotionEvent:Lcom/smartisanos/smengine/TMotionEvent;

.field private next:Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1138
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;->sRecycleLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;->mIsLastMoveEvent:Z

    .line 1145
    return-void
.end method

.method public static obtain(Lcom/smartisanos/smengine/TKeyEvent;)Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;
    .locals 4
    .param p0, "ev"    # Lcom/smartisanos/smengine/TKeyEvent;

    .prologue
    const/4 v3, 0x0

    .line 1181
    sget-object v2, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;->sRecycleLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1182
    :try_start_0
    sget-object v1, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;->sRecycleBin:Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;

    if-nez v1, :cond_0

    .line 1183
    new-instance v0, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;

    invoke-direct {v0}, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;-><init>()V

    .line 1190
    .local v0, "newAndroidTouchEvent":Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1191
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;->mIsLastMoveEvent:Z

    .line 1192
    iput-object v3, v0, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;->mMotionEvent:Lcom/smartisanos/smengine/TMotionEvent;

    .line 1193
    iput-object p0, v0, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;->mKeyEvent:Lcom/smartisanos/smengine/TKeyEvent;

    .line 1194
    return-object v0

    .line 1185
    .end local v0    # "newAndroidTouchEvent":Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;
    :cond_0
    :try_start_1
    sget-object v0, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;->sRecycleBin:Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;

    .line 1186
    .restart local v0    # "newAndroidTouchEvent":Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;
    iget-object v1, v0, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;->next:Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;

    sput-object v1, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;->sRecycleBin:Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;

    .line 1187
    sget v1, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;->sRecycledCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;->sRecycledCount:I

    .line 1188
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;->next:Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;

    goto :goto_0

    .line 1190
    .end local v0    # "newAndroidTouchEvent":Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static obtain(Lcom/smartisanos/smengine/TMotionEvent;)Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;
    .locals 4
    .param p0, "ev"    # Lcom/smartisanos/smengine/TMotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 1163
    sget-object v2, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;->sRecycleLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1164
    :try_start_0
    sget-object v1, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;->sRecycleBin:Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;

    if-nez v1, :cond_0

    .line 1165
    new-instance v0, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;

    invoke-direct {v0}, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;-><init>()V

    .line 1172
    .local v0, "newAndroidTouchEvent":Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1173
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;->mIsLastMoveEvent:Z

    .line 1174
    iput-object p0, v0, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;->mMotionEvent:Lcom/smartisanos/smengine/TMotionEvent;

    .line 1175
    iput-object v3, v0, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;->mKeyEvent:Lcom/smartisanos/smengine/TKeyEvent;

    .line 1176
    return-object v0

    .line 1167
    .end local v0    # "newAndroidTouchEvent":Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;
    :cond_0
    :try_start_1
    sget-object v0, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;->sRecycleBin:Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;

    .line 1168
    .restart local v0    # "newAndroidTouchEvent":Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;
    iget-object v1, v0, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;->next:Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;

    sput-object v1, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;->sRecycleBin:Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;

    .line 1169
    sget v1, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;->sRecycledCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;->sRecycledCount:I

    .line 1170
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;->next:Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;

    goto :goto_0

    .line 1172
    .end local v0    # "newAndroidTouchEvent":Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


.method public isDownEvent()Z
    .locals 1

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;->mMotionEvent:Lcom/smartisanos/smengine/TMotionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;->mMotionEvent:Lcom/smartisanos/smengine/TMotionEvent;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1156
    const/4 v0, 0x1

    .line 1158
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMoveEvent()Z
    .locals 2

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;->mMotionEvent:Lcom/smartisanos/smengine/TMotionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;->mMotionEvent:Lcom/smartisanos/smengine/TMotionEvent;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1149
    const/4 v0, 0x1

    .line 1151
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 1198
    sget-object v1, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;->sRecycleLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1199
    :try_start_0
    sget v0, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;->sRecycledCount:I

    const/16 v2, 0x20

    if-ge v0, v2, :cond_0

    .line 1200
    sget-object v0, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;->sRecycleBin:Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;

    iput-object v0, p0, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;->next:Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;

    .line 1201
    sput-object p0, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;->sRecycleBin:Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;

    .line 1202
    sget v0, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;->sRecycledCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;->sRecycledCount:I

    .line 1206
    :goto_0
    monitor-exit v1

    .line 1207
    return-void

    .line 1204
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;->next:Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;

    goto :goto_0

    .line 1206
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;->mMotionEvent:Lcom/smartisanos/smengine/TMotionEvent;

    if-eqz v0, :cond_0

    .line 1212
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;->mMotionEvent:Lcom/smartisanos/smengine/TMotionEvent;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/MainView;->dispatchTouchEvent(Lcom/smartisanos/smengine/TMotionEvent;)Z

    .line 1213
    iget-object v0, p0, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;->mMotionEvent:Lcom/smartisanos/smengine/TMotionEvent;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/TMotionEvent;->recycle()V

    .line 1217
    :goto_0
    return-void

    .line 1215
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;->mKeyEvent:Lcom/smartisanos/smengine/TKeyEvent;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/MainView;->dispatchKeyEvent(Lcom/smartisanos/smengine/TKeyEvent;)Z

    goto :goto_0
.end method
