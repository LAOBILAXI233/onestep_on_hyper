.class Lcom/smartisanos/home/settings/view/SettingMainActivity$7;
.super Ljava/lang/Object;
.source "SettingMainActivity.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/settings/view/SettingMainActivity;->processWallpaperFromUri(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/home/settings/view/SettingMainActivity;

.field final synthetic val$uri:Landroid/net/Uri;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;


.method constructor <init>(Lcom/smartisanos/home/settings/view/SettingMainActivity;Landroid/net/Uri;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/home/settings/view/SettingMainActivity;
    .param p2, "val$uri"    # Landroid/net/Uri;
    .param p3, "val$dialog"    # Landroid/app/ProgressDialog;

    .prologue
    iput-object p1, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity$7;->this$0:Lcom/smartisanos/home/settings/view/SettingMainActivity;

    iput-object p2, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity$7;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity$7;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity$7;->this$0:Lcom/smartisanos/home/settings/view/SettingMainActivity;

    invoke-virtual {v5}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity$7;->val$uri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity$7;->onFail()V

    return-void

    :cond_0
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity$7;->onFail()V

    return-void

    :cond_1
    invoke-static {v7, v1}, Lcom/smartisanos/launcher/data/Utils;->getLockscreenWallpaper(Lcom/smartisanos/launcher/theme/Theme;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity$7;->onFail()V

    return-void

    :cond_2
    invoke-static {v2}, Lcom/smartisanos/launcher/data/Utils;->Bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    if-nez v3, :cond_3

    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity$7;->onFail()V

    return-void

    :cond_3
    iget-object v5, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity$7;->this$0:Lcom/smartisanos/home/settings/view/SettingMainActivity;

    const-string v6, "gaussian_wallpaper.png"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    iget-object v5, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity$7;->this$0:Lcom/smartisanos/home/settings/view/SettingMainActivity;

    invoke-static {v5}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->access$500(Lcom/smartisanos/home/settings/view/SettingMainActivity;)V

    iget-object v5, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity$7;->this$0:Lcom/smartisanos/home/settings/view/SettingMainActivity;

    new-instance v6, Lcom/smartisanos/home/settings/view/SettingMainActivity$7$1;

    invoke-direct {v6, p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity$7$1;-><init>(Lcom/smartisanos/home/settings/view/SettingMainActivity$7;)V

    invoke-virtual {v5, v6}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity$7;->onFail()V

    goto :goto_0
.end method

.method private onFail()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity$7;->this$0:Lcom/smartisanos/home/settings/view/SettingMainActivity;

    new-instance v1, Lcom/smartisanos/home/settings/view/SettingMainActivity$7$2;

    invoke-direct {v1, p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity$7$2;-><init>(Lcom/smartisanos/home/settings/view/SettingMainActivity$7;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
