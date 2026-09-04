.class public abstract Lcom/fasterxml/jackson/databind/Module;
.super Ljava/lang/Object;
.source "Module.java"

.implements Lcom/fasterxml/jackson/core/Versioned;


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/Module$SetupContext;
    }
.end annotation


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method


.method public abstract getModuleName()Ljava/lang/String;
.end method

.method public getTypeId()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract setupModule(Lcom/fasterxml/jackson/databind/Module$SetupContext;)V
.end method

.method public abstract version()Lcom/fasterxml/jackson/core/Version;
.end method
