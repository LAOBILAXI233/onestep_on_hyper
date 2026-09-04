.class Lcom/smartisanos/launcher/ApplicationProxy$12;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationProxy.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/ApplicationProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/ApplicationProxy;


.method constructor <init>(Lcom/smartisanos/launcher/ApplicationProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/ApplicationProxy;

    .prologue
    .line 649
    iput-object p1, p0, Lcom/smartisanos/launcher/ApplicationProxy$12;->this$0:Lcom/smartisanos/launcher/ApplicationProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 652
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v6

    if-nez v6, :cond_1

    .line 693
    :cond_0
    :goto_0
    return-void

    .line 655
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 656
    .local v0, "action":Ljava/lang/String;
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_2

    .line 657
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 658
    .local v4, "time":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 659
    .local v1, "calendar":Ljava/util/Calendar;
    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 660
    invoke-static {}, Lcom/smartisanos/launcher/ApplicationProxy;->access$200()Lcom/smartisanos/launcher/LOG;

    move-result-object v6

    const-string v7, "DEBUG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mDateTimeReceiver, action:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", time:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x5

    .line 661
    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "--"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0xb

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0xc

    .line 662
    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0xd

    .line 663
    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 660
    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    .end local v1    # "calendar":Ljava/util/Calendar;
    .end local v4    # "time":J
    :cond_2
    const-string v6, "smartisan.intent.action.update_calendar_date"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 666
    iget-object v6, p0, Lcom/smartisanos/launcher/ApplicationProxy$12;->this$0:Lcom/smartisanos/launcher/ApplicationProxy;

    invoke-static {v6}, Lcom/smartisanos/launcher/ApplicationProxy;->access$900(Lcom/smartisanos/launcher/ApplicationProxy;)Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/smartisanos/launcher/ApplicationProxy$12$1;

    invoke-direct {v7, p0}, Lcom/smartisanos/launcher/ApplicationProxy$12$1;-><init>(Lcom/smartisanos/launcher/ApplicationProxy$12;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 692
    :cond_3
    :goto_1
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/World;->updateGLView()V

    goto/16 :goto_0

    .line 677
    :cond_4
    const-string v6, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "android.intent.action.TIMEZONE_CHANGED"

    .line 678
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "android.intent.action.DATE_CHANGED"

    .line 679
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 680
    :cond_5
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v6

    sget-object v7, Lcom/smartisanos/launcher/view/CalendarView;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/view/MainView;->getActiveIconView(Ljava/lang/String;)Lcom/smartisanos/launcher/view/ActiveIconView;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/CalendarView;

    .line 682
    .local v2, "cv":Lcom/smartisanos/launcher/view/CalendarView;
    if-eqz v2, :cond_6

    .line 683
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/CalendarView;->onTimeChange()V

    .line 684
    iget-object v6, p0, Lcom/smartisanos/launcher/ApplicationProxy$12;->this$0:Lcom/smartisanos/launcher/ApplicationProxy;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/ApplicationProxy;->setDateChangeIntent()V

    .line 686
    :cond_6
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v6

    sget-object v7, Lcom/smartisanos/launcher/view/WeatherView;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/view/MainView;->getActiveIconView(Ljava/lang/String;)Lcom/smartisanos/launcher/view/ActiveIconView;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/WeatherView;

    .line 688
    .local v3, "wv":Lcom/smartisanos/launcher/view/WeatherView;
    if-eqz v3, :cond_3

    .line 689
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/WeatherView;->onTimeChange()V

    goto :goto_1
.end method
