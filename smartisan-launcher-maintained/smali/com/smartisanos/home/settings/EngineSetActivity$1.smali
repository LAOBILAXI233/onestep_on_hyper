.class Lcom/smartisanos/home/settings/EngineSetActivity$1;
.super Ljava/lang/Object;
.source "EngineSetActivity.java"

.implements Landroid/view/View$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/settings/EngineSetActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/home/settings/EngineSetActivity;


.method constructor <init>(Lcom/smartisanos/home/settings/EngineSetActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/home/settings/EngineSetActivity;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/smartisanos/home/settings/EngineSetActivity$1;->this$0:Lcom/smartisanos/home/settings/EngineSetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/smartisanos/home/settings/EngineSetActivity$1;->this$0:Lcom/smartisanos/home/settings/EngineSetActivity;

    invoke-virtual {v0}, Lcom/smartisanos/home/settings/EngineSetActivity;->finish()V

    .line 40
    return-void
.end method
