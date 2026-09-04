.class final Lcom/smartisanos/smengine/Shader$BSearchComparator;
.super Ljava/lang/Object;
.source "Shader.java"

.implements Ljava/util/Comparator;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/smengine/Shader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BSearchComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/smartisanos/smengine/Shader$LocationEntry;",
        ">;"
    }
.end annotation


.field final synthetic this$0:Lcom/smartisanos/smengine/Shader;


.method private constructor <init>(Lcom/smartisanos/smengine/Shader;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/smartisanos/smengine/Shader$BSearchComparator;->this$0:Lcom/smartisanos/smengine/Shader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartisanos/smengine/Shader;Lcom/smartisanos/smengine/Shader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/smartisanos/smengine/Shader;
    .param p2, "x1"    # Lcom/smartisanos/smengine/Shader$1;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/Shader$BSearchComparator;-><init>(Lcom/smartisanos/smengine/Shader;)V

    return-void
.end method


.method public compare(Lcom/smartisanos/smengine/Shader$LocationEntry;Lcom/smartisanos/smengine/Shader$LocationEntry;)I
    .locals 2
    .param p1, "t1"    # Lcom/smartisanos/smengine/Shader$LocationEntry;
    .param p2, "t2"    # Lcom/smartisanos/smengine/Shader$LocationEntry;

    .prologue
    .line 116
    iget-object v0, p1, Lcom/smartisanos/smengine/Shader$LocationEntry;->mName:Ljava/lang/String;

    iget-object v1, p2, Lcom/smartisanos/smengine/Shader$LocationEntry;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 114
    check-cast p1, Lcom/smartisanos/smengine/Shader$LocationEntry;

    check-cast p2, Lcom/smartisanos/smengine/Shader$LocationEntry;

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/smengine/Shader$BSearchComparator;->compare(Lcom/smartisanos/smengine/Shader$LocationEntry;Lcom/smartisanos/smengine/Shader$LocationEntry;)I

    move-result v0

    return v0
.end method
