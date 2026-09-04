.class public Lcom/smartisanos/launcher/data/ExportDataProvider;
.super Landroid/content/ContentProvider;
.source "ExportDataProvider.java"


.field public static final AUTHORITY:Ljava/lang/String; = "com.smartisanos.launcher.exportprovider"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.smartisanos.exportdata"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.smartisanos.exportdata"

.field public static final RECORD_TYPE:Ljava/lang/String; = "exportdata"

.field public static final TABLE_ICONINFOS:Ljava/lang/String; = "table_icons"

.field public static final TABLE_ITEMINFOS:Ljava/lang/String; = "table_iteminfos"

.field public static final TABLE_PAGEINFOS:Ljava/lang/String; = "table_pageinfos"

.field public static final TYPE_EXPORTDATA:I = 0x1

.field public static final TYPE_EXPORTDATA_ITEM:I = 0x2

.field public static final TYPE_ICONS:I = 0x5

.field public static final TYPE_ICONS_ID:I = 0x6

.field public static final TYPE_ITEMINFOS:I = 0x1

.field public static final TYPE_ITEMINFOS_ID:I = 0x2

.field public static final TYPE_PAGEINFOS:I = 0x3

.field public static final TYPE_PAGEINFOS_ID:I = 0x4

.field private static final log:Lcom/smartisanos/launcher/LOG;

.field public static sBufferValue:Landroid/content/ContentValues;

.field private static final sMatcher:Landroid/content/UriMatcher;


.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 30
    const-class v0, Lcom/smartisanos/launcher/data/ExportDataProvider;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/data/ExportDataProvider;->log:Lcom/smartisanos/launcher/LOG;

    .line 55
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/smartisanos/launcher/data/ExportDataProvider;->sMatcher:Landroid/content/UriMatcher;

    .line 56
    sget-object v0, Lcom/smartisanos/launcher/data/ExportDataProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.smartisanos.launcher.exportprovider"

    const-string v2, "exportdata"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 57
    sget-object v0, Lcom/smartisanos/launcher/data/ExportDataProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.smartisanos.launcher.exportprovider"

    const-string v2, "exportdata/#"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 59
    sget-object v0, Lcom/smartisanos/launcher/data/ExportDataProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.smartisanos.launcher.exportprovider"

    const-string v2, "table_iteminfos"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 60
    sget-object v0, Lcom/smartisanos/launcher/data/ExportDataProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.smartisanos.launcher.exportprovider"

    const-string v2, "table_iteminfos/#"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    sget-object v0, Lcom/smartisanos/launcher/data/ExportDataProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.smartisanos.launcher.exportprovider"

    const-string v2, "table_pageinfos"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    sget-object v0, Lcom/smartisanos/launcher/data/ExportDataProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.smartisanos.launcher.exportprovider"

    const-string v2, "table_pageinfos/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    sget-object v0, Lcom/smartisanos/launcher/data/ExportDataProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.smartisanos.launcher.exportprovider"

    const-string v2, "table_icons"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 64
    sget-object v0, Lcom/smartisanos/launcher/data/ExportDataProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.smartisanos.launcher.exportprovider"

    const-string v2, "table_icons/#"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private getTableNameByUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "tableName":Ljava/lang/String;
    sget-object v1, Lcom/smartisanos/launcher/data/ExportDataProvider;->sMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 81
    :goto_0
    :pswitch_0
    return-object v0

    .line 71
    :pswitch_1
    const-string v0, "table_iteminfos"

    .line 72
    goto :goto_0

    .line 74
    :pswitch_2
    const-string v0, "table_pageinfos"

    .line 75
    goto :goto_0

    .line 77
    :pswitch_3
    const-string v0, "table_icons"

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private insertOption(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 5
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/content/ContentValues;

    .prologue
    .line 149
    const/4 v1, -0x1

    .line 150
    .local v1, "id":I
    if-nez p1, :cond_0

    move v2, v1

    .line 161
    .end local v1    # "id":I
    .local v2, "id":I
    :goto_0
    return v2

    .line 153
    .end local v2    # "id":I
    .restart local v1    # "id":I
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getInstance()Lcom/smartisanos/launcher/data/DatabaseProvider;

    move-result-object v3

    .line 154
    .local v3, "provider":Lcom/smartisanos/launcher/data/DatabaseProvider;
    invoke-virtual {v3}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 155
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v4, Lcom/smartisanos/launcher/data/ExportDataProvider$3;

    invoke-direct {v4, p0, v0, p1, p2}, Lcom/smartisanos/launcher/data/ExportDataProvider$3;-><init>(Lcom/smartisanos/launcher/data/ExportDataProvider;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 160
    invoke-virtual {v4}, Lcom/smartisanos/launcher/data/ExportDataProvider$3;->execute()Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    move-result-object v4

    iget v1, v4, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;->i:I

    move v2, v1

    .line 161
    .end local v1    # "id":I
    .restart local v2    # "id":I
    goto :goto_0
.end method

.method public static updateBufferValues(JLjava/lang/String;[B)V
    .locals 4
    .param p0, "id"    # J
    .param p2, "size"    # Ljava/lang/String;
    .param p3, "icon"    # [B

    .prologue
    .line 301
    sget-object v0, Lcom/smartisanos/launcher/data/ExportDataProvider;->sBufferValue:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    .line 302
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/data/ExportDataProvider;->sBufferValue:Landroid/content/ContentValues;

    .line 304
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/data/ExportDataProvider;->sBufferValue:Landroid/content/ContentValues;

    const-string v1, "_id"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 305
    sget-object v0, Lcom/smartisanos/launcher/data/ExportDataProvider;->sBufferValue:Landroid/content/ContentValues;

    const-string v1, "size"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    sget-object v0, Lcom/smartisanos/launcher/data/ExportDataProvider;->sBufferValue:Landroid/content/ContentValues;

    const-string v1, "icon"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 307
    return-void
.end method


.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    .prologue
    .line 107
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getInstance()Lcom/smartisanos/launcher/data/DatabaseProvider;

    move-result-object v4

    .line 108
    .local v4, "provider":Lcom/smartisanos/launcher/data/DatabaseProvider;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v2, "cvs":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/data/ExportDataProvider;->getTableNameByUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 110
    .local v5, "table":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 111
    array-length v7, p2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v1, p2, v6

    .line 112
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 115
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_0
    invoke-virtual {v4}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 116
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v6, Lcom/smartisanos/launcher/data/ExportDataProvider$2;

    invoke-direct {v6, p0, v3, v2, v5}, Lcom/smartisanos/launcher/data/ExportDataProvider$2;-><init>(Lcom/smartisanos/launcher/data/ExportDataProvider;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v6}, Lcom/smartisanos/launcher/data/ExportDataProvider$2;->execute()Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    move-result-object v6

    iget v0, v6, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;->i:I

    .line 134
    .local v0, "count":I
    return v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/data/ExportDataProvider;->getTableNameByUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "table":Ljava/lang/String;
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getInstance()Lcom/smartisanos/launcher/data/DatabaseProvider;

    move-result-object v7

    .line 91
    .local v7, "provider":Lcom/smartisanos/launcher/data/DatabaseProvider;
    invoke-virtual {v7}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 92
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Lcom/smartisanos/launcher/data/ExportDataProvider$1;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/smartisanos/launcher/data/ExportDataProvider$1;-><init>(Lcom/smartisanos/launcher/data/ExportDataProvider;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/ExportDataProvider$1;->execute()Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    move-result-object v0

    iget v6, v0, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;->i:I

    .line 99
    .local v6, "count":I
    return v6
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 166
    sget-object v0, Lcom/smartisanos/launcher/data/ExportDataProvider;->sMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 172
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 168
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/vnd.smartisanos.exportdata"

    goto :goto_0

    .line 170
    :pswitch_1
    const-string v0, "vnd.android.cursor.item/vnd.smartisanos.exportdata"

    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/data/ExportDataProvider;->getTableNameByUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "table":Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Lcom/smartisanos/launcher/data/ExportDataProvider;->insertOption(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 145
    const/4 v1, 0x0

    return-object v1
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcom/smartisanos/launcher/data/ExportDataProvider;->sBufferValue:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/data/ExportDataProvider;->sBufferValue:Landroid/content/ContentValues;

    .line 181
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 26
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 190
    new-instance v5, Landroid/database/MatrixCursor;

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "icon"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const-string v23, "size"

    aput-object v23, v21, v22

    move-object/from16 v0, v21

    invoke-direct {v5, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 192
    .local v5, "cursor":Landroid/database/MatrixCursor;
    const/4 v6, 0x0

    .line 193
    .local v6, "data":[B
    const/16 v17, 0x0

    .line 194
    .local v17, "size":Ljava/lang/String;
    const/16 v19, 0x0

    .line 195
    .local v19, "x":F
    const/16 v20, 0x0

    .line 196
    .local v20, "y":F
    const/16 v18, 0x0

    .line 197
    .local v18, "w":F
    const/4 v7, 0x0

    .line 198
    .local v7, "h":F
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/data/ExportDataProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/LauncherApplication;

    .line 199
    .local v2, "app":Lcom/smartisanos/launcher/LauncherApplication;
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/launcher/view/MainView;->getContext()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/smartisanos/home/Launcher;

    .line 200
    .local v9, "launcher_activity":Lcom/smartisanos/home/Launcher;
    invoke-virtual {v2}, Lcom/smartisanos/launcher/LauncherApplication;->getProxy()Lcom/smartisanos/launcher/ApplicationProxy;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/launcher/ApplicationProxy;->isLoading()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 201
    const-string v21, "%s;%s;%s;%s;%s"

    const/16 v22, 0x5

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x3

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x4

    sget v24, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static/range {v24 .. v24}, Lcom/smartisanos/launcher/data/Constants;->getCellNumByMode(I)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 202
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v6, v21, v22

    const/16 v22, 0x1

    aput-object v17, v21, v22

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 292
    :goto_0
    return-object v5

    .line 206
    :cond_0
    if-eqz p4, :cond_6

    .line 207
    const/16 v21, 0x1

    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 209
    sget-object v21, Lcom/smartisanos/launcher/data/ExportDataProvider;->sBufferValue:Landroid/content/ContentValues;

    if-eqz v21, :cond_6

    .line 210
    const/16 v21, 0x0

    aget-object v21, p4, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    sget-object v21, Lcom/smartisanos/launcher/data/ExportDataProvider;->sBufferValue:Landroid/content/ContentValues;

    const-string v24, "_id"

    .line 211
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    cmp-long v21, v22, v24

    if-nez v21, :cond_6

    .line 212
    sget-object v21, Lcom/smartisanos/launcher/data/ExportDataProvider;->sBufferValue:Landroid/content/ContentValues;

    const-string v22, "size"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 213
    sget-object v21, Lcom/smartisanos/launcher/data/ExportDataProvider;->sBufferValue:Landroid/content/ContentValues;

    const-string v22, "icon"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v6

    .line 214
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v6, v21, v22

    const/16 v22, 0x1

    aput-object v17, v21, v22

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 218
    :cond_1
    const/16 v21, 0x2

    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 220
    if-eqz v9, :cond_6

    .line 222
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/launcher/view/MainView;->lockTouchEventForOneSecond()V

    .line 223
    const/16 v21, 0x0

    aget-object v21, p4, v21

    const/16 v22, 0x1

    aget-object v22, p4, v22

    invoke-static/range {v21 .. v22}, Lcom/smartisanos/launcher/data/Utils;->getCellByPackageAndComponentName(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v3

    .line 224
    .local v3, "cell":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v21

    if-eqz v21, :cond_6

    .line 228
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/smengine/RectNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v21

    if-nez v21, :cond_2

    .line 229
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/smartisanos/launcher/view/Cell;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 230
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/smengine/RectNode;->updateWorldTransforms()V

    .line 231
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 233
    :cond_2
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/smengine/RectNode;->getWorldTransform()Lcom/smartisanos/smengine/math/Transform;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/smengine/math/Transform;->getScale()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v21

    .line 234
    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/smengine/math/Vector3f;->clone()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v16

    .line 235
    .local v16, "si":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v14, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v14}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 236
    .local v14, "pos":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {v3, v14}, Lcom/smartisanos/launcher/view/Cell;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 237
    move-object/from16 v0, v16

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    mul-float v18, v21, v22

    .line 238
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/launcher/data/ItemInfo;->isDockItem()Z

    move-result v21

    if-eqz v21, :cond_5

    .line 239
    sget v21, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static/range {v21 .. v21}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v15

    .line 240
    .local v15, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    iget v7, v15, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    .line 241
    const/high16 v21, 0x40000000    # 2.0f

    div-float v21, v7, v21

    sget v22, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    move/from16 v0, v21

    iput v0, v14, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 245
    .end local v15    # "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    :goto_1
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/smengine/RectNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v21

    if-eqz v21, :cond_3

    .line 246
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 247
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/smengine/RectNode;->updateWorldTransforms()V

    .line 249
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/data/ExportDataProvider;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/smartisanos/launcher/view/Cell;->drawCell(Landroid/content/Context;)[B

    move-result-object v6

    .line 250
    const-string v21, "%s;%s;%s;%s;%s"

    const/16 v22, 0x5

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    iget v0, v14, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    iget v0, v14, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x3

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x4

    sget v24, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static/range {v24 .. v24}, Lcom/smartisanos/launcher/data/Constants;->getCellNumByMode(I)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 251
    sget-boolean v21, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v21, :cond_4

    sget-object v21, Lcom/smartisanos/launcher/data/ExportDataProvider;->log:Lcom/smartisanos/launcher/LOG;

    const-string v22, "DEBUG"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "####################          size "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_4
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v6, v21, v22

    const/16 v22, 0x1

    aput-object v17, v21, v22

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 243
    :cond_5
    move-object/from16 v0, v16

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    mul-float v7, v21, v22

    goto/16 :goto_1

    .line 259
    .end local v3    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v14    # "pos":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v16    # "si":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_6
    if-eqz v9, :cond_a

    .line 260
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/launcher/view/PageView;->getAllPagesInWindow()Ljava/util/ArrayList;

    move-result-object v13

    .line 261
    .local v13, "page_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    const/4 v12, 0x0

    .line 262
    .local v12, "page":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_9

    .line 263
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v8, v0, :cond_9

    .line 264
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/smartisanos/launcher/view/Page;

    .line 265
    .local v11, "p":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/Page;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v10

    .line 266
    .local v10, "loc":Lcom/smartisanos/smengine/math/Vector3f;
    iget v0, v10, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v21, v0

    const/high16 v22, 0x43b40000    # 360.0f

    cmpl-float v21, v21, v22

    if-gez v21, :cond_7

    iget v0, v10, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v21, v0

    const/high16 v22, -0x3c4c0000    # -360.0f

    cmpg-float v21, v21, v22

    if-gtz v21, :cond_8

    .line 263
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 270
    :cond_8
    if-nez v12, :cond_7

    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/Page;->getAllCellIndex()Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_7

    .line 271
    move-object v12, v11

    .line 276
    .end local v8    # "i":I
    .end local v10    # "loc":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v11    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_9
    if-eqz v12, :cond_a

    .line 277
    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Lcom/smartisanos/launcher/view/Page;->getPageCellAt(II)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v3

    .line 278
    .restart local v3    # "cell":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v3, :cond_a

    .line 279
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundSize()Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v4

    .line 280
    .local v4, "cell_background_size":Lcom/smartisanos/smengine/math/Vector2f;
    iget v0, v4, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    move/from16 v18, v0

    .line 281
    iget v7, v4, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    .line 282
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v19, v0

    .line 283
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v20, v0

    .line 284
    const-string v21, "%s;%s;%s;%s;%s"

    const/16 v22, 0x5

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x3

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x4

    sget v24, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static/range {v24 .. v24}, Lcom/smartisanos/launcher/data/Constants;->getCellNumByMode(I)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 285
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v6, v21, v22

    const/16 v22, 0x1

    aput-object v17, v21, v22

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 290
    .end local v3    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v4    # "cell_background_size":Lcom/smartisanos/smengine/math/Vector2f;
    .end local v12    # "page":Lcom/smartisanos/launcher/view/Page;
    .end local v13    # "page_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    :cond_a
    const-string v21, "%s;%s;%s;%s;%s"

    const/16 v22, 0x5

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x3

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x4

    sget v24, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static/range {v24 .. v24}, Lcom/smartisanos/launcher/data/Constants;->getCellNumByMode(I)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 291
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v6, v21, v22

    const/16 v22, 0x1

    aput-object v17, v21, v22

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 297
    const/4 v0, 0x0

    return v0
.end method
