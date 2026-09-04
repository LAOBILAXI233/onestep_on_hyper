.class Lcom/smartisanos/launcher/theme/ChangeThemeHandler$7;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "ChangeThemeHandler.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->getGaussianBackgroundAnim(ZFFLcom/smartisanos/launcher/theme/Theme;)Lcom/smartisanos/smengine/AnimationTimeLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

.field final synthetic val$index:I

.field final synthetic val$page:Lcom/smartisanos/launcher/view/Page;

.field final synthetic val$show:Z

.field final synthetic val$theme:Lcom/smartisanos/launcher/theme/Theme;


.method constructor <init>(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;ZILcom/smartisanos/launcher/view/Page;Lcom/smartisanos/launcher/theme/Theme;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    .prologue
    .line 934
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$7;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    iput-boolean p2, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$7;->val$show:Z

    iput p3, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$7;->val$index:I

    iput-object p4, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$7;->val$page:Lcom/smartisanos/launcher/view/Page;

    iput-object p5, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$7;->val$theme:Lcom/smartisanos/launcher/theme/Theme;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 946
    iget-object v6, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$7;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    invoke-static {v6}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->access$1400(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;)[Lcom/smartisanos/smengine/RectNode;

    move-result-object v6

    iget v7, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$7;->val$index:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 947
    iget-object v6, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$7;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    invoke-static {v6}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->access$1400(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;)[Lcom/smartisanos/smengine/RectNode;

    move-result-object v6

    iget v7, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$7;->val$index:I

    aget-object v6, v6, v7

    invoke-virtual {v6, v9}, Lcom/smartisanos/smengine/RectNode;->clear(Z)V

    .line 948
    iget-object v6, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$7;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    invoke-static {v6}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->access$1400(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;)[Lcom/smartisanos/smengine/RectNode;

    move-result-object v6

    iget v7, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$7;->val$index:I

    const/4 v8, 0x0

    aput-object v8, v6, v7

    .line 950
    sget-boolean v6, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$7;->val$show:Z

    if-eqz v6, :cond_1

    .line 951
    :cond_0
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v5

    .line 952
    .local v5, "tm":Lcom/smartisanos/smengine/TextureManager;
    const-string v6, "t_blur_anim_background"

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/TextureManager;->deleteTexture(Ljava/lang/String;)V

    .line 954
    .end local v5    # "tm":Lcom/smartisanos/smengine/TextureManager;
    :cond_1
    iget-boolean v6, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$7;->val$show:Z

    if-eqz v6, :cond_2

    .line 969
    :goto_0
    return-void

    .line 956
    :cond_2
    iget-object v6, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$7;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    iget-object v7, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$7;->val$theme:Lcom/smartisanos/launcher/theme/Theme;

    invoke-static {v6, v7}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->access$1500(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;Lcom/smartisanos/launcher/theme/Theme;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 957
    .local v0, "bt":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 958
    iget-object v6, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$7;->val$page:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v3

    .line 959
    .local v3, "pcArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 960
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Cell;

    .line 961
    .local v2, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Cell;->disableCubeOriginCellBlend()V

    .line 959
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 963
    .end local v2    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_3
    iget-object v6, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$7;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    invoke-static {v6}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->access$1200(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;)[Lcom/smartisanos/smengine/RectNode;

    move-result-object v7

    array-length v8, v7

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v8, :cond_4

    aget-object v4, v7, v6

    .line 964
    .local v4, "shadow":Lcom/smartisanos/smengine/RectNode;
    invoke-virtual {v4, v9}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 963
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 966
    .end local v4    # "shadow":Lcom/smartisanos/smengine/RectNode;
    :cond_4
    iget-object v6, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$7;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    iget-object v6, v6, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeCubeAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 967
    iget-object v6, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$7;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    iget-object v6, v6, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeShadowAnim:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$ShadowAnimation;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$ShadowAnimation;->start()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 936
    iget-boolean v1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$7;->val$show:Z

    if-eqz v1, :cond_0

    .line 937
    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$7;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    invoke-static {v1}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->access$1400(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;)[Lcom/smartisanos/smengine/RectNode;

    move-result-object v1

    iget v3, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$7;->val$index:I

    aget-object v1, v1, v3

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 938
    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$7;->val$page:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/Page;->setIsEnableBlend(Z)V

    .line 939
    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$7;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    invoke-static {v1}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->access$1200(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;)[Lcom/smartisanos/smengine/RectNode;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v0, v3, v1

    .line 940
    .local v0, "shadow":Lcom/smartisanos/smengine/RectNode;
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 939
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 943
    .end local v0    # "shadow":Lcom/smartisanos/smengine/RectNode;
    :cond_0
    return-void
.end method
