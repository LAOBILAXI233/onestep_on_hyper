.class Lcom/smartisanos/launcher/theme/ThemeItemActivity$10;
.super Ljava/lang/Object;
.source "ThemeItemActivity.java"

.implements Landroid/view/View$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/theme/ThemeItemActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;


.method constructor <init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    .prologue
    .line 862
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$10;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 865
    if-nez p1, :cond_1

    .line 896
    :cond_0
    :goto_0
    return-void

    .line 868
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "colorDotOnClickListener ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 869
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 872
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/smartisanos/launcher/theme/ThemeItemActivity$ViewHolder;

    if-eqz v6, :cond_0

    .line 875
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$ViewHolder;

    .line 876
    .local v0, "holder":Lcom/smartisanos/launcher/theme/ThemeItemActivity$ViewHolder;
    iget-object v4, v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$ViewHolder;->themeId:Ljava/lang/String;

    .line 877
    .local v4, "themeId":Ljava/lang/String;
    invoke-static {v4}, Lcom/smartisanos/launcher/theme/ThemeManager;->getThemeById(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v2

    .line 878
    .local v2, "selectedTheme":Lcom/smartisanos/launcher/theme/Theme;
    if-nez v2, :cond_2

    .line 879
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onItemClick can\'t find theme by id ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 880
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, ""

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 882
    :cond_2
    const/4 v5, 0x0

    .line 883
    .local v5, "used":Z
    iget-object v6, v2, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    iget-object v7, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$10;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v7}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$2000(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v7

    iget-object v7, v7, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 884
    const/4 v5, 0x1

    .line 886
    :cond_3
    iget-object v6, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$10;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v6, v2}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$802(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Lcom/smartisanos/launcher/theme/Theme;)Lcom/smartisanos/launcher/theme/Theme;

    .line 887
    iget-object v6, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$10;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v6}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$800(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v6

    iget-object v1, v6, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    .line 888
    .local v1, "pkg":Ljava/lang/String;
    iget-object v6, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$10;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v6}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$800(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v6

    iget-object v6, v6, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    iget-object v7, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$10;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    .line 889
    invoke-static {v7}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$800(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v7

    iget-object v7, v7, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    iget-object v8, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$10;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    .line 888
    invoke-static {v6, v7, v8}, Lcom/smartisanos/launcher/theme/ThemeManager;->getThemeStatus(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)[I

    move-result-object v3

    .line 890
    .local v3, "statusArr":[I
    const/4 v6, 0x0

    aget v6, v3, v6

    const/4 v7, 0x1

    aget v7, v3, v7

    invoke-static {v4, v6, v7}, Lcom/smartisanos/launcher/theme/ThemeManager;->updateThemeStatus(Ljava/lang/String;II)V

    .line 892
    iget-object v6, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$10;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v6, v4}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$2100(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Ljava/lang/String;)V

    .line 893
    iget-object v6, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$10;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    iget-object v7, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$10;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v7}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$800(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$2200(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Lcom/smartisanos/launcher/theme/Theme;Z)V

    .line 894
    iget-object v6, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$10;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v6}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$1800(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)V

    goto/16 :goto_0
.end method
