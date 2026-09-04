.class public Lcom/fasterxml/jackson/databind/PropertyNamingStrategy$LowerCaseWithUnderscoresStrategy;
.super Lcom/fasterxml/jackson/databind/PropertyNamingStrategy$SnakeCaseStrategy;
.source "PropertyNamingStrategy.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LowerCaseWithUnderscoresStrategy"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 422
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy$SnakeCaseStrategy;-><init>()V

    return-void
.end method
