.class public Lcom/smartisanos/launcher/data/table/ITEM;
.super Lcom/smartisanos/launcher/data/table/Table;
.source "ITEM.java"


.field public static final AREA:Ljava/lang/String; = "area"

.field public static final CELL_INDEX:Ljava/lang/String; = "cellIndex"

.field public static final COMPONENT_NAME:Ljava/lang/String; = "componentName"

.field public static final DATA1:Ljava/lang/String; = "data1"

.field public static final DATA2:Ljava/lang/String; = "data2"

.field public static final DATA3:Ljava/lang/String; = "data3"

.field public static final ICON:Ljava/lang/String; = "icon"

.field public static final ICON_NAME:Ljava/lang/String; = "iconName"

.field public static final INTENT:Ljava/lang/String; = "intent"

.field public static final ITEM_TYPE:Ljava/lang/String; = "itemType"

.field public static final LAST_ACTIVATE_TIME:Ljava/lang/String; = "lastActivateTime"

.field public static final MESSAGES_NUMBER:Ljava/lang/String; = "messagesNumber"

.field public static final NAME:Ljava/lang/String; = "table_iteminfos"

.field public static final NEWLY_INSTALLED:Ljava/lang/String; = "newlyInstalled"

.field public static final ORIGIN_INDEX:Ljava/lang/String; = "origin_index"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final PAGE_INDEX:Ljava/lang/String; = "pageIndex"

.field public static final QWERTY_INDEX:Ljava/lang/String; = "qwerty_index"

.field public static final T9_INDEX:Ljava/lang/String; = "t9_index"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final _ID:Ljava/lang/String; = "_id"

.field private static final columnProps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


.field private version:I


.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/data/table/ITEM;->columnProps:Ljava/util/Map;

    .line 41
    sget-object v0, Lcom/smartisanos/launcher/data/table/ITEM;->columnProps:Ljava/util/Map;

    const-string v1, "_id"

    const-string v2, "INTEGER PRIMARY KEY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/smartisanos/launcher/data/table/ITEM;->columnProps:Ljava/util/Map;

    const-string v1, "intent"

    const-string v2, "TEXT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/smartisanos/launcher/data/table/ITEM;->columnProps:Ljava/util/Map;

    const-string v1, "itemType"

    const-string v2, "INTEGER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/smartisanos/launcher/data/table/ITEM;->columnProps:Ljava/util/Map;

    const-string v1, "area"

    const-string v2, "INTEGER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/smartisanos/launcher/data/table/ITEM;->columnProps:Ljava/util/Map;

    const-string v1, "pageIndex"

    const-string v2, "INTEGER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/smartisanos/launcher/data/table/ITEM;->columnProps:Ljava/util/Map;

    const-string v1, "cellIndex"

    const-string v2, "INTEGER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/smartisanos/launcher/data/table/ITEM;->columnProps:Ljava/util/Map;

    const-string v1, "title"

    const-string v2, "TEXT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/smartisanos/launcher/data/table/ITEM;->columnProps:Ljava/util/Map;

    const-string v1, "icon"

    const-string v2, "BLOB"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/smartisanos/launcher/data/table/ITEM;->columnProps:Ljava/util/Map;

    const-string v1, "lastActivateTime"

    const-string v2, "TEXT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/smartisanos/launcher/data/table/ITEM;->columnProps:Ljava/util/Map;

    const-string v1, "messagesNumber"

    const-string v2, "INTEGER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/smartisanos/launcher/data/table/ITEM;->columnProps:Ljava/util/Map;

    const-string v1, "newlyInstalled"

    const-string v2, "INTEGER DEFAULT 0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/smartisanos/launcher/data/table/ITEM;->columnProps:Ljava/util/Map;

    const-string v1, "packageName"

    const-string v2, "TEXT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/smartisanos/launcher/data/table/ITEM;->columnProps:Ljava/util/Map;

    const-string v1, "componentName"

    const-string v2, "TEXT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/smartisanos/launcher/data/table/ITEM;->columnProps:Ljava/util/Map;

    const-string v1, "iconName"

    const-string v2, "TEXT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/smartisanos/launcher/data/table/ITEM;->columnProps:Ljava/util/Map;

    const-string v1, "origin_index"

    const-string v2, "TEXT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/smartisanos/launcher/data/table/ITEM;->columnProps:Ljava/util/Map;

    const-string v1, "qwerty_index"

    const-string v2, "TEXT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/smartisanos/launcher/data/table/ITEM;->columnProps:Ljava/util/Map;

    const-string v1, "t9_index"

    const-string v2, "TEXT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/smartisanos/launcher/data/table/ITEM;->columnProps:Ljava/util/Map;

    const-string v1, "data1"

    const-string v2, "TEXT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/smartisanos/launcher/data/table/ITEM;->columnProps:Ljava/util/Map;

    const-string v1, "data2"

    const-string v2, "TEXT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/smartisanos/launcher/data/table/ITEM;->columnProps:Ljava/util/Map;

    const-string v1, "data3"

    const-string v2, "TEXT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/smartisanos/launcher/data/table/Table;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisanos/launcher/data/table/ITEM;->version:I

    .line 66
    const/4 v0, 0x3

    iput v0, p0, Lcom/smartisanos/launcher/data/table/ITEM;->version:I

    .line 67
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/smartisanos/launcher/data/table/Table;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisanos/launcher/data/table/ITEM;->version:I

    .line 70
    iput p1, p0, Lcom/smartisanos/launcher/data/table/ITEM;->version:I

    .line 71
    return-void
.end method

.method private updateItemTableVersion9(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 17
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 117
    :try_start_0
    const-string v1, "ALTER TABLE table_iteminfos ADD  COLUMN origin_index TEXT "

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 118
    const-string v1, "ALTER TABLE table_iteminfos ADD  COLUMN qwerty_index TEXT "

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 119
    const-string v1, "ALTER TABLE table_iteminfos ADD  COLUMN t9_index TEXT "

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 120
    const-string v2, "table_iteminfos"

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "title"

    aput-object v4, v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 121
    .local v12, "cursor":Landroid/database/Cursor;
    const-string v1, "title"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 122
    .local v10, "columnIndexTitle":I
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 123
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v9, v1, [Ljava/lang/String;

    .line 124
    .local v9, "appNames":[Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "i":I
    move v15, v14

    .line 126
    .end local v14    # "i":I
    .local v15, "i":I
    :goto_0
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "i":I
    .restart local v14    # "i":I
    invoke-interface {v12, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v15

    .line 127
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 128
    if-eqz v12, :cond_0

    .line 129
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 130
    const/4 v12, 0x0

    .line 132
    :cond_0
    array-length v1, v9

    new-array v11, v1, [Landroid/content/ContentValues;

    .line 133
    .local v11, "contentValues":[Landroid/content/ContentValues;
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 134
    const/4 v14, 0x0

    :goto_1
    array-length v1, v11

    if-ge v14, v1, :cond_1

    .line 135
    new-instance v1, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;

    aget-object v2, v9, v14

    invoke-direct {v1, v2}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/smartisanos/quicksearchbox/util/IndexUtil;->parsePinYinUnit(Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;)[Ljava/lang/String;

    move-result-object v16

    .line 136
    .local v16, "indexes":[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    aput-object v1, v11, v14

    .line 137
    aget-object v1, v11, v14

    const-string v2, "origin_index"

    const/4 v3, 0x2

    aget-object v3, v16, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    aget-object v1, v11, v14

    const-string v2, "qwerty_index"

    const/4 v3, 0x0

    aget-object v3, v16, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    aget-object v1, v11, v14

    const-string v2, "t9_index"

    const/4 v3, 0x1

    aget-object v3, v16, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v1, "table_iteminfos"

    aget-object v2, v11, v14

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v7, v14, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 134
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 142
    .end local v16    # "indexes":[Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 143
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v9    # "appNames":[Ljava/lang/String;
    .end local v10    # "columnIndexTitle":I
    .end local v11    # "contentValues":[Landroid/content/ContentValues;
    .end local v12    # "cursor":Landroid/database/Cursor;
    .end local v14    # "i":I
    :goto_2
    return-void

    .line 144
    :catch_0
    move-exception v13

    .line 145
    .local v13, "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v9    # "appNames":[Ljava/lang/String;
    .restart local v10    # "columnIndexTitle":I
    .restart local v12    # "cursor":Landroid/database/Cursor;
    .restart local v14    # "i":I
    :cond_2
    move v15, v14

    .end local v14    # "i":I
    .restart local v15    # "i":I
    goto/16 :goto_0
.end method


.method public createSQL()Ljava/lang/String;
    .locals 3

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/table/ITEM;->getColumns()[Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "columns":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 97
    const/4 v1, 0x0

    .line 99
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "table_iteminfos"

    sget-object v2, Lcom/smartisanos/launcher/data/table/ITEM;->columnProps:Ljava/util/Map;

    invoke-static {v1, v0, v2}, Lcom/smartisanos/launcher/data/table/ITEM;->generateCreateSQL(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getColumns()[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 80
    iget v0, p0, Lcom/smartisanos/launcher/data/table/ITEM;->version:I

    if-gt v0, v2, :cond_0

    .line 81
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "intent"

    aput-object v1, v0, v4

    const-string v1, "itemType"

    aput-object v1, v0, v2

    const-string v1, "area"

    aput-object v1, v0, v5

    const-string v1, "pageIndex"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "cellIndex"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "icon"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "lastActivateTime"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "messagesNumber"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "newlyInstalled"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "packageName"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "componentName"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "iconName"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "data3"

    aput-object v2, v0, v1

    .line 91
    :goto_0
    return-object v0

    .line 85
    :cond_0
    iget v0, p0, Lcom/smartisanos/launcher/data/table/ITEM;->version:I

    if-le v0, v2, :cond_1

    .line 86
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "intent"

    aput-object v1, v0, v4

    const-string v1, "itemType"

    aput-object v1, v0, v2

    const-string v1, "pageIndex"

    aput-object v1, v0, v5

    const-string v1, "cellIndex"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "messagesNumber"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "newlyInstalled"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "packageName"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "componentName"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "iconName"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "origin_index"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "qwerty_index"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "t9_index"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "data3"

    aput-object v2, v0, v1

    goto :goto_0

    .line 91
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, "table_iteminfos"

    return-object v0
.end method

.method public updateTo(ILandroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "version"    # I
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 104
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 107
    new-instance v1, Lcom/smartisanos/launcher/data/table/ITEM;

    invoke-direct {v1, p1}, Lcom/smartisanos/launcher/data/table/ITEM;-><init>(I)V

    .line 108
    .local v1, "table":Lcom/smartisanos/launcher/data/table/ITEM;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/table/ITEM;->getColumns()[Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "columns":[Ljava/lang/String;
    const-string v2, "table_iteminfos"

    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/table/ITEM;->createSQL()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v2, v0, v3}, Lcom/smartisanos/launcher/data/table/ITEM;->formatTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    .line 113
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "table":Lcom/smartisanos/launcher/data/table/ITEM;
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    const/16 v2, 0x9

    if-ne p1, v2, :cond_0

    .line 111
    invoke-direct {p0, p2}, Lcom/smartisanos/launcher/data/table/ITEM;->updateItemTableVersion9(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method
