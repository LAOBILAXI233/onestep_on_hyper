.class Lcom/smartisanos/launcher/view/MainView$MyTimerTask$1;
.super Lcom/smartisanos/smengine/Event;
.source "MainView.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/MainView$MyTimerTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/MainView$MyTimerTask;


.method constructor <init>(Lcom/smartisanos/launcher/view/MainView$MyTimerTask;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/MainView$MyTimerTask;
    .param p2, "type"    # I

    .prologue
    .line 239
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MainView$MyTimerTask$1;->this$0:Lcom/smartisanos/launcher/view/MainView$MyTimerTask;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 10

    .prologue
    .line 242
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 243
    .local v1, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 244
    .local v2, "currentMillis":J
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 245
    const/16 v9, 0xb

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 246
    .local v4, "hour":I
    const/16 v9, 0xc

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 247
    .local v5, "minute":I
    const/16 v9, 0xd

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 248
    .local v8, "seconds":I
    const/16 v9, 0x9

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 251
    .local v0, "ampm":I
    new-instance v6, Lcom/smartisanos/smengine/Notification;

    invoke-direct {v6}, Lcom/smartisanos/smengine/Notification;-><init>()V

    .line 252
    .local v6, "n":Lcom/smartisanos/smengine/Notification;
    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v9}, Lcom/smartisanos/smengine/Notification;->addData(Ljava/lang/Object;)V

    .line 253
    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v9}, Lcom/smartisanos/smengine/Notification;->addData(Ljava/lang/Object;)V

    .line 254
    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v9}, Lcom/smartisanos/smengine/Notification;->addData(Ljava/lang/Object;)V

    .line 255
    invoke-static {}, Lcom/smartisanos/smengine/NotificationManager;->getCurrentNotificationManager()Lcom/smartisanos/smengine/NotificationManager;

    move-result-object v7

    .line 256
    .local v7, "notificationManager":Lcom/smartisanos/smengine/NotificationManager;
    const-string v9, "timeChangeNotify"

    invoke-virtual {v7, v9, v6}, Lcom/smartisanos/smengine/NotificationManager;->postNotification(Ljava/lang/String;Lcom/smartisanos/smengine/Notification;)V

    .line 257
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/smengine/World;->updateGLView()V

    .line 258
    return-void
.end method
