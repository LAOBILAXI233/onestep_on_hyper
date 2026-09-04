.class Lcom/smartisanos/launcher/view/StatusBar$3;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "StatusBar.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/StatusBar;->getChangeThemeAnim(ZF)Lcom/smartisanos/smengine/AnimationTimeLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/StatusBar;


.method constructor <init>(Lcom/smartisanos/launcher/view/StatusBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/StatusBar;

    .prologue
    .line 443
    iput-object p1, p0, Lcom/smartisanos/launcher/view/StatusBar$3;->this$0:Lcom/smartisanos/launcher/view/StatusBar;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 456
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/home/Launcher;->getMainView()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getBackground()Lcom/smartisanos/smengine/RectNode;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/RectNode;->setIsEnableDepthTest(Z)V

    .line 457
    iget-object v1, p0, Lcom/smartisanos/launcher/view/StatusBar$3;->this$0:Lcom/smartisanos/launcher/view/StatusBar;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/StatusBar;->access$300(Lcom/smartisanos/launcher/view/StatusBar;)[Lcom/smartisanos/launcher/view/StatusBar;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 458
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/StatusBar$3;->this$0:Lcom/smartisanos/launcher/view/StatusBar;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/StatusBar;->access$300(Lcom/smartisanos/launcher/view/StatusBar;)[Lcom/smartisanos/launcher/view/StatusBar;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 459
    if-eq v3, v0, :cond_0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/StatusBar$3;->this$0:Lcom/smartisanos/launcher/view/StatusBar;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/StatusBar;->access$300(Lcom/smartisanos/launcher/view/StatusBar;)[Lcom/smartisanos/launcher/view/StatusBar;

    move-result-object v1

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 460
    iget-object v1, p0, Lcom/smartisanos/launcher/view/StatusBar$3;->this$0:Lcom/smartisanos/launcher/view/StatusBar;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/StatusBar;->access$300(Lcom/smartisanos/launcher/view/StatusBar;)[Lcom/smartisanos/launcher/view/StatusBar;

    move-result-object v1

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/StatusBar;->setVisibility(Z)V

    .line 458
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 464
    .end local v0    # "i":I
    :cond_1
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-nez v1, :cond_3

    .line 465
    iget-object v1, p0, Lcom/smartisanos/launcher/view/StatusBar$3;->this$0:Lcom/smartisanos/launcher/view/StatusBar;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/StatusBar;->access$200(Lcom/smartisanos/launcher/view/StatusBar;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 466
    iget-object v1, p0, Lcom/smartisanos/launcher/view/StatusBar$3;->this$0:Lcom/smartisanos/launcher/view/StatusBar;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/StatusBar;->access$200(Lcom/smartisanos/launcher/view/StatusBar;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 468
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/StatusBar$3;->this$0:Lcom/smartisanos/launcher/view/StatusBar;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/StatusBar;->removeChangeThemeNode()V

    .line 470
    :cond_3
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 447
    iget-object v0, p0, Lcom/smartisanos/launcher/view/StatusBar$3;->this$0:Lcom/smartisanos/launcher/view/StatusBar;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/StatusBar;->access$200(Lcom/smartisanos/launcher/view/StatusBar;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/smartisanos/launcher/view/StatusBar$3;->this$0:Lcom/smartisanos/launcher/view/StatusBar;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/StatusBar;->access$200(Lcom/smartisanos/launcher/view/StatusBar;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/StatusBar$3;->this$0:Lcom/smartisanos/launcher/view/StatusBar;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/StatusBar;->access$300(Lcom/smartisanos/launcher/view/StatusBar;)[Lcom/smartisanos/launcher/view/StatusBar;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/StatusBar;->setVisibility(Z)V

    .line 451
    iget-object v0, p0, Lcom/smartisanos/launcher/view/StatusBar$3;->this$0:Lcom/smartisanos/launcher/view/StatusBar;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/StatusBar;->access$300(Lcom/smartisanos/launcher/view/StatusBar;)[Lcom/smartisanos/launcher/view/StatusBar;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/StatusBar;->setVisibility(Z)V

    .line 452
    return-void
.end method
