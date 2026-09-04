.class Lcom/smartisanos/launcher/theme/ChangeThemeHandler$8;
.super Lcom/smartisanos/smengine/Event;
.source "ChangeThemeHandler.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->loadThemeShadowTexture(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

.field final synthetic val$texs:Ljava/util/HashMap;

.field final synthetic val$tm:Lcom/smartisanos/smengine/TextureManager;


.method constructor <init>(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;ILjava/util/HashMap;Lcom/smartisanos/smengine/TextureManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/theme/ChangeThemeHandler;
    .param p2, "type"    # I

    .prologue
    .line 1014
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$8;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    iput-object p3, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$8;->val$texs:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$8;->val$tm:Lcom/smartisanos/smengine/TextureManager;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 6

    .prologue
    .line 1016
    iget-object v5, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$8;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    invoke-static {v5}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->access$600(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1017
    iget-object v5, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$8;->val$texs:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1018
    .local v1, "iter":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1019
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1020
    .local v3, "netry":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1022
    .local v2, "na":Ljava/lang/String;
    iget-object v5, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$8;->val$tm:Lcom/smartisanos/smengine/TextureManager;

    invoke-virtual {v5, v2}, Lcom/smartisanos/smengine/TextureManager;->getTexture(Ljava/lang/String;)Lcom/smartisanos/smengine/Texture;

    move-result-object v4

    .line 1023
    .local v4, "tem":Lcom/smartisanos/smengine/Texture;
    if-nez v4, :cond_0

    .line 1024
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/Texture;

    .line 1025
    .local v0, "currT":Lcom/smartisanos/smengine/Texture;
    if-eqz v0, :cond_0

    .line 1026
    iget-object v5, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$8;->val$tm:Lcom/smartisanos/smengine/TextureManager;

    invoke-virtual {v5, v2, v0}, Lcom/smartisanos/smengine/TextureManager;->setTexture(Ljava/lang/String;Lcom/smartisanos/smengine/Texture;)V

    goto :goto_0

    .line 1030
    .end local v0    # "currT":Lcom/smartisanos/smengine/Texture;
    .end local v2    # "na":Ljava/lang/String;
    .end local v3    # "netry":Ljava/util/Map$Entry;
    .end local v4    # "tem":Lcom/smartisanos/smengine/Texture;
    :cond_1
    iget-object v5, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$8;->val$texs:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 1031
    iget-object v5, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$8;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->setLoadThemeShadowComplete()V

    .line 1033
    .end local v1    # "iter":Ljava/util/Iterator;
    :cond_2
    return-void
.end method
