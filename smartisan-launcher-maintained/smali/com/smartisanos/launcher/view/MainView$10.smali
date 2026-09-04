.class Lcom/smartisanos/launcher/view/MainView$10;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "MainView.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/MainView;->getBackgroundUnlockAnim(Lcom/smartisanos/smengine/AnimationTimeLine;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/MainView;

.field final synthetic val$backgroundForGaussianThemeUnlock:Lcom/smartisanos/smengine/RectNode;

.field final synthetic val$backgroundGaussianCover:Lcom/smartisanos/smengine/RectNode;

.field final synthetic val$backgroundGaussianScale:Lcom/smartisanos/smengine/RectNode;


.method constructor <init>(Lcom/smartisanos/launcher/view/MainView;Lcom/smartisanos/smengine/RectNode;Lcom/smartisanos/smengine/RectNode;Lcom/smartisanos/smengine/RectNode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/MainView;

    .prologue
    .line 1927
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MainView$10;->this$0:Lcom/smartisanos/launcher/view/MainView;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/MainView$10;->val$backgroundGaussianScale:Lcom/smartisanos/smengine/RectNode;

    iput-object p3, p0, Lcom/smartisanos/launcher/view/MainView$10;->val$backgroundGaussianCover:Lcom/smartisanos/smengine/RectNode;

    iput-object p4, p0, Lcom/smartisanos/launcher/view/MainView$10;->val$backgroundForGaussianThemeUnlock:Lcom/smartisanos/smengine/RectNode;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1933
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView$10;->this$0:Lcom/smartisanos/launcher/view/MainView;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/MainView;->access$400(Lcom/smartisanos/launcher/view/MainView;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 1934
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView$10;->val$backgroundGaussianScale:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 1935
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView$10;->val$backgroundGaussianScale:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 1936
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView$10;->val$backgroundGaussianScale:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RectNode;->clear(Z)V

    .line 1938
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView$10;->val$backgroundGaussianCover:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 1939
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView$10;->val$backgroundGaussianCover:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 1940
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView$10;->val$backgroundGaussianCover:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RectNode;->clear(Z)V

    .line 1942
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView$10;->val$backgroundForGaussianThemeUnlock:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 1943
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView$10;->val$backgroundForGaussianThemeUnlock:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 1944
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView$10;->val$backgroundForGaussianThemeUnlock:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RectNode;->clear(Z)V

    .line 1946
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v0

    .line 1947
    .local v0, "tm":Lcom/smartisanos/smengine/TextureManager;
    const-string v1, "t_blur_anim_background"

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TextureManager;->deleteTexture(Ljava/lang/String;)V

    .line 1948
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 1929
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView$10;->val$backgroundGaussianScale:Lcom/smartisanos/smengine/RectNode;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 1930
    return-void
.end method
