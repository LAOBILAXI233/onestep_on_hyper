.class Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;
.super Ljava/lang/Object;
.source "ThemeItemActivity.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/theme/ThemeItemActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BottomTitle"
.end annotation


.field public applyButton:Landroid/widget/TextView;

.field public backBtnListener:Landroid/view/View$OnClickListener;

.field public backButton:Landroid/widget/TextView;

.field public downloadBtnListener:Landroid/view/View$OnClickListener;

.field public downloadButton:Landroid/widget/LinearLayout;

.field public downloadingBtnListener:Landroid/view/View$OnClickListener;

.field public installBtnListener:Landroid/view/View$OnClickListener;

.field public setupBtnListener:Landroid/view/View$OnClickListener;

.field public statusIconView:Lcom/smartisanos/launcher/widget/StatusIconView;

.field public title:Landroid/widget/LinearLayout;


.method private constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/smartisanos/launcher/theme/ThemeItemActivity$1;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;-><init>()V

    return-void
.end method

.method private setViewVisibility(Landroid/view/View;ILandroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visibility"    # I
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 93
    if-nez p1, :cond_0

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 97
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


.method public switchButtonStatus(IIZ)V
    .locals 7
    .param p1, "status"    # I
    .param p2, "progress"    # I
    .param p3, "used"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 112
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchButtonStatus ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 113
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 166
    :goto_0
    return-void

    .line 115
    :pswitch_0
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->applyButton:Landroid/widget/TextView;

    const v1, 0x7f0800ed

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 116
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->applyButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->setupBtnListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, v0, v5, v1}, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->setViewVisibility(Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->statusIconView:Lcom/smartisanos/launcher/widget/StatusIconView;

    invoke-direct {p0, v0, v4, v3}, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->setViewVisibility(Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->downloadButton:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v4, v3}, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->setViewVisibility(Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    .line 119
    if-eqz p3, :cond_1

    .line 120
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->applyButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->applyButton:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->applyButton:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 128
    :pswitch_1
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->applyButton:Landroid/widget/TextView;

    invoke-direct {p0, v0, v4, v3}, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->setViewVisibility(Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->statusIconView:Lcom/smartisanos/launcher/widget/StatusIconView;

    invoke-direct {p0, v0, v4, v3}, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->setViewVisibility(Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->downloadButton:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->downloadBtnListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, v0, v5, v1}, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->setViewVisibility(Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 134
    :pswitch_2
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->applyButton:Landroid/widget/TextView;

    invoke-direct {p0, v0, v4, v3}, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->setViewVisibility(Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->downloadButton:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v4, v3}, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->setViewVisibility(Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->statusIconView:Lcom/smartisanos/launcher/widget/StatusIconView;

    invoke-direct {p0, v0, v5, v3}, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->setViewVisibility(Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->statusIconView:Lcom/smartisanos/launcher/widget/StatusIconView;

    sget v1, Lcom/smartisanos/launcher/ResIds$drawable;->btn_paused:I

    invoke-virtual {v0, v1, p2}, Lcom/smartisanos/launcher/widget/StatusIconView;->setStatusImageAndProgress(II)V

    goto :goto_0

    .line 141
    :pswitch_3
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->applyButton:Landroid/widget/TextView;

    invoke-direct {p0, v0, v4, v3}, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->setViewVisibility(Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->downloadButton:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v4, v3}, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->setViewVisibility(Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->statusIconView:Lcom/smartisanos/launcher/widget/StatusIconView;

    invoke-direct {p0, v0, v5, v3}, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->setViewVisibility(Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->statusIconView:Lcom/smartisanos/launcher/widget/StatusIconView;

    sget v1, Lcom/smartisanos/launcher/ResIds$drawable;->btn_loading:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/widget/StatusIconView;->setStatusImageAndProgress(II)V

    goto :goto_0

    .line 148
    :pswitch_4
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->applyButton:Landroid/widget/TextView;

    invoke-direct {p0, v0, v4, v3}, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->setViewVisibility(Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    .line 149
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->downloadButton:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v4, v3}, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->setViewVisibility(Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->statusIconView:Lcom/smartisanos/launcher/widget/StatusIconView;

    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->downloadingBtnListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, v0, v5, v1}, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->setViewVisibility(Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->statusIconView:Lcom/smartisanos/launcher/widget/StatusIconView;

    sget v1, Lcom/smartisanos/launcher/ResIds$drawable;->btn_downloading:I

    invoke-virtual {v0, v1, p2}, Lcom/smartisanos/launcher/widget/StatusIconView;->setStatusImageAndProgress(II)V

    goto/16 :goto_0

    .line 156
    :pswitch_5
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->applyButton:Landroid/widget/TextView;

    const v1, 0x7f0800ec

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 157
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->applyButton:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 158
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->downloadButton:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v4, v3}, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->setViewVisibility(Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->applyButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->installBtnListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, v0, v5, v1}, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->setViewVisibility(Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->statusIconView:Lcom/smartisanos/launcher/widget/StatusIconView;

    invoke-direct {p0, v0, v4, v3}, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->setViewVisibility(Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public switchButtonStatus(Lcom/smartisanos/launcher/theme/Theme;)V
    .locals 1
    .param p1, "theme"    # Lcom/smartisanos/launcher/theme/Theme;

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->switchButtonStatus(Lcom/smartisanos/launcher/theme/Theme;Z)V

    .line 102
    return-void
.end method

.method public switchButtonStatus(Lcom/smartisanos/launcher/theme/Theme;Z)V
    .locals 2
    .param p1, "theme"    # Lcom/smartisanos/launcher/theme/Theme;
    .param p2, "used"    # Z

    .prologue
    .line 105
    if-nez p1, :cond_0

    .line 109
    :goto_0
    return-void

    .line 108
    :cond_0
    iget v0, p1, Lcom/smartisanos/launcher/theme/Theme;->status:I

    iget v1, p1, Lcom/smartisanos/launcher/theme/Theme;->progress:I

    invoke-virtual {p0, v0, v1, p2}, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->switchButtonStatus(IIZ)V

    goto :goto_0
.end method

.method public updateBackButtonEnableState(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 88
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->backButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 89
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->backButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz p1, :cond_0

    const/16 v0, 0xff

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 90
    return-void

    .line 89
    :cond_0
    const/16 v0, 0x7f

    goto :goto_0
.end method
