.class public Lcom/fasterxml/jackson/databind/PropertyNamingStrategy$PascalCaseStrategy;
.super Lcom/fasterxml/jackson/databind/PropertyNamingStrategy$UpperCamelCaseStrategy;
.source "PropertyNamingStrategy.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PascalCaseStrategy"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 428
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy$UpperCamelCaseStrategy;-><init>()V

    return-void
.end method
