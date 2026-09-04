.class Lcom/smartisanos/launcher/actions/HandlePushedMsg$1$1;
.super Ljava/lang/Object;
.source "HandlePushedMsg.java"

.implements Landroid/content/DialogInterface$OnDismissListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/actions/HandlePushedMsg$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/actions/HandlePushedMsg$1;


.method constructor <init>(Lcom/smartisanos/launcher/actions/HandlePushedMsg$1;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/actions/HandlePushedMsg$1;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/smartisanos/launcher/actions/HandlePushedMsg$1$1;->this$0:Lcom/smartisanos/launcher/actions/HandlePushedMsg$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 86
    return-void
.end method
