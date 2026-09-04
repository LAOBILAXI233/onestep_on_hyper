.class Lcom/smartisan/moreapps/ProductsAdapter$1;
.super Ljava/lang/Object;
.source "ProductsAdapter.java"

.implements Landroid/content/DialogInterface$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisan/moreapps/ProductsAdapter;->showDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisan/moreapps/ProductsAdapter;

.field final synthetic val$location:Ljava/lang/String;

.field final synthetic val$packageName:Ljava/lang/String;


.method constructor <init>(Lcom/smartisan/moreapps/ProductsAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisan/moreapps/ProductsAdapter;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/smartisan/moreapps/ProductsAdapter$1;->this$0:Lcom/smartisan/moreapps/ProductsAdapter;

    iput-object p2, p0, Lcom/smartisan/moreapps/ProductsAdapter$1;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/smartisan/moreapps/ProductsAdapter$1;->val$location:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 159
    new-instance v0, Lcom/smartisan/moreapps/download/AppDownloader;

    iget-object v1, p0, Lcom/smartisan/moreapps/ProductsAdapter$1;->this$0:Lcom/smartisan/moreapps/ProductsAdapter;

    invoke-static {v1}, Lcom/smartisan/moreapps/ProductsAdapter;->access$000(Lcom/smartisan/moreapps/ProductsAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/smartisan/moreapps/download/AppDownloader;-><init>(Landroid/content/Context;)V

    .line 160
    .local v0, "downloader":Lcom/smartisan/moreapps/download/AppDownloader;
    iget-object v1, p0, Lcom/smartisan/moreapps/ProductsAdapter$1;->val$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/smartisan/moreapps/ProductsAdapter$1;->val$location:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/smartisan/moreapps/download/AppDownloader;->DownloadApk(Ljava/lang/String;Ljava/lang/String;)Z

    .line 161
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 162
    return-void
.end method
