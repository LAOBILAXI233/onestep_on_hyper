.class Lsmartisanos/widget/PasswordEditText$1;
.super Ljava/lang/Object;
.source "PasswordEditText.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisanos/widget/PasswordEditText;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lsmartisanos/widget/PasswordEditText;


.method constructor <init>(Lsmartisanos/widget/PasswordEditText;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lsmartisanos/widget/PasswordEditText$1;->this$0:Lsmartisanos/widget/PasswordEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 177
    iget-object v2, p0, Lsmartisanos/widget/PasswordEditText$1;->this$0:Lsmartisanos/widget/PasswordEditText;

    invoke-virtual {v2}, Lsmartisanos/widget/PasswordEditText;->getInputType()I

    move-result v2

    and-int/lit16 v0, v2, -0x1000

    .line 178
    .local v0, "inputTypeWithoutVariation":I
    iget-object v2, p0, Lsmartisanos/widget/PasswordEditText$1;->this$0:Lsmartisanos/widget/PasswordEditText;

    invoke-virtual {v2}, Lsmartisanos/widget/PasswordEditText;->getSelectionEnd()I

    move-result v1

    .line 179
    .local v1, "lastSelection":I
    iget-object v2, p0, Lsmartisanos/widget/PasswordEditText$1;->this$0:Lsmartisanos/widget/PasswordEditText;

    invoke-static {v2}, Lsmartisanos/widget/PasswordEditText;->access$000(Lsmartisanos/widget/PasswordEditText;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    iget-object v2, p0, Lsmartisanos/widget/PasswordEditText$1;->this$0:Lsmartisanos/widget/PasswordEditText;

    iget-object v3, p0, Lsmartisanos/widget/PasswordEditText$1;->this$0:Lsmartisanos/widget/PasswordEditText;

    invoke-static {v3}, Lsmartisanos/widget/PasswordEditText;->access$100(Lsmartisanos/widget/PasswordEditText;)I

    move-result v3

    or-int/2addr v3, v0

    invoke-static {v2, v3, v4}, Lsmartisanos/widget/PasswordEditText;->access$200(Lsmartisanos/widget/PasswordEditText;IZ)V

    .line 184
    :goto_0
    iget-object v2, p0, Lsmartisanos/widget/PasswordEditText$1;->this$0:Lsmartisanos/widget/PasswordEditText;

    invoke-virtual {v2, v1}, Lsmartisanos/widget/PasswordEditText;->setSelection(I)V

    .line 185
    return-void

    .line 182
    :cond_0
    iget-object v2, p0, Lsmartisanos/widget/PasswordEditText$1;->this$0:Lsmartisanos/widget/PasswordEditText;

    iget-object v3, p0, Lsmartisanos/widget/PasswordEditText$1;->this$0:Lsmartisanos/widget/PasswordEditText;

    invoke-static {v3}, Lsmartisanos/widget/PasswordEditText;->access$300(Lsmartisanos/widget/PasswordEditText;)I

    move-result v3

    or-int/2addr v3, v0

    invoke-static {v2, v3, v4}, Lsmartisanos/widget/PasswordEditText;->access$200(Lsmartisanos/widget/PasswordEditText;IZ)V

    goto :goto_0
.end method
