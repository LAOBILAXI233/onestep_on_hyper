.class final Lcom/smartisanos/launcher/actions/ColorThemeChanged$2;
.super Lcom/smartisanos/smengine/Event;
.source "ColorThemeChanged.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/actions/ColorThemeChanged;->prepareAndStartChangeTheme(Lcom/smartisanos/launcher/theme/Theme;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.field final synthetic val$theme:Lcom/smartisanos/launcher/theme/Theme;


.method constructor <init>(ILcom/smartisanos/launcher/theme/Theme;)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 200
    iput-object p2, p0, Lcom/smartisanos/launcher/actions/ColorThemeChanged$2;->val$theme:Lcom/smartisanos/launcher/theme/Theme;

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 5

    .prologue
    .line 203
    invoke-static {}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->getInstance()Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    move-result-object v0

    .line 204
    .local v0, "changeThemeHandler":Lcom/smartisanos/launcher/theme/ChangeThemeHandler;
    invoke-virtual {v0}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->shouldDoChangeThemeAnim()Z

    move-result v2

    if-nez v2, :cond_0

    .line 205
    invoke-virtual {v0}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->forceCompleteChangeTheme()V

    .line 219
    :goto_0
    return-void

    .line 208
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    .line 209
    .local v1, "mainView":Lcom/smartisanos/launcher/view/MainView;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->setModeToSingleForChangeTheme()V

    .line 210
    sget v2, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v3, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v2, v3, :cond_1

    .line 211
    invoke-static {}, Lcom/smartisanos/launcher/actions/ColorThemeChanged;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v2

    const-string v3, "DEBUG"

    const-string v4, "current page mode is multi page mode, can\'t change theme, so return"

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->forceCompleteChangeTheme()V

    goto :goto_0

    .line 215
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->lockHardKey()V

    .line 216
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->lockTouchEvent()V

    .line 217
    invoke-virtual {v0}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->setChangeThemeAnimStart()V

    .line 218
    iget-object v2, p0, Lcom/smartisanos/launcher/actions/ColorThemeChanged$2;->val$theme:Lcom/smartisanos/launcher/theme/Theme;

    invoke-static {v2}, Lcom/smartisanos/launcher/actions/ColorThemeChanged;->access$100(Lcom/smartisanos/launcher/theme/Theme;)V

    goto :goto_0
.end method
