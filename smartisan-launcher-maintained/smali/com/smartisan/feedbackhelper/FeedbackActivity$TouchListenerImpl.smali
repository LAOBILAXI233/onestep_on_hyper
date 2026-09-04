.class Lcom/smartisan/feedbackhelper/FeedbackActivity$TouchListenerImpl;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

.implements Landroid/view/View$OnTouchListener;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisan/feedbackhelper/FeedbackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchListenerImpl"
.end annotation


.field final synthetic this$0:Lcom/smartisan/feedbackhelper/FeedbackActivity;


.method private constructor <init>(Lcom/smartisan/feedbackhelper/FeedbackActivity;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity$TouchListenerImpl;->this$0:Lcom/smartisan/feedbackhelper/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartisan/feedbackhelper/FeedbackActivity;Lcom/smartisan/feedbackhelper/FeedbackActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/smartisan/feedbackhelper/FeedbackActivity;
    .param p2, "x1"    # Lcom/smartisan/feedbackhelper/FeedbackActivity$1;

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/smartisan/feedbackhelper/FeedbackActivity$TouchListenerImpl;-><init>(Lcom/smartisan/feedbackhelper/FeedbackActivity;)V

    return-void
.end method


.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 228
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 240
    :cond_0
    :goto_0
    :pswitch_0
    return v2

    .line 231
    :pswitch_1
    iget-object v1, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity$TouchListenerImpl;->this$0:Lcom/smartisan/feedbackhelper/FeedbackActivity;

    invoke-virtual {v1}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 232
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 235
    iget-object v1, p0, Lcom/smartisan/feedbackhelper/FeedbackActivity$TouchListenerImpl;->this$0:Lcom/smartisan/feedbackhelper/FeedbackActivity;

    invoke-virtual {v1, v0}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->hideKeyboard(Landroid/view/View;)Z

    goto :goto_0

    .line 228
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
