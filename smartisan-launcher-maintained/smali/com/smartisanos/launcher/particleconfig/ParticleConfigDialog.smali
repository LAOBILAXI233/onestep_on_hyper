.class public Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;
.super Landroid/app/Dialog;
.source "ParticleConfigDialog.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$onProgressChanged;
    }
.end annotation


.field private static mContext:Landroid/content/Context;

.field private static mParticleConfigDialog:Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;


.field test_content:Landroid/view/View;

.field test_life_l_p:Landroid/widget/SeekBar;


.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v1, 0x20

    .line 55
    sget v0, Lcom/smartisanos/launcher/ResIds$style;->ParticleConfigDialogStyle:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 56
    sget v0, Lcom/smartisanos/launcher/ResIds$layout;->dialog_partical_config:I

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->setContentView(I)V

    .line 57
    invoke-virtual {p0}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->generateFlag()V

    return-void
.end method

.method static synthetic access$100(Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->init()V

    return-void
.end method

.method private generateFlag()V
    .locals 15

    .prologue
    const/4 v14, -0x1

    const/4 v13, 0x0

    .line 258
    const-string v12, "com.android.mms"

    .line 259
    .local v12, "pkgName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageName = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 260
    .local v3, "where":Ljava/lang/String;
    const/4 v8, 0x0

    .line 261
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v10, -0x1

    .line 263
    .local v10, "id":I
    :try_start_0
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getInstance()Lcom/smartisanos/launcher/data/DatabaseProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 264
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "table_iteminfos"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 265
    if-eqz v8, :cond_1

    .line 266
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    long-to-int v10, v4

    .line 269
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    :cond_1
    if-eqz v8, :cond_2

    .line 275
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 276
    const/4 v8, 0x0

    .line 279
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_2
    :goto_0
    if-eq v10, v14, :cond_3

    .line 280
    move v11, v10

    .line 281
    .local v11, "itemID":I
    new-instance v1, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$14;

    const/16 v2, 0x64

    invoke-direct {v1, p0, v2, v11}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$14;-><init>(Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;II)V

    .line 295
    invoke-virtual {v1, v13}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$14;->send(F)V

    .line 298
    .end local v11    # "itemID":I
    :cond_3
    const-string v12, "com.android.camera2"

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageName = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 301
    :try_start_1
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getInstance()Lcom/smartisanos/launcher/data/DatabaseProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 302
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "table_iteminfos"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 305
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_1
    const/4 v10, -0x1

    .line 306
    if-eqz v8, :cond_5

    .line 307
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 308
    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    long-to-int v10, v4

    .line 310
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 312
    :cond_5
    if-eq v10, v14, :cond_6

    .line 313
    move v11, v10

    .line 314
    .restart local v11    # "itemID":I
    new-instance v1, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$15;

    const/16 v2, 0x64

    invoke-direct {v1, p0, v2, v11}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$15;-><init>(Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;II)V

    .line 328
    invoke-virtual {v1, v13}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$15;->send(F)V

    .line 330
    .end local v11    # "itemID":I
    :cond_6
    return-void

    .line 271
    :catch_0
    move-exception v9

    .line 272
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 274
    if-eqz v8, :cond_2

    .line 275
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 276
    const/4 v8, 0x0

    goto :goto_0

    .line 274
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_7

    .line 275
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 276
    const/4 v8, 0x0

    :cond_7
    throw v1

    .line 303
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    sget-object v0, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->mContext:Landroid/content/Context;

    if-eq p0, v0, :cond_0

    .line 42
    sput-object p0, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->mContext:Landroid/content/Context;

    .line 43
    sget-object v0, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->mParticleConfigDialog:Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;

    if-eqz v0, :cond_0

    .line 44
    sget-object v0, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->mParticleConfigDialog:Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->cancel()V

    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->mParticleConfigDialog:Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;

    .line 48
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->mParticleConfigDialog:Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;

    if-nez v0, :cond_1

    .line 49
    new-instance v0, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->mParticleConfigDialog:Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;

    .line 51
    :cond_1
    sget-object v0, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->mParticleConfigDialog:Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;

    return-object v0
.end method

.method private init()V
    .locals 44

    .prologue
    .line 70
    const v2, 0x7f0f008d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->test_content:Landroid/view/View;

    .line 71
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->test_content:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 73
    const v2, 0x7f0f008e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 74
    .local v4, "test_gravity_x":Landroid/widget/TextView;
    const v2, 0x7f0f008f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    .line 75
    .local v5, "test_gravity_x_p":Landroid/widget/SeekBar;
    const-string v3, "X="

    sget v6, Lcom/smartisanos/launcher/view/FlagDismissAnimation$FlagParticle;->mTestGravityX:F

    const/high16 v7, -0x3c860000    # -250.0f

    const/high16 v8, 0x437a0000    # 250.0f

    new-instance v9, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$1;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$1;-><init>(Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;)V

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->initListener(Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/SeekBar;FFFLcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$onProgressChanged;)V

    .line 84
    const v2, 0x7f0f0090

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 85
    .local v8, "test_gravity_y":Landroid/widget/TextView;
    const v2, 0x7f0f0091

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/SeekBar;

    .line 86
    .local v9, "test_gravity_y_p":Landroid/widget/SeekBar;
    const-string v7, "Y="

    sget v10, Lcom/smartisanos/launcher/view/FlagDismissAnimation$FlagParticle;->mTestGravityY:F

    const/high16 v11, -0x3c860000    # -250.0f

    const/high16 v12, 0x437a0000    # 250.0f

    new-instance v13, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$2;-><init>(Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;)V

    move-object/from16 v6, p0

    invoke-direct/range {v6 .. v13}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->initListener(Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/SeekBar;FFFLcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$onProgressChanged;)V

    .line 97
    const v2, 0x7f0f0092

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 98
    .local v12, "test_velocity_x":Landroid/widget/TextView;
    const v2, 0x7f0f0093

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/SeekBar;

    .line 99
    .local v13, "test_velocity_x_p":Landroid/widget/SeekBar;
    const-string v11, "X="

    sget v14, Lcom/smartisanos/launcher/view/FlagDismissAnimation$FlagParticle;->mTestVelocityX:F

    const/high16 v15, -0x3c860000    # -250.0f

    const/high16 v16, 0x437a0000    # 250.0f

    new-instance v17, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$3;-><init>(Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;)V

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v17}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->initListener(Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/SeekBar;FFFLcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$onProgressChanged;)V

    .line 108
    const v2, 0x7f0f0094

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 109
    .local v16, "test_velocity_y":Landroid/widget/TextView;
    const v2, 0x7f0f0095

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/SeekBar;

    .line 110
    .local v17, "test_velocity_y_p":Landroid/widget/SeekBar;
    const-string v15, "Y="

    sget v18, Lcom/smartisanos/launcher/view/FlagDismissAnimation$FlagParticle;->mTestVelocityY:F

    const/high16 v19, -0x3c860000    # -250.0f

    const/high16 v20, 0x437a0000    # 250.0f

    new-instance v21, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$4;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$4;-><init>(Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;)V

    move-object/from16 v14, p0

    invoke-direct/range {v14 .. v21}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->initListener(Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/SeekBar;FFFLcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$onProgressChanged;)V

    .line 119
    const v2, 0x7f0f0096

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 120
    .local v20, "test_velocity_i":Landroid/widget/TextView;
    const v2, 0x7f0f0097

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/SeekBar;

    .line 121
    .local v21, "test_velocity_i_p":Landroid/widget/SeekBar;
    const-string v19, "I="

    sget v22, Lcom/smartisanos/launcher/view/FlagDismissAnimation$FlagParticle;->mTestVelocityI:F

    const/16 v23, 0x0

    const/high16 v24, 0x3f800000    # 1.0f

    new-instance v25, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$5;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$5;-><init>(Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;)V

    move-object/from16 v18, p0

    invoke-direct/range {v18 .. v25}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->initListener(Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/SeekBar;FFFLcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$onProgressChanged;)V

    .line 130
    const v2, 0x7f0f0098

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 131
    .local v24, "test_life_l":Landroid/widget/TextView;
    const v2, 0x7f0f0099

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->test_life_l_p:Landroid/widget/SeekBar;

    .line 132
    const-string v23, "L="

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->test_life_l_p:Landroid/widget/SeekBar;

    move-object/from16 v25, v0

    sget v2, Lcom/smartisanos/launcher/view/FlagDismissAnimation$FlagParticle;->mTestLifeL:F

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float v26, v2, v3

    const/16 v27, 0x0

    const v28, 0x453b8000    # 3000.0f

    new-instance v29, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$6;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$6;-><init>(Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;)V

    move-object/from16 v22, p0

    invoke-direct/range {v22 .. v29}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->initListener(Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/SeekBar;FFFLcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$onProgressChanged;)V

    .line 141
    const v2, 0x7f0f009a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 142
    .local v27, "test_life_h":Landroid/widget/TextView;
    const v2, 0x7f0f009b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/SeekBar;

    .line 143
    .local v28, "test_life_h_p":Landroid/widget/SeekBar;
    const-string v26, "H="

    sget v2, Lcom/smartisanos/launcher/view/FlagDismissAnimation$FlagParticle;->mTestLifeH:F

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float v29, v2, v3

    const/16 v30, 0x0

    const v31, 0x453b8000    # 3000.0f

    new-instance v32, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$7;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$7;-><init>(Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;)V

    move-object/from16 v25, p0

    invoke-direct/range {v25 .. v32}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->initListener(Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/SeekBar;FFFLcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$onProgressChanged;)V

    .line 152
    const v2, 0x7f0f009c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    .line 153
    .local v31, "test_num":Landroid/widget/TextView;
    const v2, 0x7f0f009d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/SeekBar;

    .line 154
    .local v32, "test_num_p":Landroid/widget/SeekBar;
    const-string v30, "N="

    sget v2, Lcom/smartisanos/launcher/view/FlagDismissAnimation$FlagParticle;->mTestParticleNumPerFrame:I

    int-to-float v0, v2

    move/from16 v33, v0

    const/high16 v34, 0x3f800000    # 1.0f

    const/high16 v35, 0x42ca0000    # 101.0f

    new-instance v36, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$8;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$8;-><init>(Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;)V

    move-object/from16 v29, p0

    invoke-direct/range {v29 .. v36}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->initListener(Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/SeekBar;FFFLcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$onProgressChanged;)V

    .line 163
    const v2, 0x7f0f009e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/TextView;

    .line 164
    .local v35, "test_time":Landroid/widget/TextView;
    const v2, 0x7f0f009f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/SeekBar;

    .line 165
    .local v36, "test_time_p":Landroid/widget/SeekBar;
    const-string v34, "T="

    sget v2, Lcom/smartisanos/launcher/view/FlagDismissAnimation$FlagParticle;->mTestAnimTime:F

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float v37, v2, v3

    const/16 v38, 0x0

    const/high16 v39, 0x40a00000    # 5.0f

    new-instance v40, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$9;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$9;-><init>(Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;)V

    move-object/from16 v33, p0

    invoke-direct/range {v33 .. v40}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->initListener(Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/SeekBar;FFFLcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$onProgressChanged;)V

    .line 174
    const v2, 0x7f0f00a1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/Button;

    .line 175
    .local v41, "btn_a":Landroid/widget/Button;
    const v2, 0x7f0f00a2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v42

    check-cast v42, Landroid/widget/Button;

    .line 176
    .local v42, "btn_b":Landroid/widget/Button;
    new-instance v2, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$10;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$10;-><init>(Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;)V

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    new-instance v2, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$11;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$11;-><init>(Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    const v2, 0x7f0f00a0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v43

    check-cast v43, Landroid/widget/Button;

    .line 202
    .local v43, "reset_btn":Landroid/widget/Button;
    new-instance v2, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$12;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$12;-><init>(Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    return-void
.end method

.method private initListener(Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/SeekBar;FFFLcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$onProgressChanged;)V
    .locals 8
    .param p1, "p"    # Ljava/lang/String;
    .param p2, "textView"    # Landroid/widget/TextView;
    .param p3, "seekBar"    # Landroid/widget/SeekBar;
    .param p4, "initValue"    # F
    .param p5, "min"    # F
    .param p6, "max"    # F
    .param p7, "l"    # Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$onProgressChanged;

    .prologue
    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    sub-float v0, p4, p5

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    sub-float v1, p6, p5

    div-float/2addr v0, v1

    float-to-int v7, v0

    .line 216
    .local v7, "progress":I
    invoke-virtual {p3, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 217
    new-instance v0, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$13;

    move-object v1, p0

    move v2, p5

    move v3, p6

    move-object v4, p2

    move-object v5, p1

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$13;-><init>(Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;FFLandroid/widget/TextView;Ljava/lang/String;Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$onProgressChanged;)V

    invoke-virtual {p3, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 251
    return-void
.end method


.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 63
    invoke-direct {p0}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->init()V

    .line 64
    return-void
.end method
