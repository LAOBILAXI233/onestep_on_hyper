.class Lcom/smartisan/moreapps/ProductsAdapter$4;
.super Ljava/lang/Object;
.source "ProductsAdapter.java"

.implements Landroid/view/View$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisan/moreapps/ProductsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisan/moreapps/ProductsAdapter;

.field final synthetic val$pkgName:Ljava/lang/String;


.method constructor <init>(Lcom/smartisan/moreapps/ProductsAdapter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisan/moreapps/ProductsAdapter;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/smartisan/moreapps/ProductsAdapter$4;->this$0:Lcom/smartisan/moreapps/ProductsAdapter;

    iput-object p2, p0, Lcom/smartisan/moreapps/ProductsAdapter$4;->val$pkgName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/smartisan/moreapps/ProductsAdapter$4;->this$0:Lcom/smartisan/moreapps/ProductsAdapter;

    invoke-static {v0}, Lcom/smartisan/moreapps/ProductsAdapter;->access$200(Lcom/smartisan/moreapps/ProductsAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/smartisan/moreapps/ProductsAdapter$4;->this$0:Lcom/smartisan/moreapps/ProductsAdapter;

    invoke-static {v0}, Lcom/smartisan/moreapps/ProductsAdapter;->access$000(Lcom/smartisan/moreapps/ProductsAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisan/moreapps/ProductsAdapter$4;->val$pkgName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/smartisan/moreapps/SmartisanAppUtils;->launchDetailsForPackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 239
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/smartisan/moreapps/ProductsAdapter$4;->this$0:Lcom/smartisan/moreapps/ProductsAdapter;

    iget-object v1, p0, Lcom/smartisan/moreapps/ProductsAdapter$4;->val$pkgName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/smartisan/moreapps/ProductsAdapter;->access$300(Lcom/smartisan/moreapps/ProductsAdapter;Ljava/lang/String;)V

    goto :goto_0
.end method
