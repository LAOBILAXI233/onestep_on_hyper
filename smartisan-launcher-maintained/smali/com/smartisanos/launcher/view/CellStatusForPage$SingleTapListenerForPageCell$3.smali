.class Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell$3;
.super Ljava/lang/Object;
.source "CellStatusForPage.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell;->onClick(Lcom/smartisanos/smengine/TouchEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$1:Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell;


.method constructor <init>(Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell;)V
    .locals 0
    .param p1, "this$1"    # Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell$3;->this$1:Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 316
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getLauncherApplication()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v0

    .line 317
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getLauncherApplication()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v1

    sget v2, Lcom/smartisanos/launcher/ResIds$string;->at_most:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v4, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LauncherApplication;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 316
    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 318
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 319
    return-void
.end method
