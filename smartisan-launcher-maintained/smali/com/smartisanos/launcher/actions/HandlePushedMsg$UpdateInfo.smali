.class Lcom/smartisanos/launcher/actions/HandlePushedMsg$UpdateInfo;
.super Ljava/lang/Object;
.source "HandlePushedMsg.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/actions/HandlePushedMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateInfo"
.end annotation


.field public content:Ljava/lang/String;

.field public model:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public utc:J


.method private constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toInfo(Ljava/lang/String;)Lcom/smartisanos/launcher/actions/HandlePushedMsg$UpdateInfo;
    .locals 19
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 135
    const/4 v7, 0x0

    .line 137
    .local v7, "info":Lcom/smartisanos/launcher/actions/HandlePushedMsg$UpdateInfo;
    :try_start_0
    new-instance v11, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 138
    .local v11, "object":Lorg/json/JSONObject;
    const-string v16, "body"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 139
    .local v2, "body":Lorg/json/JSONObject;
    const-string v16, "content"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, "content":Ljava/lang/String;
    const-string v16, "title"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 141
    .local v13, "title":Ljava/lang/String;
    const-string v16, "ota_info"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 142
    .local v12, "ota_info":Lorg/json/JSONObject;
    const-string v16, "utc"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 143
    .local v14, "utc":J
    const-string v16, "model"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 144
    .local v9, "model":Ljava/lang/String;
    const-string v16, "name"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 146
    .local v10, "name":Ljava/lang/String;
    const/4 v6, 0x0

    .line 147
    .local v6, "emptyTitle":Z
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_1

    .line 148
    :cond_0
    const/4 v6, 0x1

    .line 150
    :cond_1
    const/4 v5, 0x0

    .line 151
    .local v5, "emptyContent":Z
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_3

    .line 152
    :cond_2
    const/4 v5, 0x1

    .line 154
    :cond_3
    if-eqz v6, :cond_4

    if-eqz v5, :cond_4

    .line 155
    invoke-static {}, Lcom/smartisanos/launcher/actions/HandlePushedMsg;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v16

    const-string v17, "DEBUG"

    const-string v18, "both title and content is null"

    invoke-virtual/range {v16 .. v18}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v7

    .line 176
    .end local v2    # "body":Lorg/json/JSONObject;
    .end local v3    # "content":Ljava/lang/String;
    .end local v5    # "emptyContent":Z
    .end local v6    # "emptyTitle":Z
    .end local v7    # "info":Lcom/smartisanos/launcher/actions/HandlePushedMsg$UpdateInfo;
    .end local v9    # "model":Ljava/lang/String;
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "object":Lorg/json/JSONObject;
    .end local v12    # "ota_info":Lorg/json/JSONObject;
    .end local v13    # "title":Ljava/lang/String;
    .end local v14    # "utc":J
    .local v8, "info":Lcom/smartisanos/launcher/actions/HandlePushedMsg$UpdateInfo;
    :goto_0
    return-object v8

    .line 158
    .end local v8    # "info":Lcom/smartisanos/launcher/actions/HandlePushedMsg$UpdateInfo;
    .restart local v2    # "body":Lorg/json/JSONObject;
    .restart local v3    # "content":Ljava/lang/String;
    .restart local v5    # "emptyContent":Z
    .restart local v6    # "emptyTitle":Z
    .restart local v7    # "info":Lcom/smartisanos/launcher/actions/HandlePushedMsg$UpdateInfo;
    .restart local v9    # "model":Ljava/lang/String;
    .restart local v10    # "name":Ljava/lang/String;
    .restart local v11    # "object":Lorg/json/JSONObject;
    .restart local v12    # "ota_info":Lorg/json/JSONObject;
    .restart local v13    # "title":Ljava/lang/String;
    .restart local v14    # "utc":J
    :cond_4
    if-eqz v10, :cond_5

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_6

    .line 159
    :cond_5
    invoke-static {}, Lcom/smartisanos/launcher/actions/HandlePushedMsg;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v16

    const-string v17, "DEBUG"

    const-string v18, "ota_info name is null"

    invoke-virtual/range {v16 .. v18}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v7

    .line 160
    .end local v7    # "info":Lcom/smartisanos/launcher/actions/HandlePushedMsg$UpdateInfo;
    .restart local v8    # "info":Lcom/smartisanos/launcher/actions/HandlePushedMsg$UpdateInfo;
    goto :goto_0

    .line 162
    .end local v8    # "info":Lcom/smartisanos/launcher/actions/HandlePushedMsg$UpdateInfo;
    .restart local v7    # "info":Lcom/smartisanos/launcher/actions/HandlePushedMsg$UpdateInfo;
    :cond_6
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_8

    .line 163
    :cond_7
    invoke-static {}, Lcom/smartisanos/launcher/actions/HandlePushedMsg;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v16

    const-string v17, "DEBUG"

    const-string v18, "ota_info model is null"

    invoke-virtual/range {v16 .. v18}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v7

    .line 164
    .end local v7    # "info":Lcom/smartisanos/launcher/actions/HandlePushedMsg$UpdateInfo;
    .restart local v8    # "info":Lcom/smartisanos/launcher/actions/HandlePushedMsg$UpdateInfo;
    goto :goto_0

    .line 166
    .end local v8    # "info":Lcom/smartisanos/launcher/actions/HandlePushedMsg$UpdateInfo;
    .restart local v7    # "info":Lcom/smartisanos/launcher/actions/HandlePushedMsg$UpdateInfo;
    :cond_8
    new-instance v8, Lcom/smartisanos/launcher/actions/HandlePushedMsg$UpdateInfo;

    invoke-direct {v8}, Lcom/smartisanos/launcher/actions/HandlePushedMsg$UpdateInfo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .end local v7    # "info":Lcom/smartisanos/launcher/actions/HandlePushedMsg$UpdateInfo;
    .restart local v8    # "info":Lcom/smartisanos/launcher/actions/HandlePushedMsg$UpdateInfo;
    :try_start_1
    iput-wide v14, v8, Lcom/smartisanos/launcher/actions/HandlePushedMsg$UpdateInfo;->utc:J

    .line 168
    iput-object v10, v8, Lcom/smartisanos/launcher/actions/HandlePushedMsg$UpdateInfo;->name:Ljava/lang/String;

    .line 169
    iput-object v9, v8, Lcom/smartisanos/launcher/actions/HandlePushedMsg$UpdateInfo;->model:Ljava/lang/String;

    .line 170
    iput-object v13, v8, Lcom/smartisanos/launcher/actions/HandlePushedMsg$UpdateInfo;->title:Ljava/lang/String;

    .line 171
    iput-object v3, v8, Lcom/smartisanos/launcher/actions/HandlePushedMsg$UpdateInfo;->content:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v8

    .end local v2    # "body":Lorg/json/JSONObject;
    .end local v3    # "content":Ljava/lang/String;
    .end local v5    # "emptyContent":Z
    .end local v6    # "emptyTitle":Z
    .end local v8    # "info":Lcom/smartisanos/launcher/actions/HandlePushedMsg$UpdateInfo;
    .end local v9    # "model":Ljava/lang/String;
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "object":Lorg/json/JSONObject;
    .end local v12    # "ota_info":Lorg/json/JSONObject;
    .end local v13    # "title":Ljava/lang/String;
    .end local v14    # "utc":J
    .restart local v7    # "info":Lcom/smartisanos/launcher/actions/HandlePushedMsg$UpdateInfo;
    :goto_1
    move-object v8, v7

    .line 176
    .end local v7    # "info":Lcom/smartisanos/launcher/actions/HandlePushedMsg$UpdateInfo;
    .restart local v8    # "info":Lcom/smartisanos/launcher/actions/HandlePushedMsg$UpdateInfo;
    goto :goto_0

    .line 172
    .end local v8    # "info":Lcom/smartisanos/launcher/actions/HandlePushedMsg$UpdateInfo;
    .restart local v7    # "info":Lcom/smartisanos/launcher/actions/HandlePushedMsg$UpdateInfo;
    :catch_0
    move-exception v4

    .line 173
    .local v4, "e":Ljava/lang/Exception;
    :goto_2
    const/4 v7, 0x0

    .line 174
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 172
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v7    # "info":Lcom/smartisanos/launcher/actions/HandlePushedMsg$UpdateInfo;
    .restart local v2    # "body":Lorg/json/JSONObject;
    .restart local v3    # "content":Ljava/lang/String;
    .restart local v5    # "emptyContent":Z
    .restart local v6    # "emptyTitle":Z
    .restart local v8    # "info":Lcom/smartisanos/launcher/actions/HandlePushedMsg$UpdateInfo;
    .restart local v9    # "model":Ljava/lang/String;
    .restart local v10    # "name":Ljava/lang/String;
    .restart local v11    # "object":Lorg/json/JSONObject;
    .restart local v12    # "ota_info":Lorg/json/JSONObject;
    .restart local v13    # "title":Ljava/lang/String;
    .restart local v14    # "utc":J
    :catch_1
    move-exception v4

    move-object v7, v8

    .end local v8    # "info":Lcom/smartisanos/launcher/actions/HandlePushedMsg$UpdateInfo;
    .restart local v7    # "info":Lcom/smartisanos/launcher/actions/HandlePushedMsg$UpdateInfo;
    goto :goto_2
.end method
