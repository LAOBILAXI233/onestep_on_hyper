.class public Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9KeyBoard;
.super Landroid/widget/LinearLayout;
.source "T9KeyBoard.java"

.implements Landroid/view/View$OnClickListener;


.field public static final CLOSE_PANEL_CODE:I = -0x1


.field private mSearchMainActivity:Lcom/smartisanos/quicksearchbox/SearchMainActivity;


.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 23
    check-cast p1, Lcom/smartisanos/quicksearchbox/SearchMainActivity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9KeyBoard;->mSearchMainActivity:Lcom/smartisanos/quicksearchbox/SearchMainActivity;

    .line 24
    invoke-direct {p0}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9KeyBoard;->init()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    check-cast p1, Lcom/smartisanos/quicksearchbox/SearchMainActivity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9KeyBoard;->mSearchMainActivity:Lcom/smartisanos/quicksearchbox/SearchMainActivity;

    .line 30
    invoke-direct {p0}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9KeyBoard;->init()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    check-cast p1, Lcom/smartisanos/quicksearchbox/SearchMainActivity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9KeyBoard;->mSearchMainActivity:Lcom/smartisanos/quicksearchbox/SearchMainActivity;

    .line 36
    invoke-direct {p0}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9KeyBoard;->init()V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9KeyBoard;)Lcom/smartisanos/quicksearchbox/SearchMainActivity;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9KeyBoard;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9KeyBoard;->mSearchMainActivity:Lcom/smartisanos/quicksearchbox/SearchMainActivity;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 40
    invoke-virtual {p0, v2}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9KeyBoard;->setOrientation(I)V

    .line 41
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9KeyBoard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04005d

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 42
    invoke-direct {p0}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9KeyBoard;->initDialButton()V

    .line 43
    return-void
.end method

.method private initDialButton()V
    .locals 2

    .prologue
    .line 48
    const v1, 0x7f0f011f

    invoke-virtual {p0, v1}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9KeyBoard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;

    .line 49
    .local v0, "dialButtonView":Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;
    const v1, 0x7f02006b

    invoke-virtual {v0, v1}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;->setBackgroundResource(I)V

    .line 50
    invoke-virtual {v0, p0}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    const v1, 0x7f0f0123

    invoke-virtual {p0, v1}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9KeyBoard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "dialButtonView":Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;
    check-cast v0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;

    .line 53
    .restart local v0    # "dialButtonView":Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;
    const v1, 0x7f02006e

    invoke-virtual {v0, v1}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;->setBackgroundResource(I)V

    .line 54
    invoke-virtual {v0, p0}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const v1, 0x7f0f0127

    invoke-virtual {p0, v1}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9KeyBoard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "dialButtonView":Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;
    check-cast v0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;

    .line 57
    .restart local v0    # "dialButtonView":Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;
    const v1, 0x7f020071

    invoke-virtual {v0, v1}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;->setBackgroundResource(I)V

    .line 58
    invoke-virtual {v0, p0}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const v1, 0x7f0f012b

    invoke-virtual {p0, v1}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9KeyBoard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "dialButtonView":Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;
    check-cast v0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;

    .line 61
    .restart local v0    # "dialButtonView":Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;
    const v1, 0x7f02007c

    invoke-virtual {v0, v1}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;->setBackgroundResource(I)V

    .line 62
    invoke-virtual {v0, p0}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v1, 0x7f0f0120

    invoke-virtual {p0, v1}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9KeyBoard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "dialButtonView":Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;
    check-cast v0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;

    .line 66
    .restart local v0    # "dialButtonView":Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;
    const v1, 0x7f02006c

    invoke-virtual {v0, v1}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;->setBackgroundResource(I)V

    .line 67
    invoke-virtual {v0, p0}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v1, 0x7f0f0124

    invoke-virtual {p0, v1}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9KeyBoard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "dialButtonView":Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;
    check-cast v0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;

    .line 70
    .restart local v0    # "dialButtonView":Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;
    const v1, 0x7f02006f

    invoke-virtual {v0, v1}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;->setBackgroundResource(I)V

    .line 71
    invoke-virtual {v0, p0}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v1, 0x7f0f0128

    invoke-virtual {p0, v1}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9KeyBoard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "dialButtonView":Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;
    check-cast v0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;

    .line 74
    .restart local v0    # "dialButtonView":Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;
    const v1, 0x7f020072

    invoke-virtual {v0, v1}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;->setBackgroundResource(I)V

    .line 75
    invoke-virtual {v0, p0}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v1, 0x7f0f012c

    invoke-virtual {p0, v1}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9KeyBoard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "dialButtonView":Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;
    check-cast v0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;

    .line 78
    .restart local v0    # "dialButtonView":Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;
    const v1, 0x7f02006a

    invoke-virtual {v0, v1}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;->setBackgroundResource(I)V

    .line 79
    invoke-virtual {v0, p0}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v1, 0x7f0f0121

    invoke-virtual {p0, v1}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9KeyBoard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "dialButtonView":Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;
    check-cast v0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;

    .line 83
    .restart local v0    # "dialButtonView":Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;
    const v1, 0x7f02006d

    invoke-virtual {v0, v1}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;->setBackgroundResource(I)V

    .line 84
    invoke-virtual {v0, p0}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const v1, 0x7f0f0125

    invoke-virtual {p0, v1}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9KeyBoard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "dialButtonView":Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;
    check-cast v0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;

    .line 87
    .restart local v0    # "dialButtonView":Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;
    const v1, 0x7f020070

    invoke-virtual {v0, v1}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;->setBackgroundResource(I)V

    .line 88
    invoke-virtual {v0, p0}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const v1, 0x7f0f0129

    invoke-virtual {p0, v1}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9KeyBoard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "dialButtonView":Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;
    check-cast v0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;

    .line 91
    .restart local v0    # "dialButtonView":Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;
    const v1, 0x7f020073

    invoke-virtual {v0, v1}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;->setBackgroundResource(I)V

    .line 92
    invoke-virtual {v0, p0}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const v1, 0x7f0f012d

    invoke-virtual {p0, v1}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9KeyBoard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "dialButtonView":Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;
    check-cast v0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;

    .line 95
    .restart local v0    # "dialButtonView":Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;
    const v1, 0x7f02007b

    invoke-virtual {v0, v1}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;->setBackgroundResource(I)V

    .line 96
    invoke-virtual {v0, p0}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;->setHapticFeedbackEnabled(Z)V

    .line 98
    new-instance v1, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9KeyBoard$1;

    invoke-direct {v1, p0}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9KeyBoard$1;-><init>(Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9KeyBoard;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/DialButtonView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 105
    return-void
.end method


.method public keyPressed(I)V
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 150
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9KeyBoard;->mSearchMainActivity:Lcom/smartisanos/quicksearchbox/SearchMainActivity;

    invoke-virtual {v0}, Lcom/smartisanos/quicksearchbox/SearchMainActivity;->hideT9KeyBoard()V

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9KeyBoard;->mSearchMainActivity:Lcom/smartisanos/quicksearchbox/SearchMainActivity;

    invoke-virtual {v0, p1}, Lcom/smartisanos/quicksearchbox/SearchMainActivity;->inputFromT9KeyBoard(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 147
    :goto_0
    :pswitch_0
    return-void

    .line 111
    :pswitch_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9KeyBoard;->keyPressed(I)V

    goto :goto_0

    .line 114
    :pswitch_2
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9KeyBoard;->keyPressed(I)V

    goto :goto_0

    .line 117
    :pswitch_3
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9KeyBoard;->keyPressed(I)V

    goto :goto_0

    .line 120
    :pswitch_4
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9KeyBoard;->keyPressed(I)V

    goto :goto_0

    .line 123
    :pswitch_5
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9KeyBoard;->keyPressed(I)V

    goto :goto_0

    .line 126
    :pswitch_6
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9KeyBoard;->keyPressed(I)V

    goto :goto_0

    .line 129
    :pswitch_7
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9KeyBoard;->keyPressed(I)V

    goto :goto_0

    .line 132
    :pswitch_8
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9KeyBoard;->keyPressed(I)V

    goto :goto_0

    .line 135
    :pswitch_9
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9KeyBoard;->keyPressed(I)V

    goto :goto_0

    .line 138
    :pswitch_a
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9KeyBoard;->keyPressed(I)V

    goto :goto_0

    .line 141
    :pswitch_b
    const/16 v0, 0x43

    invoke-virtual {p0, v0}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9KeyBoard;->keyPressed(I)V

    goto :goto_0

    .line 144
    :pswitch_c
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9KeyBoard;->keyPressed(I)V

    goto :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0x7f0f011f
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_c
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
