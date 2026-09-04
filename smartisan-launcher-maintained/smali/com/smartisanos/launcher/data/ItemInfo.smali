.class public Lcom/smartisanos/launcher/data/ItemInfo;
.super Ljava/lang/Object;
.source "ItemInfo.java"

.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


.field public static final ITEM_TYPE_APPLICATION:B = 0x0t

.field public static final ITEM_TYPE_FOLDER:B = 0x2t

.field public static final ITEM_TYPE_SHORTCUT:B = 0x1t

.field public static final PAGE_INDEX_FOR_DOCK:I = -0x2

.field public static final SHORTCUT_INTENT:Ljava/lang/String; = "shortcut_intent"

.field private static final log:Lcom/smartisanos/launcher/LOG;


.field public cellIndex:I

.field public color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

.field public componentName:Ljava/lang/String;

.field public iconData:[B

.field public iconDrawableName:Ljava/lang/String;

.field public iconTextureIndex:I

.field public id:J

.field public installed:Z

.field public isNeedDowload:Z

.field public isNewlyInstalled:Z

.field public isSystemApp:Z

.field public itemType:B

.field public messagesNumber:I

.field public originIndex:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public pageIndex:I

.field public qwertyIndex:Ljava/lang/String;

.field public t9Index:Ljava/lang/String;

.field public title:Ljava/lang/String;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/data/ItemInfo;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    .line 29
    iput-byte v2, p0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    .line 31
    iput v3, p0, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 32
    iput v3, p0, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    .line 34
    iput v2, p0, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->installed:Z

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    .line 45
    iput-boolean v2, p0, Lcom/smartisanos/launcher/data/ItemInfo;->isNewlyInstalled:Z

    .line 46
    iput-boolean v2, p0, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    .line 47
    iput v3, p0, Lcom/smartisanos/launcher/data/ItemInfo;->iconTextureIndex:I

    .line 49
    iput-boolean v2, p0, Lcom/smartisanos/launcher/data/ItemInfo;->isNeedDowload:Z

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/launcher/data/ItemInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/smartisanos/launcher/data/ItemInfo;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    .line 29
    iput-byte v2, p0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    .line 31
    iput v3, p0, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 32
    iput v3, p0, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    .line 34
    iput v2, p0, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->installed:Z

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    .line 45
    iput-boolean v2, p0, Lcom/smartisanos/launcher/data/ItemInfo;->isNewlyInstalled:Z

    .line 46
    iput-boolean v2, p0, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    .line 47
    iput v3, p0, Lcom/smartisanos/launcher/data/ItemInfo;->iconTextureIndex:I

    .line 49
    iput-boolean v2, p0, Lcom/smartisanos/launcher/data/ItemInfo;->isNeedDowload:Z

    .line 60
    iget-wide v0, p1, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    iput-wide v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    .line 61
    iget-byte v0, p1, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    iput-byte v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    .line 62
    iget v0, p1, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    iput v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 63
    iget v0, p1, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    iput v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    .line 64
    iget v0, p1, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    iput v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    .line 65
    iget-boolean v0, p1, Lcom/smartisanos/launcher/data/ItemInfo;->installed:Z

    iput-boolean v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->installed:Z

    .line 66
    iget-object v0, p1, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    iput-object v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    .line 67
    iget-object v0, p1, Lcom/smartisanos/launcher/data/ItemInfo;->iconData:[B

    iput-object v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->iconData:[B

    .line 68
    iget-object v0, p1, Lcom/smartisanos/launcher/data/ItemInfo;->iconDrawableName:Ljava/lang/String;

    iput-object v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->iconDrawableName:Ljava/lang/String;

    .line 69
    iget v0, p1, Lcom/smartisanos/launcher/data/ItemInfo;->iconTextureIndex:I

    iput v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->iconTextureIndex:I

    .line 70
    iget-boolean v0, p1, Lcom/smartisanos/launcher/data/ItemInfo;->isNeedDowload:Z

    iput-boolean v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->isNeedDowload:Z

    .line 71
    iget-boolean v0, p1, Lcom/smartisanos/launcher/data/ItemInfo;->isNewlyInstalled:Z

    iput-boolean v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->isNewlyInstalled:Z

    .line 72
    iget-boolean v0, p1, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    iput-boolean v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    .line 73
    iget-object v0, p1, Lcom/smartisanos/launcher/data/ItemInfo;->originIndex:Ljava/lang/String;

    iput-object v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->originIndex:Ljava/lang/String;

    .line 74
    iget-object v0, p1, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 75
    iget-object v0, p1, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    iput-object v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    .line 76
    iget-object v0, p1, Lcom/smartisanos/launcher/data/ItemInfo;->qwertyIndex:Ljava/lang/String;

    iput-object v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->qwertyIndex:Ljava/lang/String;

    .line 77
    iget-object v0, p1, Lcom/smartisanos/launcher/data/ItemInfo;->t9Index:Ljava/lang/String;

    iput-object v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->t9Index:Ljava/lang/String;

    .line 78
    iget-object v0, p1, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public static convertItemInfoToContentValues(Lcom/smartisanos/launcher/data/ItemInfo;)Landroid/content/ContentValues;
    .locals 5
    .param p0, "info"    # Lcom/smartisanos/launcher/data/ItemInfo;

    .prologue
    const/4 v2, 0x0

    .line 256
    if-nez p0, :cond_0

    .line 257
    const/4 v1, 0x0

    .line 281
    :goto_0
    return-object v1

    .line 259
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 260
    .local v1, "values":Landroid/content/ContentValues;
    const-string v3, "itemType"

    iget-byte v4, p0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 261
    const-string v3, "pageIndex"

    iget v4, p0, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 262
    const-string v3, "cellIndex"

    iget v4, p0, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 263
    const-string v3, "messagesNumber"

    iget v4, p0, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 264
    const-string v3, "packageName"

    iget-object v4, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v3, "iconName"

    iget-object v4, p0, Lcom/smartisanos/launcher/data/ItemInfo;->iconDrawableName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v3, "title"

    iget-object v4, p0, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v3, "origin_index"

    iget-object v4, p0, Lcom/smartisanos/launcher/data/ItemInfo;->originIndex:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v3, "qwerty_index"

    iget-object v4, p0, Lcom/smartisanos/launcher/data/ItemInfo;->qwertyIndex:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v3, "t9_index"

    iget-object v4, p0, Lcom/smartisanos/launcher/data/ItemInfo;->t9Index:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-byte v3, p0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 272
    :pswitch_0
    const-string v3, "componentName"

    iget-object v4, p0, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v3, "newlyInstalled"

    iget-boolean v4, p0, Lcom/smartisanos/launcher/data/ItemInfo;->isNewlyInstalled:Z

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :pswitch_1
    move-object v0, p0

    .line 277
    check-cast v0, Lcom/smartisanos/launcher/data/ShortcutInfo;

    .line 278
    .local v0, "appInfo":Lcom/smartisanos/launcher/data/ShortcutInfo;
    const-string v3, "intent"

    iget-object v4, v0, Lcom/smartisanos/launcher/data/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 270
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static toItemInfo(Landroid/database/Cursor;[Ljava/lang/String;)Lcom/smartisanos/launcher/data/ItemInfo;
    .locals 33
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columns"    # [Ljava/lang/String;

    .prologue
    .line 150
    if-nez p0, :cond_0

    .line 151
    const/16 v22, 0x0

    .line 219
    :goto_0
    return-object v22

    .line 153
    :cond_0
    if-eqz p1, :cond_1

    .line 154
    invoke-static/range {p0 .. p1}, Lcom/smartisanos/launcher/data/ItemInfo;->toItemInfoByColumn(Landroid/database/Cursor;[Ljava/lang/String;)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v22

    goto :goto_0

    .line 156
    :cond_1
    const-string v30, "_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 157
    .local v6, "COLUMN_ID":I
    const-string v30, "itemType"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 158
    .local v16, "COLUMN_TYPE":I
    const-string v30, "title"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 159
    .local v15, "COLUMN_TITLE":I
    const-string v30, "packageName"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 160
    .local v11, "COLUMN_PACKAGE_NAME":I
    const-string v30, "componentName"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 161
    .local v5, "COLUMN_COMPONENT_NAME":I
    const-string v30, "pageIndex"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 162
    .local v12, "COLUMN_PAGE_INDEX":I
    const-string v30, "cellIndex"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 163
    .local v4, "COLUMN_CELL_INDEX":I
    const-string v30, "messagesNumber"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 164
    .local v8, "COLUMN_MESSAGES_NUMBER":I
    const-string v30, "newlyInstalled"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 165
    .local v9, "COLUMN_NEWLY_INSTALLED":I
    const-string v30, "origin_index"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 166
    .local v10, "COLUMN_ORIGIN_INDEX":I
    const-string v30, "qwerty_index"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 167
    .local v13, "COLUMN_QWERTY_INDEX":I
    const-string v30, "t9_index"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 168
    .local v14, "COLUMN_T9_INDEX":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    move/from16 v0, v30

    int-to-byte v0, v0

    move/from16 v29, v0

    .line 170
    .local v29, "type":B
    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 171
    .local v20, "id":J
    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 172
    .local v28, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 173
    .local v27, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 174
    .local v18, "cmp":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 175
    .local v26, "pageIndex":I
    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 176
    .local v17, "cellIndex":I
    if-nez v27, :cond_2

    .line 177
    new-instance v30, Ljava/lang/IllegalArgumentException;

    const-string v31, "lose package name"

    invoke-direct/range {v30 .. v31}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v30

    .line 179
    :cond_2
    packed-switch v29, :pswitch_data_0

    .line 219
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 181
    :pswitch_0
    new-instance v22, Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-direct/range {v22 .. v22}, Lcom/smartisanos/launcher/data/ItemInfo;-><init>()V

    .line 182
    .local v22, "info":Lcom/smartisanos/launcher/data/ItemInfo;
    move-wide/from16 v0, v20

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    .line 183
    move-object/from16 v0, v28

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    .line 184
    move-object/from16 v0, v27

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 185
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    .line 186
    move/from16 v0, v26

    move-object/from16 v1, v22

    iput v0, v1, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 187
    move/from16 v0, v17

    move-object/from16 v1, v22

    iput v0, v1, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    .line 188
    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, v22

    iput v0, v1, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    .line 189
    move-object/from16 v0, p0

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 190
    .local v25, "isNewlyInstalled":I
    const/16 v30, 0x1

    move/from16 v0, v25

    move/from16 v1, v30

    if-ne v0, v1, :cond_3

    const/16 v30, 0x1

    :goto_1
    move/from16 v0, v30

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/smartisanos/launcher/data/ItemInfo;->isNewlyInstalled:Z

    .line 191
    const-string v30, "iconName"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/smartisanos/launcher/data/ItemInfo;->iconDrawableName:Ljava/lang/String;

    .line 192
    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/smartisanos/launcher/data/ItemInfo;->originIndex:Ljava/lang/String;

    .line 193
    move-object/from16 v0, p0

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/smartisanos/launcher/data/ItemInfo;->qwertyIndex:Ljava/lang/String;

    .line 194
    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/smartisanos/launcher/data/ItemInfo;->t9Index:Ljava/lang/String;

    goto/16 :goto_0

    .line 190
    :cond_3
    const/16 v30, 0x0

    goto :goto_1

    .line 198
    .end local v22    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v25    # "isNewlyInstalled":I
    :pswitch_1
    const-string v30, "intent"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 199
    .local v7, "COLUMN_INTENT":I
    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 200
    .local v24, "intentStr":Ljava/lang/String;
    const/16 v23, 0x0

    .line 202
    .local v23, "intent":Landroid/content/Intent;
    const/16 v30, 0x0

    :try_start_0
    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v23

    .line 207
    :goto_2
    new-instance v22, Lcom/smartisanos/launcher/data/ShortcutInfo;

    invoke-direct/range {v22 .. v22}, Lcom/smartisanos/launcher/data/ShortcutInfo;-><init>()V

    .line 208
    .local v22, "info":Lcom/smartisanos/launcher/data/ShortcutInfo;
    move-wide/from16 v0, v20

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/smartisanos/launcher/data/ShortcutInfo;->id:J

    .line 209
    move-object/from16 v0, v28

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/smartisanos/launcher/data/ShortcutInfo;->title:Ljava/lang/String;

    .line 210
    move-object/from16 v0, v27

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/smartisanos/launcher/data/ShortcutInfo;->packageName:Ljava/lang/String;

    .line 211
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/smartisanos/launcher/data/ShortcutInfo;->componentName:Ljava/lang/String;

    .line 212
    move/from16 v0, v26

    move-object/from16 v1, v22

    iput v0, v1, Lcom/smartisanos/launcher/data/ShortcutInfo;->pageIndex:I

    .line 213
    move/from16 v0, v17

    move-object/from16 v1, v22

    iput v0, v1, Lcom/smartisanos/launcher/data/ShortcutInfo;->cellIndex:I

    .line 214
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/smartisanos/launcher/data/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 215
    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, v22

    iput v0, v1, Lcom/smartisanos/launcher/data/ShortcutInfo;->messagesNumber:I

    goto/16 :goto_0

    .line 203
    .end local v22    # "info":Lcom/smartisanos/launcher/data/ShortcutInfo;
    :catch_0
    move-exception v19

    .line 204
    .local v19, "e":Ljava/lang/Exception;
    sget-object v30, Lcom/smartisanos/launcher/data/ItemInfo;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "error intent ["

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "]"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static toItemInfoByColumn(Landroid/database/Cursor;[Ljava/lang/String;)Lcom/smartisanos/launcher/data/ItemInfo;
    .locals 12
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columns"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 223
    move-object v1, p1

    .line 224
    .local v1, "cols":[Ljava/lang/String;
    if-nez v1, :cond_0

    .line 225
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "toItemInfoByColumn lose columns"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 227
    :cond_0
    new-instance v3, Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-direct {v3}, Lcom/smartisanos/launcher/data/ItemInfo;-><init>()V

    .line 228
    .local v3, "info":Lcom/smartisanos/launcher/data/ItemInfo;
    array-length v9, v1

    move v8, v7

    :goto_0
    if-ge v8, v9, :cond_a

    aget-object v0, v1, v8

    .line 229
    .local v0, "col":Ljava/lang/String;
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 230
    .local v2, "index":I
    const-string v5, "_id"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 231
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, v3, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    .line 228
    :cond_1
    :goto_1
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    goto :goto_0

    .line 232
    :cond_2
    const-string v5, "title"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 233
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    goto :goto_1

    .line 234
    :cond_3
    const-string v5, "packageName"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 235
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 236
    iget-object v5, v3, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 237
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "lose package name"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 239
    :cond_4
    const-string v5, "componentName"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 240
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    goto :goto_1

    .line 241
    :cond_5
    const-string v5, "pageIndex"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 242
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v3, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    goto :goto_1

    .line 243
    :cond_6
    const-string v5, "cellIndex"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 244
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v3, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    goto :goto_1

    .line 245
    :cond_7
    const-string v5, "messagesNumber"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 246
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v3, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    goto :goto_1

    .line 247
    :cond_8
    const-string v5, "newlyInstalled"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 248
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 249
    .local v4, "isNewlyInstalled":I
    if-ne v4, v6, :cond_9

    move v5, v6

    :goto_2
    iput-boolean v5, v3, Lcom/smartisanos/launcher/data/ItemInfo;->isNewlyInstalled:Z

    goto :goto_1

    :cond_9
    move v5, v7

    goto :goto_2

    .line 252
    .end local v0    # "col":Ljava/lang/String;
    .end local v2    # "index":I
    .end local v4    # "isNewlyInstalled":I
    :cond_a
    return-object v3
.end method


.method public clone()Lcom/smartisanos/launcher/data/ItemInfo;
    .locals 4

    .prologue
    .line 305
    new-instance v0, Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-direct {v0}, Lcom/smartisanos/launcher/data/ItemInfo;-><init>()V

    .line 306
    .local v0, "info":Lcom/smartisanos/launcher/data/ItemInfo;
    iget-wide v2, p0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    iput-wide v2, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    .line 308
    iget-byte v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    iput-byte v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    .line 310
    iget v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    iput v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 311
    iget v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    iput v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    .line 313
    iget v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    iput v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    .line 315
    iget-object v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->iconData:[B

    iput-object v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->iconData:[B

    .line 316
    iget-object v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    iput-object v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    .line 318
    iget-object v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    .line 319
    iget-object v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 320
    iget-object v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    iput-object v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    .line 322
    iget-boolean v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->isNewlyInstalled:Z

    iput-boolean v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->isNewlyInstalled:Z

    .line 323
    iget-boolean v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    iput-boolean v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    .line 324
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/ItemInfo;->clone()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    return-object v0
.end method

.method public cloneForSort()Lcom/smartisanos/launcher/data/ItemInfo;
    .locals 4

    .prologue
    .line 87
    new-instance v1, Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-direct {v1}, Lcom/smartisanos/launcher/data/ItemInfo;-><init>()V

    .line 88
    .local v1, "i":Lcom/smartisanos/launcher/data/ItemInfo;
    iget-wide v2, p0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    iput-wide v2, v1, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    .line 89
    iget-boolean v2, p0, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    iput-boolean v2, v1, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    .line 90
    iget v2, p0, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    iput v2, v1, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    .line 91
    iget v2, p0, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    iput v2, v1, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 92
    iget-object v2, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    iput-object v2, v1, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 93
    iget-object v2, v1, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 94
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "lose package name"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 96
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    iput-object v2, v1, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    .line 97
    iget-object v2, p0, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    iput-object v2, v1, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    .line 98
    iget-object v2, p0, Lcom/smartisanos/launcher/data/ItemInfo;->iconData:[B

    iput-object v2, v1, Lcom/smartisanos/launcher/data/ItemInfo;->iconData:[B

    .line 99
    iget-object v2, p0, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    if-eqz v2, :cond_1

    .line 100
    iget-object v2, p0, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->clone()Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    move-result-object v0

    .line 101
    .local v0, "c":Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->setOwner(Lcom/smartisanos/launcher/data/ItemInfo;)V

    .line 102
    iput-object v0, v1, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    .line 104
    .end local v0    # "c":Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;
    :cond_1
    return-object v1
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 127
    if-nez p1, :cond_1

    .line 128
    const/4 v1, -0x1

    .line 140
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 130
    check-cast v0, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 131
    .local v0, "info":Lcom/smartisanos/launcher/data/ItemInfo;
    iget v4, p0, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    mul-int/lit8 v4, v4, 0x64

    iget v5, p0, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    add-int v2, v4, v5

    .line 132
    .local v2, "v1":I
    iget v4, v0, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    mul-int/lit8 v4, v4, 0x64

    iget v5, v0, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    add-int v3, v4, v5

    .line 133
    .local v3, "v2":I
    sub-int v1, v2, v3

    .line 134
    .local v1, "result":I
    if-lez v1, :cond_2

    .line 135
    const/4 v1, 0x1

    .line 137
    :cond_2
    if-gez v1, :cond_0

    .line 138
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public generateIconTextureName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 285
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 286
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Item info id <= 0!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_0
    iget-byte v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_renderTargetFore"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 292
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_fore"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getComponentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isActiveIcon()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 68
    iget-object v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v0

    .line 71
    :cond_1
    sget-object v1, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->CALENDAR:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    iget-object v1, v1, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->pkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->WEATHER:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    iget-object v1, v1, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->pkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isDockItem()Z
    .locals 2

    .prologue
    .line 83
    iget v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toIndexInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "originIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->originIndex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " qwertyIndex : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->qwertyIndex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " t9Index : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->t9Index:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toSimpleInfo()Ljava/lang/String;
    .locals 4

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pid ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], cid ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], id ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], appName ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], messagesNumber ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], isNewlyInstalled ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->isNewlyInstalled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pageIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cellIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isNewlyInstalled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->isNewlyInstalled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
