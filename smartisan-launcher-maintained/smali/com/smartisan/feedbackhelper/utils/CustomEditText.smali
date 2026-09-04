.class public Lcom/smartisan/feedbackhelper/utils/CustomEditText;
.super Landroid/widget/EditText;
.source "CustomEditText.java"


.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/smartisan/feedbackhelper/utils/CustomEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Lcom/smartisan/feedbackhelper/utils/CustomEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method private setTextCursor()V
    .locals 7

    .prologue
    .line 31
    :try_start_0
    const-string v3, "android.widget.TextView"

    const-string v4, "createEditorIfNeeded"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/smartisan/feedbackhelper/utils/Util;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 33
    .local v0, "createEditorIfNeeded":Ljava/lang/reflect/Method;
    if-nez v0, :cond_1

    .line 56
    .end local v0    # "createEditorIfNeeded":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 36
    .restart local v0    # "createEditorIfNeeded":Ljava/lang/reflect/Method;
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 37
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v3, "android.widget.TextView"

    const-string v4, "mEditor"

    invoke-static {v3, v4}, Lcom/smartisan/feedbackhelper/utils/Util;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 39
    .local v2, "editor":Ljava/lang/reflect/Field;
    if-eqz v2, :cond_0

    .line 42
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 43
    const-string v3, "android.widget.Editor"

    const-string v4, "mCursorDrawable"

    invoke-static {v3, v4}, Lcom/smartisan/feedbackhelper/utils/Util;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 45
    .local v1, "cursorDrawable":Ljava/lang/reflect/Field;
    if-eqz v1, :cond_0

    .line 48
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 49
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/smartisan/feedbackhelper/utils/LineSpaceCursorDrawable;

    .line 50
    invoke-virtual {p0}, Lcom/smartisan/feedbackhelper/utils/CustomEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/smartisan/feedbackhelper/utils/LineSpaceCursorDrawable;-><init>(Landroid/content/res/Resources;)V

    .line 49
    invoke-static {v3, v4, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 51
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    new-instance v5, Lcom/smartisan/feedbackhelper/utils/LineSpaceCursorDrawable;

    .line 52
    invoke-virtual {p0}, Lcom/smartisan/feedbackhelper/utils/CustomEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/smartisan/feedbackhelper/utils/LineSpaceCursorDrawable;-><init>(Landroid/content/res/Resources;)V

    .line 51
    invoke-static {v3, v4, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    .end local v0    # "createEditorIfNeeded":Ljava/lang/reflect/Method;
    .end local v1    # "cursorDrawable":Ljava/lang/reflect/Field;
    .end local v2    # "editor":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v3

    goto :goto_0
.end method


.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/widget/EditText;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 61
    const-class v0, Lcom/smartisan/feedbackhelper/utils/CustomEditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 62
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/widget/EditText;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 67
    const-class v0, Lcom/smartisan/feedbackhelper/utils/CustomEditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 68
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 72
    packed-switch p1, :pswitch_data_0

    .line 83
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v1

    :goto_0
    return v1

    .line 74
    :pswitch_0
    if-eqz p2, :cond_1

    const-string v1, "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 76
    .local v0, "text":Ljava/lang/CharSequence;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/smartisan/feedbackhelper/utils/CustomEditText;->setText(Ljava/lang/CharSequence;)V

    .line 77
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 78
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/smartisan/feedbackhelper/utils/CustomEditText;->setSelection(I)V

    .line 80
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 74
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 72
    :pswitch_data_0
    .packed-switch 0x200000
        :pswitch_0
    .end packed-switch
.end method
