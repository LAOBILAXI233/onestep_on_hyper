.class final Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide$7;
.super Ljava/lang/Object;
.source "ChangeThemeByFourFingerSlide.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide;->removeDialogTask(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.method constructor <init>()V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 3

    .prologue
    .line 187
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Utils;->showStatusBar(Landroid/content/Context;)V

    .line 188
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/home/Launcher;->showDialog(ZLjava/lang/String;)V

    .line 189
    return-void
.end method
