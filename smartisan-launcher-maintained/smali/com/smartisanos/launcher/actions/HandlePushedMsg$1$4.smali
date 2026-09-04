.class Lcom/smartisanos/launcher/actions/HandlePushedMsg$1$4;
.super Ljava/lang/Object;
.source "HandlePushedMsg.java"

.implements Landroid/content/DialogInterface$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/actions/HandlePushedMsg$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/actions/HandlePushedMsg$1;


.method constructor <init>(Lcom/smartisanos/launcher/actions/HandlePushedMsg$1;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/actions/HandlePushedMsg$1;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/smartisanos/launcher/actions/HandlePushedMsg$1$4;->this$0:Lcom/smartisanos/launcher/actions/HandlePushedMsg$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 62
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v3

    .line 63
    .local v3, "launcher":Lcom/smartisanos/home/Launcher;
    if-eqz v3, :cond_0

    .line 64
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 65
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "com.smartisanos.updater"

    const-string v5, "com.smartisanos.updater.UpdatesCheck"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const/4 v4, 0x2

    new-array v0, v4, [I

    sget v4, Lcom/smartisanos/launcher/ResIds$anim;->wallpaper_close_enter:I

    aput v4, v0, v6

    sget v4, Lcom/smartisanos/launcher/ResIds$anim;->wallpaper_close_exit:I

    aput v4, v0, v7

    .line 71
    .local v0, "anims":[I
    aget v4, v0, v6

    aget v5, v0, v7

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/home/Launcher;->createActivityOptions(II)Landroid/os/Bundle;

    move-result-object v1

    .line 72
    .local v1, "bd":Landroid/os/Bundle;
    invoke-virtual {v3, v2, v1}, Lcom/smartisanos/home/Launcher;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 74
    .end local v0    # "anims":[I
    .end local v1    # "bd":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
