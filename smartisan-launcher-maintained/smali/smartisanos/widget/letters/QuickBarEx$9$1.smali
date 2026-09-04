.class Lsmartisanos/widget/letters/QuickBarEx$9$1;
.super Ljava/lang/Object;
.source "QuickBarEx.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisanos/widget/letters/QuickBarEx$9;->onTouched(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$1:Lsmartisanos/widget/letters/QuickBarEx$9;


.method constructor <init>(Lsmartisanos/widget/letters/QuickBarEx$9;)V
    .locals 0

    .prologue
    .line 979
    iput-object p1, p0, Lsmartisanos/widget/letters/QuickBarEx$9$1;->this$1:Lsmartisanos/widget/letters/QuickBarEx$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 2

    .prologue
    .line 982
    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx$9$1;->this$1:Lsmartisanos/widget/letters/QuickBarEx$9;

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx$9;->this$0:Lsmartisanos/widget/letters/QuickBarEx;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lsmartisanos/widget/letters/QuickBarEx;->access$1600(Lsmartisanos/widget/letters/QuickBarEx;Landroid/view/View;)V

    .line 983
    return-void
.end method
