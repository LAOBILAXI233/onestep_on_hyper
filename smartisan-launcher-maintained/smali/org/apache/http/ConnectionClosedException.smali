.class public Lorg/apache/http/ConnectionClosedException;
.super Ljava/io/IOException;
.source "ConnectionClosedException.java"


.field private static final serialVersionUID:J = 0x891fac9439460c2L


.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method
