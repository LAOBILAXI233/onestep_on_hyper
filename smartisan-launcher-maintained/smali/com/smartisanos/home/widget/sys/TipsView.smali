.class public Lcom/smartisanos/home/widget/sys/TipsView;
.super Landroid/widget/TextView;
.source "TipsView.java"


.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-direct {p0}, Lcom/smartisanos/home/widget/sys/TipsView;->setTextAlignMode()V

    .line 41
    return-void
.end method

.method private caculateTextWidth()F
    .locals 3

    .prologue
    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 45
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {p0}, Lcom/smartisanos/home/widget/sys/TipsView;->getTextSize()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 46
    invoke-virtual {p0}, Lcom/smartisanos/home/widget/sys/TipsView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 47
    .local v1, "text":Ljava/lang/CharSequence;
    if-nez v1, :cond_0

    .line 48
    const/4 v2, 0x0

    .line 49
    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/home/widget/sys/TipsView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    goto :goto_0
.end method

.method private setTextAlignMode()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/widget/sys/TipsView;->setGravity(I)V

    .line 64
    return-void
.end method


.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 69
    invoke-direct {p0}, Lcom/smartisanos/home/widget/sys/TipsView;->setTextAlignMode()V

    .line 70
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resid"    # I

    .prologue
    .line 74
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 75
    invoke-direct {p0}, Lcom/smartisanos/home/widget/sys/TipsView;->setTextAlignMode()V

    .line 76
    return-void
.end method

.method public setTextSize(IF)V
    .locals 0
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .prologue
    .line 80
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 81
    invoke-direct {p0}, Lcom/smartisanos/home/widget/sys/TipsView;->setTextAlignMode()V

    .line 82
    return-void
.end method
