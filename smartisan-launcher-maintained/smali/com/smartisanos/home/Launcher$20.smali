.class Lcom/smartisanos/home/Launcher$20;
.super Lcom/smartisanos/smengine/Event;
.source "Launcher.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/Launcher;->resumeActiveIcons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/home/Launcher;


.method constructor <init>(Lcom/smartisanos/home/Launcher;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/home/Launcher;
    .param p2, "type"    # I

    .prologue
    .line 1502
    iput-object p1, p0, Lcom/smartisanos/home/Launcher$20;->this$0:Lcom/smartisanos/home/Launcher;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 4

    .prologue
    .line 1505
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    sget-object v3, Lcom/smartisanos/launcher/view/CalendarView;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/MainView;->getActiveIconView(Ljava/lang/String;)Lcom/smartisanos/launcher/view/ActiveIconView;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/CalendarView;

    .line 1506
    .local v0, "cv":Lcom/smartisanos/launcher/view/CalendarView;
    if-eqz v0, :cond_0

    .line 1507
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/CalendarView;->onResume()V

    .line 1509
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    sget-object v3, Lcom/smartisanos/launcher/view/WeatherView;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/MainView;->getActiveIconView(Ljava/lang/String;)Lcom/smartisanos/launcher/view/ActiveIconView;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/WeatherView;

    .line 1510
    .local v1, "wv":Lcom/smartisanos/launcher/view/WeatherView;
    if-eqz v1, :cond_1

    .line 1511
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/WeatherView;->onResume()V

    .line 1513
    :cond_1
    return-void
.end method
