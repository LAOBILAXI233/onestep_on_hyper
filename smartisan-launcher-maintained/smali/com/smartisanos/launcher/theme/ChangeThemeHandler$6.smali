.class Lcom/smartisanos/launcher/theme/ChangeThemeHandler$6;
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


.method constructor <init>(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    .prologue
    .line 914
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$6;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    iput p2, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$6;->val$index:I

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onStart()V
    .locals 2

    .prologue
    .line 916
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$6;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    invoke-static {v0}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->access$1300(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;)[Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$6;->val$index:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 917
    return-void
.end method
