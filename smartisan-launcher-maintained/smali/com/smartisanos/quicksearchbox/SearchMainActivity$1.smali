.class Lcom/smartisanos/quicksearchbox/SearchMainActivity$1;
.super Landroid/os/Handler;
.source "SearchMainActivity.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/quicksearchbox/SearchMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/quicksearchbox/SearchMainActivity;


.method constructor <init>(Lcom/smartisanos/quicksearchbox/SearchMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/quicksearchbox/SearchMainActivity;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/SearchMainActivity$1;->this$0:Lcom/smartisanos/quicksearchbox/SearchMainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 67
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 73
    :goto_0
    return-void

    .line 69
    :pswitch_0
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/SearchMainActivity$1;->this$0:Lcom/smartisanos/quicksearchbox/SearchMainActivity;

    invoke-virtual {v0}, Lcom/smartisanos/quicksearchbox/SearchMainActivity;->refreshResultBox()V

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
