.class public interface abstract Lorg/apache/http/entity/mime/content/ContentBody;
.super Ljava/lang/Object;
.source "ContentBody.java"

.implements Lorg/apache/http/entity/mime/content/ContentDescriptor;


.method public abstract getFilename()Ljava/lang/String;
.end method

.method public abstract writeTo(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
