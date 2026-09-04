.class public Lcom/smartisanos/smengine/TextureManager;
.super Ljava/lang/Object;
.source "TextureManager.java"


.field private mTextureMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/smartisanos/smengine/Texture;",
            ">;"
        }
    .end annotation
.end field


.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/TextureManager;->mTextureMap:Ljava/util/HashMap;

    return-void
.end method


.method public clearManager(Z)V
    .locals 5
    .param p1, "cleanHardwareResource"    # Z

    .prologue
    .line 40
    sget-boolean v3, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "DEBUG"

    const-string v4, "prepare to release texture!!"

    invoke-static {v3, v4}, Lcom/smartisanos/launcher/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_0
    iget-object v3, p0, Lcom/smartisanos/smengine/TextureManager;->mTextureMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 42
    .local v1, "iter":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 43
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 44
    .local v2, "netry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/Texture;

    .line 45
    .local v0, "currT":Lcom/smartisanos/smengine/Texture;
    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/Texture;->delete(Z)V

    goto :goto_0

    .line 50
    .end local v0    # "currT":Lcom/smartisanos/smengine/Texture;
    .end local v2    # "netry":Ljava/util/Map$Entry;
    :cond_2
    iget-object v3, p0, Lcom/smartisanos/smengine/TextureManager;->mTextureMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 51
    return-void
.end method

.method public deleteTexture(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 27
    iget-object v1, p0, Lcom/smartisanos/smengine/TextureManager;->mTextureMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/Texture;

    .line 28
    .local v0, "oldT":Lcom/smartisanos/smengine/Texture;
    if-eqz v0, :cond_0

    .line 29
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Texture;->delete(Z)V

    .line 31
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/smengine/TextureManager;->mTextureMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-void
.end method

.method public getTexture(Ljava/lang/String;)Lcom/smartisanos/smengine/Texture;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/smartisanos/smengine/TextureManager;->mTextureMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/Texture;

    return-object v0
.end method

.method public removeTexture(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/smartisanos/smengine/TextureManager;->mTextureMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-void
.end method

.method public setTexture(Ljava/lang/String;Lcom/smartisanos/smengine/Texture;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "t"    # Lcom/smartisanos/smengine/Texture;

    .prologue
    .line 17
    iget-object v1, p0, Lcom/smartisanos/smengine/TextureManager;->mTextureMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/Texture;

    .line 18
    .local v0, "oldT":Lcom/smartisanos/smengine/Texture;
    if-nez v0, :cond_0

    .line 19
    iget-object v1, p0, Lcom/smartisanos/smengine/TextureManager;->mTextureMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_0
    return-void
.end method

.method public writeXML(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 0
    .param p1, "xmlWritter"    # Lorg/xmlpull/v1/XmlSerializer;

    .prologue
    .line 54
    return-void
.end method
