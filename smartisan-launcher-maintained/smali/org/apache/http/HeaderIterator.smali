.class public interface abstract Lorg/apache/http/HeaderIterator;
.super Ljava/lang/Object;
.source "HeaderIterator.java"

.implements Ljava/util/Iterator;


.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


.method public abstract hasNext()Z
.end method

.method public abstract nextHeader()Lorg/apache/http/Header;
.end method
