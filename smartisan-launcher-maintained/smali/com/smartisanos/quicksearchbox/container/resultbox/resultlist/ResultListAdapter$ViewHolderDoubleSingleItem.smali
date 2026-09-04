.class Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter$ViewHolderDoubleSingleItem;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ResultListAdapter.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolderDoubleSingleItem"
.end annotation


.field private mItemDoubleSingle:Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;

.field final synthetic this$0:Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;


.method public constructor <init>(Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;Landroid/view/View;)V
    .locals 0
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter$ViewHolderDoubleSingleItem;->this$0:Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;

    .line 215
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 216
    check-cast p2, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;

    .end local p2    # "itemView":Landroid/view/View;
    iput-object p2, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter$ViewHolderDoubleSingleItem;->mItemDoubleSingle:Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;

    .line 217
    return-void
.end method


.method public getItemDoubleSingle()Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter$ViewHolderDoubleSingleItem;->mItemDoubleSingle:Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;

    return-object v0
.end method
