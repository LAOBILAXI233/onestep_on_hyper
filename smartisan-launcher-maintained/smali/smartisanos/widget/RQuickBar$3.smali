.class Lsmartisanos/widget/RQuickBar$3;
.super Ljava/lang/Object;
.source "RQuickBar.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisanos/widget/RQuickBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lsmartisanos/widget/RQuickBar;


.method constructor <init>(Lsmartisanos/widget/RQuickBar;)V
    .locals 0

    .prologue
    .line 956
    iput-object p1, p0, Lsmartisanos/widget/RQuickBar$3;->this$0:Lsmartisanos/widget/RQuickBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 2

    .prologue
    .line 960
    const-string v0, "zh"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 961
    iget-object v0, p0, Lsmartisanos/widget/RQuickBar$3;->this$0:Lsmartisanos/widget/RQuickBar;

    invoke-static {v0}, Lsmartisanos/widget/RQuickBar;->access$400(Lsmartisanos/widget/RQuickBar;)V

    .line 963
    :cond_0
    return-void
.end method
