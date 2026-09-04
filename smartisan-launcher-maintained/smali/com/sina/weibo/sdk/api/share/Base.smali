.class public abstract Lcom/sina/weibo/sdk/api/share/Base;
.super Ljava/lang/Object;
.source "Base.java"


.field public transaction:Ljava/lang/String;


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public abstract fromBundle(Landroid/os/Bundle;)V
.end method

.method public abstract getType()I
.end method

.method public abstract toBundle(Landroid/os/Bundle;)V
.end method
