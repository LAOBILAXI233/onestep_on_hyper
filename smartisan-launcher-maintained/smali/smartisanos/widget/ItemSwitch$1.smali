.class Lsmartisanos/widget/ItemSwitch$1;
.super Ljava/lang/Object;
.source "ItemSwitch.java"

.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisanos/widget/ItemSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lsmartisanos/widget/ItemSwitch;


.method constructor <init>(Lsmartisanos/widget/ItemSwitch;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lsmartisanos/widget/ItemSwitch$1;->this$0:Lsmartisanos/widget/ItemSwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "ex"    # Landroid/widget/CompoundButton;
    .param p2, "state"    # Z

    .prologue
    .line 80
    iget-object v0, p0, Lsmartisanos/widget/ItemSwitch$1;->this$0:Lsmartisanos/widget/ItemSwitch;

    invoke-static {v0}, Lsmartisanos/widget/ItemSwitch;->access$000(Lsmartisanos/widget/ItemSwitch;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lsmartisanos/widget/ItemSwitch$1;->this$0:Lsmartisanos/widget/ItemSwitch;

    invoke-virtual {v0}, Lsmartisanos/widget/ItemSwitch;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setTag(Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lsmartisanos/widget/ItemSwitch$1;->this$0:Lsmartisanos/widget/ItemSwitch;

    invoke-static {v0}, Lsmartisanos/widget/ItemSwitch;->access$000(Lsmartisanos/widget/ItemSwitch;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 84
    :cond_0
    return-void
.end method
