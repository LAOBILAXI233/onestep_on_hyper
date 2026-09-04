.class final Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide$3;
.super Lcom/smartisanos/smengine/Event;
.source "ChangeThemeByFourFingerSlide.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide;->fingerSlideImpl(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.method constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    sput-boolean v0, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide;->THEME_CHANGING:Z

    .line 138
    return-void
.end method
