.class final Lcom/smartisanos/launcher/data/Utils$6;
.super Ljava/lang/Object;
.source "Utils.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/data/Utils;->preLoadImage(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.field final synthetic val$context:Landroid/content/Context;


.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 2520
    iput-object p1, p0, Lcom/smartisanos/launcher/data/Utils$6;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 2

    .prologue
    .line 2522
    iget-object v0, p0, Lcom/smartisanos/launcher/data/Utils$6;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020143

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/data/Constants;->SMARTISAN_INDETERMINATE:Landroid/graphics/drawable/Drawable;

    .line 2523
    return-void
.end method
