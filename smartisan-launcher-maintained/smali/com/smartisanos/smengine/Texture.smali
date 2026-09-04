.class public Lcom/smartisanos/smengine/Texture;
.super Ljava/lang/Object;
.source "Texture.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/smengine/Texture$TextureException;,
        Lcom/smartisanos/smengine/Texture$State;
    }
.end annotation


.field public static final LINEAR:I = 0x1

.field public static final LINEAR_MIPMAP_LINEAR:I = 0x5

.field public static final LINEAR_MIPMAP_NEAREST:I = 0x4

.field public static final NEAREST:I = 0x0

.field public static final NEAREST_MIPMAP_LINEAR:I = 0x3

.field public static final NEAREST_MIPMAP_NEAREST:I = 0x2

.field public static final SEP:Ljava/lang/String; = "/--/"

.field private static final TAG:Ljava/lang/String; = "Texture"

.field public static final WRAP_CLAMP:I = 0x0

.field public static final WRAP_REPEAT:I = 0x1

.field public static sTextFlag:Ljava/lang/String;


.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCanRecycle:Z

.field private mFirstChangeToMipmap:Z

.field private mHeight:F

.field private mNeedSetState:Z

.field private mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

.field private mTexID:I

.field private mTexState:Lcom/smartisanos/smengine/Texture$State;

.field private mUseMipmap:Z

.field private mWidth:F


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, ""

    sput-object v0, Lcom/smartisanos/smengine/Texture;->sTextFlag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/smartisanos/smengine/Texture$State;

    invoke-direct {v0}, Lcom/smartisanos/smengine/Texture$State;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/Texture;->mTexState:Lcom/smartisanos/smengine/Texture$State;

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/smartisanos/smengine/Texture;->mTexID:I

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/smengine/Texture;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/smengine/Texture;->mNeedSetState:Z

    .line 344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/smengine/Texture;->mCanRecycle:Z

    .line 60
    return-void
.end method

.method public constructor <init>(IIIILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "minFilter"    # I
    .param p2, "magFilter"    # I
    .param p3, "wrapS"    # I
    .param p4, "wrapT"    # I
    .param p5, "bmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/smartisanos/smengine/Texture$State;

    invoke-direct {v0}, Lcom/smartisanos/smengine/Texture$State;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/Texture;->mTexState:Lcom/smartisanos/smengine/Texture$State;

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/smartisanos/smengine/Texture;->mTexID:I

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/smengine/Texture;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/smengine/Texture;->mNeedSetState:Z

    .line 344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/smengine/Texture;->mCanRecycle:Z

    .line 82
    iget-object v0, p0, Lcom/smartisanos/smengine/Texture;->mTexState:Lcom/smartisanos/smengine/Texture$State;

    iput p1, v0, Lcom/smartisanos/smengine/Texture$State;->mMinFilter:I

    .line 83
    iget-object v0, p0, Lcom/smartisanos/smengine/Texture;->mTexState:Lcom/smartisanos/smengine/Texture$State;

    iput p2, v0, Lcom/smartisanos/smengine/Texture$State;->mMagFilter:I

    .line 84
    iget-object v0, p0, Lcom/smartisanos/smengine/Texture;->mTexState:Lcom/smartisanos/smengine/Texture$State;

    iput p3, v0, Lcom/smartisanos/smengine/Texture$State;->mWrapS:I

    .line 85
    iget-object v0, p0, Lcom/smartisanos/smengine/Texture;->mTexState:Lcom/smartisanos/smengine/Texture$State;

    iput p4, v0, Lcom/smartisanos/smengine/Texture$State;->mWrapT:I

    .line 86
    iput-object p5, p0, Lcom/smartisanos/smengine/Texture;->mBitmap:Landroid/graphics/Bitmap;

    .line 87
    iget-object v0, p0, Lcom/smartisanos/smengine/Texture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/smartisanos/smengine/Texture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/smartisanos/smengine/Texture;->mWidth:F

    .line 89
    iget-object v0, p0, Lcom/smartisanos/smengine/Texture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/smartisanos/smengine/Texture;->mHeight:F

    .line 91
    :cond_0
    iget-boolean v0, p0, Lcom/smartisanos/smengine/Texture;->mUseMipmap:Z

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/smartisanos/smengine/Texture;->mTexState:Lcom/smartisanos/smengine/Texture$State;

    const/4 v1, 0x3

    iput v1, v0, Lcom/smartisanos/smengine/Texture$State;->mMinFilter:I

    .line 94
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/smartisanos/smengine/Texture$State;

    invoke-direct {v0}, Lcom/smartisanos/smengine/Texture$State;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/Texture;->mTexState:Lcom/smartisanos/smengine/Texture$State;

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/smartisanos/smengine/Texture;->mTexID:I

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/smengine/Texture;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    .line 54
    iput-boolean v1, p0, Lcom/smartisanos/smengine/Texture;->mNeedSetState:Z

    .line 344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/smengine/Texture;->mCanRecycle:Z

    .line 97
    iput-object p1, p0, Lcom/smartisanos/smengine/Texture;->mBitmap:Landroid/graphics/Bitmap;

    .line 98
    iget-object v0, p0, Lcom/smartisanos/smengine/Texture;->mTexState:Lcom/smartisanos/smengine/Texture$State;

    iput v1, v0, Lcom/smartisanos/smengine/Texture$State;->mMinFilter:I

    .line 99
    iget-object v0, p0, Lcom/smartisanos/smengine/Texture;->mTexState:Lcom/smartisanos/smengine/Texture$State;

    iput v1, v0, Lcom/smartisanos/smengine/Texture$State;->mMagFilter:I

    .line 100
    iget-object v0, p0, Lcom/smartisanos/smengine/Texture;->mTexState:Lcom/smartisanos/smengine/Texture$State;

    iput v1, v0, Lcom/smartisanos/smengine/Texture$State;->mWrapS:I

    .line 101
    iget-object v0, p0, Lcom/smartisanos/smengine/Texture;->mTexState:Lcom/smartisanos/smengine/Texture$State;

    iput v1, v0, Lcom/smartisanos/smengine/Texture$State;->mWrapT:I

    .line 102
    iget-object v0, p0, Lcom/smartisanos/smengine/Texture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/smartisanos/smengine/Texture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/smartisanos/smengine/Texture;->mWidth:F

    .line 104
    iget-object v0, p0, Lcom/smartisanos/smengine/Texture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/smartisanos/smengine/Texture;->mHeight:F

    .line 106
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/smengine/RenderTarget;)V
    .locals 2
    .param p1, "rt"    # Lcom/smartisanos/smengine/RenderTarget;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/smartisanos/smengine/Texture$State;

    invoke-direct {v0}, Lcom/smartisanos/smengine/Texture$State;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/Texture;->mTexState:Lcom/smartisanos/smengine/Texture$State;

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/smartisanos/smengine/Texture;->mTexID:I

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/smengine/Texture;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/smengine/Texture;->mNeedSetState:Z

    .line 344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/smengine/Texture;->mCanRecycle:Z

    .line 62
    iput-object p1, p0, Lcom/smartisanos/smengine/Texture;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    .line 63
    iget-boolean v0, p0, Lcom/smartisanos/smengine/Texture;->mUseMipmap:Z

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/smartisanos/smengine/Texture;->mTexState:Lcom/smartisanos/smengine/Texture$State;

    const/4 v1, 0x3

    iput v1, v0, Lcom/smartisanos/smengine/Texture$State;->mMinFilter:I

    .line 66
    :cond_0
    return-void
.end method

.method private static convertToGLFilterParam(I)I
    .locals 2
    .param p0, "param"    # I

    .prologue
    const/16 v1, 0x2601

    const/16 v0, 0x2600

    .line 170
    packed-switch p0, :pswitch_data_0

    .line 196
    new-instance v0, Lcom/smartisanos/smengine/Texture$TextureException;

    const-string v1, "unsupport filter param"

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/Texture$TextureException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move v0, v1

    .line 194
    :cond_0
    :goto_0
    :pswitch_1
    return v0

    .line 176
    :pswitch_2
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->sIsSupportMipMapTexture:Z

    if-eqz v1, :cond_0

    .line 179
    const/16 v0, 0x2700

    goto :goto_0

    .line 181
    :pswitch_3
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->sIsSupportMipMapTexture:Z

    if-eqz v1, :cond_0

    .line 184
    const/16 v0, 0x2702

    goto :goto_0

    .line 186
    :pswitch_4
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsSupportMipMapTexture:Z

    if-nez v0, :cond_1

    move v0, v1

    .line 187
    goto :goto_0

    .line 189
    :cond_1
    const/16 v0, 0x2701

    goto :goto_0

    .line 191
    :pswitch_5
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsSupportMipMapTexture:Z

    if-nez v0, :cond_2

    move v0, v1

    .line 192
    goto :goto_0

    .line 194
    :cond_2
    const/16 v0, 0x2703

    goto :goto_0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static convertToGLWrapParam(I)I
    .locals 2
    .param p0, "param"    # I

    .prologue
    const v0, 0x812f

    .line 199
    packed-switch p0, :pswitch_data_0

    .line 208
    new-instance v0, Lcom/smartisanos/smengine/Texture$TextureException;

    const-string v1, "unsupport wrap param"

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/Texture$TextureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :pswitch_0
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->sIsSupportMipMapTexture:Z

    if-nez v1, :cond_0

    .line 206
    :goto_0
    :pswitch_1
    return v0

    .line 204
    :cond_0
    const/16 v0, 0x2901

    goto :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static createTextTextureName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 152
    invoke-static {}, Lcom/smartisanos/smengine/Texture;->getTextTextureStartString()Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "startStr":Ljava/lang/String;
    invoke-static {}, Lcom/smartisanos/smengine/Texture;->getTextTextureEndString()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "endStr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/smartisanos/smengine/Texture;->sTextFlag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static extractTextFromTextureName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 157
    invoke-static {}, Lcom/smartisanos/smengine/Texture;->getTextTextureStartString()Ljava/lang/String;

    move-result-object v4

    .line 158
    .local v4, "startStr":Ljava/lang/String;
    invoke-static {}, Lcom/smartisanos/smengine/Texture;->getTextTextureEndString()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "endStr":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 160
    .local v2, "startIndex":I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 161
    .local v3, "startLen":I
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 162
    .local v5, "subStr":Ljava/lang/String;
    const-string v6, "/--/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 163
    const-string v6, "/--/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 164
    .local v1, "index":I
    const-string v6, "/--/"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v1, v6

    .line 165
    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 167
    .end local v1    # "index":I
    :cond_0
    return-object v5
.end method

.method private static getTextTextureEndString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 140
    const/4 v1, 0x3

    .line 141
    .local v1, "endc":C
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "a":Ljava/lang/String;
    return-object v0
.end method

.method private static getTextTextureStartString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 135
    const/4 v1, 0x2

    .line 136
    .local v1, "startc":C
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "a":Ljava/lang/String;
    return-object v0
.end method

.method public static isTextTextureName(Ljava/lang/String;)Z
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-static {}, Lcom/smartisanos/smengine/Texture;->getTextTextureStartString()Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, "startStr":Ljava/lang/String;
    invoke-static {}, Lcom/smartisanos/smengine/Texture;->getTextTextureEndString()Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "endStr":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 148
    .local v2, "start":Z
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 149
    .local v0, "end":Z
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static setTextureState(Lcom/smartisanos/smengine/Texture$State;)V
    .locals 3
    .param p0, "texState"    # Lcom/smartisanos/smengine/Texture$State;

    .prologue
    const/16 v2, 0xde1

    .line 226
    const/16 v0, 0x2801

    iget v1, p0, Lcom/smartisanos/smengine/Texture$State;->mMinFilter:I

    invoke-static {v1}, Lcom/smartisanos/smengine/Texture;->convertToGLFilterParam(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 227
    const-string v0, "texparameter min filter"

    invoke-static {v0}, Lcom/smartisanos/smengine/GLContext;->checkGlError(Ljava/lang/String;)V

    .line 228
    const/16 v0, 0x2800

    iget v1, p0, Lcom/smartisanos/smengine/Texture$State;->mMagFilter:I

    .line 230
    invoke-static {v1}, Lcom/smartisanos/smengine/Texture;->convertToGLFilterParam(I)I

    move-result v1

    int-to-float v1, v1

    .line 228
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 231
    const-string v0, "texparameter mag filter"

    invoke-static {v0}, Lcom/smartisanos/smengine/GLContext;->checkGlError(Ljava/lang/String;)V

    .line 232
    const/16 v0, 0x2802

    iget v1, p0, Lcom/smartisanos/smengine/Texture$State;->mWrapS:I

    .line 233
    invoke-static {v1}, Lcom/smartisanos/smengine/Texture;->convertToGLWrapParam(I)I

    move-result v1

    .line 232
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 234
    const/16 v0, 0x2803

    iget v1, p0, Lcom/smartisanos/smengine/Texture$State;->mWrapT:I

    .line 235
    invoke-static {v1}, Lcom/smartisanos/smengine/Texture;->convertToGLWrapParam(I)I

    move-result v1

    .line 234
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 236
    return-void
.end method


.method public bind()Z
    .locals 9

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x1

    const/16 v5, 0xde1

    const/4 v3, 0x0

    .line 255
    iget-object v4, p0, Lcom/smartisanos/smengine/Texture;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    if-eqz v4, :cond_2

    .line 257
    iget-object v4, p0, Lcom/smartisanos/smengine/Texture;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RenderTarget;->getTexID()I

    move-result v0

    .line 258
    .local v0, "texID":I
    if-eq v0, v6, :cond_1

    .line 259
    invoke-static {v5, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 261
    iget-boolean v4, p0, Lcom/smartisanos/smengine/Texture;->mNeedSetState:Z

    if-eqz v4, :cond_0

    .line 262
    iget-object v4, p0, Lcom/smartisanos/smengine/Texture;->mTexState:Lcom/smartisanos/smengine/Texture$State;

    invoke-static {v4}, Lcom/smartisanos/smengine/Texture;->setTextureState(Lcom/smartisanos/smengine/Texture$State;)V

    .line 263
    iput-boolean v3, p0, Lcom/smartisanos/smengine/Texture;->mNeedSetState:Z

    .line 305
    .end local v0    # "texID":I
    :cond_0
    :goto_0
    return v2

    .line 267
    .restart local v0    # "texID":I
    :cond_1
    const-string v2, "Texture bind"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "texture has render target, but target.getTexId == -1 mRenderTarget name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/smartisanos/smengine/Texture;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/RenderTarget;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 268
    goto :goto_0

    .line 271
    .end local v0    # "texID":I
    :cond_2
    iget v4, p0, Lcom/smartisanos/smengine/Texture;->mTexID:I

    if-eq v4, v6, :cond_4

    .line 272
    iget v4, p0, Lcom/smartisanos/smengine/Texture;->mTexID:I

    invoke-static {v5, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 273
    iget-boolean v4, p0, Lcom/smartisanos/smengine/Texture;->mNeedSetState:Z

    if-eqz v4, :cond_3

    .line 274
    iget-object v4, p0, Lcom/smartisanos/smengine/Texture;->mTexState:Lcom/smartisanos/smengine/Texture$State;

    invoke-static {v4}, Lcom/smartisanos/smengine/Texture;->setTextureState(Lcom/smartisanos/smengine/Texture$State;)V

    .line 275
    iput-boolean v3, p0, Lcom/smartisanos/smengine/Texture;->mNeedSetState:Z

    .line 277
    :cond_3
    iget-boolean v4, p0, Lcom/smartisanos/smengine/Texture;->mFirstChangeToMipmap:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/smartisanos/smengine/Texture;->mUseMipmap:Z

    if-eqz v4, :cond_0

    .line 278
    invoke-static {v5}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    .line 279
    iput-boolean v3, p0, Lcom/smartisanos/smengine/Texture;->mFirstChangeToMipmap:Z

    goto :goto_0

    .line 283
    :cond_4
    iget-object v4, p0, Lcom/smartisanos/smengine/Texture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_8

    .line 284
    new-array v1, v2, [I

    .line 285
    .local v1, "texIDArray":[I
    invoke-static {v2, v1, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 286
    aget v4, v1, v3

    iput v4, p0, Lcom/smartisanos/smengine/Texture;->mTexID:I

    .line 287
    iget v4, p0, Lcom/smartisanos/smengine/Texture;->mTexID:I

    invoke-static {v5, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 288
    iget-boolean v4, p0, Lcom/smartisanos/smengine/Texture;->mNeedSetState:Z

    if-eqz v4, :cond_5

    .line 289
    iget-object v4, p0, Lcom/smartisanos/smengine/Texture;->mTexState:Lcom/smartisanos/smengine/Texture$State;

    invoke-static {v4}, Lcom/smartisanos/smengine/Texture;->setTextureState(Lcom/smartisanos/smengine/Texture$State;)V

    .line 290
    iput-boolean v3, p0, Lcom/smartisanos/smengine/Texture;->mNeedSetState:Z

    .line 292
    :cond_5
    const/4 v7, 0x0

    iget-object v4, p0, Lcom/smartisanos/smengine/Texture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v8, v0, :cond_9

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-eq v8, v0, :cond_9

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v4, v0, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    if-eqz v8, :cond_9

    move-object v4, v8

    const/4 v7, 0x1

    :cond_9
    invoke-static {v5, v3, v4, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    if-eqz v7, :cond_a

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_a

    .line 293
    iget-boolean v3, p0, Lcom/smartisanos/smengine/Texture;->mUseMipmap:Z

    if-eqz v3, :cond_6

    .line 294
    invoke-static {v5}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    .line 296
    :cond_6
    iget v3, p0, Lcom/smartisanos/smengine/Texture;->mTexID:I

    if-ne v3, v6, :cond_7

    .line 297
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, " ??? glGenTextures error!!!!!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 299
    :cond_7
    iget-boolean v3, p0, Lcom/smartisanos/smengine/Texture;->mCanRecycle:Z

    if-eqz v3, :cond_0

    .line 300
    iget-object v3, p0, Lcom/smartisanos/smengine/Texture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 301
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/smartisanos/smengine/Texture;->mBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .end local v1    # "texIDArray":[I
    :cond_8
    move v2, v3

    .line 305
    goto/16 :goto_0
.end method

.method public delete(Z)V
    .locals 6
    .param p1, "cleanHardwareResource"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 317
    iget-object v1, p0, Lcom/smartisanos/smengine/Texture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 318
    iget-object v1, p0, Lcom/smartisanos/smengine/Texture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 319
    iput-object v3, p0, Lcom/smartisanos/smengine/Texture;->mBitmap:Landroid/graphics/Bitmap;

    .line 321
    :cond_0
    if-nez p1, :cond_3

    .line 322
    iput v2, p0, Lcom/smartisanos/smengine/Texture;->mTexID:I

    .line 323
    iget-object v1, p0, Lcom/smartisanos/smengine/Texture;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    if-eqz v1, :cond_1

    .line 324
    iget-object v1, p0, Lcom/smartisanos/smengine/Texture;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/RenderTarget;->delete(Z)V

    .line 326
    :cond_1
    iput-object v3, p0, Lcom/smartisanos/smengine/Texture;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    .line 342
    :cond_2
    :goto_0
    return-void

    .line 329
    :cond_3
    iget v1, p0, Lcom/smartisanos/smengine/Texture;->mTexID:I

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/smartisanos/smengine/Texture;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    if-eqz v1, :cond_2

    .line 333
    :cond_4
    new-array v0, v5, [I

    iget v1, p0, Lcom/smartisanos/smengine/Texture;->mTexID:I

    aput v1, v0, v4

    .line 334
    .local v0, "texs":[I
    invoke-static {v5, v0, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 335
    iput v2, p0, Lcom/smartisanos/smengine/Texture;->mTexID:I

    .line 337
    iget-object v1, p0, Lcom/smartisanos/smengine/Texture;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    if-eqz v1, :cond_5

    .line 339
    iget-object v1, p0, Lcom/smartisanos/smengine/Texture;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/RenderTarget;->delete(Z)V

    .line 341
    :cond_5
    iput-object v3, p0, Lcom/smartisanos/smengine/Texture;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    goto :goto_0
.end method

.method public forceUpdateRenderTargetMipmap()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/smartisanos/smengine/Texture;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/smartisanos/smengine/Texture;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RenderTarget;->setGenMipmap(Z)V

    .line 253
    :cond_0
    return-void
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/smartisanos/smengine/Texture;->mHeight:F

    return v0
.end method

.method public getTexID()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/smartisanos/smengine/Texture;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/smartisanos/smengine/Texture;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RenderTarget;->getTexID()I

    move-result v0

    .line 126
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/smartisanos/smengine/Texture;->mTexID:I

    goto :goto_0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/smartisanos/smengine/Texture;->mWidth:F

    return v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/smartisanos/smengine/Texture;->mBitmap:Landroid/graphics/Bitmap;

    .line 115
    iget-object v0, p0, Lcom/smartisanos/smengine/Texture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/smartisanos/smengine/Texture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/smartisanos/smengine/Texture;->mWidth:F

    .line 117
    iget-object v0, p0, Lcom/smartisanos/smengine/Texture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/smartisanos/smengine/Texture;->mHeight:F

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisanos/smengine/Texture;->mHeight:F

    iput v0, p0, Lcom/smartisanos/smengine/Texture;->mWidth:F

    goto :goto_0
.end method

.method public setCanRecycle(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 346
    iput-boolean p1, p0, Lcom/smartisanos/smengine/Texture;->mCanRecycle:Z

    .line 347
    return-void
.end method

.method public setFilter(II)V
    .locals 1
    .param p1, "minFilter"    # I
    .param p2, "magFilter"    # I

    .prologue
    .line 218
    iget-object v0, p0, Lcom/smartisanos/smengine/Texture;->mTexState:Lcom/smartisanos/smengine/Texture$State;

    iput p1, v0, Lcom/smartisanos/smengine/Texture$State;->mMinFilter:I

    .line 219
    iget-object v0, p0, Lcom/smartisanos/smengine/Texture;->mTexState:Lcom/smartisanos/smengine/Texture$State;

    iput p2, v0, Lcom/smartisanos/smengine/Texture$State;->mMagFilter:I

    .line 220
    return-void
.end method

.method public setIsUseMipmap(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    const/4 v2, 0x1

    .line 68
    iput-boolean p1, p0, Lcom/smartisanos/smengine/Texture;->mUseMipmap:Z

    .line 69
    iget-boolean v0, p0, Lcom/smartisanos/smengine/Texture;->mUseMipmap:Z

    if-eqz v0, :cond_1

    .line 70
    iget-boolean v0, p0, Lcom/smartisanos/smengine/Texture;->mFirstChangeToMipmap:Z

    if-nez v0, :cond_0

    .line 71
    iput-boolean v2, p0, Lcom/smartisanos/smengine/Texture;->mFirstChangeToMipmap:Z

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/Texture;->mTexState:Lcom/smartisanos/smengine/Texture$State;

    const/4 v1, 0x5

    iput v1, v0, Lcom/smartisanos/smengine/Texture$State;->mMinFilter:I

    .line 74
    iget-object v0, p0, Lcom/smartisanos/smengine/Texture;->mTexState:Lcom/smartisanos/smengine/Texture$State;

    iput v2, v0, Lcom/smartisanos/smengine/Texture$State;->mMagFilter:I

    .line 75
    iget-object v0, p0, Lcom/smartisanos/smengine/Texture;->mTexState:Lcom/smartisanos/smengine/Texture$State;

    iput v2, v0, Lcom/smartisanos/smengine/Texture$State;->mWrapS:I

    .line 76
    iget-object v0, p0, Lcom/smartisanos/smengine/Texture;->mTexState:Lcom/smartisanos/smengine/Texture$State;

    iput v2, v0, Lcom/smartisanos/smengine/Texture$State;->mWrapT:I

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/smengine/Texture;->mFirstChangeToMipmap:Z

    goto :goto_0
.end method

.method public setTextureState(IIII)V
    .locals 1
    .param p1, "minFilter"    # I
    .param p2, "magFilter"    # I
    .param p3, "wrapS"    # I
    .param p4, "wrapT"    # I

    .prologue
    .line 212
    iget-object v0, p0, Lcom/smartisanos/smengine/Texture;->mTexState:Lcom/smartisanos/smengine/Texture$State;

    iput p1, v0, Lcom/smartisanos/smengine/Texture$State;->mMinFilter:I

    .line 213
    iget-object v0, p0, Lcom/smartisanos/smengine/Texture;->mTexState:Lcom/smartisanos/smengine/Texture$State;

    iput p2, v0, Lcom/smartisanos/smengine/Texture$State;->mMagFilter:I

    .line 214
    iget-object v0, p0, Lcom/smartisanos/smengine/Texture;->mTexState:Lcom/smartisanos/smengine/Texture$State;

    iput p3, v0, Lcom/smartisanos/smengine/Texture$State;->mWrapS:I

    .line 215
    iget-object v0, p0, Lcom/smartisanos/smengine/Texture;->mTexState:Lcom/smartisanos/smengine/Texture$State;

    iput p4, v0, Lcom/smartisanos/smengine/Texture$State;->mWrapT:I

    .line 216
    return-void
.end method

.method public setWrapMode(II)V
    .locals 1
    .param p1, "wrapS"    # I
    .param p2, "wrapT"    # I

    .prologue
    .line 222
    iget-object v0, p0, Lcom/smartisanos/smengine/Texture;->mTexState:Lcom/smartisanos/smengine/Texture$State;

    iput p1, v0, Lcom/smartisanos/smengine/Texture$State;->mWrapS:I

    .line 223
    iget-object v0, p0, Lcom/smartisanos/smengine/Texture;->mTexState:Lcom/smartisanos/smengine/Texture$State;

    iput p2, v0, Lcom/smartisanos/smengine/Texture$State;->mWrapT:I

    .line 224
    return-void
.end method
