.class public Lcom/smartisanos/home/tracker/TrackerConstants$EventData;
.super Ljava/lang/Object;
.source "TrackerConstants.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/home/tracker/TrackerConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventData"
.end annotation


.field protected mEventMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/home/tracker/TrackerConstants$EventData;->mEventMap:Ljava/util/HashMap;

    return-void
.end method

.method public static map2Json(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 3
    .param p0, "maps"    # Ljava/util/HashMap;

    .prologue
    .line 47
    const/4 v1, 0x0

    .line 48
    .local v1, "json":Ljava/lang/String;
    new-instance v2, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    .line 50
    .local v2, "mapper":Lcom/fasterxml/jackson/databind/ObjectMapper;
    :try_start_0
    invoke-virtual {v2, p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 54
    :goto_0
    return-object v1

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Lcom/fasterxml/jackson/core/JsonProcessingException;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonProcessingException;->printStackTrace()V

    goto :goto_0
.end method


.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/smartisanos/home/tracker/TrackerConstants$EventData;->mEventMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/smartisanos/home/tracker/TrackerConstants$EventData;->mEventMap:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/smartisanos/home/tracker/TrackerConstants$EventData;->map2Json(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
