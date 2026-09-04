.class Lcom/hp/hpl/sparta/EmptyEnumeration;
.super Ljava/lang/Object;

.implements Ljava/util/Enumeration;


.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public hasMoreElements()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
