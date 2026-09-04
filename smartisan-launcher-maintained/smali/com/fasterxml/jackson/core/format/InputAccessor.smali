.class public interface abstract Lcom/fasterxml/jackson/core/format/InputAccessor;
.super Ljava/lang/Object;
.source "InputAccessor.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/core/format/InputAccessor$Std;
    }
.end annotation


.method public abstract hasMoreBytes()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract nextByte()B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract reset()V
.end method
