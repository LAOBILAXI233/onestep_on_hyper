.class Lcom/smartisanos/launcher/data/Utils$3$4;
.super Ljava/lang/Object;
.source "Utils.java"

.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 1977
    iput-object p1, p0, Lcom/smartisanos/launcher/data/Utils$3$4;->this$0:Lcom/smartisanos/launcher/data/Utils$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 1980
    iget-object v0, p0, Lcom/smartisanos/launcher/data/Utils$3$4;->this$0:Lcom/smartisanos/launcher/data/Utils$3;

    iget-object v0, v0, Lcom/smartisanos/launcher/data/Utils$3;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/smartisanos/launcher/data/Utils$3$4;->this$0:Lcom/smartisanos/launcher/data/Utils$3;

    iget-object v1, v1, Lcom/smartisanos/launcher/data/Utils$3;->val$defHomePkg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/data/Utils;->access$200(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1981
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Utils;->access$102(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1982
    return-void
.end method
