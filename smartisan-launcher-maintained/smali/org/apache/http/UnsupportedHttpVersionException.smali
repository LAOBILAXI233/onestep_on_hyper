.class public Lorg/apache/http/UnsupportedHttpVersionException;
.super Lorg/apache/http/ProtocolException;
.source "UnsupportedHttpVersionException.java"


.field private static final serialVersionUID:J = -0x12b6a664c6039857L


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/apache/http/ProtocolException;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 55
    return-void
.end method
