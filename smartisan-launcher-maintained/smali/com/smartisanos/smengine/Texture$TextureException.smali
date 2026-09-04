.class public final Lcom/smartisanos/smengine/Texture$TextureException;
.super Ljava/lang/RuntimeException;
.source "Texture.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/smengine/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TextureException"
.end annotation


.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 132
    return-void
.end method
