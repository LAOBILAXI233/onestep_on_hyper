.class public interface abstract Lorg/apache/http/Header;
.super Ljava/lang/Object;
.source "Header.java"


.method public abstract getElements()[Lorg/apache/http/HeaderElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getValue()Ljava/lang/String;
.end method
