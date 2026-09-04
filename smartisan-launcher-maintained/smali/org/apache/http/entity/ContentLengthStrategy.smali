.class public interface abstract Lorg/apache/http/entity/ContentLengthStrategy;
.super Ljava/lang/Object;
.source "ContentLengthStrategy.java"


.field public static final CHUNKED:I = -0x2

.field public static final IDENTITY:I = -0x1


.method public abstract determineLength(Lorg/apache/http/HttpMessage;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;
        }
    .end annotation
.end method
