.class Lcom/smartisanos/launcher/data/Utils$3$2;
.super Ljava/lang/Object;
.source "Utils.java"

.implements Landroid/content/DialogInterface$OnCancelListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/data/Utils$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/data/Utils$3;


.method constructor <init>(Lcom/smartisanos/launcher/data/Utils$3;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/data/Utils$3;

    .prologue
    .line 1990
    iput-object p1, p0, Lcom/smartisanos/launcher/data/Utils$3$2;->this$0:Lcom/smartisanos/launcher/data/Utils$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 1993
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Utils;->access$102(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1994
    return-void
.end method
