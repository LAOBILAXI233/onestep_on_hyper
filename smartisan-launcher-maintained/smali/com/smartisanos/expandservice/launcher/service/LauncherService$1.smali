.class final Lcom/smartisanos/expandservice/launcher/service/LauncherService$1;
.super Landroid/os/Handler;
.source "LauncherService.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/expandservice/launcher/service/LauncherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.method constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Looper;

    .prologue
    .line 104
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


.method public handleMessage(Landroid/os/Message;)V
    .locals 22
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 107
    if-nez p1, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    .line 111
    .local v8, "params":Ljava/util/List;
    const/4 v4, 0x0

    .line 112
    .local v4, "action":Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;
    const/4 v5, 0x0

    .line 113
    .local v5, "context":Landroid/content/Context;
    const/4 v6, 0x0

    .line 115
    .local v6, "dataList":Ljava/util/List;
    const/16 v17, 0x0

    :try_start_0
    move/from16 v0, v17

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;

    move-object v4, v0

    .line 116
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Landroid/content/Context;

    move-object v5, v0

    .line 117
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/util/List;

    move-object v6, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_1
    if-eqz v4, :cond_0

    .line 124
    const/4 v14, 0x1

    .line 125
    .local v14, "timeCalculate":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 126
    .local v10, "time1":J
    const/16 v16, 0x0

    .line 128
    .local v16, "wakeLock":Landroid/os/PowerManager$WakeLock;
    :try_start_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v15

    .line 129
    .local v15, "uid":I
    const-string v17, "power"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PowerManager;

    .line 130
    .local v9, "pm":Landroid/os/PowerManager;
    const/16 v17, 0x1

    const-string v18, "NewLauncher"

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v16

    .line 132
    invoke-virtual/range {v16 .. v16}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 133
    invoke-static {v4, v5, v6}, Lcom/smartisanos/expandservice/launcher/service/LauncherService;->access$000(Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;Landroid/content/Context;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    if-eqz v16, :cond_2

    .line 138
    invoke-virtual/range {v16 .. v16}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 139
    const/16 v16, 0x0

    .line 142
    .end local v9    # "pm":Landroid/os/PowerManager;
    .end local v15    # "uid":I
    :cond_2
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 143
    .local v12, "time2":J
    if-eqz v14, :cond_0

    .line 144
    invoke-static {}, Lcom/smartisanos/expandservice/launcher/service/LauncherService;->access$100()Lcom/smartisanos/launcher/LOG;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ACTION ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;->name()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "] spend time ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sub-long v20, v12, v10

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "] ms"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 118
    .end local v10    # "time1":J
    .end local v12    # "time2":J
    .end local v14    # "timeCalculate":Z
    .end local v16    # "wakeLock":Landroid/os/PowerManager$WakeLock;
    :catch_0
    move-exception v7

    .line 119
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 134
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v10    # "time1":J
    .restart local v14    # "timeCalculate":Z
    .restart local v16    # "wakeLock":Landroid/os/PowerManager$WakeLock;
    :catch_1
    move-exception v7

    .line 135
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    if-eqz v16, :cond_2

    .line 138
    invoke-virtual/range {v16 .. v16}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 139
    const/16 v16, 0x0

    goto :goto_2

    .line 137
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v17

    if-eqz v16, :cond_3

    .line 138
    invoke-virtual/range {v16 .. v16}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 139
    const/16 v16, 0x0

    :cond_3
    throw v17
.end method
