.class Lcom/smartisanos/launcher/animations/IconSortAnimation$4;
.super Lcom/smartisanos/smengine/Event;
.source "IconSortAnimation.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/animations/IconSortAnimation;->prepareGenerateSpecialCubeForIconSort()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/animations/IconSortAnimation;


.method constructor <init>(Lcom/smartisanos/launcher/animations/IconSortAnimation;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/animations/IconSortAnimation;
    .param p2, "type"    # I

    .prologue
    .line 301
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation$4;->this$0:Lcom/smartisanos/launcher/animations/IconSortAnimation;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation$4;->this$0:Lcom/smartisanos/launcher/animations/IconSortAnimation;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/IconSortAnimation;->access$200(Lcom/smartisanos/launcher/animations/IconSortAnimation;)V

    .line 305
    return-void
.end method
