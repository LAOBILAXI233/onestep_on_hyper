.class public Lorg/apache/http/ParseException;
.super Ljava/lang/RuntimeException;
.source "ParseException.java"


.field private static final serialVersionUID:J = -0x6527170a84993b1aL


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method
