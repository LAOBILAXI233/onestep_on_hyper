.class Lcom/smartisanos/home/Launcher$15;
.super Ljava/lang/Object;
.source "Launcher.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/Launcher;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/home/Launcher;

.field final synthetic val$resultCode:I


.method constructor <init>(Lcom/smartisanos/home/Launcher;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/home/Launcher;

    .prologue
    .line 1359
    iput-object p1, p0, Lcom/smartisanos/home/Launcher$15;->this$0:Lcom/smartisanos/home/Launcher;

    iput p2, p0, Lcom/smartisanos/home/Launcher$15;->val$resultCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 6

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x0

    .line 1362
    const/4 v0, 0x2

    .line 1363
    .local v0, "RESULT_ERR":I
    const/4 v2, -0x1

    iget v3, p0, Lcom/smartisanos/home/Launcher$15;->val$resultCode:I

    if-ne v2, v3, :cond_0

    .line 1365
    :try_start_0
    iget-object v2, p0, Lcom/smartisanos/home/Launcher$15;->this$0:Lcom/smartisanos/home/Launcher;

    invoke-virtual {v2}, Lcom/smartisanos/home/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/smartisanos/launcher/ResIds$integer;->config_shortAnimTime:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1369
    :goto_0
    new-instance v2, Lcom/smartisanos/home/Launcher$15$1;

    invoke-direct {v2, p0, v5}, Lcom/smartisanos/home/Launcher$15$1;-><init>(Lcom/smartisanos/home/Launcher$15;I)V

    .line 1378
    invoke-virtual {v2, v4}, Lcom/smartisanos/home/Launcher$15$1;->send(F)V

    .line 1394
    :goto_1
    return-void

    .line 1366
    :catch_0
    move-exception v1

    .line 1367
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1387
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_0
    new-instance v2, Lcom/smartisanos/home/Launcher$15$2;

    invoke-direct {v2, p0, v5}, Lcom/smartisanos/home/Launcher$15$2;-><init>(Lcom/smartisanos/home/Launcher$15;I)V

    .line 1392
    invoke-virtual {v2, v4}, Lcom/smartisanos/home/Launcher$15$2;->send(F)V

    goto :goto_1
.end method
