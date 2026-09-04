.class final Lsmartisanos/widget/SwitchEx$PerformClick;
.super Ljava/lang/Object;
.source "SwitchEx.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisanos/widget/SwitchEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PerformClick"
.end annotation


.field final synthetic this$0:Lsmartisanos/widget/SwitchEx;


.method private constructor <init>(Lsmartisanos/widget/SwitchEx;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lsmartisanos/widget/SwitchEx$PerformClick;->this$0:Lsmartisanos/widget/SwitchEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lsmartisanos/widget/SwitchEx;Lsmartisanos/widget/SwitchEx$1;)V
    .locals 0
    .param p1, "x0"    # Lsmartisanos/widget/SwitchEx;
    .param p2, "x1"    # Lsmartisanos/widget/SwitchEx$1;

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lsmartisanos/widget/SwitchEx$PerformClick;-><init>(Lsmartisanos/widget/SwitchEx;)V

    return-void
.end method


.method public run()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lsmartisanos/widget/SwitchEx$PerformClick;->this$0:Lsmartisanos/widget/SwitchEx;

    invoke-virtual {v0}, Lsmartisanos/widget/SwitchEx;->performClick()Z

    .line 299
    return-void
.end method
