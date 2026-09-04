.class Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$CellAnimationPassDataGenerator;
.super Ljava/lang/Object;
.source "MultiSelectFadeinFadeoutAnimation.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CellAnimationPassDataGenerator"
.end annotation


.field public CellPassDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/CellPassData;",
            ">;"
        }
    .end annotation
.end field

.field private mPC:Lcom/smartisanos/launcher/view/Cell;

.field final synthetic this$0:Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;


.method public constructor <init>(Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;Lcom/smartisanos/launcher/view/Cell;)V
    .locals 1
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;
    .param p2, "pc"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$CellAnimationPassDataGenerator;->this$0:Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    .line 236
    iput-object p2, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    .line 237
    return-void
.end method

.method static synthetic access$400(Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$CellAnimationPassDataGenerator;)Lcom/smartisanos/launcher/view/Cell;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$CellAnimationPassDataGenerator;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    return-object v0
.end method


.method public generateNormalCellPassData()V
    .locals 12

    .prologue
    const v11, 0x3f333333    # 0.7f

    const/high16 v10, 0x40e00000    # 7.0f

    const v9, 0x3f570a3d    # 0.84f

    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    .line 241
    new-instance v0, Lcom/smartisanos/launcher/view/CellPassData;

    invoke-direct {v0}, Lcom/smartisanos/launcher/view/CellPassData;-><init>()V

    .line 242
    .local v0, "cpd":Lcom/smartisanos/launcher/view/CellPassData;
    iput v11, v0, Lcom/smartisanos/launcher/view/CellPassData;->totalDuration:F

    .line 243
    iput v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->totalFrame:F

    .line 245
    iput v8, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStartFrame:F

    .line 246
    const/high16 v3, 0x40400000    # 3.0f

    iput v3, v0, Lcom/smartisanos/launcher/view/CellPassData;->passEndFrame:F

    .line 250
    iget-object v3, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iput v3, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStartX:F

    .line 251
    iget-object v3, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iput v3, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStartY:F

    .line 254
    iget-object v3, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v2

    .line 255
    .local v2, "endPos":Lcom/smartisanos/smengine/math/Vector3f;
    iget v3, v2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iput v3, v0, Lcom/smartisanos/launcher/view/CellPassData;->passEndX:F

    .line 256
    iget v3, v2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iput v3, v0, Lcom/smartisanos/launcher/view/CellPassData;->passEndY:F

    .line 258
    new-instance v3, Lcom/smartisanos/smengine/math/Vector3f;

    iget v4, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStartX:F

    iget v5, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStartY:F

    iget v6, v2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-direct {v3, v4, v5, v6}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v3, v0, Lcom/smartisanos/launcher/view/CellPassData;->passFrom:Lcom/smartisanos/smengine/math/Vector3f;

    .line 261
    iget-object v3, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getScale()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/math/Vector3f;->clone()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v3

    iput-object v3, v0, Lcom/smartisanos/launcher/view/CellPassData;->passScaleFrom:Lcom/smartisanos/smengine/math/Vector3f;

    .line 262
    new-instance v3, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v3, v9, v9, v9}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v3, v0, Lcom/smartisanos/launcher/view/CellPassData;->passScaleTo:Lcom/smartisanos/smengine/math/Vector3f;

    .line 264
    new-instance v3, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v3, v7, v7, v7, v7}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    iput-object v3, v0, Lcom/smartisanos/launcher/view/CellPassData;->passColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    .line 265
    new-instance v3, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v3, v7, v7, v7, v8}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    iput-object v3, v0, Lcom/smartisanos/launcher/view/CellPassData;->passColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    .line 267
    new-instance v3, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v3, v7, v7, v7, v7}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    iput-object v3, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    .line 268
    new-instance v3, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v3, v8, v8, v8, v8}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    iput-object v3, v0, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    .line 270
    const/16 v3, 0xd

    iput v3, v0, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    .line 272
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/CellPassData;->generatePass()V

    .line 273
    new-instance v3, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$FadeoutListener;

    iget-object v4, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$CellAnimationPassDataGenerator;->this$0:Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;

    iget-object v5, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-direct {v3, v4, v5}, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$FadeoutListener;-><init>(Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;Lcom/smartisanos/launcher/view/Cell;)V

    iput-object v3, v0, Lcom/smartisanos/launcher/view/CellPassData;->passListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    .line 274
    iget-object v3, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    new-instance v1, Lcom/smartisanos/launcher/view/CellPassData;

    invoke-direct {v1}, Lcom/smartisanos/launcher/view/CellPassData;-><init>()V

    .line 279
    .local v1, "cpd2":Lcom/smartisanos/launcher/view/CellPassData;
    iput v11, v1, Lcom/smartisanos/launcher/view/CellPassData;->totalDuration:F

    .line 280
    iput v10, v1, Lcom/smartisanos/launcher/view/CellPassData;->totalFrame:F

    .line 282
    const/high16 v3, 0x40400000    # 3.0f

    iput v3, v1, Lcom/smartisanos/launcher/view/CellPassData;->passStartFrame:F

    .line 283
    iput v10, v1, Lcom/smartisanos/launcher/view/CellPassData;->passEndFrame:F

    .line 287
    iget-object v3, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iput v3, v1, Lcom/smartisanos/launcher/view/CellPassData;->passStartX:F

    .line 288
    iget-object v3, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iput v3, v1, Lcom/smartisanos/launcher/view/CellPassData;->passStartY:F

    .line 290
    iget-object v3, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iput v3, v1, Lcom/smartisanos/launcher/view/CellPassData;->passEndX:F

    .line 291
    iget-object v3, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iput v3, v1, Lcom/smartisanos/launcher/view/CellPassData;->passEndY:F

    .line 293
    new-instance v3, Lcom/smartisanos/smengine/math/Vector3f;

    iget v4, v1, Lcom/smartisanos/launcher/view/CellPassData;->passStartX:F

    iget v5, v1, Lcom/smartisanos/launcher/view/CellPassData;->passStartY:F

    iget-object v6, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v6

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-direct {v3, v4, v5, v6}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v3, v1, Lcom/smartisanos/launcher/view/CellPassData;->passFrom:Lcom/smartisanos/smengine/math/Vector3f;

    .line 295
    new-instance v3, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v3, v7, v7, v7, v8}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    iput-object v3, v1, Lcom/smartisanos/launcher/view/CellPassData;->passColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    .line 296
    new-instance v3, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v3, v7, v7, v7, v7}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    iput-object v3, v1, Lcom/smartisanos/launcher/view/CellPassData;->passColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    .line 298
    new-instance v3, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v3, v8, v8, v8, v8}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    iput-object v3, v1, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    .line 299
    new-instance v3, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v3, v7, v7, v7, v7}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    iput-object v3, v1, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    .line 301
    iget-object v3, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getScale()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/math/Vector3f;->clone()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/smartisanos/smengine/math/Vector3f;->mult(F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v3

    iput-object v3, v1, Lcom/smartisanos/launcher/view/CellPassData;->passScaleFrom:Lcom/smartisanos/smengine/math/Vector3f;

    .line 302
    iget-object v3, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getScale()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/math/Vector3f;->clone()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v3

    iput-object v3, v1, Lcom/smartisanos/launcher/view/CellPassData;->passScaleTo:Lcom/smartisanos/smengine/math/Vector3f;

    .line 304
    const/16 v3, 0xe

    iput v3, v1, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    .line 306
    new-instance v3, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$FadeInListener;

    iget-object v4, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$CellAnimationPassDataGenerator;->this$0:Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;

    iget-object v5, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-direct {v3, v4, v5}, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$FadeInListener;-><init>(Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;Lcom/smartisanos/launcher/view/Cell;)V

    iput-object v3, v1, Lcom/smartisanos/launcher/view/CellPassData;->passListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    .line 307
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/CellPassData;->generatePass()V

    .line 308
    iget-object v3, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    return-void
.end method
