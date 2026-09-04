.class final Lcom/smartisanos/launcher/data/Utils$3;
.super Ljava/lang/Object;
.source "Utils.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/data/Utils;->setHomeToDefault(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$defHomePkg:Ljava/lang/String;


.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1965
    iput-object p1, p0, Lcom/smartisanos/launcher/data/Utils$3;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/smartisanos/launcher/data/Utils$3;->val$defHomePkg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 4

    .prologue
    .line 1968
    invoke-static {}, Lcom/smartisanos/launcher/data/Utils;->access$100()Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1969
    invoke-static {}, Lcom/smartisanos/launcher/data/Utils;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v1

    const-string v2, "DEBUG"

    const-string v3, "setHomeToDefault is not null"

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2003
    :goto_0
    return-void

    .line 1972
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/smartisanos/launcher/data/Utils$3;->val$activity:Landroid/app/Activity;

    const v2, 0x103012b

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1974
    .local v0, "themeWrapper":Landroid/view/ContextThemeWrapper;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0801eb

    .line 1975
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0801ea

    .line 1976
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080044

    new-instance v3, Lcom/smartisanos/launcher/data/Utils$3$4;

    invoke-direct {v3, p0}, Lcom/smartisanos/launcher/data/Utils$3$4;-><init>(Lcom/smartisanos/launcher/data/Utils$3;)V

    .line 1977
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080042

    new-instance v3, Lcom/smartisanos/launcher/data/Utils$3$3;

    invoke-direct {v3, p0}, Lcom/smartisanos/launcher/data/Utils$3$3;-><init>(Lcom/smartisanos/launcher/data/Utils$3;)V

    .line 1984
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/smartisanos/launcher/data/Utils$3$2;

    invoke-direct {v2, p0}, Lcom/smartisanos/launcher/data/Utils$3$2;-><init>(Lcom/smartisanos/launcher/data/Utils$3;)V

    .line 1990
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/smartisanos/launcher/data/Utils$3$1;

    invoke-direct {v2, p0}, Lcom/smartisanos/launcher/data/Utils$3$1;-><init>(Lcom/smartisanos/launcher/data/Utils$3;)V

    .line 1996
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 2001
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1974
    invoke-static {v1}, Lcom/smartisanos/launcher/data/Utils;->access$102(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 2002
    invoke-static {}, Lcom/smartisanos/launcher/data/Utils;->access$100()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
