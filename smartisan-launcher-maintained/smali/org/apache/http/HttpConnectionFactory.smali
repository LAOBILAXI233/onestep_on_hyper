.class public interface abstract Lorg/apache/http/HttpConnectionFactory;
.super Ljava/lang/Object;
.source "HttpConnectionFactory.java"


.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/http/HttpConnection;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


.method public abstract createConnection(Ljava/net/Socket;)Lorg/apache/http/HttpConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/Socket;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
