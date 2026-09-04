.class Lcom/smartisanos/home/Launcher$12;
.super Landroid/os/Handler;
.source "Launcher.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/home/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/home/Launcher;


.method constructor <init>(Lcom/smartisanos/home/Launcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/home/Launcher;

    .prologue
    .line 1104
    iput-object p1, p0, Lcom/smartisanos/home/Launcher$12;->this$0:Lcom/smartisanos/home/Launcher;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1107
    sget-boolean v9, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v9, :cond_0

    invoke-static {}, Lcom/smartisanos/home/Launcher;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleMessage begin, msg.what == "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->what:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 1108
    :cond_0
    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_0

    .line 1242
    :goto_0
    return-void

    .line 1110
    :sswitch_0
    invoke-static {p1}, Lcom/smartisanos/launcher/actions/UninstallApp;->handleInternalMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1115
    :sswitch_1
    sget-boolean v9, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v9, :cond_1

    invoke-static {}, Lcom/smartisanos/home/Launcher;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v9

    const-string v10, "#### MESSAGE_COMPLETE #####"

    invoke-virtual {v9, v10}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 1116
    :cond_1
    iget-object v9, p0, Lcom/smartisanos/home/Launcher$12;->this$0:Lcom/smartisanos/home/Launcher;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/smartisanos/home/Launcher;->ENABLE_RECEIVER:Z

    .line 1117
    invoke-static {}, Lcom/smartisanos/home/Launcher;->access$300()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1118
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/smartisanos/home/Launcher;->access$302(Z)Z

    .line 1119
    const/4 v9, 0x1

    sput-boolean v9, Lcom/smartisanos/launcher/ApplicationProxy;->localeChanged:Z

    .line 1120
    iget-object v9, p0, Lcom/smartisanos/home/Launcher$12;->this$0:Lcom/smartisanos/home/Launcher;

    iget-object v10, p0, Lcom/smartisanos/home/Launcher$12;->this$0:Lcom/smartisanos/home/Launcher;

    invoke-static {v10}, Lcom/smartisanos/home/Launcher;->access$200(Lcom/smartisanos/home/Launcher;)Landroid/app/Activity;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/smartisanos/home/Launcher;->access$400(Lcom/smartisanos/home/Launcher;Landroid/content/Context;)V

    .line 1122
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/receiver/LauncherReceiver;->handleUnFinishIntent()V

    .line 1123
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/LauncherApplication;->getProxy()Lcom/smartisanos/launcher/ApplicationProxy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/ApplicationProxy;->handleCacheMessageIntent()V

    .line 1124
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/smengine/World;->updateGLView()V

    .line 1125
    new-instance v7, Lcom/smartisanos/home/Launcher$12$1;

    invoke-direct {v7, p0}, Lcom/smartisanos/home/Launcher$12$1;-><init>(Lcom/smartisanos/home/Launcher$12;)V

    .line 1132
    .local v7, "r":Ljava/lang/Runnable;
    sget-boolean v9, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v9, :cond_3

    invoke-static {}, Lcom/smartisanos/home/Launcher;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v9

    const-string v10, "#### loadAllApps #####"

    invoke-virtual {v9, v10}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 1133
    :cond_3
    new-instance v1, Landroid/os/Handler;

    iget-object v9, p0, Lcom/smartisanos/home/Launcher$12;->this$0:Lcom/smartisanos/home/Launcher;

    invoke-static {v9}, Lcom/smartisanos/home/Launcher;->access$200(Lcom/smartisanos/home/Launcher;)Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v1, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1134
    .local v1, "h":Landroid/os/Handler;
    const-wide/16 v10, 0x2

    invoke-virtual {v1, v7, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1136
    iget-object v9, p0, Lcom/smartisanos/home/Launcher$12;->this$0:Lcom/smartisanos/home/Launcher;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/smartisanos/home/Launcher;->setLauncherWindowStatus(Z)V

    .line 1137
    iget-object v9, p0, Lcom/smartisanos/home/Launcher$12;->this$0:Lcom/smartisanos/home/Launcher;

    invoke-static {v9}, Lcom/smartisanos/home/Launcher;->access$500(Lcom/smartisanos/home/Launcher;)Lcom/smartisanos/launcher/widget/LoadingUI;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/widget/LoadingUI;->dismiss()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1138
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/LauncherApplication;->getProxy()Lcom/smartisanos/launcher/ApplicationProxy;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/smartisanos/launcher/ApplicationProxy;->setLoading(Z)V

    .line 1140
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1141
    .local v2, "endTime":J
    sget-boolean v9, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v9, :cond_5

    invoke-static {}, Lcom/smartisanos/home/Launcher;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "launcher startup time ==> ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/smartisanos/home/Launcher$12;->this$0:Lcom/smartisanos/home/Launcher;

    invoke-static {v11}, Lcom/smartisanos/home/Launcher;->access$600(Lcom/smartisanos/home/Launcher;)J

    move-result-wide v12

    sub-long v12, v2, v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 1144
    :cond_5
    new-instance v4, Landroid/content/Intent;

    const-string v9, "com.smartisanos.launcher.ready"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1145
    .local v4, "intent":Landroid/content/Intent;
    iget-object v9, p0, Lcom/smartisanos/home/Launcher$12;->this$0:Lcom/smartisanos/home/Launcher;

    invoke-virtual {v9, v4}, Lcom/smartisanos/home/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 1147
    iget-object v9, p0, Lcom/smartisanos/home/Launcher$12;->this$0:Lcom/smartisanos/home/Launcher;

    invoke-virtual {v9}, Lcom/smartisanos/home/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/smartisanos/launcher/data/Utils;->requestSyncWeatherData(Landroid/content/Context;)V

    .line 1148
    const/4 v8, 0x1

    .line 1149
    .local v8, "value":I
    sget-boolean v9, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v9, :cond_6

    invoke-static {}, Lcom/smartisanos/home/Launcher;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "## wizard value = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ###"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 1150
    :cond_6
    const/4 v9, 0x1

    if-eq v8, v9, :cond_7

    .line 1152
    iget-object v9, p0, Lcom/smartisanos/home/Launcher$12;->this$0:Lcom/smartisanos/home/Launcher;

    invoke-virtual {v9}, Lcom/smartisanos/home/Launcher;->setSetupWizardToDefaultHome()V

    .line 1153
    iget-object v9, p0, Lcom/smartisanos/home/Launcher$12;->this$0:Lcom/smartisanos/home/Launcher;

    iget-object v9, v9, Lcom/smartisanos/home/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/smartisanos/home/Launcher$12$2;

    invoke-direct {v10, p0}, Lcom/smartisanos/home/Launcher$12$2;-><init>(Lcom/smartisanos/home/Launcher$12;)V

    const-wide/16 v12, 0x14

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1175
    iget-object v9, p0, Lcom/smartisanos/home/Launcher$12;->this$0:Lcom/smartisanos/home/Launcher;

    iget-object v9, v9, Lcom/smartisanos/home/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/smartisanos/home/Launcher$12$3;

    invoke-direct {v10, p0}, Lcom/smartisanos/home/Launcher$12$3;-><init>(Lcom/smartisanos/home/Launcher$12;)V

    const-wide/16 v12, 0x140

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1187
    :goto_1
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v9

    invoke-static {v9}, Lcom/smartisanos/launcher/data/Utils;->checkDefaultHome(Landroid/app/Activity;)V

    .line 1188
    iget-object v9, p0, Lcom/smartisanos/home/Launcher$12;->this$0:Lcom/smartisanos/home/Launcher;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/smartisanos/home/Launcher;->access$702(Lcom/smartisanos/home/Launcher;Z)Z

    goto/16 :goto_0

    .line 1184
    :cond_7
    iget-object v9, p0, Lcom/smartisanos/home/Launcher$12;->this$0:Lcom/smartisanos/home/Launcher;

    const-string v10, "activity"

    invoke-virtual {v9, v10}, Lcom/smartisanos/home/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1185
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-static {v0}, Lcom/smartisanos/launcher/InvisibleApi;->enableScreenAfterBoot(Landroid/app/ActivityManager;)V

    goto :goto_1

    .line 1193
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v1    # "h":Landroid/os/Handler;
    .end local v2    # "endTime":J
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v7    # "r":Ljava/lang/Runnable;
    .end local v8    # "value":I
    :sswitch_2
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/MainView;->unLockTouchEvent()V

    goto/16 :goto_0

    .line 1199
    :sswitch_3
    iget-object v9, p0, Lcom/smartisanos/home/Launcher$12;->this$0:Lcom/smartisanos/home/Launcher;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/smartisanos/home/Launcher;->DATA_INIT_RUNNING:Z

    .line 1200
    new-instance v9, Lcom/smartisanos/home/Launcher$12$4;

    const/16 v10, 0x65

    invoke-direct {v9, p0, v10}, Lcom/smartisanos/home/Launcher$12$4;-><init>(Lcom/smartisanos/home/Launcher$12;I)V

    const/4 v10, 0x0

    .line 1218
    invoke-virtual {v9, v10}, Lcom/smartisanos/home/Launcher$12$4;->send(F)V

    goto/16 :goto_0

    .line 1222
    :sswitch_4
    invoke-static {p1}, Lcom/smartisanos/launcher/actions/ColorThemeChanged;->handleMessageForColorThemeChanged(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1226
    :sswitch_5
    invoke-static {p1}, Lcom/smartisanos/launcher/actions/ColorThemeChanged;->handleMessageForChangeTheme(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1230
    :sswitch_6
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, [Ljava/lang/Object;

    move-object v6, v9

    check-cast v6, [Ljava/lang/Object;

    .line 1231
    .local v6, "objects":[Ljava/lang/Object;
    const/4 v9, 0x0

    aget-object v5, v6, v9

    check-cast v5, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 1232
    .local v5, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    const/4 v9, 0x1

    aget-object v9, v6, v9

    if-nez v9, :cond_8

    .line 1233
    iget-object v9, p0, Lcom/smartisanos/home/Launcher$12;->this$0:Lcom/smartisanos/home/Launcher;

    invoke-static {v9}, Lcom/smartisanos/home/Launcher;->access$200(Lcom/smartisanos/home/Launcher;)Landroid/app/Activity;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp;->handle(Lcom/smartisanos/launcher/data/ItemInfo;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 1235
    :cond_8
    const/4 v9, 0x1

    aget-object v9, v6, v9

    check-cast v9, Landroid/app/Activity;

    invoke-static {v5, v9}, Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp;->handle(Lcom/smartisanos/launcher/data/ItemInfo;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 1108
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0xc -> :sswitch_1
        0xd -> :sswitch_2
        0xe -> :sswitch_3
        0x11 -> :sswitch_4
        0x12 -> :sswitch_5
        0x6f -> :sswitch_6
    .end sparse-switch
.end method
