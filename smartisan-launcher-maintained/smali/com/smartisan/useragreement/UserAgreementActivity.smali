.class public Lcom/smartisan/useragreement/UserAgreementActivity;
.super Landroid/app/Activity;
.source "UserAgreementActivity.java"


.field private static final ASSETS_FILE_PREFIX:Ljava/lang/String; = "file:///android_asset/"

.field public static final EXTRA_SMARTISAN_ANIM_RESOURCE_ID:Ljava/lang/String; = "smartisanos.intent.extra.ANIM_RESOURCE_ID"

.field public static final STATUSBAR_TRANSPARENT:Ljava/lang/String; = "statusbar_transparent_boolean"

.field public static final TITLE_BACK_BTN_BG:Ljava/lang/String; = "title_back_btn_bg"

.field public static final TITLE_BG_RES:Ljava/lang/String; = "title_bg_res"

.field public static final TITLE_OK_BTN_BG:Ljava/lang/String; = "title_ok_btn_bg"

.field public static final TITLE_SHADOW_RES:Ljava/lang/String; = "title_shadow_res"

.field public static final TITLE_TEXT_COLOR:Ljava/lang/String; = "title_text_color"

.field public static final TITLE_TEXT_RES:Ljava/lang/String; = "title_text_res"

.field private static final USER_PLAN_FILE_NAME_CN:Ljava/lang/String; = "html/smartisan_experience_plan_content_cn.html"

.field private static final USER_PLAN_FILE_NAME_TW:Ljava/lang/String; = "html/smartisan_experience_plan_content_tw.html"

.field private static final USER_PLAN_FILE_NAME_US:Ljava/lang/String; = "html/smartisan_experience_plan_content_us.html"


.field private mLayoutContainer:Landroid/widget/RelativeLayout;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mTitleBar:Lsmartisanos/widget/Title;

.field private mWebview:Landroid/webkit/WebView;


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private applyStatusBar(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 257
    const-string v1, "statusbar_transparent_boolean"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 258
    .local v0, "transparent":Z
    if-eqz v0, :cond_0

    .line 259
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/smartisan/useragreement/UserAgreementActivity;->requestWindowFeature(I)Z

    .line 260
    invoke-virtual {p0}, Lcom/smartisan/useragreement/UserAgreementActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/smartisan/useragreement/UserAgreementUtils;->applyStatusBar(Landroid/app/Activity;ZLandroid/view/Window;)V

    .line 262
    :cond_0
    return-void
.end method

.method private getInfoFile()Ljava/lang/String;
    .locals 2

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/smartisan/useragreement/UserAgreementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    const-string v0, "html/smartisan_experience_plan_content_cn.html"

    invoke-direct {p0, v0}, Lcom/smartisan/useragreement/UserAgreementActivity;->isAssetFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 177
    const-string v0, "file:///android_asset/html/smartisan_experience_plan_content_cn.html"

    .line 192
    :goto_0
    return-object v0

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/smartisan/useragreement/UserAgreementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    const-string v0, "html/smartisan_experience_plan_content_tw.html"

    invoke-direct {p0, v0}, Lcom/smartisan/useragreement/UserAgreementActivity;->isAssetFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 181
    const-string v0, "file:///android_asset/html/smartisan_experience_plan_content_tw.html"

    goto :goto_0

    .line 183
    :cond_1
    invoke-virtual {p0}, Lcom/smartisan/useragreement/UserAgreementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 184
    const-string v0, "html/smartisan_experience_plan_content_us.html"

    invoke-direct {p0, v0}, Lcom/smartisan/useragreement/UserAgreementActivity;->isAssetFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 185
    const-string v0, "file:///android_asset/html/smartisan_experience_plan_content_us.html"

    goto :goto_0

    .line 188
    :cond_2
    const-string v0, "html/smartisan_experience_plan_content_us.html"

    invoke-direct {p0, v0}, Lcom/smartisan/useragreement/UserAgreementActivity;->isAssetFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 189
    const-string v0, "file:///android_asset/html/smartisan_experience_plan_content_us.html"

    goto :goto_0

    .line 192
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAssetFileExist(Ljava/lang/String;)Z
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 196
    const/4 v3, 0x0

    .line 197
    .local v3, "result":Z
    invoke-virtual {p0}, Lcom/smartisan/useragreement/UserAgreementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 199
    .local v0, "am":Landroid/content/res/AssetManager;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 200
    .local v2, "is":Ljava/io/InputStream;
    if-eqz v2, :cond_0

    .line 201
    const/4 v3, 0x1

    .line 202
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v2    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return v3

    .line 204
    :catch_0
    move-exception v1

    .line 205
    .local v1, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static isSmartisanPhone()Z
    .locals 2

    .prologue
    .line 253
    const-string v0, "smartisan"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private setCustomTitleTheme(Landroid/content/Intent;)V
    .locals 14
    .param p1, "receiveIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v13, -0x1

    .line 108
    const-string v11, "title_text_res"

    invoke-virtual {p1, v11, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 109
    .local v7, "resTitleText":I
    if-lez v7, :cond_0

    .line 110
    iget-object v11, p0, Lcom/smartisan/useragreement/UserAgreementActivity;->mTitleBar:Lsmartisanos/widget/Title;

    invoke-virtual {v11, v7}, Lsmartisanos/widget/Title;->setTitle(I)V

    .line 112
    :cond_0
    const-string v11, "title_bg_res"

    invoke-virtual {p1, v11, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 113
    .local v4, "resTitleBg":I
    if-lez v4, :cond_1

    .line 114
    iget-object v11, p0, Lcom/smartisan/useragreement/UserAgreementActivity;->mTitleBar:Lsmartisanos/widget/Title;

    invoke-virtual {v11, v4}, Lsmartisanos/widget/Title;->setBackgroundResource(I)V

    .line 116
    :cond_1
    const-string v11, "title_ok_btn_bg"

    invoke-virtual {p1, v11, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 117
    .local v5, "resTitleOkBtnBg":I
    if-lez v5, :cond_2

    .line 118
    iget-object v11, p0, Lcom/smartisan/useragreement/UserAgreementActivity;->mTitleBar:Lsmartisanos/widget/Title;

    invoke-virtual {v11}, Lsmartisanos/widget/Title;->getOkButton()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 120
    :cond_2
    const-string v11, "title_back_btn_bg"

    invoke-virtual {p1, v11, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 121
    .local v3, "resTitleBackBtnBg":I
    if-lez v3, :cond_3

    .line 122
    iget-object v11, p0, Lcom/smartisan/useragreement/UserAgreementActivity;->mTitleBar:Lsmartisanos/widget/Title;

    invoke-virtual {v11}, Lsmartisanos/widget/Title;->getBackButton()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 124
    :cond_3
    const-string v11, "title_text_color"

    invoke-virtual {p1, v11, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 125
    .local v8, "resTitleTextColor":I
    if-lez v8, :cond_6

    .line 126
    iget-object v11, p0, Lcom/smartisan/useragreement/UserAgreementActivity;->mTitleBar:Lsmartisanos/widget/Title;

    invoke-virtual {v11}, Lsmartisanos/widget/Title;->getOkButton()Landroid/view/View;

    move-result-object v1

    .line 127
    .local v1, "okBtn":Landroid/view/View;
    iget-object v11, p0, Lcom/smartisan/useragreement/UserAgreementActivity;->mTitleBar:Lsmartisanos/widget/Title;

    invoke-virtual {v11}, Lsmartisanos/widget/Title;->getBackButton()Landroid/view/View;

    move-result-object v0

    .line 128
    .local v0, "backBtn":Landroid/view/View;
    iget-object v11, p0, Lcom/smartisan/useragreement/UserAgreementActivity;->mTitleBar:Lsmartisanos/widget/Title;

    sget v12, Lsmartisanos/widget/R$id;->tv_title:I

    invoke-virtual {v11, v12}, Lsmartisanos/widget/Title;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 129
    .local v10, "titleView":Landroid/view/View;
    instance-of v11, v1, Landroid/widget/TextView;

    if-eqz v11, :cond_4

    .line 130
    check-cast v1, Landroid/widget/TextView;

    .end local v1    # "okBtn":Landroid/view/View;
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    :cond_4
    instance-of v11, v0, Landroid/widget/TextView;

    if-eqz v11, :cond_5

    .line 133
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "backBtn":Landroid/view/View;
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 135
    :cond_5
    instance-of v11, v10, Landroid/widget/TextView;

    if-eqz v11, :cond_6

    .line 136
    check-cast v10, Landroid/widget/TextView;

    .end local v10    # "titleView":Landroid/view/View;
    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 139
    :cond_6
    const-string v11, "title_shadow_res"

    invoke-virtual {p1, v11, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 140
    .local v6, "resTitleShadow":I
    if-lez v6, :cond_7

    .line 141
    invoke-virtual {p0}, Lcom/smartisan/useragreement/UserAgreementActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    iget-object v12, p0, Lcom/smartisan/useragreement/UserAgreementActivity;->mLayoutContainer:Landroid/widget/RelativeLayout;

    const/4 v13, 0x0

    invoke-virtual {v11, v6, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 142
    .local v9, "shadow":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 143
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v11, 0x3

    sget v12, Lcom/smartisan/useragreement/R$id;->useragree_titlebar:I

    invoke-virtual {v2, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 144
    iget-object v11, p0, Lcom/smartisan/useragreement/UserAgreementActivity;->mLayoutContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v11, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 146
    .end local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v9    # "shadow":Landroid/view/View;
    :cond_7
    return-void
.end method

.method public static startActivity(Landroid/content/Context;IIIIII)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "titleBgRes"    # I
    .param p2, "titleBackBtnBgRes"    # I
    .param p3, "titleOkBtnBgRes"    # I
    .param p4, "titleTextColor"    # I
    .param p5, "titleTextRes"    # I
    .param p6, "titleShadowRes"    # I

    .prologue
    .line 62
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/smartisan/useragreement/UserAgreementActivity;->startActivity(Landroid/content/Context;IIIIIIZ)V

    .line 65
    return-void
.end method

.method public static startActivity(Landroid/content/Context;IIIIIIZ)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "titleBgRes"    # I
    .param p2, "titleBackBtnBgRes"    # I
    .param p3, "titleOkBtnBgRes"    # I
    .param p4, "titleTextColor"    # I
    .param p5, "TitleTextRes"    # I
    .param p6, "titleShadowRes"    # I
    .param p7, "transparentStatusBar"    # Z

    .prologue
    .line 47
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/smartisan/useragreement/UserAgreementActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "title_bg_res"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 49
    const-string v1, "title_back_btn_bg"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50
    const-string v1, "title_ok_btn_bg"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 51
    const-string v1, "title_text_res"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 52
    const-string v1, "title_text_color"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 53
    const-string v1, "title_shadow_res"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    const-string v1, "statusbar_transparent_boolean"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 56
    invoke-static {p0, v0}, Lcom/smartisan/useragreement/UserAgreementActivity;->startActivityWithFromRightAnim(Landroid/content/Context;Landroid/content/Intent;)V

    .line 57
    return-void
.end method

.method private static startActivityWithFromRightAnim(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 235
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/smartisan/useragreement/UserAgreementActivity;->startActivityWithFromRightAnim(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 236
    return-void
.end method

.method private static startActivityWithFromRightAnim(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 239
    invoke-static {}, Lcom/smartisan/useragreement/UserAgreementActivity;->isSmartisanPhone()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "slide_in_from_left"

    const-string v4, "anim"

    const-string v5, "smartisanos"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 240
    .local v0, "animLeftId":I
    :goto_0
    invoke-static {}, Lcom/smartisan/useragreement/UserAgreementActivity;->isSmartisanPhone()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "slide_out_to_right"

    const-string v4, "anim"

    const-string v5, "smartisanos"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 241
    .local v1, "animRightId":I
    :goto_1
    const-string v2, "smartisanos.intent.extra.ANIM_RESOURCE_ID"

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v4, 0x1

    aput v1, v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 243
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_2

    move-object v2, p0

    .line 244
    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 245
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    sget v2, Lsmartisanos/widget/R$anim;->slide_in_from_right:I

    sget v3, Lsmartisanos/widget/R$anim;->slide_out_to_left:I

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 250
    :goto_2
    return-void

    .line 239
    .end local v0    # "animLeftId":I
    .end local v1    # "animRightId":I
    .restart local p0    # "context":Landroid/content/Context;
    :cond_0
    sget v0, Lsmartisanos/widget/R$anim;->slide_in_from_left:I

    goto :goto_0

    .line 240
    .restart local v0    # "animLeftId":I
    :cond_1
    sget v1, Lsmartisanos/widget/R$anim;->slide_out_to_right:I

    goto :goto_1

    .line 248
    .restart local v1    # "animRightId":I
    :cond_2
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2
.end method


.method public finish()V
    .locals 3

    .prologue
    .line 212
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 213
    iget-object v1, p0, Lcom/smartisan/useragreement/UserAgreementActivity;->mWebview:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/smartisan/useragreement/UserAgreementActivity;->mWebview:Landroid/webkit/WebView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/smartisan/useragreement/UserAgreementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 216
    invoke-virtual {p0}, Lcom/smartisan/useragreement/UserAgreementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "smartisanos.intent.extra.ANIM_RESOURCE_ID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    .line 217
    .local v0, "anims":[I
    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 218
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-virtual {p0, v1, v2}, Lcom/smartisan/useragreement/UserAgreementActivity;->overridePendingTransition(II)V

    .line 221
    .end local v0    # "anims":[I
    :cond_1
    return-void
.end method

.method initWebView()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 149
    iget-object v1, p0, Lcom/smartisan/useragreement/UserAgreementActivity;->mWebview:Landroid/webkit/WebView;

    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 150
    iget-object v1, p0, Lcom/smartisan/useragreement/UserAgreementActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 151
    .local v0, "settings":Landroid/webkit/WebSettings;
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 152
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    .line 153
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 154
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 155
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 156
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 157
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 158
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 159
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 160
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 161
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 162
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 163
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 166
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_0

    .line 167
    iget-object v1, p0, Lcom/smartisan/useragreement/UserAgreementActivity;->mWebview:Landroid/webkit/WebView;

    invoke-static {v4, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 169
    :cond_0
    invoke-direct {p0}, Lcom/smartisan/useragreement/UserAgreementActivity;->getInfoFile()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 170
    iget-object v1, p0, Lcom/smartisan/useragreement/UserAgreementActivity;->mWebview:Landroid/webkit/WebView;

    invoke-direct {p0}, Lcom/smartisan/useragreement/UserAgreementActivity;->getInfoFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 172
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/smartisan/useragreement/UserAgreementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 71
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/smartisan/useragreement/UserAgreementActivity;->applyStatusBar(Landroid/content/Intent;)V

    .line 72
    sget v1, Lcom/smartisan/useragreement/R$layout;->activity_user_agreement:I

    invoke-virtual {p0, v1}, Lcom/smartisan/useragreement/UserAgreementActivity;->setContentView(I)V

    .line 73
    sget v1, Lcom/smartisan/useragreement/R$id;->experience_plan_info:I

    invoke-virtual {p0, v1}, Lcom/smartisan/useragreement/UserAgreementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/smartisan/useragreement/UserAgreementActivity;->mWebview:Landroid/webkit/WebView;

    .line 74
    sget v1, Lcom/smartisan/useragreement/R$id;->useragree_titlebar:I

    invoke-virtual {p0, v1}, Lcom/smartisan/useragreement/UserAgreementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lsmartisanos/widget/Title;

    iput-object v1, p0, Lcom/smartisan/useragreement/UserAgreementActivity;->mTitleBar:Lsmartisanos/widget/Title;

    .line 75
    sget v1, Lcom/smartisan/useragreement/R$id;->useragree_scroll_view:I

    invoke-virtual {p0, v1}, Lcom/smartisan/useragreement/UserAgreementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/smartisan/useragreement/UserAgreementActivity;->mScrollView:Landroid/widget/ScrollView;

    .line 76
    sget v1, Lcom/smartisan/useragreement/R$id;->useragree_container:I

    invoke-virtual {p0, v1}, Lcom/smartisan/useragreement/UserAgreementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/smartisan/useragreement/UserAgreementActivity;->mLayoutContainer:Landroid/widget/RelativeLayout;

    .line 77
    iget-object v1, p0, Lcom/smartisan/useragreement/UserAgreementActivity;->mTitleBar:Lsmartisanos/widget/Title;

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/smartisan/useragreement/UserAgreementActivity;->mTitleBar:Lsmartisanos/widget/Title;

    new-instance v2, Lcom/smartisan/useragreement/UserAgreementActivity$1;

    invoke-direct {v2, p0}, Lcom/smartisan/useragreement/UserAgreementActivity$1;-><init>(Lcom/smartisan/useragreement/UserAgreementActivity;)V

    invoke-virtual {v1, v2}, Lsmartisanos/widget/Title;->setBackButtonListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v1, p0, Lcom/smartisan/useragreement/UserAgreementActivity;->mTitleBar:Lsmartisanos/widget/Title;

    new-instance v2, Lcom/smartisan/useragreement/UserAgreementActivity$2;

    invoke-direct {v2, p0}, Lcom/smartisan/useragreement/UserAgreementActivity$2;-><init>(Lcom/smartisan/useragreement/UserAgreementActivity;)V

    invoke-virtual {v1, v2}, Lsmartisanos/widget/Title;->setOkButtonListener(Landroid/view/View$OnClickListener;)V

    .line 92
    :cond_0
    if-eqz v0, :cond_1

    .line 93
    const-string v1, "IS_FROM_DIALOG"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    iget-object v1, p0, Lcom/smartisan/useragreement/UserAgreementActivity;->mTitleBar:Lsmartisanos/widget/Title;

    invoke-virtual {v1}, Lsmartisanos/widget/Title;->getOkButton()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 95
    iget-object v1, p0, Lcom/smartisan/useragreement/UserAgreementActivity;->mTitleBar:Lsmartisanos/widget/Title;

    invoke-virtual {v1}, Lsmartisanos/widget/Title;->getBackButton()Landroid/view/View;

    move-result-object v1

    sget v2, Lsmartisanos/widget/R$drawable;->selector_title_button_ok:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 96
    iget-object v1, p0, Lcom/smartisan/useragreement/UserAgreementActivity;->mTitleBar:Lsmartisanos/widget/Title;

    invoke-virtual {v1}, Lsmartisanos/widget/Title;->getBackButton()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 103
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/smartisan/useragreement/UserAgreementActivity;->setCustomTitleTheme(Landroid/content/Intent;)V

    .line 104
    invoke-virtual {p0}, Lcom/smartisan/useragreement/UserAgreementActivity;->initWebView()V

    .line 105
    return-void

    .line 98
    :cond_2
    iget-object v1, p0, Lcom/smartisan/useragreement/UserAgreementActivity;->mTitleBar:Lsmartisanos/widget/Title;

    invoke-virtual {v1}, Lsmartisanos/widget/Title;->getOkButton()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 99
    iget-object v1, p0, Lcom/smartisan/useragreement/UserAgreementActivity;->mTitleBar:Lsmartisanos/widget/Title;

    invoke-virtual {v1}, Lsmartisanos/widget/Title;->getBackButton()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 225
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 226
    iget-object v0, p0, Lcom/smartisan/useragreement/UserAgreementActivity;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->removeAllViews()V

    .line 227
    iget-object v0, p0, Lcom/smartisan/useragreement/UserAgreementActivity;->mWebview:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/smartisan/useragreement/UserAgreementActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 229
    iget-object v0, p0, Lcom/smartisan/useragreement/UserAgreementActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->freeMemory()V

    .line 230
    iget-object v0, p0, Lcom/smartisan/useragreement/UserAgreementActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 232
    :cond_0
    return-void
.end method
