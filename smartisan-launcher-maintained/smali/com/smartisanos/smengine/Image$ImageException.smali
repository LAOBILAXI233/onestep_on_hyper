.class public Lcom/smartisanos/smengine/Image$ImageException;
.super Ljava/lang/RuntimeException;
.source "Image.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/smengine/Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageException"
.end annotation


.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method
