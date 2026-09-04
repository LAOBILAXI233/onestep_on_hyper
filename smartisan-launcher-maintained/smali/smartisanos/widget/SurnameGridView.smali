.class public Lsmartisanos/widget/SurnameGridView;
.super Landroid/widget/GridView;
.source "SurnameGridView.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisanos/widget/SurnameGridView$OnPressChangeListener;
    }
.end annotation


.field private mPrePosition:I

.field private mPressChangeListener:Lsmartisanos/widget/SurnameGridView$OnPressChangeListener;

.field private mTouchedPosition:I


.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, -0x1

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    iput v0, p0, Lsmartisanos/widget/SurnameGridView;->mTouchedPosition:I

    .line 15
    iput v0, p0, Lsmartisanos/widget/SurnameGridView;->mPrePosition:I

    .line 19
    return-void
.end method


.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    .line 25
    .local v3, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 26
    .local v4, "y":I
    const/4 v2, -0x1

    .line 27
    .local v2, "result":I
    invoke-virtual {p0, v3, v4}, Lsmartisanos/widget/SurnameGridView;->pointToPosition(II)I

    move-result v1

    .line 28
    .local v1, "position":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 29
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 46
    :goto_0
    iget v5, p0, Lsmartisanos/widget/SurnameGridView;->mPrePosition:I

    if-eq v5, v2, :cond_0

    .line 47
    iget-object v5, p0, Lsmartisanos/widget/SurnameGridView;->mPressChangeListener:Lsmartisanos/widget/SurnameGridView$OnPressChangeListener;

    invoke-interface {v5, v2}, Lsmartisanos/widget/SurnameGridView$OnPressChangeListener;->onTouched(I)V

    .line 48
    iput v2, p0, Lsmartisanos/widget/SurnameGridView;->mPrePosition:I

    .line 50
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    return v5

    .line 31
    :pswitch_0
    iput v1, p0, Lsmartisanos/widget/SurnameGridView;->mTouchedPosition:I

    .line 32
    move v2, v1

    .line 33
    goto :goto_0

    .line 36
    :pswitch_1
    iget v5, p0, Lsmartisanos/widget/SurnameGridView;->mTouchedPosition:I

    if-ne v5, v1, :cond_1

    iget v2, p0, Lsmartisanos/widget/SurnameGridView;->mTouchedPosition:I

    .line 37
    :goto_1
    goto :goto_0

    .line 36
    :cond_1
    const/4 v2, -0x1

    goto :goto_1

    .line 41
    :pswitch_2
    const/4 v2, -0x1

    goto :goto_0

    .line 29
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setOnPressChangeListener(Lsmartisanos/widget/SurnameGridView$OnPressChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lsmartisanos/widget/SurnameGridView$OnPressChangeListener;

    .prologue
    .line 58
    iput-object p1, p0, Lsmartisanos/widget/SurnameGridView;->mPressChangeListener:Lsmartisanos/widget/SurnameGridView$OnPressChangeListener;

    .line 59
    return-void
.end method
