.class public Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;
.super Landroid/support/graphics/drawable/VectorDrawableCommon;
.source "AnimatedVectorDrawableCompat.java"

.implements Landroid/graphics/drawable/Animatable;


.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;,
        Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;
    }
.end annotation


.field private static final ANIMATED_VECTOR:Ljava/lang/String; = "animated-vector"

.field private static final DBG_ANIMATION_VECTOR_DRAWABLE:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "AnimatedVDCompat"

.field private static final TARGET:Ljava/lang/String; = "target"


.field private mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

.field private mArgbEvaluator:Landroid/animation/ArgbEvaluator;

.field mCachedConstantStateDelegate:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;

.field final mCallback:Landroid/graphics/drawable/Drawable$Callback;

.field private mContext:Landroid/content/Context;


.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, v0, v0, v0}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;-><init>(Landroid/content/Context;Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;Landroid/content/res/Resources;)V

    .line 83
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, v0, v0}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;-><init>(Landroid/content/Context;Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;Landroid/content/res/Resources;)V

    .line 87
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "state"    # Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/support/graphics/drawable/VectorDrawableCommon;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 635
    new-instance v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$1;

    invoke-direct {v0, p0}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$1;-><init>(Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;)V

    iput-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 92
    iput-object p1, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mContext:Landroid/content/Context;

    .line 93
    if-eqz p2, :cond_0

    .line 94
    iput-object p2, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    .line 99
    :goto_0
    return-void

    .line 96
    :cond_0
    new-instance v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v1, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;-><init>(Landroid/content/Context;Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;Landroid/graphics/drawable/Drawable$Callback;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    goto :goto_0
.end method

.method public static create(Landroid/content/Context;I)Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v8, 0x2

    .line 121
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v6, v7, :cond_0

    .line 122
    new-instance v1, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-direct {v1, p0}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;-><init>(Landroid/content/Context;)V

    .line 123
    .local v1, "drawable":Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    .line 123
    invoke-static {v6, p1, v7}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v1, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    .line 125
    iget-object v6, v1, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v7, v1, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 126
    new-instance v6, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;

    iget-object v7, v1, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    .line 127
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    iput-object v6, v1, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mCachedConstantStateDelegate:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;

    .line 149
    .end local v1    # "drawable":Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;
    :goto_0
    return-object v1

    .line 130
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 132
    .local v4, "resources":Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 133
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 135
    .local v0, "attrs":Landroid/util/AttributeSet;
    :cond_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, "type":I
    if-eq v5, v8, :cond_2

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 139
    :cond_2
    if-eq v5, v8, :cond_3

    .line 140
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v7, "No start tag found"

    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 144
    .end local v0    # "attrs":Landroid/util/AttributeSet;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "type":I
    :catch_0
    move-exception v2

    .line 145
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v6, "AnimatedVDCompat"

    const-string v7, "parser error"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 142
    .restart local v0    # "attrs":Landroid/util/AttributeSet;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "type":I
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    .line 142
    invoke-static {p0, v6, v3, v0, v7}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->createFromXmlInner(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 146
    .end local v0    # "attrs":Landroid/util/AttributeSet;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "type":I
    :catch_1
    move-exception v2

    .line 147
    .local v2, "e":Ljava/io/IOException;
    const-string v6, "AnimatedVDCompat"

    const-string v7, "parser error"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static createFromXmlInner(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    new-instance v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-direct {v0, p0}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;-><init>(Landroid/content/Context;)V

    .line 162
    .local v0, "drawable":Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 163
    return-object v0
.end method

.method private isStarted()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 587
    iget-object v5, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v1, v5, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimators:Ljava/util/ArrayList;

    .line 588
    .local v1, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    if-nez v1, :cond_1

    .line 598
    :cond_0
    :goto_0
    return v4

    .line 591
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 592
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 593
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 594
    .local v0, "animator":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 595
    const/4 v4, 0x1

    goto :goto_0

    .line 592
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method static obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "attrs"    # [I

    .prologue
    const/4 v0, 0x0

    .line 330
    if-nez p1, :cond_0

    .line 331
    invoke-virtual {p0, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 333
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0
.end method

.method private setupAnimatorsForTarget(Ljava/lang/String;Landroid/animation/Animator;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 554
    iget-object v1, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v1, v1, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v1, p1}, Landroid/support/graphics/drawable/VectorDrawableCompat;->getTargetByName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 555
    .local v0, "target":Ljava/lang/Object;
    invoke-virtual {p2, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 556
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    .line 557
    invoke-direct {p0, p2}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->setupColorAnimator(Landroid/animation/Animator;)V

    .line 559
    :cond_0
    iget-object v1, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v1, v1, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimators:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 560
    iget-object v1, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimators:Ljava/util/ArrayList;

    .line 561
    iget-object v1, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    new-instance v2, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v2}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v2, v1, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mTargetNameMap:Landroid/support/v4/util/ArrayMap;

    .line 563
    :cond_1
    iget-object v1, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v1, v1, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    iget-object v1, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v1, v1, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mTargetNameMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p2, p1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    return-void
.end method

.method private setupColorAnimator(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 533
    instance-of v4, p1, Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_0

    move-object v4, p1

    .line 534
    check-cast v4, Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    .line 535
    .local v0, "childAnimators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    if-eqz v0, :cond_0

    .line 536
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 537
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    invoke-direct {p0, v4}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->setupColorAnimator(Landroid/animation/Animator;)V

    .line 536
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 541
    .end local v0    # "childAnimators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .end local v1    # "i":I
    :cond_0
    instance-of v4, p1, Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_3

    move-object v2, p1

    .line 542
    check-cast v2, Landroid/animation/ObjectAnimator;

    .line 543
    .local v2, "objectAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->getPropertyName()Ljava/lang/String;

    move-result-object v3

    .line 544
    .local v3, "propertyName":Ljava/lang/String;
    const-string v4, "fillColor"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "strokeColor"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 545
    :cond_1
    iget-object v4, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    if-nez v4, :cond_2

    .line 546
    new-instance v4, Landroid/animation/ArgbEvaluator;

    invoke-direct {v4}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v4, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 548
    :cond_2
    iget-object v4, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 551
    .end local v2    # "objectAnim":Landroid/animation/ObjectAnimator;
    .end local v3    # "propertyName":Ljava/lang/String;
    :cond_3
    return-void
.end method


.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 405
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->applyTheme(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V

    .line 410
    :cond_0
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->canApplyTheme(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    .line 419
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic clearColorFilter()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Landroid/support/graphics/drawable/VectorDrawableCommon;->clearColorFilter()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 192
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0, p1}, Landroid/support/graphics/drawable/VectorDrawableCompat;->draw(Landroid/graphics/Canvas;)V

    .line 197
    invoke-direct {p0}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p0}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->invalidateSelf()V

    goto :goto_0
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getAlpha(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 232
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0}, Landroid/support/graphics/drawable/VectorDrawableCompat;->getAlpha()I

    move-result v0

    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    .line 187
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/support/graphics/drawable/VectorDrawableCommon;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget v1, v1, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mChangingConfigurations:I

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public bridge synthetic getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/support/graphics/drawable/VectorDrawableCommon;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 174
    new-instance v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;

    iget-object v1, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    .line 179
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/support/graphics/drawable/VectorDrawableCommon;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 321
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0}, Landroid/support/graphics/drawable/VectorDrawableCompat;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 313
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0}, Landroid/support/graphics/drawable/VectorDrawableCompat;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic getLayoutDirection()I
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/support/graphics/drawable/VectorDrawableCommon;->getLayoutDirection()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMinimumHeight()I
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/support/graphics/drawable/VectorDrawableCommon;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMinimumWidth()I
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/support/graphics/drawable/VectorDrawableCommon;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    .line 305
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0}, Landroid/support/graphics/drawable/VectorDrawableCompat;->getOpacity()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "x0"    # Landroid/graphics/Rect;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/support/graphics/drawable/VectorDrawableCommon;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getState()[I
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/support/graphics/drawable/VectorDrawableCommon;->getState()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTransparentRegion()Landroid/graphics/Region;
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/support/graphics/drawable/VectorDrawableCommon;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 401
    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 10
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    iget-object v8, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_1

    .line 340
    iget-object v8, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v8, p1, p2, p3, p4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->inflate(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 395
    :cond_0
    return-void

    .line 343
    :cond_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 344
    .local v2, "eventType":I
    :goto_0
    const/4 v8, 0x1

    if-eq v2, v8, :cond_0

    .line 345
    const/4 v8, 0x2

    if-ne v2, v8, :cond_4

    .line 346
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 350
    .local v5, "tagName":Ljava/lang/String;
    const-string v8, "animated-vector"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 351
    sget-object v8, Landroid/support/graphics/drawable/AndroidResources;->styleable_AnimatedVectorDrawable:[I

    .line 352
    invoke-static {p1, p4, p3, v8}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 355
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 360
    .local v1, "drawableRes":I
    if-eqz v1, :cond_3

    .line 361
    invoke-static {p1, v1, p4}, Landroid/support/graphics/drawable/VectorDrawableCompat;->create(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/support/graphics/drawable/VectorDrawableCompat;

    move-result-object v7

    .line 363
    .local v7, "vectorDrawable":Landroid/support/graphics/drawable/VectorDrawableCompat;
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/support/graphics/drawable/VectorDrawableCompat;->setAllowCaching(Z)V

    .line 364
    iget-object v8, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v7, v8}, Landroid/support/graphics/drawable/VectorDrawableCompat;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 365
    iget-object v8, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v8, v8, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroid/support/graphics/drawable/VectorDrawableCompat;

    if-eqz v8, :cond_2

    .line 366
    iget-object v8, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v8, v8, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroid/support/graphics/drawable/VectorDrawableCompat;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/support/graphics/drawable/VectorDrawableCompat;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 368
    :cond_2
    iget-object v8, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iput-object v7, v8, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroid/support/graphics/drawable/VectorDrawableCompat;

    .line 370
    .end local v7    # "vectorDrawable":Landroid/support/graphics/drawable/VectorDrawableCompat;
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 393
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "drawableRes":I
    .end local v5    # "tagName":Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    .line 371
    .restart local v5    # "tagName":Ljava/lang/String;
    :cond_5
    const-string v8, "target"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 372
    sget-object v8, Landroid/support/graphics/drawable/AndroidResources;->styleable_AnimatedVectorDrawableTarget:[I

    .line 373
    invoke-virtual {p1, p3, v8}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 375
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 378
    .local v6, "target":Ljava/lang/String;
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 380
    .local v3, "id":I
    if-eqz v3, :cond_6

    .line 381
    iget-object v8, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mContext:Landroid/content/Context;

    if-eqz v8, :cond_7

    .line 382
    iget-object v8, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mContext:Landroid/content/Context;

    invoke-static {v8, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v4

    .line 383
    .local v4, "objectAnimator":Landroid/animation/Animator;
    invoke-direct {p0, v6, v4}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->setupAnimatorsForTarget(Ljava/lang/String;Landroid/animation/Animator;)V

    .line 389
    .end local v4    # "objectAnimator":Landroid/animation/Animator;
    :cond_6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .line 385
    :cond_7
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Context can\'t be null when inflating animators"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public bridge synthetic isAutoMirrored()Z
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/support/graphics/drawable/VectorDrawableCommon;->isAutoMirrored()Z

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 5

    .prologue
    .line 572
    iget-object v4, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 573
    iget-object v4, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v4, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result v4

    .line 583
    :goto_0
    return v4

    .line 575
    :cond_0
    iget-object v4, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v1, v4, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimators:Ljava/util/ArrayList;

    .line 576
    .local v1, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 577
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 578
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 579
    .local v0, "animator":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 580
    const/4 v4, 0x1

    goto :goto_0

    .line 577
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 583
    .end local v0    # "animator":Landroid/animation/Animator;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    .line 297
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0}, Landroid/support/graphics/drawable/VectorDrawableCompat;->isStateful()Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic jumpToCurrentState()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Landroid/support/graphics/drawable/VectorDrawableCommon;->jumpToCurrentState()V

    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 105
    return-object p0

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Mutate() is not supported for older platform"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 204
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 209
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0, p1}, Landroid/support/graphics/drawable/VectorDrawableCompat;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 221
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    .line 224
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0, p1}, Landroid/support/graphics/drawable/VectorDrawableCompat;->setLevel(I)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStateChange([I)Z
    .locals 1
    .param p1, "state"    # [I

    .prologue
    .line 213
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    .line 216
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0, p1}, Landroid/support/graphics/drawable/VectorDrawableCompat;->setState([I)Z

    move-result v0

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 237
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 242
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0, p1}, Landroid/support/graphics/drawable/VectorDrawableCompat;->setAlpha(I)V

    goto :goto_0
.end method

.method public bridge synthetic setAutoMirrored(Z)V
    .locals 0
    .param p1, "x0"    # Z

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/support/graphics/drawable/VectorDrawableCommon;->setAutoMirrored(Z)V

    return-void
.end method

.method public bridge synthetic setChangingConfigurations(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/support/graphics/drawable/VectorDrawableCommon;->setChangingConfigurations(I)V

    return-void
.end method

.method public bridge synthetic setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Landroid/support/graphics/drawable/VectorDrawableCommon;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 246
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 251
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0, p1}, Landroid/support/graphics/drawable/VectorDrawableCompat;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method public bridge synthetic setFilterBitmap(Z)V
    .locals 0
    .param p1, "x0"    # Z

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/support/graphics/drawable/VectorDrawableCommon;->setFilterBitmap(Z)V

    return-void
.end method

.method public bridge synthetic setHotspot(FF)V
    .locals 0
    .param p1, "x0"    # F
    .param p2, "x1"    # F

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Landroid/support/graphics/drawable/VectorDrawableCommon;->setHotspot(FF)V

    return-void
.end method

.method public bridge synthetic setHotspotBounds(IIII)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .prologue
    .line 64
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/graphics/drawable/VectorDrawableCommon;->setHotspotBounds(IIII)V

    return-void
.end method

.method public bridge synthetic setState([I)Z
    .locals 1
    .param p1, "x0"    # [I

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/support/graphics/drawable/VectorDrawableCommon;->setState([I)Z

    move-result v0

    return v0
.end method

.method public setTint(I)V
    .locals 1
    .param p1, "tint"    # I

    .prologue
    .line 255
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 261
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0, p1}, Landroid/support/graphics/drawable/VectorDrawableCompat;->setTint(I)V

    goto :goto_0
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 265
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 271
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0, p1}, Landroid/support/graphics/drawable/VectorDrawableCompat;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 275
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 281
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0, p1}, Landroid/support/graphics/drawable/VectorDrawableCompat;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 285
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 289
    :goto_0
    return v0

    .line 288
    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0, p1, p2}, Landroid/support/graphics/drawable/VectorDrawableCompat;->setVisible(ZZ)Z

    .line 289
    invoke-super {p0, p1, p2}, Landroid/support/graphics/drawable/VectorDrawableCommon;->setVisible(ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method public start()V
    .locals 5

    .prologue
    .line 603
    iget-object v4, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 604
    iget-object v4, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v4, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 619
    :cond_0
    :goto_0
    return-void

    .line 608
    :cond_1
    invoke-direct {p0}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->isStarted()Z

    move-result v4

    if-nez v4, :cond_0

    .line 612
    iget-object v4, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v1, v4, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimators:Ljava/util/ArrayList;

    .line 613
    .local v1, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 614
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 615
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 616
    .local v0, "animator":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 614
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 618
    .end local v0    # "animator":Landroid/animation/Animator;
    :cond_2
    invoke-virtual {p0}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->invalidateSelf()V

    goto :goto_0
.end method

.method public stop()V
    .locals 5

    .prologue
    .line 623
    iget-object v4, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 624
    iget-object v4, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v4, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 633
    :cond_0
    return-void

    .line 627
    :cond_1
    iget-object v4, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v1, v4, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimators:Ljava/util/ArrayList;

    .line 628
    .local v1, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 629
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 630
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 631
    .local v0, "animator":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 629
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
