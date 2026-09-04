.class public Lcom/smartisan/trackerlib/db/TrackerProvider;
.super Ljava/lang/Object;
.source "TrackerProvider.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisan/trackerlib/db/TrackerProvider$DatabaseHelper;
    }
.end annotation


.field private static final DATABASE_NAME:Ljava/lang/String; = "libtracker.db"

.field private static final DATABASE_VERSION:I = 0x1

.field public static final TABLE_RAW_TRANSPORT:I = 0x1

.field private static mContext:Landroid/content/Context;

.field private static mSqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private static mTrackerProvider:Lcom/smartisan/trackerlib/db/TrackerProvider;


.method private constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/smartisan/trackerlib/db/TrackerProvider$DatabaseHelper;

    sget-object v1, Lcom/smartisan/trackerlib/db/TrackerProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/smartisan/trackerlib/db/TrackerProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/smartisan/trackerlib/db/TrackerProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/smartisan/trackerlib/db/TrackerProvider;->mSqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 35
    return-void
.end method

.method public static getInstance()Lcom/smartisan/trackerlib/db/TrackerProvider;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/smartisan/trackerlib/db/TrackerProvider;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 26
    invoke-static {}, Lcom/smartisan/trackerlib/Agent;->getInstance()Lcom/smartisan/trackerlib/Agent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisan/trackerlib/Agent;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/smartisan/trackerlib/db/TrackerProvider;->mContext:Landroid/content/Context;

    .line 28
    :cond_0
    sget-object v0, Lcom/smartisan/trackerlib/db/TrackerProvider;->mTrackerProvider:Lcom/smartisan/trackerlib/db/TrackerProvider;

    if-nez v0, :cond_1

    .line 29
    new-instance v0, Lcom/smartisan/trackerlib/db/TrackerProvider;

    invoke-direct {v0}, Lcom/smartisan/trackerlib/db/TrackerProvider;-><init>()V

    sput-object v0, Lcom/smartisan/trackerlib/db/TrackerProvider;->mTrackerProvider:Lcom/smartisan/trackerlib/db/TrackerProvider;

    .line 31
    :cond_1
    sget-object v0, Lcom/smartisan/trackerlib/db/TrackerProvider;->mTrackerProvider:Lcom/smartisan/trackerlib/db/TrackerProvider;

    return-object v0
.end method

.method private openDatabase()V
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lcom/smartisan/trackerlib/db/TrackerProvider;->mSqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisan/trackerlib/db/TrackerProvider;->mSqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 39
    :cond_0
    new-instance v0, Lcom/smartisan/trackerlib/db/TrackerProvider$DatabaseHelper;

    sget-object v1, Lcom/smartisan/trackerlib/db/TrackerProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/smartisan/trackerlib/db/TrackerProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/smartisan/trackerlib/db/TrackerProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/smartisan/trackerlib/db/TrackerProvider;->mSqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 41
    :cond_1
    return-void
.end method


.method public closeDatabase()V
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/smartisan/trackerlib/db/TrackerProvider;->mSqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisan/trackerlib/db/TrackerProvider;->mSqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Lcom/smartisan/trackerlib/db/TrackerProvider;->mSqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/smartisan/trackerlib/db/TrackerProvider;->mSqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 48
    :cond_0
    return-void
.end method

.method public delete(ILjava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "type"    # I
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "count":I
    invoke-direct {p0}, Lcom/smartisan/trackerlib/db/TrackerProvider;->openDatabase()V

    .line 94
    packed-switch p1, :pswitch_data_0

    .line 99
    :goto_0
    return v0

    .line 96
    :pswitch_0
    sget-object v1, Lcom/smartisan/trackerlib/db/TrackerProvider;->mSqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "actual_raw_transport"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public deleteMultiIDs(I[Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "whereargs"    # [Ljava/lang/String;

    .prologue
    .line 81
    if-eqz p2, :cond_0

    array-length v2, p2

    if-gez v2, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    const/4 v2, 0x0

    aget-object v1, p2, v2

    .line 85
    .local v1, "where":Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 88
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id in ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lcom/smartisan/trackerlib/db/TrackerProvider;->delete(ILjava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public insert(ILcom/smartisan/trackerlib/TransportEntity;)Z
    .locals 2
    .param p1, "type"    # I
    .param p2, "transportEntity"    # Lcom/smartisan/trackerlib/TransportEntity;

    .prologue
    const/4 v0, 0x0

    .line 50
    if-nez p2, :cond_0

    .line 53
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/smartisan/trackerlib/TransportEntity;

    aput-object p2, v1, v0

    invoke-virtual {p0, p1, v1}, Lcom/smartisan/trackerlib/db/TrackerProvider;->insert(I[Lcom/smartisan/trackerlib/TransportEntity;)Z

    move-result v0

    goto :goto_0
.end method

.method public insert(I[Lcom/smartisan/trackerlib/TransportEntity;)Z
    .locals 8
    .param p1, "table"    # I
    .param p2, "transportEntity"    # [Lcom/smartisan/trackerlib/TransportEntity;

    .prologue
    .line 56
    if-eqz p2, :cond_0

    array-length v5, p2

    if-gtz v5, :cond_2

    .line 57
    :cond_0
    const/4 v4, 0x0

    .line 77
    :cond_1
    :goto_0
    return v4

    .line 59
    :cond_2
    const/4 v1, 0x0

    .line 60
    .local v1, "initialValues":Landroid/content/ContentValues;
    const-wide/16 v2, 0x0

    .line 61
    .local v2, "id":J
    const/4 v4, 0x1

    .line 62
    .local v4, "result":Z
    invoke-direct {p0}, Lcom/smartisan/trackerlib/db/TrackerProvider;->openDatabase()V

    .line 63
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 65
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v5, p2

    if-ge v0, v5, :cond_1

    .line 66
    sget-object v5, Lcom/smartisan/trackerlib/db/TrackerProvider;->mContext:Landroid/content/Context;

    aget-object v6, p2, v0

    invoke-static {v5, v6}, Lcom/smartisan/trackerlib/utils/CommonUtil;->parseTransportEntity(Landroid/content/Context;Lcom/smartisan/trackerlib/TransportEntity;)Landroid/content/ContentValues;

    move-result-object v1

    .line 67
    sget-object v5, Lcom/smartisan/trackerlib/db/TrackerProvider;->mSqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "actual_raw_transport"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 68
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-gtz v5, :cond_3

    .line 69
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to insert row : id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "--entity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p2, v0

    invoke-virtual {v6}, Lcom/smartisan/trackerlib/TransportEntity;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/smartisan/trackerlib/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 70
    const/4 v4, 0x0

    .line 65
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public query(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "type"    # I
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 104
    const/4 v8, 0x0

    .line 105
    .local v8, "result":Landroid/database/Cursor;
    invoke-direct {p0}, Lcom/smartisan/trackerlib/db/TrackerProvider;->openDatabase()V

    .line 106
    packed-switch p1, :pswitch_data_0

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :pswitch_0
    sget-object v0, Lcom/smartisan/trackerlib/db/TrackerProvider;->mSqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "actual_raw_transport"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 114
    return-object v8

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public update(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "type"    # I
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "count":I
    invoke-direct {p0}, Lcom/smartisan/trackerlib/db/TrackerProvider;->openDatabase()V

    .line 121
    packed-switch p1, :pswitch_data_0

    .line 127
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 123
    :pswitch_0
    sget-object v1, Lcom/smartisan/trackerlib/db/TrackerProvider;->mSqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "actual_raw_transport"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 129
    return v0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
