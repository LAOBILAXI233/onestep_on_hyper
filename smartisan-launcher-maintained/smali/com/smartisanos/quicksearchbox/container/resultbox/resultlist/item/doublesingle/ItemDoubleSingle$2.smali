.class Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle$2;
.super Ljava/lang/Object;
.source "ItemDoubleSingle.java"

.implements Landroid/view/View$OnLongClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;->create(Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;

.field final synthetic val$doubleSingleItemBean:Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;


.method constructor <init>(Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle$2;->this$0:Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;

    iput-object p2, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle$2;->val$doubleSingleItemBean:Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle$2;->val$doubleSingleItemBean:Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;

    invoke-virtual {v0}, Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;->getBaseItemOnClikcListener()Lcom/smartisanos/quicksearchbox/ibase/BaseItemOnClikcListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/smartisanos/quicksearchbox/ibase/BaseItemOnClikcListener;->longClick()Z

    move-result v0

    return v0
.end method
