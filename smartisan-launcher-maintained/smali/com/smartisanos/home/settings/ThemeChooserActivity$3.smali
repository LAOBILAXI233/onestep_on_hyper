.class Lcom/smartisanos/home/settings/ThemeChooserActivity$3;
.super Ljava/lang/Object;
.source "ThemeChooserActivity.java"

.implements Landroid/widget/AdapterView$OnItemClickListener;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/home/settings/ThemeChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/home/settings/ThemeChooserActivity;


.method constructor <init>(Lcom/smartisanos/home/settings/ThemeChooserActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/home/settings/ThemeChooserActivity;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity$3;->this$0:Lcom/smartisanos/home/settings/ThemeChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v8, 0x1

    .line 277
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/theme/Theme;

    .line 278
    .local v4, "theme":Lcom/smartisanos/launcher/theme/Theme;
    if-nez v4, :cond_0

    .line 279
    invoke-static {}, Lcom/smartisanos/home/settings/ThemeChooserActivity;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v6

    const-string v7, "getItemAtPosition return theme is null"

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 308
    :goto_0
    return-void

    .line 282
    :cond_0
    iget-object v6, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity$3;->this$0:Lcom/smartisanos/home/settings/ThemeChooserActivity;

    invoke-static {v6}, Lcom/smartisanos/home/settings/ThemeChooserActivity;->access$300(Lcom/smartisanos/home/settings/ThemeChooserActivity;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 283
    iget-object v6, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity$3;->this$0:Lcom/smartisanos/home/settings/ThemeChooserActivity;

    invoke-static {v6, v8}, Lcom/smartisanos/home/settings/ThemeChooserActivity;->access$302(Lcom/smartisanos/home/settings/ThemeChooserActivity;Z)Z

    .line 288
    iget-object v5, v4, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    .line 289
    .local v5, "themeId":Ljava/lang/String;
    iget v6, v4, Lcom/smartisanos/launcher/theme/Theme;->status:I

    const/16 v7, 0x66

    if-eq v6, v7, :cond_3

    .line 302
    :cond_1
    :goto_1
    new-instance v1, Landroid/content/Intent;

    iget-object v6, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity$3;->this$0:Lcom/smartisanos/home/settings/ThemeChooserActivity;

    const-class v7, Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 303
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "extra_theme_package"

    iget-object v7, v4, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    const-string v6, "extra_component_id"

    iget-object v7, v4, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    const-string v6, "extra_theme_name"

    iget-object v7, v4, Lcom/smartisanos/launcher/theme/Theme;->mName:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    iget-object v6, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity$3;->this$0:Lcom/smartisanos/home/settings/ThemeChooserActivity;

    invoke-virtual {v6, v1, v8}, Lcom/smartisanos/home/settings/ThemeChooserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 307
    iget-object v6, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity$3;->this$0:Lcom/smartisanos/home/settings/ThemeChooserActivity;

    sget v7, Lcom/smartisanos/launcher/ResIds$anim;->slide_in_from_right:I

    sget v8, Lcom/smartisanos/launcher/ResIds$anim;->slide_out_to_left:I

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/home/settings/ThemeChooserActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 285
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v5    # "themeId":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/smartisanos/home/settings/ThemeChooserActivity;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v6

    const-string v7, "DEBUG"

    const-string v8, "mAlreadyClicked is true"

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 292
    .restart local v5    # "themeId":Ljava/lang/String;
    :cond_3
    invoke-static {v5}, Lcom/smartisanos/home/net/DownloadSupervisor;->getRecordByTaskName(Ljava/lang/String;)Lcom/smartisanos/launcher/data/handler/DLRecord;

    move-result-object v0

    .line 293
    .local v0, "dlRecord":Lcom/smartisanos/launcher/data/handler/DLRecord;
    const-wide/16 v2, -0x1

    .line 294
    .local v2, "downloadId":J
    if-eqz v0, :cond_4

    .line 295
    iget-wide v2, v0, Lcom/smartisanos/launcher/data/handler/DLRecord;->dl_id:J

    .line 297
    :cond_4
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_1

    .line 298
    invoke-static {v2, v3}, Lcom/smartisanos/home/net/DownloadSupervisor;->cleanDownloadRecord(J)V

    goto :goto_1
.end method
