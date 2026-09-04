.class final Lcom/smartisanos/launcher/actions/ColorThemeChanged$3;
.super Ljava/lang/Object;
.source "ColorThemeChanged.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/actions/ColorThemeChanged;->changeThemeWhenChangePhoneBackColor(Lcom/smartisanos/launcher/theme/Theme;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.field final synthetic val$theme:Lcom/smartisanos/launcher/theme/Theme;


.method constructor <init>(Lcom/smartisanos/launcher/theme/Theme;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/smartisanos/launcher/actions/ColorThemeChanged$3;->val$theme:Lcom/smartisanos/launcher/theme/Theme;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 7

    .prologue
    .line 230
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v1

    .line 231
    .local v1, "launcher":Lcom/smartisanos/home/Launcher;
    invoke-virtual {v1}, Lcom/smartisanos/home/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 232
    .local v3, "resources":Landroid/content/res/Resources;
    const-string v4, "theme_changing"

    const-string v5, "string"

    const-string v6, "com.smartisanos.home"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 233
    .local v2, "resId":I
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "dialogText":Ljava/lang/String;
    iget-object v4, p0, Lcom/smartisanos/launcher/actions/ColorThemeChanged$3;->val$theme:Lcom/smartisanos/launcher/theme/Theme;

    invoke-virtual {v1, v4, v0}, Lcom/smartisanos/home/Launcher;->changeTheme(Lcom/smartisanos/launcher/theme/Theme;Ljava/lang/String;)V

    .line 235
    return-void
.end method
