.class final Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp$8;
.super Ljava/lang/Object;
.source "DownloadEmbeddedApp.java"

.implements Landroid/content/DialogInterface$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp;->showConfirmDialog(Lcom/smartisanos/home/apps/EmbeddedApp;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.field final synthetic val$downloadApp:Lcom/smartisanos/home/apps/EmbeddedApp;


.method constructor <init>(Lcom/smartisanos/home/apps/EmbeddedApp;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp$8;->val$downloadApp:Lcom/smartisanos/home/apps/EmbeddedApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v0, "params":Ljava/util/List;
    iget-object v2, p0, Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp$8;->val$downloadApp:Lcom/smartisanos/home/apps/EmbeddedApp;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v1, Lcom/smartisanos/home/net/NetworkHandler$Task;

    invoke-direct {v1}, Lcom/smartisanos/home/net/NetworkHandler$Task;-><init>()V

    .line 240
    .local v1, "task":Lcom/smartisanos/home/net/NetworkHandler$Task;
    sget-object v2, Lcom/smartisanos/home/net/NetworkHandler$Action;->GET_APP_DL_INFO:Lcom/smartisanos/home/net/NetworkHandler$Action;

    iput-object v2, v1, Lcom/smartisanos/home/net/NetworkHandler$Task;->act:Lcom/smartisanos/home/net/NetworkHandler$Action;

    .line 241
    iput-object v0, v1, Lcom/smartisanos/home/net/NetworkHandler$Task;->params:Ljava/util/List;

    .line 242
    invoke-static {v1}, Lcom/smartisanos/home/net/NetworkHandler;->postTask(Lcom/smartisanos/home/net/NetworkHandler$Task;)V

    .line 243
    const/4 v2, 0x0

    sput-object v2, Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp;->mConfirmDialog:Landroid/app/AlertDialog;

    .line 244
    return-void
.end method
