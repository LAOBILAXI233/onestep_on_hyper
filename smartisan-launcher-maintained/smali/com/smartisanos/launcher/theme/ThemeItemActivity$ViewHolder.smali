.class Lcom/smartisanos/launcher/theme/ThemeItemActivity$ViewHolder;
.super Ljava/lang/Object;
.source "ThemeItemActivity.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/theme/ThemeItemActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


.field public colorDot:Landroid/widget/ImageView;

.field public colorDotSelected:Landroid/widget/ImageView;

.field public themeId:Ljava/lang/String;

.field public themeName:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

.field public view:Landroid/view/View;


.method private constructor <init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)V
    .locals 0

    .prologue
    .line 973
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$ViewHolder;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Lcom/smartisanos/launcher/theme/ThemeItemActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/smartisanos/launcher/theme/ThemeItemActivity;
    .param p2, "x1"    # Lcom/smartisanos/launcher/theme/ThemeItemActivity$1;

    .prologue
    .line 973
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/theme/ThemeItemActivity$ViewHolder;-><init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)V

    return-void
.end method


.method public setTheme(Lcom/smartisanos/launcher/theme/Theme;ZZLandroid/content/Context;)V
    .locals 4
    .param p1, "theme"    # Lcom/smartisanos/launcher/theme/Theme;
    .param p2, "selected"    # Z
    .param p3, "used"    # Z
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 981
    if-nez p1, :cond_1

    .line 982
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v2

    const-string v3, "setTheme return by Theme is null"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 1003
    :cond_0
    :goto_0
    return-void

    .line 985
    :cond_1
    iget-object v1, p1, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    .line 986
    .local v1, "themeId":Ljava/lang/String;
    iget-object v0, p1, Lcom/smartisanos/launcher/theme/Theme;->mName:Ljava/lang/String;

    .line 987
    .local v0, "displayName":Ljava/lang/String;
    iget-object v2, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$ViewHolder;->colorDot:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$ViewHolder;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v3}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$2300(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/DrawableCache;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/smartisanos/launcher/theme/DrawableCache;->getImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 988
    if-eqz p3, :cond_2

    .line 989
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/smartisanos/launcher/ResIds$string;->current_theme_tag:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 991
    :cond_2
    if-eqz p2, :cond_3

    .line 992
    iget-object v2, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$ViewHolder;->colorDotSelected:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 996
    :goto_1
    iget-object v2, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$ViewHolder;->themeName:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 997
    iget-object v2, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$ViewHolder;->themeName:Landroid/widget/TextView;

    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$2400()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 998
    if-eqz p2, :cond_4

    .line 999
    iget-object v2, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$ViewHolder;->themeName:Landroid/widget/TextView;

    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$2500()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 994
    :cond_3
    iget-object v2, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$ViewHolder;->colorDotSelected:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 1000
    :cond_4
    if-eqz p3, :cond_0

    .line 1001
    iget-object v2, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$ViewHolder;->themeName:Landroid/widget/TextView;

    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$2600()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
