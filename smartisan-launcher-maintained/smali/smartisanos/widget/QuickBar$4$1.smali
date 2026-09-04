.class Lsmartisanos/widget/QuickBar$4$1;
.super Ljava/lang/Object;
.source "QuickBar.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisanos/widget/QuickBar$4;->onTouched(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$1:Lsmartisanos/widget/QuickBar$4;


.method constructor <init>(Lsmartisanos/widget/QuickBar$4;)V
    .locals 0

    .prologue
    .line 1016
    iput-object p1, p0, Lsmartisanos/widget/QuickBar$4$1;->this$1:Lsmartisanos/widget/QuickBar$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 2

    .prologue
    .line 1019
    iget-object v0, p0, Lsmartisanos/widget/QuickBar$4$1;->this$1:Lsmartisanos/widget/QuickBar$4;

    iget-object v0, v0, Lsmartisanos/widget/QuickBar$4;->this$0:Lsmartisanos/widget/QuickBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lsmartisanos/widget/QuickBar;->access$500(Lsmartisanos/widget/QuickBar;Landroid/view/View;)V

    .line 1020
    return-void
.end method
