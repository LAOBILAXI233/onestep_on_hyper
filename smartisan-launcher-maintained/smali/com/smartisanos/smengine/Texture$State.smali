.class public Lcom/smartisanos/smengine/Texture$State;
.super Ljava/lang/Object;
.source "Texture.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/smengine/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


.field public mMagFilter:I

.field public mMinFilter:I

.field public mWrapS:I

.field public mWrapT:I


.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v1, p0, Lcom/smartisanos/smengine/Texture$State;->mMinFilter:I

    .line 21
    iput v1, p0, Lcom/smartisanos/smengine/Texture$State;->mMagFilter:I

    .line 22
    iput v0, p0, Lcom/smartisanos/smengine/Texture$State;->mWrapS:I

    .line 23
    iput v0, p0, Lcom/smartisanos/smengine/Texture$State;->mWrapT:I

    .line 24
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "minFilter"    # I
    .param p2, "magFilter"    # I
    .param p3, "wrapS"    # I
    .param p4, "wrapT"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/smartisanos/smengine/Texture$State;->mMinFilter:I

    .line 27
    iput p2, p0, Lcom/smartisanos/smengine/Texture$State;->mMagFilter:I

    .line 28
    iput p3, p0, Lcom/smartisanos/smengine/Texture$State;->mWrapS:I

    .line 29
    iput p4, p0, Lcom/smartisanos/smengine/Texture$State;->mWrapT:I

    .line 30
    return-void
.end method
