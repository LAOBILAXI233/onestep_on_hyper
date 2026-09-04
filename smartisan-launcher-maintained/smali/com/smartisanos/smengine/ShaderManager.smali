.class public Lcom/smartisanos/smengine/ShaderManager;
.super Ljava/lang/Object;
.source "ShaderManager.java"


.field private static final log:Lcom/smartisanos/launcher/LOG;


.field private mShaderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/smartisanos/smengine/Shader;",
            ">;"
        }
    .end annotation
.end field


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/smartisanos/smengine/ShaderManager;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/smengine/ShaderManager;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/ShaderManager;->mShaderMap:Ljava/util/HashMap;

    return-void
.end method


.method public clearManager(Z)V
    .locals 8
    .param p1, "cleanHardwareResource"    # Z

    .prologue
    .line 26
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/smartisanos/smengine/ShaderManager;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "DEBUG"

    const-string v6, "prepare to release shader!"

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_0
    iget-object v4, p0, Lcom/smartisanos/smengine/ShaderManager;->mShaderMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 28
    .local v3, "iter":Ljava/util/Iterator;
    const/4 v2, 0x0

    .line 29
    .local v2, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 31
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 32
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/Shader;

    .line 33
    .local v0, "currS":Lcom/smartisanos/smengine/Shader;
    if-eqz v0, :cond_3

    .line 35
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/smartisanos/smengine/ShaderManager;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "DEBUG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "currS release!!!!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_1
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/Shader;->delete(Z)V

    .line 42
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 43
    goto :goto_0

    .line 40
    :cond_3
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_2

    sget-object v4, Lcom/smartisanos/smengine/ShaderManager;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "DEBUG"

    const-string v6, "currS is null!!!!"

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 44
    .end local v0    # "currS":Lcom/smartisanos/smengine/Shader;
    .end local v1    # "entry":Ljava/util/Map$Entry;
    :cond_4
    return-void
.end method

.method public getShader(Ljava/lang/String;)Lcom/smartisanos/smengine/Shader;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/smartisanos/smengine/ShaderManager;->mShaderMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/Shader;

    return-object v0
.end method

.method public setShader(Ljava/lang/String;Lcom/smartisanos/smengine/Shader;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "s"    # Lcom/smartisanos/smengine/Shader;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/smartisanos/smengine/ShaderManager;->mShaderMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    return-void
.end method
