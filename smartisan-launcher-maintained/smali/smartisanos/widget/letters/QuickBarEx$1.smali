.class Lsmartisanos/widget/letters/QuickBarEx$1;
.super Ljava/lang/Object;
.source "QuickBarEx.java"

.implements Lsmartisanos/widget/letters/LettersBar$LBListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisanos/widget/letters/QuickBarEx;->initLettersBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lsmartisanos/widget/letters/QuickBarEx;


.method constructor <init>(Lsmartisanos/widget/letters/QuickBarEx;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lsmartisanos/widget/letters/QuickBarEx$1;->this$0:Lsmartisanos/widget/letters/QuickBarEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onLetterChanged(Ljava/lang/String;)Z
    .locals 2
    .param p1, "letter"    # Ljava/lang/String;

    .prologue
    .line 356
    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx$1;->this$0:Lsmartisanos/widget/letters/QuickBarEx;

    invoke-static {v0}, Lsmartisanos/widget/letters/QuickBarEx;->access$000(Lsmartisanos/widget/letters/QuickBarEx;)Lsmartisanos/widget/letters/QuickBarEx$QBListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx$1;->this$0:Lsmartisanos/widget/letters/QuickBarEx;

    invoke-static {v0}, Lsmartisanos/widget/letters/QuickBarEx;->access$000(Lsmartisanos/widget/letters/QuickBarEx;)Lsmartisanos/widget/letters/QuickBarEx$QBListener;

    move-result-object v0

    sget v1, Lsmartisanos/widget/letters/QuickBarEx;->LETTER_CHANGED_SLIDE:I

    invoke-interface {v0, p1, v1}, Lsmartisanos/widget/letters/QuickBarEx$QBListener;->onLetterChanged(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
