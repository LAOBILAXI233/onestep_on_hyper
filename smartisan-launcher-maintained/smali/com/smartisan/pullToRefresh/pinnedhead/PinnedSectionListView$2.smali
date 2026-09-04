.class Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$2;
.super Landroid/database/DataSetObserver;
.source "PinnedSectionListView.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;


.method constructor <init>(Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$2;->this$0:Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


.method public onChanged()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$2;->this$0:Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;

    invoke-virtual {v0}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->recreatePinnedShadow()V

    .line 160
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$2;->this$0:Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;

    invoke-virtual {v0}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->recreatePinnedShadow()V

    .line 167
    return-void
.end method
