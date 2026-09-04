.class final Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide$4;
.super Ljava/lang/Object;
.source "ChangeThemeByFourFingerSlide.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide;->switchTheme(Lcom/smartisanos/launcher/theme/Theme;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.method constructor <init>()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 4

    .prologue
    .line 150
    invoke-static {}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->getInstance()Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->shouldDoChangeThemeAnim()Z

    move-result v2

    if-nez v2, :cond_1

    .line 153
    :cond_0
    return-void

    .line 151
    :cond_1
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    .local v0, "context":Lcom/smartisanos/home/Launcher;
    sget v2, Lcom/smartisanos/launcher/ResIds$string;->theme_changing:I

    invoke-virtual {v0, v2}, Lcom/smartisanos/home/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "info":Ljava/lang/String;
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Lcom/smartisanos/home/Launcher;->showDialogWithoutPostThread(ZLjava/lang/String;)V

    goto :cond_0
.end method
