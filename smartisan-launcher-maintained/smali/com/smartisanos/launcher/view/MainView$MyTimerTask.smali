.class Lcom/smartisanos/launcher/view/MainView$MyTimerTask;
.super Ljava/util/TimerTask;
.source "MainView.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/MainView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyTimerTask"
.end annotation


.method private constructor <init>()V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


.method public run()V
    .locals 2

    .prologue
    .line 239
    new-instance v0, Lcom/smartisanos/launcher/view/MainView$MyTimerTask$1;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/view/MainView$MyTimerTask$1;-><init>(Lcom/smartisanos/launcher/view/MainView$MyTimerTask;I)V

    const/4 v1, 0x0

    .line 259
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/MainView$MyTimerTask$1;->send(F)V

    .line 260
    return-void
.end method
