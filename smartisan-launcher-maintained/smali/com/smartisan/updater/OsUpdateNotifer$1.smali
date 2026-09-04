.class Lcom/smartisan/updater/OsUpdateNotifer$1;
.super Ljava/lang/Object;
.source "OsUpdateNotifer.java"

.implements Landroid/content/DialogInterface$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisan/updater/OsUpdateNotifer;->createDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisan/updater/OsUpdateNotifer;

.field final synthetic val$context:Landroid/content/Context;


.method constructor <init>(Lcom/smartisan/updater/OsUpdateNotifer;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisan/updater/OsUpdateNotifer;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/smartisan/updater/OsUpdateNotifer$1;->this$0:Lcom/smartisan/updater/OsUpdateNotifer;

    iput-object p2, p0, Lcom/smartisan/updater/OsUpdateNotifer$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/smartisan/updater/OsUpdateNotifer$1;->this$0:Lcom/smartisan/updater/OsUpdateNotifer;

    iget-object v1, p0, Lcom/smartisan/updater/OsUpdateNotifer$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/smartisan/updater/OsUpdateNotifer;->access$000(Lcom/smartisan/updater/OsUpdateNotifer;Landroid/content/Context;)V

    .line 101
    return-void
.end method
