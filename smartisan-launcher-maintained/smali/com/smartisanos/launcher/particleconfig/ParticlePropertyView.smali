.class public Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;
.super Ljava/lang/Object;
.source "ParticlePropertyView.java"

.implements Landroid/view/View$OnClickListener;


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView$ConfigReaderCallback;
    }
.end annotation


.field public static final PARTICLE_CONFIG_FILE:Ljava/lang/String; = "particleFile.txt"

.field public static final duration:Ljava/lang/String; = "duration"

.field public static final gravity:Ljava/lang/String; = "gravity"

.field public static final high_life:Ljava/lang/String; = "high_life"

.field public static final init_velocity:Ljava/lang/String; = "init_velocity"

.field public static final low_life:Ljava/lang/String; = "low_life"

.field private static mInstance:Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView; = null

.field public static final particle_per_second:Ljava/lang/String; = "particle_per_second"

.field public static final velocity_variation:Ljava/lang/String; = "velocity_variation"


.field private mContext:Landroid/content/Context;

.field private mCurrentView:Landroid/view/View;

.field private mDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mRootView:Landroid/view/ViewGroup;


.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "rv"    # Landroid/view/ViewGroup;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;->mDataMap:Ljava/util/HashMap;

    .line 44
    iput-object p1, p0, Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;->mRootView:Landroid/view/ViewGroup;

    .line 46
    invoke-direct {p0}, Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;->initData()V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;->mDataMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private createData()[B
    .locals 9

    .prologue
    .line 209
    const-string v2, "#particle config\n"

    .line 210
    .local v2, "str":Ljava/lang/String;
    iget-object v6, p0, Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;->mDataMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 211
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 212
    .local v0, "key":Ljava/lang/String;
    iget-object v7, p0, Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;->mDataMap:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 213
    .local v3, "v":Ljava/lang/Object;
    instance-of v7, v3, Ljava/lang/Float;

    if-eqz v7, :cond_1

    .line 214
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 215
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 216
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    check-cast v3, Ljava/lang/Float;

    .end local v3    # "v":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 217
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 218
    .restart local v3    # "v":Ljava/lang/Object;
    :cond_1
    instance-of v7, v3, Lcom/smartisanos/smengine/math/Vector3f;

    if-eqz v7, :cond_2

    move-object v4, v3

    .line 219
    check-cast v4, Lcom/smartisanos/smengine/math/Vector3f;

    .line 220
    .local v4, "v3":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 221
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 222
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    invoke-static {v8}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    invoke-static {v8}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-static {v8}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 223
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 224
    goto/16 :goto_0

    .end local v4    # "v3":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_2
    instance-of v7, v3, Lcom/smartisanos/smengine/math/Vector4f;

    if-eqz v7, :cond_0

    move-object v5, v3

    .line 225
    check-cast v5, Lcom/smartisanos/smengine/math/Vector4f;

    .line 226
    .local v5, "v4":Lcom/smartisanos/smengine/math/Vector4f;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 227
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 228
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    invoke-static {v8}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    invoke-static {v8}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    invoke-static {v8}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-static {v8}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 229
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 232
    .end local v0    # "key":Ljava/lang/String;
    .end local v3    # "v":Ljava/lang/Object;
    .end local v5    # "v4":Lcom/smartisanos/smengine/math/Vector4f;
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    return-object v6
.end method

.method private createItem(Ljava/lang/String;I)Landroid/widget/LinearLayout;
    .locals 8
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "textViewNum"    # I

    .prologue
    const/4 v7, -0x2

    .line 135
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 136
    .local v3, "ll":Landroid/widget/LinearLayout;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 137
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 138
    .local v5, "tv":Landroid/widget/TextView;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 139
    .local v4, "tlp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 142
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 143
    new-instance v1, Landroid/widget/EditText;

    iget-object v6, p0, Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 144
    .local v1, "et":Landroid/widget/EditText;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0xc8

    const/16 v7, 0x64

    invoke-direct {v0, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 145
    .local v0, "elp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 147
    invoke-direct {p0, v1, p1, v2}, Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;->setTextData(Landroid/widget/EditText;Ljava/lang/String;I)V

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    .end local v0    # "elp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "et":Landroid/widget/EditText;
    :cond_0
    return-object v3
.end method

.method public static getInstance()Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;->mInstance:Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;

    return-object v0
.end method

.method private initData()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const v6, 0x3f19999a    # 0.6f

    .line 58
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "state":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;->mDataMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 80
    iget-object v1, p0, Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;->mDataMap:Ljava/util/HashMap;

    const-string v2, "gravity"

    new-instance v3, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v4, -0x3cb80000    # -200.0f

    const/high16 v5, -0x3d380000    # -100.0f

    invoke-direct {v3, v4, v5, v7}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v1, p0, Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;->mDataMap:Ljava/util/HashMap;

    const-string v2, "low_life"

    new-instance v3, Ljava/lang/Float;

    const v4, 0x3e4ccccd    # 0.2f

    invoke-direct {v3, v4}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v1, p0, Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;->mDataMap:Ljava/util/HashMap;

    const-string v2, "high_life"

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, v6}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v1, p0, Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;->mDataMap:Ljava/util/HashMap;

    const-string v2, "velocity_variation"

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, v6}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v1, p0, Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;->mDataMap:Ljava/util/HashMap;

    const-string v2, "init_velocity"

    new-instance v3, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v4, 0x42700000    # 60.0f

    const/high16 v5, 0x42200000    # 40.0f

    invoke-direct {v3, v4, v5, v7}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v1, p0, Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;->mDataMap:Ljava/util/HashMap;

    const-string v2, "particle_per_second"

    new-instance v3, Ljava/lang/Float;

    const/high16 v4, 0x43fa0000    # 500.0f

    invoke-direct {v3, v4}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v1, p0, Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;->mDataMap:Ljava/util/HashMap;

    const-string v2, "duration"

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, v6}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_1
    return-void
.end method

.method public static setInstance(Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;)V
    .locals 0
    .param p0, "p"    # Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;

    .prologue
    .line 52
    sput-object p0, Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;->mInstance:Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;

    .line 53
    return-void
.end method

.method private setTextData(Landroid/widget/EditText;Ljava/lang/String;I)V
    .locals 2
    .param p1, "et"    # Landroid/widget/EditText;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "index"    # I

    .prologue
    .line 119
    const-string v1, "gravity"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "init_velocity"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;->mDataMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/math/Vector3f;

    .line 121
    .local v0, "v":Lcom/smartisanos/smengine/math/Vector3f;
    if-nez p3, :cond_2

    .line 122
    iget v1, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 133
    .end local v0    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_1
    :goto_0
    return-void

    .line 123
    .restart local v0    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_2
    const/4 v1, 0x1

    if-ne p3, v1, :cond_3

    .line 124
    iget v1, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 125
    :cond_3
    const/4 v1, 0x2

    if-ne p3, v1, :cond_1

    .line 126
    iget v1, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 128
    .end local v0    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_4
    const-string v1, "low_life"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "high_life"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "velocity_variation"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "particle_per_second"

    .line 129
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "duration"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    :cond_5
    iget-object v1, p0, Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;->mDataMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 131
    .local v0, "v":Ljava/lang/Float;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private writeToSDCard(Ljava/io/File;)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 236
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 237
    .local v1, "os":Ljava/io/FileOutputStream;
    invoke-direct {p0}, Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;->createData()[B

    move-result-object v0

    .line 238
    .local v0, "data":[B
    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .end local v0    # "data":[B
    .end local v1    # "os":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v2

    goto :goto_0

    .line 239
    :catch_1
    move-exception v2

    goto :goto_0
.end method


.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;->mDataMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "t"    # Landroid/view/View;

    .prologue
    .line 247
    iget-object v2, p0, Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;->mCurrentView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 256
    :goto_0
    return-void

    .line 250
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 251
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "particleFile.txt"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 252
    .local v1, "filePath":Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;->writeToSDCard(Ljava/io/File;)V

    .line 253
    iget-object v2, p0, Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;->mCurrentView:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 254
    iget-object v2, p0, Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;->mRootView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 255
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;->mCurrentView:Landroid/view/View;

    goto :goto_0
.end method

.method public showView()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, -0x2

    const/4 v7, -0x1

    .line 152
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 153
    .local v5, "lr":Landroid/widget/LinearLayout;
    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 154
    const v6, -0xffff01

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 155
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 156
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    new-instance v0, Landroid/widget/Button;

    iget-object v6, p0, Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 158
    .local v0, "b":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 160
    .local v1, "blp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    const-string v6, "back"

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 162
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 166
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 173
    .local v3, "llp":Landroid/widget/LinearLayout$LayoutParams;
    const-string v6, "gravity"

    invoke-direct {p0, v6, v10}, Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;->createItem(Ljava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 174
    .local v2, "ll":Landroid/widget/LinearLayout;
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 175
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .end local v3    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v3, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 176
    .restart local v3    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    const-string v6, "low_life"

    invoke-direct {p0, v6, v9}, Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;->createItem(Ljava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 178
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .end local v3    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v3, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 179
    .restart local v3    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 181
    const-string v6, "high_life"

    invoke-direct {p0, v6, v9}, Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;->createItem(Ljava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 182
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 183
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .end local v3    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v3, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 184
    .restart local v3    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    const-string v6, "velocity_variation"

    invoke-direct {p0, v6, v9}, Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;->createItem(Ljava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 186
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 187
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .end local v3    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v3, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 188
    .restart local v3    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    const-string v6, "init_velocity"

    invoke-direct {p0, v6, v10}, Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;->createItem(Ljava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 190
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 191
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .end local v3    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v3, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 192
    .restart local v3    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    const-string v6, "particle_per_second"

    invoke-direct {p0, v6, v9}, Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;->createItem(Ljava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 195
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 196
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .end local v3    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v3, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 197
    .restart local v3    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    const-string v6, "duration"

    invoke-direct {p0, v6, v9}, Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;->createItem(Ljava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 200
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 201
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .end local v3    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v3, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 202
    .restart local v3    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    iput-object v5, p0, Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;->mCurrentView:Landroid/view/View;

    .line 205
    iget-object v6, p0, Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 206
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->invalidate()V

    .line 207
    return-void
.end method
