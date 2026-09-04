.class public interface abstract Lorg/apache/http/io/HttpMessageParser;
.super Ljava/lang/Object;
.source "HttpMessageParser.java"


.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/http/HttpMessage;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


.method public abstract parse()Lorg/apache/http/HttpMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation
.end method
