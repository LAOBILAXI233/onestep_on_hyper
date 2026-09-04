.class final Lcom/smartisanos/home/net/CustomHttpRequest$4;
.super Ljava/lang/Object;
.source "CustomHttpRequest.java"

.implements Ljava/security/PrivilegedAction;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/net/CustomHttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


.field final synthetic val$name:Ljava/lang/String;


.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1426
    iput-object p1, p0, Lcom/smartisanos/home/net/CustomHttpRequest$4;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1426
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest$4;->run()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/smartisanos/home/net/CustomHttpRequest$4;->val$name:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
