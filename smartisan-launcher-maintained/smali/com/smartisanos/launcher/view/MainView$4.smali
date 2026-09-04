.class Lcom/smartisanos/launcher/view/MainView$4;
.super Lcom/smartisanos/smengine/Event;
.source "MainView.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/MainView;->hideCellClickShadow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/MainView;


.method constructor <init>(Lcom/smartisanos/launcher/view/MainView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/MainView;
    .param p2, "type"    # I

    .prologue
    .line 697
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MainView$4;->this$0:Lcom/smartisanos/launcher/view/MainView;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 3

    .prologue
    const v2, 0x3e4ccccd    # 0.2f

    .line 700
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView$4;->this$0:Lcom/smartisanos/launcher/view/MainView;

    const/4 v1, 0x0

    invoke-static {v0, v2, v2, v1}, Lcom/smartisanos/launcher/view/MainView;->access$100(Lcom/smartisanos/launcher/view/MainView;FFZ)V

    .line 701
    return-void
.end method
