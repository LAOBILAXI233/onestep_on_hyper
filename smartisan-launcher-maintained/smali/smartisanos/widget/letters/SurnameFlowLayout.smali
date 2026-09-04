.class public Lsmartisanos/widget/letters/SurnameFlowLayout;
.super Landroid/view/ViewGroup;
.source "SurnameFlowLayout.java"


.field private static final TAG:Ljava/lang/String; = "FlowLayout"


.field private mAllViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLineHeight:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsmartisanos/widget/letters/SurnameFlowLayout;->mAllViews:Ljava/util/List;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsmartisanos/widget/letters/SurnameFlowLayout;->mLineHeight:Ljava/util/List;

    .line 19
    return-void
.end method


.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 34
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lsmartisanos/widget/letters/SurnameFlowLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 24
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 23
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/SurnameFlowLayout;->mAllViews:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->clear()V

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/SurnameFlowLayout;->mLineHeight:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->clear()V

    .line 104
    invoke-virtual/range {p0 .. p0}, Lsmartisanos/widget/letters/SurnameFlowLayout;->getWidth()I

    move-result v19

    .line 106
    .local v19, "width":I
    const/4 v14, 0x0

    .line 107
    .local v14, "lineWidth":I
    const/4 v11, 0x0

    .line 109
    .local v11, "lineHeight":I
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v13, "lineViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual/range {p0 .. p0}, Lsmartisanos/widget/letters/SurnameFlowLayout;->getChildCount()I

    move-result v3

    .line 112
    .local v3, "cCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v3, :cond_1

    .line 113
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lsmartisanos/widget/letters/SurnameFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 114
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 116
    .local v15, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 117
    .local v6, "childWidth":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 120
    .local v5, "childHeight":I
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v20, v0

    add-int v20, v20, v6

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v21, v0

    add-int v20, v20, v21

    add-int v20, v20, v14

    move/from16 v0, v20

    move/from16 v1, v19

    if-le v0, v1, :cond_0

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/SurnameFlowLayout;->mLineHeight:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/SurnameFlowLayout;->mAllViews:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    const/4 v14, 0x0

    .line 124
    new-instance v13, Ljava/util/ArrayList;

    .end local v13    # "lineViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .restart local v13    # "lineViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :cond_0
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v20, v0

    add-int v20, v20, v6

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v21, v0

    add-int v20, v20, v21

    add-int v14, v14, v20

    .line 128
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v20, v0

    add-int v20, v20, v5

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 130
    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 133
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childHeight":I
    .end local v6    # "childWidth":I
    .end local v15    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/SurnameFlowLayout;->mLineHeight:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/SurnameFlowLayout;->mAllViews:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    const/4 v10, 0x0

    .line 137
    .local v10, "left":I
    const/16 v18, 0x0

    .line 139
    .local v18, "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/SurnameFlowLayout;->mAllViews:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v12

    .line 140
    .local v12, "lineNums":I
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v12, :cond_4

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/SurnameFlowLayout;->mAllViews:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "lineViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    check-cast v13, Ljava/util/List;

    .line 144
    .restart local v13    # "lineViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/SurnameFlowLayout;->mLineHeight:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 146
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v8, v0, :cond_3

    .line 147
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 148
    .restart local v4    # "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 146
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 151
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 154
    .restart local v15    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v20, v0

    add-int v9, v10, v20

    .line 155
    .local v9, "lc":I
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v20, v0

    add-int v17, v18, v20

    .line 156
    .local v17, "tc":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    add-int v16, v9, v20

    .line 157
    .local v16, "rc":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    add-int v2, v17, v20

    .line 159
    .local v2, "bc":I
    const-string v20, "FlowLayout"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " , l = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " , t = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " , r ="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " , b = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v4, v9, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 164
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v21, v0

    add-int v20, v20, v21

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v21, v0

    add-int v20, v20, v21

    add-int v10, v10, v20

    goto/16 :goto_3

    .line 167
    .end local v2    # "bc":I
    .end local v4    # "child":Landroid/view/View;
    .end local v9    # "lc":I
    .end local v15    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v16    # "rc":I
    .end local v17    # "tc":I
    :cond_3
    const/4 v10, 0x0

    .line 168
    add-int v18, v18, v11

    .line 140
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 171
    .end local v8    # "j":I
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 41
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 43
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .line 44
    .local v15, "sizeWidth":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 45
    .local v14, "sizeHeight":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 46
    .local v13, "modeWidth":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 48
    .local v12, "modeHeight":I
    const-string v17, "FlowLayout"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const/16 v16, 0x0

    .line 51
    .local v16, "width":I
    const/4 v7, 0x0

    .line 53
    .local v7, "height":I
    const/4 v10, 0x0

    .line 54
    .local v10, "lineWidth":I
    const/4 v9, 0x0

    .line 56
    .local v9, "lineHeight":I
    invoke-virtual/range {p0 .. p0}, Lsmartisanos/widget/letters/SurnameFlowLayout;->getChildCount()I

    move-result v3

    .line 58
    .local v3, "cCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v3, :cond_2

    .line 59
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lsmartisanos/widget/letters/SurnameFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 61
    .local v4, "child":Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v4, v1, v2}, Lsmartisanos/widget/letters/SurnameFlowLayout;->measureChild(Landroid/view/View;II)V

    .line 63
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 66
    .local v11, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v18, v0

    add-int v6, v17, v18

    .line 69
    .local v6, "childWidth":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v18, v0

    add-int v5, v17, v18

    .line 72
    .local v5, "childHeight":I
    add-int v17, v10, v6

    move/from16 v0, v17

    if-le v0, v15, :cond_1

    .line 73
    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 74
    move v10, v6

    .line 76
    add-int/2addr v7, v9

    .line 78
    move v9, v5

    .line 83
    :goto_1
    add-int/lit8 v17, v3, -0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_0

    .line 84
    move/from16 v0, v16

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 85
    add-int/2addr v7, v9

    .line 58
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 80
    :cond_1
    add-int/2addr v10, v6

    .line 81
    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_1

    .line 89
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childHeight":I
    .end local v6    # "childWidth":I
    .end local v11    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    const/high16 v17, 0x40000000    # 2.0f

    move/from16 v0, v17

    if-ne v13, v0, :cond_3

    .end local v15    # "sizeWidth":I
    :goto_2
    const/high16 v17, 0x40000000    # 2.0f

    move/from16 v0, v17

    if-ne v12, v0, :cond_4

    .end local v14    # "sizeHeight":I
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v14}, Lsmartisanos/widget/letters/SurnameFlowLayout;->setMeasuredDimension(II)V

    .line 93
    return-void

    .restart local v14    # "sizeHeight":I
    .restart local v15    # "sizeWidth":I
    :cond_3
    move/from16 v15, v16

    .line 89
    goto :goto_2

    .end local v15    # "sizeWidth":I
    :cond_4
    move v14, v7

    goto :goto_3
.end method
