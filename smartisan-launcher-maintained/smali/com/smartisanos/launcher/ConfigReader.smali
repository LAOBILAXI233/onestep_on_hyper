.class public Lcom/smartisanos/launcher/ConfigReader;
.super Ljava/lang/Object;
.source "ConfigReader.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/ConfigReader$ReadListener;
    }
.end annotation


.field private static final log:Lcom/smartisanos/launcher/LOG;


.field private mListener:Lcom/smartisanos/launcher/ConfigReader$ReadListener;

.field private mPathName:Ljava/lang/String;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/smartisanos/launcher/ConfigReader;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/ConfigReader;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/smartisanos/launcher/ConfigReader$ReadListener;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "l"    # Lcom/smartisanos/launcher/ConfigReader$ReadListener;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/smartisanos/launcher/ConfigReader;->mPathName:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/smartisanos/launcher/ConfigReader;->mListener:Lcom/smartisanos/launcher/ConfigReader$ReadListener;

    .line 34
    return-void
.end method

.method private handleString(Ljava/lang/String;)V
    .locals 19
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 74
    const-string v17, "\n"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 75
    .local v11, "stringArray":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/ConfigReader;->mListener:Lcom/smartisanos/launcher/ConfigReader$ReadListener;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 133
    :cond_0
    return-void

    .line 77
    :cond_1
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_0

    .line 78
    aget-object v10, v11, v6

    .line 79
    .local v10, "strData":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 80
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 77
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 83
    :cond_3
    const-string v17, "#"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 85
    const-string v17, "["

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    const-string v17, "]"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/ConfigReader;->mListener:Lcom/smartisanos/launcher/ConfigReader$ReadListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v10}, Lcom/smartisanos/launcher/ConfigReader$ReadListener;->readBlock(Ljava/lang/String;)V

    goto :goto_1

    .line 88
    :cond_4
    const-string v17, "="

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 89
    .local v9, "keyValue":[Ljava/lang/String;
    array-length v0, v9

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 90
    new-instance v17, Ljava/lang/RuntimeException;

    const-string v18, "key value must be 2 element"

    invoke-direct/range {v17 .. v18}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 92
    :cond_5
    const/16 v17, 0x0

    aget-object v17, v9, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 93
    .local v8, "key":Ljava/lang/String;
    const/16 v17, 0x1

    aget-object v17, v9, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    .line 94
    .local v16, "value":Ljava/lang/String;
    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 95
    .local v3, "c":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v3, v0, :cond_9

    .line 96
    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 97
    .local v13, "v":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    array-length v0, v13

    move/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    .line 98
    new-instance v17, Ljava/lang/RuntimeException;

    const-string v18, "config item must be 3 or 4 "

    invoke-direct/range {v17 .. v18}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 100
    :cond_6
    array-length v0, v13

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v5, v0, [F

    .line 101
    .local v5, "fv":[F
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    array-length v0, v13

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_7

    .line 102
    aget-object v12, v13, v7

    .line 103
    .local v12, "strv":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 104
    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v17

    aput v17, v5, v7

    .line 101
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 106
    .end local v12    # "strv":Ljava/lang/String;
    :cond_7
    array-length v0, v5

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 107
    new-instance v14, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v14}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 108
    .local v14, "v3":Lcom/smartisanos/smengine/math/Vector3f;
    const/16 v17, 0x0

    aget v17, v5, v17

    move/from16 v0, v17

    iput v0, v14, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 109
    const/16 v17, 0x1

    aget v17, v5, v17

    move/from16 v0, v17

    iput v0, v14, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 110
    const/16 v17, 0x2

    aget v17, v5, v17

    move/from16 v0, v17

    iput v0, v14, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/ConfigReader;->mListener:Lcom/smartisanos/launcher/ConfigReader$ReadListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v8, v14}, Lcom/smartisanos/launcher/ConfigReader$ReadListener;->readItem(Ljava/lang/String;Lcom/smartisanos/smengine/math/Vector3f;)V

    goto/16 :goto_1

    .line 112
    .end local v14    # "v3":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_8
    array-length v0, v5

    move/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 113
    new-instance v15, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v15}, Lcom/smartisanos/smengine/math/Vector4f;-><init>()V

    .line 114
    .local v15, "v4":Lcom/smartisanos/smengine/math/Vector4f;
    const/16 v17, 0x0

    aget v17, v5, v17

    move/from16 v0, v17

    iput v0, v15, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .line 115
    const/16 v17, 0x1

    aget v17, v5, v17

    move/from16 v0, v17

    iput v0, v15, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    .line 116
    const/16 v17, 0x2

    aget v17, v5, v17

    move/from16 v0, v17

    iput v0, v15, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    .line 117
    const/16 v17, 0x3

    aget v17, v5, v17

    move/from16 v0, v17

    iput v0, v15, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/ConfigReader;->mListener:Lcom/smartisanos/launcher/ConfigReader$ReadListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v8, v15}, Lcom/smartisanos/launcher/ConfigReader$ReadListener;->readItem(Ljava/lang/String;Lcom/smartisanos/smengine/math/Vector4f;)V

    goto/16 :goto_1

    .line 121
    .end local v5    # "fv":[F
    .end local v7    # "j":I
    .end local v13    # "v":[Ljava/lang/String;
    .end local v15    # "v4":Lcom/smartisanos/smengine/math/Vector4f;
    :cond_9
    const-string v17, "true"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_a

    const-string v17, "false"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 122
    :cond_a
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 123
    .local v2, "b":Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/ConfigReader;->mListener:Lcom/smartisanos/launcher/ConfigReader$ReadListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v8, v2}, Lcom/smartisanos/launcher/ConfigReader$ReadListener;->readItem(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_1

    .line 124
    .end local v2    # "b":Ljava/lang/Boolean;
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/ConfigReader;->isNumber(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 125
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 126
    .local v4, "f":Ljava/lang/Float;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/ConfigReader;->mListener:Lcom/smartisanos/launcher/ConfigReader$ReadListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v8, v4}, Lcom/smartisanos/launcher/ConfigReader$ReadListener;->readItem(Ljava/lang/String;Ljava/lang/Float;)V

    goto/16 :goto_1

    .line 128
    .end local v4    # "f":Ljava/lang/Float;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/ConfigReader;->mListener:Lcom/smartisanos/launcher/ConfigReader$ReadListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v8, v1}, Lcom/smartisanos/launcher/ConfigReader$ReadListener;->readItem(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private isNumber(Ljava/lang/String;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 36
    const-string v0, "[0-9]+\\.*[0-9]*"

    .line 37
    .local v0, "reg":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method


.method public read()V
    .locals 9

    .prologue
    .line 135
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/World;->getAssetManager()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 136
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    const/4 v1, 0x0

    .line 138
    .local v1, "data":[B
    :try_start_0
    iget-object v6, p0, Lcom/smartisanos/launcher/ConfigReader;->mPathName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 139
    .local v3, "is":Ljava/io/InputStream;
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v4

    .line 140
    .local v4, "len":I
    new-array v1, v4, [B

    .line 141
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    if-nez v1, :cond_0

    .line 148
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "read data null"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 144
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "len":I
    :catch_0
    move-exception v2

    .line 145
    .local v2, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "config read error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/smartisanos/launcher/ConfigReader;->mPathName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 150
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "len":I
    :cond_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V

    .line 151
    .local v5, "str":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/smartisanos/launcher/ConfigReader;->handleString(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public readFromSDCard(Ljava/io/File;)V
    .locals 9
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 41
    const/4 v5, 0x0

    .line 42
    .local v5, "readOK":Z
    const/4 v0, 0x0

    .line 43
    .local v0, "data":[B
    const/4 v2, 0x0

    .line 45
    .local v2, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .end local v2    # "is":Ljava/io/FileInputStream;
    .local v3, "is":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v4

    .line 47
    .local v4, "len":I
    if-lez v4, :cond_0

    .line 48
    new-array v0, v4, [B

    .line 49
    const/4 v7, 0x0

    invoke-virtual {v3, v0, v7, v4}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 50
    const/4 v5, 0x1

    :cond_0
    move-object v2, v3

    .line 60
    .end local v3    # "is":Ljava/io/FileInputStream;
    .end local v4    # "len":I
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :goto_0
    if-eqz v2, :cond_1

    .line 62
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 67
    :cond_1
    :goto_1
    if-nez v5, :cond_3

    .line 72
    :goto_2
    return-void

    .line 52
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_3
    sget-boolean v7, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v7, :cond_2

    sget-object v7, Lcom/smartisanos/launcher/ConfigReader;->log:Lcom/smartisanos/launcher/LOG;

    const-string v8, "no file"

    invoke-virtual {v7, v8}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 54
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 55
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 56
    .local v1, "e":Ljava/io/IOException;
    :goto_4
    const/4 v5, 0x0

    goto :goto_0

    .line 57
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_5
    throw v7

    .line 63
    :catch_2
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 70
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    .line 71
    .local v6, "str":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/smartisanos/launcher/ConfigReader;->handleString(Ljava/lang/String;)V

    goto :goto_2

    .line 57
    .end local v2    # "is":Ljava/io/FileInputStream;
    .end local v6    # "str":Ljava/lang/String;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    goto :goto_5

    .line 55
    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catch_3
    move-exception v1

    move-object v2, v3

    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    goto :goto_4

    .line 52
    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    goto :goto_3
.end method
