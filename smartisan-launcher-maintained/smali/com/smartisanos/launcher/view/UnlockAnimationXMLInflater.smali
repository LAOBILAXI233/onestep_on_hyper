.class public Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;
.super Ljava/lang/Object;
.source "UnlockAnimationXMLInflater.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$AnimationPassXMLInfo;,
        Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$CellAnimationXMLInfo;
    }
.end annotation


.field private static final PATH_DEBUG:Ljava/lang/String; = "/system/etc"


.field animationName:Ljava/lang/String;

.field mCellAnimList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$CellAnimationXMLInfo;",
            ">;"
        }
    .end annotation
.end field

.field mCurrentAnimationPassXMLInfo:Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$AnimationPassXMLInfo;

.field mCurrentCellAnimationXMLInfo:Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$CellAnimationXMLInfo;

.field totalDuration:F

.field totalFrame:I


.method public constructor <init>(Lcom/smartisanos/launcher/theme/Theme;Ljava/lang/String;)V
    .locals 2
    .param p1, "currentTheme"    # Lcom/smartisanos/launcher/theme/Theme;
    .param p2, "xmlName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;->mCellAnimList:Ljava/util/ArrayList;

    .line 27
    iput-object v1, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;->mCurrentCellAnimationXMLInfo:Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$CellAnimationXMLInfo;

    .line 28
    iput-object v1, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;->mCurrentAnimationPassXMLInfo:Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$AnimationPassXMLInfo;

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;->createFromXML(Lcom/smartisanos/launcher/theme/Theme;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "xmlName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;->mCellAnimList:Ljava/util/ArrayList;

    .line 27
    iput-object v1, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;->mCurrentCellAnimationXMLInfo:Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$CellAnimationXMLInfo;

    .line 28
    iput-object v1, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;->mCurrentAnimationPassXMLInfo:Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$AnimationPassXMLInfo;

    .line 32
    invoke-virtual {p0, v1, p1}, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;->createFromXML(Lcom/smartisanos/launcher/theme/Theme;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method private interpolatorParser(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 172
    const-string v0, "QUAD_IN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    const/4 v0, 0x1

    .line 227
    :goto_0
    return v0

    .line 174
    :cond_0
    const-string v0, "QUAD_OUT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    const/4 v0, 0x2

    goto :goto_0

    .line 176
    :cond_1
    const-string v0, "QUAD_IN_OUT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    const/4 v0, 0x3

    goto :goto_0

    .line 178
    :cond_2
    const-string v0, "BACK_IN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 179
    const/4 v0, 0x4

    goto :goto_0

    .line 180
    :cond_3
    const-string v0, "BACK_OUT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 181
    const/4 v0, 0x5

    goto :goto_0

    .line 182
    :cond_4
    const-string v0, "BACK_IN_OUT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 183
    const/4 v0, 0x6

    goto :goto_0

    .line 184
    :cond_5
    const-string v0, "BOUNCE_IN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 185
    const/4 v0, 0x7

    goto :goto_0

    .line 186
    :cond_6
    const-string v0, "BOUNCE_OUT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 187
    const/16 v0, 0x8

    goto :goto_0

    .line 188
    :cond_7
    const-string v0, "BOUNCE_IN_OUT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 189
    const/16 v0, 0x9

    goto :goto_0

    .line 190
    :cond_8
    const-string v0, "CIRC_IN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 191
    const/16 v0, 0xa

    goto :goto_0

    .line 192
    :cond_9
    const-string v0, "CIRC_OUT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 193
    const/16 v0, 0xb

    goto :goto_0

    .line 194
    :cond_a
    const-string v0, "CIRC_IN_OUT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 195
    const/16 v0, 0xc

    goto :goto_0

    .line 196
    :cond_b
    const-string v0, "CUBIC_IN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 197
    const/16 v0, 0xd

    goto :goto_0

    .line 198
    :cond_c
    const-string v0, "CUBIC_OUT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 199
    const/16 v0, 0xe

    goto/16 :goto_0

    .line 200
    :cond_d
    const-string v0, "CUBIC_IN_OUT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 201
    const/16 v0, 0xf

    goto/16 :goto_0

    .line 202
    :cond_e
    const-string v0, "EXPO_IN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 203
    const/16 v0, 0x10

    goto/16 :goto_0

    .line 204
    :cond_f
    const-string v0, "EXPO_OUT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 205
    const/16 v0, 0x11

    goto/16 :goto_0

    .line 206
    :cond_10
    const-string v0, "EXPO_IN_OUT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 207
    const/16 v0, 0x12

    goto/16 :goto_0

    .line 208
    :cond_11
    const-string v0, "LINEAR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 209
    const/16 v0, 0x13

    goto/16 :goto_0

    .line 210
    :cond_12
    const-string v0, "QUART_IN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 211
    const/16 v0, 0x14

    goto/16 :goto_0

    .line 212
    :cond_13
    const-string v0, "QUART_OUT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 213
    const/16 v0, 0x15

    goto/16 :goto_0

    .line 214
    :cond_14
    const-string v0, "QUART_IN_OUT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 215
    const/16 v0, 0x16

    goto/16 :goto_0

    .line 216
    :cond_15
    const-string v0, "QUINT_IN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 217
    const/16 v0, 0x17

    goto/16 :goto_0

    .line 218
    :cond_16
    const-string v0, "QUINT_OUT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 219
    const/16 v0, 0x18

    goto/16 :goto_0

    .line 220
    :cond_17
    const-string v0, "QUINT_IN_OUT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 221
    const/16 v0, 0x19

    goto/16 :goto_0

    .line 222
    :cond_18
    const-string v0, "SINE_IN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 223
    const/16 v0, 0x1a

    goto/16 :goto_0

    .line 224
    :cond_19
    const-string v0, "SINE_OUT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 225
    const/16 v0, 0x1b

    goto/16 :goto_0

    .line 226
    :cond_1a
    const-string v0, "SINE_IN_OUT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 227
    const/16 v0, 0x1c

    goto/16 :goto_0

    .line 230
    :cond_1b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "### unknown animation easeType in XML."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


.method public createFromXML(Lcom/smartisanos/launcher/theme/Theme;Ljava/lang/String;)V
    .locals 23
    .param p1, "currentTheme"    # Lcom/smartisanos/launcher/theme/Theme;
    .param p2, "xmlName"    # Ljava/lang/String;

    .prologue
    .line 55
    const/4 v13, 0x0

    .line 57
    .local v13, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "/system/etc"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 58
    .local v17, "path":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .local v7, "f":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 60
    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .end local v13    # "is":Ljava/io/InputStream;
    .local v14, "is":Ljava/io/InputStream;
    move-object v13, v14

    .line 78
    .end local v14    # "is":Ljava/io/InputStream;
    .restart local v13    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v15

    .line 79
    .local v15, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v20, "utf-8"

    move-object/from16 v0, v20

    invoke-interface {v15, v13, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 80
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    .line 81
    .local v6, "eventType":I
    :goto_1
    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v6, v0, :cond_c

    .line 82
    packed-switch v6, :pswitch_data_0

    .line 151
    :cond_1
    :goto_2
    :pswitch_0
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    goto :goto_1

    .line 61
    .end local v6    # "eventType":I
    .end local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_2
    if-eqz p1, :cond_4

    .line 64
    :try_start_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/Theme;->mResources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/Theme;->mPath:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v13

    .line 69
    :goto_3
    if-nez v13, :cond_0

    .line 71
    :try_start_2
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/launcher/view/MainView;->getContext()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v13

    goto :goto_0

    .line 66
    :catch_0
    move-exception v5

    .line 67
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 154
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "f":Ljava/io/File;
    .end local v17    # "path":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 155
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 161
    if-eqz v13, :cond_3

    .line 162
    :try_start_4
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 169
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_3
    :goto_4
    return-void

    .line 75
    .restart local v7    # "f":Ljava/io/File;
    .restart local v17    # "path":Ljava/lang/String;
    :cond_4
    :try_start_5
    invoke-static/range {p2 .. p2}, Lcom/smartisanos/launcher/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v13

    goto :goto_0

    .line 86
    .restart local v6    # "eventType":I
    .restart local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :pswitch_1
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "UnlockAnimation"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 87
    const/16 v20, 0x0

    const-string v21, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;->animationName:Ljava/lang/String;

    .line 89
    const/16 v20, 0x0

    const-string v21, "totalDuration"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, "duration":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;->totalDuration:F

    .line 92
    const/16 v20, 0x0

    const-string v21, "totalFame"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 93
    .local v8, "frame":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;->totalFrame:I
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 156
    .end local v4    # "duration":Ljava/lang/String;
    .end local v6    # "eventType":I
    .end local v7    # "f":Ljava/io/File;
    .end local v8    # "frame":Ljava/lang/String;
    .end local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "path":Ljava/lang/String;
    :catch_2
    move-exception v5

    .line 157
    .local v5, "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 161
    if-eqz v13, :cond_3

    .line 162
    :try_start_7
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_4

    .line 164
    :catch_3
    move-exception v20

    goto :goto_4

    .line 96
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v6    # "eventType":I
    .restart local v7    # "f":Ljava/io/File;
    .restart local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "path":Ljava/lang/String;
    :cond_5
    :try_start_8
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "cell"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_6

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "statusbar"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_6

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "dock"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_6

    .line 97
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "background"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_6

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "batchshadow"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 98
    :cond_6
    new-instance v20, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$CellAnimationXMLInfo;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$CellAnimationXMLInfo;-><init>(Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;->mCurrentCellAnimationXMLInfo:Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$CellAnimationXMLInfo;

    .line 100
    const/16 v20, 0x0

    const-string v21, "index"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 101
    .local v9, "index":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;->mCurrentCellAnimationXMLInfo:Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$CellAnimationXMLInfo;

    move-object/from16 v20, v0

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$CellAnimationXMLInfo;->cellIndex:I

    .line 103
    const/16 v20, 0x0

    const-string v21, "animcount"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "count":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;->mCurrentCellAnimationXMLInfo:Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$CellAnimationXMLInfo;

    move-object/from16 v20, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$CellAnimationXMLInfo;->passCount:I

    .line 106
    const/16 v20, 0x0

    const-string v21, "init_alpha"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 107
    .local v10, "initAlpha":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;->mCurrentCellAnimationXMLInfo:Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$CellAnimationXMLInfo;

    move-object/from16 v20, v0

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$CellAnimationXMLInfo;->initAlpha:F

    .line 109
    const/16 v20, 0x0

    const-string v21, "init_scale"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 110
    .local v11, "initScale":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;->mCurrentCellAnimationXMLInfo:Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$CellAnimationXMLInfo;

    move-object/from16 v20, v0

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$CellAnimationXMLInfo;->initScale:F

    .line 112
    const/16 v20, 0x0

    const-string v21, "delay_frame"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, "delayFrame":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;->mCurrentCellAnimationXMLInfo:Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$CellAnimationXMLInfo;

    move-object/from16 v20, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$CellAnimationXMLInfo;->animDelayFrame:I
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    .line 160
    .end local v2    # "count":Ljava/lang/String;
    .end local v3    # "delayFrame":Ljava/lang/String;
    .end local v6    # "eventType":I
    .end local v7    # "f":Ljava/io/File;
    .end local v9    # "index":Ljava/lang/String;
    .end local v10    # "initAlpha":Ljava/lang/String;
    .end local v11    # "initScale":Ljava/lang/String;
    .end local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "path":Ljava/lang/String;
    :catchall_0
    move-exception v20

    .line 161
    if-eqz v13, :cond_7

    .line 162
    :try_start_9
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 166
    :cond_7
    :goto_5
    throw v20

    .line 116
    .restart local v6    # "eventType":I
    .restart local v7    # "f":Ljava/io/File;
    .restart local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "path":Ljava/lang/String;
    :cond_8
    :try_start_a
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "pass"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 117
    new-instance v20, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$AnimationPassXMLInfo;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$AnimationPassXMLInfo;-><init>(Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;->mCurrentAnimationPassXMLInfo:Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$AnimationPassXMLInfo;

    .line 119
    const/16 v20, 0x0

    const-string v21, "duration"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 120
    .local v16, "passDuration":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;->mCurrentAnimationPassXMLInfo:Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$AnimationPassXMLInfo;

    move-object/from16 v20, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$AnimationPassXMLInfo;->animPassDurationFrame:I

    .line 122
    const/16 v20, 0x0

    const-string v21, "interpolator"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 123
    .local v12, "interpolator":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;->mCurrentAnimationPassXMLInfo:Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$AnimationPassXMLInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;->interpolatorParser(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$AnimationPassXMLInfo;->animPassInterpolator:I

    .line 125
    const/16 v20, 0x0

    const-string v21, "target_alpha"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 126
    .local v18, "targetAlpha":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;->mCurrentAnimationPassXMLInfo:Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$AnimationPassXMLInfo;

    move-object/from16 v20, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$AnimationPassXMLInfo;->animPassTargetAlpha:F

    .line 128
    const/16 v20, 0x0

    const-string v21, "target_scale"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 129
    .local v19, "targetScale":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;->mCurrentAnimationPassXMLInfo:Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$AnimationPassXMLInfo;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$AnimationPassXMLInfo;->animPassTargetScale:F

    goto/16 :goto_2

    .line 135
    .end local v12    # "interpolator":Ljava/lang/String;
    .end local v16    # "passDuration":Ljava/lang/String;
    .end local v18    # "targetAlpha":Ljava/lang/String;
    .end local v19    # "targetScale":Ljava/lang/String;
    :pswitch_2
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "pass"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;->mCurrentCellAnimationXMLInfo:Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$CellAnimationXMLInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$CellAnimationXMLInfo;->passList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;->mCurrentAnimationPassXMLInfo:Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$AnimationPassXMLInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;->mCurrentAnimationPassXMLInfo:Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$AnimationPassXMLInfo;

    goto/16 :goto_2

    .line 138
    :cond_9
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "cell"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_a

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "statusbar"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_a

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "dock"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_a

    .line 139
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "background"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_a

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "batchshadow"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 140
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;->mCellAnimList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;->mCurrentCellAnimationXMLInfo:Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$CellAnimationXMLInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;->mCurrentCellAnimationXMLInfo:Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$CellAnimationXMLInfo;

    goto/16 :goto_2

    .line 142
    :cond_b
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "UnlockAnimation"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v20

    if-eqz v20, :cond_1

    goto/16 :goto_2

    .line 161
    :cond_c
    if-eqz v13, :cond_3

    .line 162
    :try_start_b
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_4

    .line 164
    :catch_4
    move-exception v20

    goto/16 :goto_4

    .end local v6    # "eventType":I
    .end local v7    # "f":Ljava/io/File;
    .end local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "path":Ljava/lang/String;
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_5
    move-exception v20

    goto/16 :goto_4

    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_6
    move-exception v21

    goto/16 :goto_5

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
