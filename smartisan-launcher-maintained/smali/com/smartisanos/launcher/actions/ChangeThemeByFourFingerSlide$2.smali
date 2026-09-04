.class final Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide$2;
.super Ljava/lang/Object;
.source "ChangeThemeByFourFingerSlide.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide;->fingerSlideImpl(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.method constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Utils;->hideStatusBar(Landroid/content/Context;)V

    .line 70
    return-void
.end method
