.class final Lcom/smartisanos/home/net/CustomHttpRequest$3;
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

.field final synthetic val$value:Ljava/lang/String;


.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1419
    iput-object p1, p0, Lcom/smartisanos/home/net/CustomHttpRequest$3;->val$name:Ljava/lang/String;

    iput-object p2, p0, Lcom/smartisanos/home/net/CustomHttpRequest$3;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1419
    invoke-virtual {p0}, Lcom/smartisanos/home/net/CustomHttpRequest$3;->run()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1422
    iget-object v0, p0, Lcom/smartisanos/home/net/CustomHttpRequest$3;->val$name:Ljava/lang/String;

    iget-object v1, p0, Lcom/smartisanos/home/net/CustomHttpRequest$3;->val$value:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
