.class Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter$ViewHolderTitle;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ResultListAdapter.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolderTitle"
.end annotation


.field private mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;


.method public constructor <init>(Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;Landroid/view/View;)V
    .locals 0
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter$ViewHolderTitle;->this$0:Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;

    .line 199
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 200
    check-cast p2, Landroid/widget/TextView;

    .end local p2    # "itemView":Landroid/view/View;
    iput-object p2, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter$ViewHolderTitle;->mTitle:Landroid/widget/TextView;

    .line 201
    return-void
.end method


.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter$ViewHolderTitle;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method
