.class final Lsmartisanos/widget/PasswordEditText$EyeAnimator;
.super Landroid/os/Handler;
.source "PasswordEditText.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisanos/widget/PasswordEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EyeAnimator"
.end annotation


.field private static final MESSAGE_START:I = 0x0

.field private static final MESSAGE_TICK:I = 0x1


.field private final mAnimationDrawables:Landroid/graphics/drawable/AnimationDrawable;

.field private mCurrent:I

.field private mDirection:I

.field private final mNumberOfFrames:I

.field final synthetic this$0:Lsmartisanos/widget/PasswordEditText;


.method public constructor <init>(Lsmartisanos/widget/PasswordEditText;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 206
    iput-object p1, p0, Lsmartisanos/widget/PasswordEditText$EyeAnimator;->this$0:Lsmartisanos/widget/PasswordEditText;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 207
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisanos/widget/R$drawable;->pwd_eye_open_close_anim:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lsmartisanos/widget/PasswordEditText$EyeAnimator;->mAnimationDrawables:Landroid/graphics/drawable/AnimationDrawable;

    .line 210
    iget-object v0, p0, Lsmartisanos/widget/PasswordEditText$EyeAnimator;->mAnimationDrawables:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    iput v0, p0, Lsmartisanos/widget/PasswordEditText$EyeAnimator;->mNumberOfFrames:I

    .line 211
    invoke-virtual {p0}, Lsmartisanos/widget/PasswordEditText$EyeAnimator;->resetCurrent()V

    .line 212
    return-void
.end method


.method getAnimationDuration()I
    .locals 3

    .prologue
    .line 239
    iget-object v1, p0, Lsmartisanos/widget/PasswordEditText$EyeAnimator;->mAnimationDrawables:Landroid/graphics/drawable/AnimationDrawable;

    iget v2, p0, Lsmartisanos/widget/PasswordEditText$EyeAnimator;->mCurrent:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v0

    .line 240
    .local v0, "average_duration":I
    iget v1, p0, Lsmartisanos/widget/PasswordEditText$EyeAnimator;->mDirection:I

    if-lez v1, :cond_0

    .line 241
    iget v1, p0, Lsmartisanos/widget/PasswordEditText$EyeAnimator;->mNumberOfFrames:I

    iget v2, p0, Lsmartisanos/widget/PasswordEditText$EyeAnimator;->mCurrent:I

    sub-int/2addr v1, v2

    mul-int/2addr v1, v0

    .line 245
    :goto_0
    return v1

    .line 242
    :cond_0
    iget v1, p0, Lsmartisanos/widget/PasswordEditText$EyeAnimator;->mDirection:I

    if-gez v1, :cond_1

    .line 243
    iget v1, p0, Lsmartisanos/widget/PasswordEditText$EyeAnimator;->mCurrent:I

    mul-int/2addr v1, v0

    goto :goto_0

    .line 245
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lsmartisanos/widget/PasswordEditText$EyeAnimator;->mAnimationDrawables:Landroid/graphics/drawable/AnimationDrawable;

    iget v1, p0, Lsmartisanos/widget/PasswordEditText$EyeAnimator;->mCurrent:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 216
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 224
    :goto_0
    return-void

    .line 218
    :pswitch_0
    invoke-virtual {p0}, Lsmartisanos/widget/PasswordEditText$EyeAnimator;->tick()V

    goto :goto_0

    .line 221
    :pswitch_1
    invoke-virtual {p0}, Lsmartisanos/widget/PasswordEditText$EyeAnimator;->tick()V

    goto :goto_0

    .line 216
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method resetCurrent()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lsmartisanos/widget/PasswordEditText$EyeAnimator;->this$0:Lsmartisanos/widget/PasswordEditText;

    invoke-static {v0}, Lsmartisanos/widget/PasswordEditText;->access$000(Lsmartisanos/widget/PasswordEditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lsmartisanos/widget/PasswordEditText$EyeAnimator;->mCurrent:I

    .line 232
    return-void

    .line 231
    :cond_0
    iget v0, p0, Lsmartisanos/widget/PasswordEditText$EyeAnimator;->mNumberOfFrames:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method setDirection()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lsmartisanos/widget/PasswordEditText$EyeAnimator;->this$0:Lsmartisanos/widget/PasswordEditText;

    invoke-static {v0}, Lsmartisanos/widget/PasswordEditText;->access$000(Lsmartisanos/widget/PasswordEditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lsmartisanos/widget/PasswordEditText$EyeAnimator;->mDirection:I

    .line 236
    return-void

    .line 235
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method start()V
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsmartisanos/widget/PasswordEditText$EyeAnimator;->sendEmptyMessage(I)Z

    .line 268
    return-void
.end method

.method stop()V
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsmartisanos/widget/PasswordEditText$EyeAnimator;->removeMessages(I)V

    .line 263
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lsmartisanos/widget/PasswordEditText$EyeAnimator;->removeMessages(I)V

    .line 264
    return-void
.end method

.method tick()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 250
    invoke-virtual {p0, v4}, Lsmartisanos/widget/PasswordEditText$EyeAnimator;->removeMessages(I)V

    .line 252
    iget v2, p0, Lsmartisanos/widget/PasswordEditText$EyeAnimator;->mCurrent:I

    iget v3, p0, Lsmartisanos/widget/PasswordEditText$EyeAnimator;->mDirection:I

    add-int v1, v2, v3

    .line 253
    .local v1, "next":I
    if-ltz v1, :cond_0

    iget v2, p0, Lsmartisanos/widget/PasswordEditText$EyeAnimator;->mNumberOfFrames:I

    if-ge v1, v2, :cond_0

    .line 254
    iget-object v2, p0, Lsmartisanos/widget/PasswordEditText$EyeAnimator;->mAnimationDrawables:Landroid/graphics/drawable/AnimationDrawable;

    iget v3, p0, Lsmartisanos/widget/PasswordEditText$EyeAnimator;->mCurrent:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v0

    .line 255
    .local v0, "duration":I
    iput v1, p0, Lsmartisanos/widget/PasswordEditText$EyeAnimator;->mCurrent:I

    .line 256
    int-to-long v2, v0

    invoke-virtual {p0, v4, v2, v3}, Lsmartisanos/widget/PasswordEditText$EyeAnimator;->sendEmptyMessageDelayed(IJ)Z

    .line 258
    .end local v0    # "duration":I
    :cond_0
    iget-object v2, p0, Lsmartisanos/widget/PasswordEditText$EyeAnimator;->this$0:Lsmartisanos/widget/PasswordEditText;

    invoke-virtual {v2}, Lsmartisanos/widget/PasswordEditText;->invalidate()V

    .line 259
    return-void
.end method
