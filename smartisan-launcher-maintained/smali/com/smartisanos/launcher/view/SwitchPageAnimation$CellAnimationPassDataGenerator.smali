.class Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;
.super Ljava/lang/Object;
.source "SwitchPageAnimation.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/SwitchPageAnimation;
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

.field private mIndex:I

.field private mPg:Lcom/smartisanos/launcher/view/Page;

.field final synthetic this$0:Lcom/smartisanos/launcher/view/SwitchPageAnimation;


.method public constructor <init>(Lcom/smartisanos/launcher/view/SwitchPageAnimation;Lcom/smartisanos/launcher/view/Page;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/SwitchPageAnimation;
    .param p2, "page"    # Lcom/smartisanos/launcher/view/Page;
    .param p3, "index"    # I

    .prologue
    .line 221
    iput-object p1, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;->this$0:Lcom/smartisanos/launcher/view/SwitchPageAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    .line 222
    iput-object p2, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;->mPg:Lcom/smartisanos/launcher/view/Page;

    .line 223
    iput p3, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;->mIndex:I

    .line 224
    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;)I
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;

    .prologue
    .line 216
    iget v0, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;->mIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;)Lcom/smartisanos/launcher/view/Page;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;->mPg:Lcom/smartisanos/launcher/view/Page;

    return-object v0
.end method


.method public generateEndToEndCellPassData()V
    .locals 7

    .prologue
    const/high16 v3, 0x41f00000    # 30.0f

    const/4 v6, 0x0

    .line 232
    new-instance v0, Lcom/smartisanos/launcher/view/CellPassData;

    invoke-direct {v0}, Lcom/smartisanos/launcher/view/CellPassData;-><init>()V

    .line 233
    .local v0, "cpd1":Lcom/smartisanos/launcher/view/CellPassData;
    const v2, 0x3ecccccd    # 0.4f

    iput v2, v0, Lcom/smartisanos/launcher/view/CellPassData;->totalDuration:F

    .line 234
    iput v3, v0, Lcom/smartisanos/launcher/view/CellPassData;->totalFrame:F

    .line 238
    iput v6, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStartFrame:F

    .line 239
    iput v3, v0, Lcom/smartisanos/launcher/view/CellPassData;->passEndFrame:F

    .line 241
    iget-object v2, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;->mPg:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v1

    .line 242
    .local v1, "location":Lcom/smartisanos/smengine/math/Vector3f;
    iget v2, v1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iput v2, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStartX:F

    .line 243
    iget v2, v1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iput v2, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStartY:F

    .line 245
    iget-object v2, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;->this$0:Lcom/smartisanos/launcher/view/SwitchPageAnimation;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/SwitchPageAnimation;->access$200(Lcom/smartisanos/launcher/view/SwitchPageAnimation;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iput v2, v0, Lcom/smartisanos/launcher/view/CellPassData;->passEndX:F

    .line 246
    iget-object v2, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;->this$0:Lcom/smartisanos/launcher/view/SwitchPageAnimation;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/SwitchPageAnimation;->access$200(Lcom/smartisanos/launcher/view/SwitchPageAnimation;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iput v2, v0, Lcom/smartisanos/launcher/view/CellPassData;->passEndY:F

    .line 248
    new-instance v2, Lcom/smartisanos/smengine/math/Vector3f;

    iget v3, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStartX:F

    iget v4, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStartY:F

    iget-object v5, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;->mPg:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Page;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v5

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-direct {v2, v3, v4, v5}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v2, v0, Lcom/smartisanos/launcher/view/CellPassData;->passFrom:Lcom/smartisanos/smengine/math/Vector3f;

    .line 249
    new-instance v2, Lcom/smartisanos/smengine/math/Vector3f;

    iget v3, v0, Lcom/smartisanos/launcher/view/CellPassData;->passEndX:F

    iget v4, v0, Lcom/smartisanos/launcher/view/CellPassData;->passEndY:F

    invoke-direct {v2, v3, v4, v6}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v2, v0, Lcom/smartisanos/launcher/view/CellPassData;->passTo:Lcom/smartisanos/smengine/math/Vector3f;

    .line 252
    const/16 v2, 0xf

    iput v2, v0, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    .line 255
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/CellPassData;->generatePass()V

    .line 256
    iget-object v2, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v2, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;->this$0:Lcom/smartisanos/launcher/view/SwitchPageAnimation;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/SwitchPageAnimation;->access$200(Lcom/smartisanos/launcher/view/SwitchPageAnimation;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v2

    iget v3, v1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v4, v1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v5, v1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 295
    return-void
.end method

.method public generateNormalCellPassData()V
    .locals 7

    .prologue
    const/high16 v3, 0x41f00000    # 30.0f

    const/4 v6, 0x0

    .line 299
    new-instance v0, Lcom/smartisanos/launcher/view/CellPassData;

    invoke-direct {v0}, Lcom/smartisanos/launcher/view/CellPassData;-><init>()V

    .line 300
    .local v0, "cpd1":Lcom/smartisanos/launcher/view/CellPassData;
    const v2, 0x3ecccccd    # 0.4f

    iput v2, v0, Lcom/smartisanos/launcher/view/CellPassData;->totalDuration:F

    .line 301
    iput v3, v0, Lcom/smartisanos/launcher/view/CellPassData;->totalFrame:F

    .line 305
    iput v6, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStartFrame:F

    .line 306
    iput v3, v0, Lcom/smartisanos/launcher/view/CellPassData;->passEndFrame:F

    .line 308
    iget-object v2, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;->mPg:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v1

    .line 309
    .local v1, "location":Lcom/smartisanos/smengine/math/Vector3f;
    iget v2, v1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iput v2, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStartX:F

    .line 310
    iget v2, v1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iput v2, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStartY:F

    .line 312
    iget-object v2, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;->this$0:Lcom/smartisanos/launcher/view/SwitchPageAnimation;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/SwitchPageAnimation;->access$200(Lcom/smartisanos/launcher/view/SwitchPageAnimation;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iput v2, v0, Lcom/smartisanos/launcher/view/CellPassData;->passEndX:F

    .line 313
    iget-object v2, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;->this$0:Lcom/smartisanos/launcher/view/SwitchPageAnimation;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/SwitchPageAnimation;->access$200(Lcom/smartisanos/launcher/view/SwitchPageAnimation;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iput v2, v0, Lcom/smartisanos/launcher/view/CellPassData;->passEndY:F

    .line 315
    new-instance v2, Lcom/smartisanos/smengine/math/Vector3f;

    iget v3, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStartX:F

    iget v4, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStartY:F

    iget-object v5, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;->mPg:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Page;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v5

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-direct {v2, v3, v4, v5}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v2, v0, Lcom/smartisanos/launcher/view/CellPassData;->passFrom:Lcom/smartisanos/smengine/math/Vector3f;

    .line 316
    new-instance v2, Lcom/smartisanos/smengine/math/Vector3f;

    iget v3, v0, Lcom/smartisanos/launcher/view/CellPassData;->passEndX:F

    iget v4, v0, Lcom/smartisanos/launcher/view/CellPassData;->passEndY:F

    invoke-direct {v2, v3, v4, v6}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v2, v0, Lcom/smartisanos/launcher/view/CellPassData;->passTo:Lcom/smartisanos/smengine/math/Vector3f;

    .line 318
    const/16 v2, 0xf

    iput v2, v0, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    .line 323
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/CellPassData;->generatePass()V

    .line 324
    iget-object v2, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    iget-object v2, p0, Lcom/smartisanos/launcher/view/SwitchPageAnimation$CellAnimationPassDataGenerator;->this$0:Lcom/smartisanos/launcher/view/SwitchPageAnimation;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/SwitchPageAnimation;->access$200(Lcom/smartisanos/launcher/view/SwitchPageAnimation;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v2

    iget v3, v1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v4, v1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v5, v1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 328
    return-void
.end method
