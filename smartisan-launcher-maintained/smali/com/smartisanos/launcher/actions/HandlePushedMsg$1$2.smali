.class Lcom/smartisanos/launcher/actions/HandlePushedMsg$1$2;
.super Ljava/lang/Object;
.source "HandlePushedMsg.java"

.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 79
    iput-object p1, p0, Lcom/smartisanos/launcher/actions/HandlePushedMsg$1$2;->this$0:Lcom/smartisanos/launcher/actions/HandlePushedMsg$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 82
    return-void
.end method
