.class Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$1;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "EditBlogView.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;


.method constructor <init>(Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;Landroid/view/inputmethod/InputConnection;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$1;->this$0:Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;

    .line 124
    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    return-void
.end method


.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 7

    .prologue
    const/4 v5, -0x1

    .line 129
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$1;->this$0:Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    .line 130
    new-instance v0, Ljava/lang/String;

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    .line 132
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v4

    .line 133
    if-eq v3, v5, :cond_2

    if-eq v4, v5, :cond_2

    .line 134
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$1;->this$0:Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;

    invoke-virtual {v0, v3}, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->correctPosition(I)I

    move-result v0

    .line 135
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$1;->this$0:Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;

    invoke-virtual {v1, v4}, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->correctPosition(I)I

    move-result v1

    .line 137
    if-le v0, v1, :cond_3

    .line 142
    :goto_0
    if-ne v1, v3, :cond_0

    if-eq v0, v4, :cond_1

    .line 143
    :cond_0
    invoke-static {v2, v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 145
    :cond_1
    if-eq v1, v0, :cond_2

    .line 146
    iget-object v2, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$1;->this$0:Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;

    invoke-virtual {v2}, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 150
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0

    :cond_3
    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 7

    .prologue
    const/4 v5, -0x1

    .line 156
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$1;->this$0:Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    .line 157
    new-instance v0, Ljava/lang/String;

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    .line 159
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v4

    .line 161
    if-eq v3, v5, :cond_2

    if-eq v4, v5, :cond_2

    .line 162
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$1;->this$0:Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;

    invoke-virtual {v0, v3}, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->correctPosition(I)I

    move-result v0

    .line 163
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$1;->this$0:Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;

    invoke-virtual {v1, v4}, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->correctPosition(I)I

    move-result v1

    .line 165
    if-le v0, v1, :cond_3

    .line 170
    :goto_0
    if-ne v1, v3, :cond_0

    if-eq v0, v4, :cond_1

    .line 171
    :cond_0
    invoke-static {v2, v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 173
    :cond_1
    if-eq v1, v0, :cond_2

    .line 174
    iget-object v2, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$1;->this$0:Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;

    invoke-virtual {v2}, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 178
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0

    :cond_3
    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_0
.end method
