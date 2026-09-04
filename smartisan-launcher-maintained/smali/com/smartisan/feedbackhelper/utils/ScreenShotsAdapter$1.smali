.class Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter$1;
.super Ljava/lang/Object;
.source "ScreenShotsAdapter.java"

.implements Landroid/view/View$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;


.method constructor <init>(Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter$1;->this$0:Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 58
    .local v0, "index":I
    iget-object v1, p0, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter$1;->this$0:Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;

    invoke-static {v1}, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->access$000(Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 59
    iget-object v1, p0, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter$1;->this$0:Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;

    invoke-virtual {v1}, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->notifyDataSetChanged()V

    .line 60
    return-void
.end method
