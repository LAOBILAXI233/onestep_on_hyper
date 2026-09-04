.class Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView$ConfigReaderCallback;
.super Ljava/lang/Object;
.source "ParticlePropertyView.java"

.implements Lcom/smartisanos/launcher/ConfigReader$ReadListener;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigReaderCallback"
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;


.method private constructor <init>(Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView$ConfigReaderCallback;->this$0:Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public readBlock(Ljava/lang/String;)V
    .locals 0
    .param p1, "blockName"    # Ljava/lang/String;

    .prologue
    .line 92
    return-void
.end method

.method public readItem(Ljava/lang/String;Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 1
    .param p1, "itemKey"    # Ljava/lang/String;
    .param p2, "v"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 109
    const-string v0, "init_velocity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "gravity"

    .line 110
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView$ConfigReaderCallback;->this$0:Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;

    invoke-static {v0}, Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;->access$000(Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_1
    return-void
.end method

.method public readItem(Ljava/lang/String;Lcom/smartisanos/smengine/math/Vector4f;)V
    .locals 0
    .param p1, "itemKey"    # Ljava/lang/String;
    .param p2, "v"    # Lcom/smartisanos/smengine/math/Vector4f;

    .prologue
    .line 116
    return-void
.end method

.method public readItem(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "itemKey"    # Ljava/lang/String;
    .param p2, "itemValue"    # Ljava/lang/Boolean;

    .prologue
    .line 107
    return-void
.end method

.method public readItem(Ljava/lang/String;Ljava/lang/Float;)V
    .locals 1
    .param p1, "itemKey"    # Ljava/lang/String;
    .param p2, "itemValue"    # Ljava/lang/Float;

    .prologue
    .line 94
    const-string v0, "low_life"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "high_life"

    .line 95
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "particle_per_second"

    .line 96
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "velocity_variation"

    .line 97
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "duration"

    .line 98
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView$ConfigReaderCallback;->this$0:Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;

    invoke-static {v0}, Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;->access$000(Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_1
    return-void
.end method

.method public readItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "itemKey"    # Ljava/lang/String;
    .param p2, "itemValue"    # Ljava/lang/String;

    .prologue
    .line 104
    return-void
.end method
