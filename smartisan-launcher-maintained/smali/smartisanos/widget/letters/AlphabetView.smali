.class public Lsmartisanos/widget/letters/AlphabetView;
.super Landroid/widget/TextView;
.source "AlphabetView.java"


.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsmartisanos/widget/letters/AlphabetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lsmartisanos/widget/letters/AlphabetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    invoke-direct {p0}, Lsmartisanos/widget/letters/AlphabetView;->init()V

    .line 24
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 27
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lsmartisanos/widget/letters/AlphabetView;->setGravity(I)V

    .line 28
    const/4 v0, 0x2

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p0, v0, v1}, Lsmartisanos/widget/letters/AlphabetView;->setTextSize(IF)V

    .line 29
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lsmartisanos/widget/letters/AlphabetView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 30
    const-string v0, "#5A000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lsmartisanos/widget/letters/AlphabetView;->setTextColor(I)V

    .line 31
    return-void
.end method
