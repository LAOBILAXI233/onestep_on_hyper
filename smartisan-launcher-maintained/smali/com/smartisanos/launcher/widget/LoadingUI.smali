.class public Lcom/smartisanos/launcher/widget/LoadingUI;
.super Ljava/lang/Object;
.source "LoadingUI.java"


.field private static final log:Lcom/smartisanos/launcher/LOG;


.field private mDialog:Lcom/smartisanos/launcher/widget/SmartisanProgressDialog;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/smartisanos/launcher/widget/LoadingUI;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/widget/LoadingUI;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public create(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/widget/LoadingUI;->mDialog:Lcom/smartisanos/launcher/widget/SmartisanProgressDialog;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/smartisanos/launcher/widget/SmartisanProgressDialog;

    invoke-direct {v0, p1}, Lcom/smartisanos/launcher/widget/SmartisanProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/widget/LoadingUI;->mDialog:Lcom/smartisanos/launcher/widget/SmartisanProgressDialog;

    .line 16
    iget-object v0, p0, Lcom/smartisanos/launcher/widget/LoadingUI;->mDialog:Lcom/smartisanos/launcher/widget/SmartisanProgressDialog;

    invoke-virtual {v0, p2}, Lcom/smartisanos/launcher/widget/SmartisanProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v0, p0, Lcom/smartisanos/launcher/widget/LoadingUI;->mDialog:Lcom/smartisanos/launcher/widget/SmartisanProgressDialog;

    sget v1, Lcom/smartisanos/launcher/ResIds$drawable;->loading_progress:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/widget/SmartisanProgressDialog;->setIndeterminateDrawableResource(I)V

    .line 18
    iget-object v0, p0, Lcom/smartisanos/launcher/widget/LoadingUI;->mDialog:Lcom/smartisanos/launcher/widget/SmartisanProgressDialog;

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/widget/SmartisanProgressDialog;->setCancelable(Z)V

    .line 19
    iget-object v0, p0, Lcom/smartisanos/launcher/widget/LoadingUI;->mDialog:Lcom/smartisanos/launcher/widget/SmartisanProgressDialog;

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/widget/SmartisanProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 21
    :cond_0
    return-void
.end method

.method public destroy()Z
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/smartisanos/launcher/widget/LoadingUI;->mDialog:Lcom/smartisanos/launcher/widget/SmartisanProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/widget/LoadingUI;->mDialog:Lcom/smartisanos/launcher/widget/SmartisanProgressDialog;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/widget/SmartisanProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/smartisanos/launcher/widget/LoadingUI;->dismiss()Z

    .line 40
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dismiss()Z
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/smartisanos/launcher/widget/LoadingUI;->mDialog:Lcom/smartisanos/launcher/widget/SmartisanProgressDialog;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/smartisanos/launcher/widget/LoadingUI;->mDialog:Lcom/smartisanos/launcher/widget/SmartisanProgressDialog;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/widget/SmartisanProgressDialog;->dismiss()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/widget/LoadingUI;->mDialog:Lcom/smartisanos/launcher/widget/SmartisanProgressDialog;

    .line 31
    const/4 v0, 0x1

    .line 33
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/smartisanos/launcher/widget/LoadingUI;->mDialog:Lcom/smartisanos/launcher/widget/SmartisanProgressDialog;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/widget/SmartisanProgressDialog;->show()V

    .line 25
    return-void
.end method
