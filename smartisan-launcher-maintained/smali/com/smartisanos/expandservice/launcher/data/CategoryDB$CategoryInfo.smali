.class public Lcom/smartisanos/expandservice/launcher/data/CategoryDB$CategoryInfo;
.super Ljava/lang/Object;
.source "CategoryDB.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/expandservice/launcher/data/CategoryDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CategoryInfo"
.end annotation


.field public static final EN:Ljava/lang/String; = "en"

.field public static final JA:Ljava/lang/String; = "ja"

.field public static final KO:Ljava/lang/String; = "ko"

.field public static final RU:Ljava/lang/String; = "ru"

.field public static final TW:Ljava/lang/String; = "tw"

.field public static final ZH:Ljava/lang/String; = "zh"


.field public categoryId:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public names:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public namesString:Ljava/lang/String;

.field public subCategoryId:Ljava/lang/String;


.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "cId"    # Ljava/lang/String;
    .param p2, "subId"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$CategoryInfo;->categoryId:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$CategoryInfo;->subCategoryId:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "cId"    # Ljava/lang/String;
    .param p2, "subId"    # Ljava/lang/String;
    .param p3, "categoryNameJson"    # Ljava/lang/String;
    .param p4, "categoryLanguage"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$CategoryInfo;->categoryId:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$CategoryInfo;->subCategoryId:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$CategoryInfo;->language:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$CategoryInfo;->namesString:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$CategoryInfo;->namesString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$CategoryInfo;->setNames(Ljava/lang/String;)V

    .line 57
    return-void
.end method


.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 78
    iget-object v0, p0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$CategoryInfo;->language:Ljava/lang/String;

    .line 79
    .local v0, "key":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 80
    const-string v0, "en"

    .line 83
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$CategoryInfo;->names:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 84
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 85
    const-string v2, "tw"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 87
    iget-object v2, p0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$CategoryInfo;->names:Ljava/util/Map;

    const-string v3, "zh"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "name":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 96
    .restart local v1    # "name":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v1

    .line 88
    :cond_2
    const-string v2, "en"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 90
    iget-object v2, p0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$CategoryInfo;->names:Ljava/util/Map;

    const-string v3, "zh"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "name":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "name":Ljava/lang/String;
    goto :goto_0

    .line 93
    :cond_3
    iget-object v2, p0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$CategoryInfo;->names:Ljava/util/Map;

    const-string v3, "en"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "name":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "name":Ljava/lang/String;
    goto :goto_0
.end method

.method public setNames(Ljava/lang/String;)V
    .locals 7
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 60
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 62
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 63
    .local v4, "obj":Lorg/json/JSONObject;
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 64
    .local v2, "keys":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 65
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 66
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 67
    .local v5, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v5, :cond_0

    .line 68
    invoke-interface {v3, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "keys":Ljava/util/Iterator;
    .end local v4    # "obj":Lorg/json/JSONObject;
    .end local v5    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 74
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iput-object v3, p0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$CategoryInfo;->names:Ljava/util/Map;

    .line 75
    return-void
.end method
