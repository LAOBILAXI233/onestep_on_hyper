.class Landroid/support/v7/app/AppCompatDelegateImplV14;
.super Landroid/support/v7/app/AppCompatDelegateImplV11;
.source "AppCompatDelegateImplV14.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;,
        Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;
    }
.end annotation


.field private static final KEY_LOCAL_NIGHT_MODE:Ljava/lang/String; = "appcompat:local_night_mode"


.field private mApplyDayNightCalled:Z

.field private mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

.field private mHandleNativeActionModes:Z

.field private mLocalNightMode:I


.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "window"    # Landroid/view/Window;
    .param p3, "callback"    # Landroid/support/v7/app/AppCompatCallback;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatDelegateImplV11;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V

    .line 41
    const/16 v0, -0x64

    iput v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mHandleNativeActionModes:Z

    .line 51
    return-void
.end method

.method private ensureAutoNightModeManager()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v7/app/TwilightManager;->getInstance(Landroid/content/Context;)Landroid/support/v7/app/TwilightManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV14;Landroid/support/v7/app/TwilightManager;)V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    .line 226
    :cond_0
    return-void
.end method

.method private getNightMode()I
    .locals 2

    .prologue
    .line 159
    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/support/v7/app/AppCompatDelegateImplV14;->getDefaultNightMode()I

    move-result v0

    goto :goto_0
.end method

.method private shouldRecreateOnNightModeChange()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 235
    iget-boolean v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mApplyDayNightCalled:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    instance-of v5, v5, Landroid/app/Activity;

    if-eqz v5, :cond_1

    .line 238
    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 240
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    .line 241
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v6, 0x0

    .line 240
    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 244
    .local v1, "info":Landroid/content/pm/ActivityInfo;
    iget v5, v1, Landroid/content/pm/ActivityInfo;->configChanges:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v5, v5, 0x200

    if-nez v5, :cond_0

    .line 252
    .end local v1    # "info":Landroid/content/pm/ActivityInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return v3

    .restart local v1    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    move v3, v4

    .line 244
    goto :goto_0

    .line 245
    .end local v1    # "info":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "AppCompatDelegate"

    const-string v5, "Exception while getting ActivityInfo"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    move v3, v4

    .line 252
    goto :goto_0
.end method

.method private updateForNightMode(I)Z
    .locals 7
    .param p1, "mode"    # I

    .prologue
    .line 187
    iget-object v6, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 188
    .local v5, "res":Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 189
    .local v1, "conf":Landroid/content/res/Configuration;
    iget v6, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v6, 0x30

    .line 191
    .local v2, "currentNightMode":I
    const/4 v6, 0x2

    if-ne p1, v6, :cond_0

    const/16 v4, 0x20

    .line 195
    .local v4, "newNightMode":I
    :goto_0
    if-eq v2, v4, :cond_2

    .line 196
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->shouldRecreateOnNightModeChange()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 202
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 203
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    .line 213
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_1
    const/4 v6, 0x1

    .line 219
    :goto_2
    return v6

    .line 191
    .end local v4    # "newNightMode":I
    :cond_0
    const/16 v4, 0x10

    goto :goto_0

    .line 208
    .restart local v4    # "newNightMode":I
    :cond_1
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 209
    .local v3, "newConf":Landroid/content/res/Configuration;
    iget v6, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v6, v6, -0x31

    or-int/2addr v6, v4

    iput v6, v3, Landroid/content/res/Configuration;->uiMode:I

    .line 211
    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_1

    .line 219
    .end local v3    # "newConf":Landroid/content/res/Configuration;
    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method


.method public applyDayNight()Z
    .locals 4

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 86
    .local v0, "applied":Z
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->getNightMode()I

    move-result v2

    .line 87
    .local v2, "nightMode":I
    invoke-virtual {p0, v2}, Landroid/support/v7/app/AppCompatDelegateImplV14;->mapNightMode(I)I

    move-result v1

    .line 88
    .local v1, "modeToApply":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 89
    invoke-direct {p0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV14;->updateForNightMode(I)Z

    move-result v0

    .line 92
    :cond_0
    if-nez v2, :cond_1

    .line 94
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->ensureAutoNightModeManager()V

    .line 95
    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    invoke-virtual {v3}, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->setup()V

    .line 98
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mApplyDayNightCalled:Z

    .line 99
    return v0
.end method

.method final getAutoNightModeManager()Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 230
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->ensureAutoNightModeManager()V

    .line 231
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    return-object v0
.end method

.method public isHandleNativeActionModesEnabled()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mHandleNativeActionModes:Z

    return v0
.end method

.method mapNightMode(I)I
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 145
    sparse-switch p1, :sswitch_data_0

    .line 153
    .end local p1    # "mode":I
    :goto_0
    return p1

    .line 147
    .restart local p1    # "mode":I
    :sswitch_0
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->ensureAutoNightModeManager()V

    .line 148
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->getApplyableNightMode()I

    move-result p1

    goto :goto_0

    .line 151
    :sswitch_1
    const/4 p1, -0x1

    goto :goto_0

    .line 145
    :sswitch_data_0
    .sparse-switch
        -0x64 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, -0x64

    .line 55
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV11;->onCreate(Landroid/os/Bundle;)V

    .line 57
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    if-ne v0, v1, :cond_0

    .line 60
    const-string v0, "appcompat:local_night_mode"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    .line 63
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 174
    invoke-super {p0}, Landroid/support/v7/app/AppCompatDelegateImplV11;->onDestroy()V

    .line 177
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->cleanup()V

    .line 180
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV11;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 166
    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    .line 168
    const-string v0, "appcompat:local_night_mode"

    iget v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 170
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0}, Landroid/support/v7/app/AppCompatDelegateImplV11;->onStart()V

    .line 108
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->applyDayNight()Z

    .line 109
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 113
    invoke-super {p0}, Landroid/support/v7/app/AppCompatDelegateImplV11;->onStop()V

    .line 116
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->cleanup()V

    .line 119
    :cond_0
    return-void
.end method

.method public setHandleNativeActionModesEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mHandleNativeActionModes:Z

    .line 75
    return-void
.end method

.method public setLocalNightMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 123
    packed-switch p1, :pswitch_data_0

    .line 138
    const-string v0, "AppCompatDelegate"

    const-string v1, "setLocalNightMode() called with an unknown mode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 128
    :pswitch_0
    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    if-eq v0, p1, :cond_0

    .line 129
    iput p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    .line 130
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mApplyDayNightCalled:Z

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->applyDayNight()Z

    goto :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method wrapWindowCallback(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 1
    .param p1, "callback"    # Landroid/view/Window$Callback;

    .prologue
    .line 69
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV14;Landroid/view/Window$Callback;)V

    return-object v0
.end method
