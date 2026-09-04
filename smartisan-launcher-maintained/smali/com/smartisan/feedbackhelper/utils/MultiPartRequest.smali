.class public interface abstract Lcom/smartisan/feedbackhelper/utils/MultiPartRequest;
.super Ljava/lang/Object;
.source "MultiPartRequest.java"


.method public abstract addFileUpload(Ljava/lang/String;Ljava/io/File;)V
.end method

.method public abstract addStringUpload(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getFileUploads()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStringUploads()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
