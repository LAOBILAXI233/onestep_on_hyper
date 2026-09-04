.class Lcom/smartisanos/launcher/actions/StartActivity$1;
.super Ljava/lang/Object;
.source "StartActivity.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/actions/StartActivity;->launchWithCellDownAnimation(Landroid/content/Intent;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/actions/StartActivity;

.field final synthetic val$intent:Landroid/content/Intent;


.method constructor <init>(Lcom/smartisanos/launcher/actions/StartActivity;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/actions/StartActivity;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/smartisanos/launcher/actions/StartActivity$1;->this$0:Lcom/smartisanos/launcher/actions/StartActivity;

    iput-object p2, p0, Lcom/smartisanos/launcher/actions/StartActivity$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/StartActivity$1;->val$intent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/smartisanos/launcher/actions/StartActivity;->access$000(Landroid/content/Intent;)V

    .line 158
    return-void
.end method
