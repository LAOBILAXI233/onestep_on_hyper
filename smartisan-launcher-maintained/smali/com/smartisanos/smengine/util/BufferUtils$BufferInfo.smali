.class Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;
.super Ljava/lang/ref/PhantomReference;
.source "BufferUtils.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/smengine/util/BufferUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BufferInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/PhantomReference",
        "<",
        "Ljava/nio/Buffer;",
        ">;"
    }
.end annotation


.field private size:I

.field private type:Ljava/lang/Class;


.method public constructor <init>(Ljava/lang/Class;ILjava/nio/Buffer;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "size"    # I
    .param p3, "referent"    # Ljava/nio/Buffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "I",
            "Ljava/nio/Buffer;",
            "Ljava/lang/ref/ReferenceQueue",
            "<-",
            "Ljava/nio/Buffer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1338
    .local p4, "q":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<-Ljava/nio/Buffer;>;"
    invoke-direct {p0, p3, p4}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1339
    iput-object p1, p0, Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;->type:Ljava/lang/Class;

    .line 1340
    iput p2, p0, Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;->size:I

    .line 1341
    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;->type:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$100(Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;

    .prologue
    .line 1332
    iget v0, p0, Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;->size:I

    return v0
.end method
