.class public Landroid/support/v7/widget/TintContextWrapper;
.super Landroid/content/ContextWrapper;
.source "TintContextWrapper.java"


.field private static final sCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v7/widget/TintContextWrapper;",
            ">;>;"
        }
    .end annotation
.end field


.field private final mResources:Landroid/content/res/Resources;

.field private final mTheme:Landroid/content/res/Resources$Theme;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/support/v7/widget/TintContextWrapper;->sCache:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "base"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 82
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 84
    invoke-static {}, Landroid/support/v7/widget/VectorEnabledTintResources;->shouldBeUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    new-instance v0, Landroid/support/v7/widget/VectorEnabledTintResources;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/VectorEnabledTintResources;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/support/v7/widget/TintContextWrapper;->mResources:Landroid/content/res/Resources;

    .line 88
    iget-object v0, p0, Landroid/support/v7/widget/TintContextWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/TintContextWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    .line 89
    iget-object v0, p0, Landroid/support/v7/widget/TintContextWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 94
    :goto_0
    return-void

    .line 91
    :cond_0
    new-instance v0, Landroid/support/v7/widget/TintResources;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/TintResources;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/support/v7/widget/TintContextWrapper;->mResources:Landroid/content/res/Resources;

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/TintContextWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    goto :goto_0
.end method

.method private static shouldWrap(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 61
    instance-of v1, p0, Landroid/support/v7/widget/TintContextWrapper;

    if-nez v1, :cond_0

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v7/widget/TintResources;

    if-nez v1, :cond_0

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v7/widget/VectorEnabledTintResources;

    if-eqz v1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v0

    .line 68
    :cond_1
    invoke-static {}, Landroid/support/v7/app/AppCompatDelegate;->isCompatVectorFromResourcesEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-gt v1, v2, :cond_0

    .line 75
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static wrap(Landroid/content/Context;)Landroid/content/Context;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 41
    invoke-static {p0}, Landroid/support/v7/widget/TintContextWrapper;->shouldWrap(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 43
    const/4 v1, 0x0

    .local v1, "i":I
    sget-object v4, Landroid/support/v7/widget/TintContextWrapper;->sCache:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 44
    sget-object v4, Landroid/support/v7/widget/TintContextWrapper;->sCache:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 45
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/widget/TintContextWrapper;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/TintContextWrapper;

    move-object v3, v4

    .line 46
    .local v3, "wrapper":Landroid/support/v7/widget/TintContextWrapper;
    :goto_1
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/support/v7/widget/TintContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    if-ne v4, p0, :cond_1

    .line 57
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/widget/TintContextWrapper;>;"
    .end local v3    # "wrapper":Landroid/support/v7/widget/TintContextWrapper;
    :goto_2
    return-object v3

    .line 45
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/widget/TintContextWrapper;>;"
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 43
    .restart local v3    # "wrapper":Landroid/support/v7/widget/TintContextWrapper;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/widget/TintContextWrapper;>;"
    .end local v3    # "wrapper":Landroid/support/v7/widget/TintContextWrapper;
    :cond_2
    new-instance v3, Landroid/support/v7/widget/TintContextWrapper;

    invoke-direct {v3, p0}, Landroid/support/v7/widget/TintContextWrapper;-><init>(Landroid/content/Context;)V

    .line 53
    .restart local v3    # "wrapper":Landroid/support/v7/widget/TintContextWrapper;
    sget-object v4, Landroid/support/v7/widget/TintContextWrapper;->sCache:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "wrapper":Landroid/support/v7/widget/TintContextWrapper;
    :cond_3
    move-object v3, p0

    .line 57
    goto :goto_2
.end method


.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Landroid/support/v7/widget/TintContextWrapper;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Landroid/support/v7/widget/TintContextWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/content/ContextWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/TintContextWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    goto :goto_0
.end method

.method public setTheme(I)V
    .locals 2
    .param p1, "resid"    # I

    .prologue
    .line 103
    iget-object v0, p0, Landroid/support/v7/widget/TintContextWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    if-nez v0, :cond_0

    .line 104
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->setTheme(I)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/TintContextWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_0
.end method
