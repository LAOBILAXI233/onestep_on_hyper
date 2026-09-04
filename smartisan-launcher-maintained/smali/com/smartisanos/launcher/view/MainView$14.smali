.class Lcom/smartisanos/launcher/view/MainView$14;
.super Lcom/smartisanos/smengine/Event;
.source "MainView.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/MainView;->updateEasterDay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/MainView;


.method constructor <init>(Lcom/smartisanos/launcher/view/MainView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/MainView;
    .param p2, "type"    # I

    .prologue
    .line 3087
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MainView$14;->this$0:Lcom/smartisanos/launcher/view/MainView;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 4

    .prologue
    .line 3089
    iget-object v2, p0, Lcom/smartisanos/launcher/view/MainView$14;->this$0:Lcom/smartisanos/launcher/view/MainView;

    sget-object v3, Lcom/smartisanos/launcher/view/CalendarView;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/MainView;->getActiveIconCell(Ljava/lang/String;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    .line 3090
    .local v0, "cv":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v0, :cond_0

    .line 3091
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->updateForegroundOverlapRectTextureEaster()V

    .line 3093
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/MainView$14;->this$0:Lcom/smartisanos/launcher/view/MainView;

    sget-object v3, Lcom/smartisanos/launcher/view/WeatherView;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/MainView;->getActiveIconCell(Ljava/lang/String;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    .line 3094
    .local v1, "wv":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v1, :cond_1

    .line 3095
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->updateForegroundOverlapRectTextureEaster()V

    .line 3097
    :cond_1
    return-void
.end method
