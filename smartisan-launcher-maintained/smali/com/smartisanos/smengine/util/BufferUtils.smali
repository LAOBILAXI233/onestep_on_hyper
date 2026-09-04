.class public final Lcom/smartisanos/smengine/util/BufferUtils;
.super Ljava/lang/Object;
.source "BufferUtils.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/smengine/util/BufferUtils$ClearReferences;,
        Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;
    }
.end annotation


.field private static cleanMethod:Ljava/lang/reflect/Method;

.field private static cleanerMethod:Ljava/lang/reflect/Method;

.field static cleanupthread:Lcom/smartisanos/smengine/util/BufferUtils$ClearReferences;

.field private static freeMethod:Ljava/lang/reflect/Method;

.field private static final loadedMethods:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static removeCollected:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/nio/Buffer;",
            ">;"
        }
    .end annotation
.end field

.field private static trackDirectMemory:Z

.field private static trackedBuffers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;",
            "Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static viewedBufferMethod:Ljava/lang/reflect/Method;


.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 66
    sput-boolean v2, Lcom/smartisanos/smengine/util/BufferUtils;->trackDirectMemory:Z

    .line 67
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lcom/smartisanos/smengine/util/BufferUtils;->removeCollected:Ljava/lang/ref/ReferenceQueue;

    .line 68
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/smartisanos/smengine/util/BufferUtils;->trackedBuffers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1207
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/smartisanos/smengine/util/BufferUtils;->loadedMethods:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1208
    sput-object v1, Lcom/smartisanos/smengine/util/BufferUtils;->cleanerMethod:Ljava/lang/reflect/Method;

    .line 1209
    sput-object v1, Lcom/smartisanos/smengine/util/BufferUtils;->cleanMethod:Ljava/lang/reflect/Method;

    .line 1210
    sput-object v1, Lcom/smartisanos/smengine/util/BufferUtils;->viewedBufferMethod:Ljava/lang/reflect/Method;

    .line 1211
    sput-object v1, Lcom/smartisanos/smengine/util/BufferUtils;->freeMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/ref/ReferenceQueue;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/smartisanos/smengine/util/BufferUtils;->removeCollected:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/smartisanos/smengine/util/BufferUtils;->trackedBuffers:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static addInBuffer(Lcom/smartisanos/smengine/math/Vector2f;Ljava/nio/FloatBuffer;I)V
    .locals 2
    .param p0, "toAdd"    # Lcom/smartisanos/smengine/math/Vector2f;
    .param p1, "buf"    # Ljava/nio/FloatBuffer;
    .param p2, "index"    # I

    .prologue
    .line 631
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v1

    .line 632
    .local v1, "vars":Lcom/smartisanos/smengine/util/TempVars;
    iget-object v0, v1, Lcom/smartisanos/smengine/util/TempVars;->vect2d:Lcom/smartisanos/smengine/math/Vector2f;

    .line 633
    .local v0, "tempVec2":Lcom/smartisanos/smengine/math/Vector2f;
    invoke-static {v0, p1, p2}, Lcom/smartisanos/smengine/util/BufferUtils;->populateFromBuffer(Lcom/smartisanos/smengine/math/Vector2f;Ljava/nio/FloatBuffer;I)V

    .line 634
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/math/Vector2f;->addLocal(Lcom/smartisanos/smengine/math/Vector2f;)Lcom/smartisanos/smengine/math/Vector2f;

    .line 635
    invoke-static {v0, p1, p2}, Lcom/smartisanos/smengine/util/BufferUtils;->setInBuffer(Lcom/smartisanos/smengine/math/Vector2f;Ljava/nio/FloatBuffer;I)V

    .line 636
    invoke-virtual {v1}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 637
    return-void
.end method

.method public static addInBuffer(Lcom/smartisanos/smengine/math/Vector3f;Ljava/nio/FloatBuffer;I)V
    .locals 2
    .param p0, "toAdd"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p1, "buf"    # Ljava/nio/FloatBuffer;
    .param p2, "index"    # I

    .prologue
    .line 426
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v1

    .line 427
    .local v1, "vars":Lcom/smartisanos/smengine/util/TempVars;
    iget-object v0, v1, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    .line 428
    .local v0, "tempVec3":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-static {v0, p1, p2}, Lcom/smartisanos/smengine/util/BufferUtils;->populateFromBuffer(Lcom/smartisanos/smengine/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    .line 429
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/math/Vector3f;->addLocal(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 430
    invoke-static {v0, p1, p2}, Lcom/smartisanos/smengine/util/BufferUtils;->setInBuffer(Lcom/smartisanos/smengine/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    .line 431
    invoke-virtual {v1}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 432
    return-void
.end method

.method public static clone(Ljava/nio/Buffer;)Ljava/nio/Buffer;
    .locals 1
    .param p0, "buf"    # Ljava/nio/Buffer;

    .prologue
    .line 89
    instance-of v0, p0, Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    .line 90
    check-cast p0, Ljava/nio/FloatBuffer;

    .end local p0    # "buf":Ljava/nio/Buffer;
    invoke-static {p0}, Lcom/smartisanos/smengine/util/BufferUtils;->clone(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    .line 91
    .restart local p0    # "buf":Ljava/nio/Buffer;
    :cond_0
    instance-of v0, p0, Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_1

    .line 92
    check-cast p0, Ljava/nio/ShortBuffer;

    .end local p0    # "buf":Ljava/nio/Buffer;
    invoke-static {p0}, Lcom/smartisanos/smengine/util/BufferUtils;->clone(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    move-result-object v0

    goto :goto_0

    .line 93
    .restart local p0    # "buf":Ljava/nio/Buffer;
    :cond_1
    instance-of v0, p0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    .line 94
    check-cast p0, Ljava/nio/ByteBuffer;

    .end local p0    # "buf":Ljava/nio/Buffer;
    invoke-static {p0}, Lcom/smartisanos/smengine/util/BufferUtils;->clone(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    .line 95
    .restart local p0    # "buf":Ljava/nio/Buffer;
    :cond_2
    instance-of v0, p0, Ljava/nio/IntBuffer;

    if-eqz v0, :cond_3

    .line 96
    check-cast p0, Ljava/nio/IntBuffer;

    .end local p0    # "buf":Ljava/nio/Buffer;
    invoke-static {p0}, Lcom/smartisanos/smengine/util/BufferUtils;->clone(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    move-result-object v0

    goto :goto_0

    .line 97
    .restart local p0    # "buf":Ljava/nio/Buffer;
    :cond_3
    instance-of v0, p0, Ljava/nio/DoubleBuffer;

    if-eqz v0, :cond_4

    .line 98
    check-cast p0, Ljava/nio/DoubleBuffer;

    .end local p0    # "buf":Ljava/nio/Buffer;
    invoke-static {p0}, Lcom/smartisanos/smengine/util/BufferUtils;->clone(Ljava/nio/DoubleBuffer;)Ljava/nio/DoubleBuffer;

    move-result-object v0

    goto :goto_0

    .line 100
    .restart local p0    # "buf":Ljava/nio/Buffer;
    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static clone(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 991
    if-nez p0, :cond_0

    .line 992
    const/4 v0, 0x0

    .line 1004
    :goto_0
    return-object v0

    .line 994
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 997
    invoke-static {p0}, Lcom/smartisanos/smengine/util/BufferUtils;->isDirect(Ljava/nio/Buffer;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 998
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-static {v1}, Lcom/smartisanos/smengine/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1002
    .local v0, "copy":Ljava/nio/ByteBuffer;
    :goto_1
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 1000
    .end local v0    # "copy":Ljava/nio/ByteBuffer;
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .restart local v0    # "copy":Ljava/nio/ByteBuffer;
    goto :goto_1
.end method

.method public static clone(Ljava/nio/DoubleBuffer;)Ljava/nio/DoubleBuffer;
    .locals 2
    .param p0, "buf"    # Ljava/nio/DoubleBuffer;

    .prologue
    .line 788
    if-nez p0, :cond_0

    .line 789
    const/4 v0, 0x0

    .line 801
    :goto_0
    return-object v0

    .line 791
    :cond_0
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->rewind()Ljava/nio/Buffer;

    .line 794
    invoke-static {p0}, Lcom/smartisanos/smengine/util/BufferUtils;->isDirect(Ljava/nio/Buffer;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 795
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->limit()I

    move-result v1

    invoke-static {v1}, Lcom/smartisanos/smengine/util/BufferUtils;->createDoubleBuffer(I)Ljava/nio/DoubleBuffer;

    move-result-object v0

    .line 799
    .local v0, "copy":Ljava/nio/DoubleBuffer;
    :goto_1
    invoke-virtual {v0, p0}, Ljava/nio/DoubleBuffer;->put(Ljava/nio/DoubleBuffer;)Ljava/nio/DoubleBuffer;

    goto :goto_0

    .line 797
    .end local v0    # "copy":Ljava/nio/DoubleBuffer;
    :cond_1
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->limit()I

    move-result v1

    invoke-static {v1}, Ljava/nio/DoubleBuffer;->allocate(I)Ljava/nio/DoubleBuffer;

    move-result-object v0

    .restart local v0    # "copy":Ljava/nio/DoubleBuffer;
    goto :goto_1
.end method

.method public static clone(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
    .locals 2
    .param p0, "buf"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 850
    if-nez p0, :cond_0

    .line 851
    const/4 v0, 0x0

    .line 863
    :goto_0
    return-object v0

    .line 853
    :cond_0
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 856
    invoke-static {p0}, Lcom/smartisanos/smengine/util/BufferUtils;->isDirect(Ljava/nio/Buffer;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 857
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->limit()I

    move-result v1

    invoke-static {v1}, Lcom/smartisanos/smengine/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 861
    .local v0, "copy":Ljava/nio/FloatBuffer;
    :goto_1
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    goto :goto_0

    .line 859
    .end local v0    # "copy":Ljava/nio/FloatBuffer;
    :cond_1
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->limit()I

    move-result v1

    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    .restart local v0    # "copy":Ljava/nio/FloatBuffer;
    goto :goto_1
.end method

.method public static clone(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;
    .locals 2
    .param p0, "buf"    # Ljava/nio/IntBuffer;

    .prologue
    .line 913
    if-nez p0, :cond_0

    .line 914
    const/4 v0, 0x0

    .line 926
    :goto_0
    return-object v0

    .line 916
    :cond_0
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 919
    invoke-static {p0}, Lcom/smartisanos/smengine/util/BufferUtils;->isDirect(Ljava/nio/Buffer;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 920
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->limit()I

    move-result v1

    invoke-static {v1}, Lcom/smartisanos/smengine/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 924
    .local v0, "copy":Ljava/nio/IntBuffer;
    :goto_1
    invoke-virtual {v0, p0}, Ljava/nio/IntBuffer;->put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    goto :goto_0

    .line 922
    .end local v0    # "copy":Ljava/nio/IntBuffer;
    :cond_1
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->limit()I

    move-result v1

    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    .restart local v0    # "copy":Ljava/nio/IntBuffer;
    goto :goto_1
.end method

.method public static clone(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;
    .locals 2
    .param p0, "buf"    # Ljava/nio/ShortBuffer;

    .prologue
    .line 1065
    if-nez p0, :cond_0

    .line 1066
    const/4 v0, 0x0

    .line 1078
    :goto_0
    return-object v0

    .line 1068
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    .line 1071
    invoke-static {p0}, Lcom/smartisanos/smengine/util/BufferUtils;->isDirect(Ljava/nio/Buffer;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1072
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->limit()I

    move-result v1

    invoke-static {v1}, Lcom/smartisanos/smengine/util/BufferUtils;->createShortBuffer(I)Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 1076
    .local v0, "copy":Ljava/nio/ShortBuffer;
    :goto_1
    invoke-virtual {v0, p0}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    goto :goto_0

    .line 1074
    .end local v0    # "copy":Ljava/nio/ShortBuffer;
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->limit()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ShortBuffer;->allocate(I)Ljava/nio/ShortBuffer;

    move-result-object v0

    .restart local v0    # "copy":Ljava/nio/ShortBuffer;
    goto :goto_1
.end method

.method public static copyInternal(Ljava/nio/FloatBuffer;III)V
    .locals 1
    .param p0, "buf"    # Ljava/nio/FloatBuffer;
    .param p1, "fromPos"    # I
    .param p2, "toPos"    # I
    .param p3, "length"    # I

    .prologue
    .line 832
    new-array v0, p3, [F

    .line 833
    .local v0, "data":[F
    invoke-virtual {p0, p1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 834
    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    .line 835
    invoke-virtual {p0, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 836
    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 837
    return-void
.end method

.method public static copyInternalVector2(Ljava/nio/FloatBuffer;II)V
    .locals 3
    .param p0, "buf"    # Ljava/nio/FloatBuffer;
    .param p1, "fromPos"    # I
    .param p2, "toPos"    # I

    .prologue
    .line 598
    mul-int/lit8 v0, p1, 0x2

    mul-int/lit8 v1, p2, 0x2

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2}, Lcom/smartisanos/smengine/util/BufferUtils;->copyInternal(Ljava/nio/FloatBuffer;III)V

    .line 599
    return-void
.end method

.method public static copyInternalVector3(Ljava/nio/FloatBuffer;II)V
    .locals 3
    .param p0, "buf"    # Ljava/nio/FloatBuffer;
    .param p1, "fromPos"    # I
    .param p2, "toPos"    # I

    .prologue
    .line 393
    mul-int/lit8 v0, p1, 0x3

    mul-int/lit8 v1, p2, 0x3

    const/4 v2, 0x3

    invoke-static {p0, v0, v1, v2}, Lcom/smartisanos/smengine/util/BufferUtils;->copyInternal(Ljava/nio/FloatBuffer;III)V

    .line 394
    return-void
.end method

.method public static createByteBuffer(I)Ljava/nio/ByteBuffer;
    .locals 3
    .param p0, "size"    # I

    .prologue
    .line 938
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 939
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 940
    invoke-static {v0}, Lcom/smartisanos/smengine/util/BufferUtils;->onBufferAllocated(Ljava/nio/Buffer;)V

    .line 941
    return-object v0
.end method

.method public static createByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 3
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 973
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 974
    .local v1, "bytes":[B
    array-length v2, v1

    invoke-static {v2}, Lcom/smartisanos/smengine/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 975
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 976
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 977
    return-object v0
.end method

.method public static createByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "size"    # I

    .prologue
    .line 956
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 957
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 962
    :goto_0
    return-object p0

    .line 961
    :cond_0
    invoke-static {p1}, Lcom/smartisanos/smengine/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 962
    goto :goto_0
.end method

.method public static varargs createByteBuffer([B)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 966
    array-length v1, p0

    invoke-static {v1}, Lcom/smartisanos/smengine/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 967
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 968
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 969
    return-object v0
.end method

.method public static createDoubleBuffer(I)Ljava/nio/DoubleBuffer;
    .locals 3
    .param p0, "size"    # I

    .prologue
    .line 750
    mul-int/lit8 v1, p0, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v0

    .line 751
    .local v0, "buf":Ljava/nio/DoubleBuffer;
    invoke-virtual {v0}, Ljava/nio/DoubleBuffer;->clear()Ljava/nio/Buffer;

    .line 752
    invoke-static {v0}, Lcom/smartisanos/smengine/util/BufferUtils;->onBufferAllocated(Ljava/nio/Buffer;)V

    .line 753
    return-object v0
.end method

.method public static createDoubleBuffer(Ljava/nio/DoubleBuffer;I)Ljava/nio/DoubleBuffer;
    .locals 1
    .param p0, "buf"    # Ljava/nio/DoubleBuffer;
    .param p1, "size"    # I

    .prologue
    .line 768
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->limit()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 769
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->rewind()Ljava/nio/Buffer;

    .line 774
    :goto_0
    return-object p0

    .line 773
    :cond_0
    invoke-static {p1}, Lcom/smartisanos/smengine/util/BufferUtils;->createDoubleBuffer(I)Ljava/nio/DoubleBuffer;

    move-result-object p0

    .line 774
    goto :goto_0
.end method

.method public static createFloatBuffer(I)Ljava/nio/FloatBuffer;
    .locals 3
    .param p0, "size"    # I

    .prologue
    .line 813
    mul-int/lit8 v1, p0, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 814
    .local v0, "buf":Ljava/nio/FloatBuffer;
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 815
    invoke-static {v0}, Lcom/smartisanos/smengine/util/BufferUtils;->onBufferAllocated(Ljava/nio/Buffer;)V

    .line 816
    return-object v0
.end method

.method public static varargs createFloatBuffer([F)Ljava/nio/FloatBuffer;
    .locals 2
    .param p0, "data"    # [F

    .prologue
    .line 232
    if-nez p0, :cond_0

    .line 233
    const/4 v0, 0x0

    .line 239
    :goto_0
    return-object v0

    .line 235
    :cond_0
    array-length v1, p0

    invoke-static {v1}, Lcom/smartisanos/smengine/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 236
    .local v0, "buff":Ljava/nio/FloatBuffer;
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 237
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 238
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public static varargs createFloatBuffer([Lcom/smartisanos/smengine/math/Quaternion;)Ljava/nio/FloatBuffer;
    .locals 7
    .param p0, "data"    # [Lcom/smartisanos/smengine/math/Quaternion;

    .prologue
    const/4 v6, 0x0

    .line 190
    if-nez p0, :cond_0

    .line 191
    const/4 v0, 0x0

    .line 202
    :goto_0
    return-object v0

    .line 193
    :cond_0
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Lcom/smartisanos/smengine/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 194
    .local v0, "buff":Ljava/nio/FloatBuffer;
    array-length v3, p0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, p0, v2

    .line 195
    .local v1, "element":Lcom/smartisanos/smengine/math/Quaternion;
    if-eqz v1, :cond_1

    .line 196
    invoke-virtual {v1}, Lcom/smartisanos/smengine/math/Quaternion;->getX()F

    move-result v4

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v1}, Lcom/smartisanos/smengine/math/Quaternion;->getY()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v1}, Lcom/smartisanos/smengine/math/Quaternion;->getZ()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v1}, Lcom/smartisanos/smengine/math/Quaternion;->getW()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 194
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 198
    :cond_1
    invoke-virtual {v0, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_2

    .line 201
    .end local v1    # "element":Lcom/smartisanos/smengine/math/Quaternion;
    :cond_2
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public static varargs createFloatBuffer([Lcom/smartisanos/smengine/math/Vector2f;)Ljava/nio/FloatBuffer;
    .locals 7
    .param p0, "data"    # [Lcom/smartisanos/smengine/math/Vector2f;

    .prologue
    const/4 v6, 0x0

    .line 485
    if-nez p0, :cond_0

    .line 486
    const/4 v0, 0x0

    .line 497
    :goto_0
    return-object v0

    .line 488
    :cond_0
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Lcom/smartisanos/smengine/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 489
    .local v0, "buff":Ljava/nio/FloatBuffer;
    array-length v3, p0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, p0, v2

    .line 490
    .local v1, "element":Lcom/smartisanos/smengine/math/Vector2f;
    if-eqz v1, :cond_1

    .line 491
    iget v4, v1, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    iget v5, v1, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 489
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 493
    :cond_1
    invoke-virtual {v0, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_2

    .line 496
    .end local v1    # "element":Lcom/smartisanos/smengine/math/Vector2f;
    :cond_2
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public static varargs createFloatBuffer([Lcom/smartisanos/smengine/math/Vector3f;)Ljava/nio/FloatBuffer;
    .locals 7
    .param p0, "data"    # [Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    const/4 v6, 0x0

    .line 168
    if-nez p0, :cond_0

    .line 169
    const/4 v0, 0x0

    .line 180
    :goto_0
    return-object v0

    .line 171
    :cond_0
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x3

    invoke-static {v2}, Lcom/smartisanos/smengine/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 172
    .local v0, "buff":Ljava/nio/FloatBuffer;
    array-length v3, p0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, p0, v2

    .line 173
    .local v1, "element":Lcom/smartisanos/smengine/math/Vector3f;
    if-eqz v1, :cond_1

    .line 174
    iget v4, v1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    iget v5, v1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    iget v5, v1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 172
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 176
    :cond_1
    invoke-virtual {v0, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_2

    .line 179
    .end local v1    # "element":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_2
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public static varargs createFloatBuffer([Lcom/smartisanos/smengine/math/Vector4f;)Ljava/nio/FloatBuffer;
    .locals 5
    .param p0, "data"    # [Lcom/smartisanos/smengine/math/Vector4f;

    .prologue
    const/4 v4, 0x0

    .line 212
    if-nez p0, :cond_0

    .line 213
    const/4 v0, 0x0

    .line 224
    :goto_0
    return-object v0

    .line 215
    :cond_0
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Lcom/smartisanos/smengine/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 216
    .local v0, "buff":Ljava/nio/FloatBuffer;
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 217
    aget-object v2, p0, v1

    if-eqz v2, :cond_1

    .line 218
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/smartisanos/smengine/math/Vector4f;->getX()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-virtual {v3}, Lcom/smartisanos/smengine/math/Vector4f;->getY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-virtual {v3}, Lcom/smartisanos/smengine/math/Vector4f;->getZ()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-virtual {v3}, Lcom/smartisanos/smengine/math/Vector4f;->getW()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 216
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 220
    :cond_1
    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_2

    .line 223
    :cond_2
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public static createIntBuffer(I)Ljava/nio/IntBuffer;
    .locals 3
    .param p0, "size"    # I

    .prologue
    .line 875
    mul-int/lit8 v1, p0, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    .line 876
    .local v0, "buf":Ljava/nio/IntBuffer;
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 877
    invoke-static {v0}, Lcom/smartisanos/smengine/util/BufferUtils;->onBufferAllocated(Ljava/nio/Buffer;)V

    .line 878
    return-object v0
.end method

.method public static createIntBuffer(Ljava/nio/IntBuffer;I)Ljava/nio/IntBuffer;
    .locals 1
    .param p0, "buf"    # Ljava/nio/IntBuffer;
    .param p1, "size"    # I

    .prologue
    .line 893
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->limit()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 894
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 899
    :goto_0
    return-object p0

    .line 898
    :cond_0
    invoke-static {p1}, Lcom/smartisanos/smengine/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object p0

    .line 899
    goto :goto_0
.end method

.method public static varargs createIntBuffer([I)Ljava/nio/IntBuffer;
    .locals 2
    .param p0, "data"    # [I

    .prologue
    .line 691
    if-nez p0, :cond_0

    .line 692
    const/4 v0, 0x0

    .line 698
    :goto_0
    return-object v0

    .line 694
    :cond_0
    array-length v1, p0

    invoke-static {v1}, Lcom/smartisanos/smengine/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 695
    .local v0, "buff":Ljava/nio/IntBuffer;
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 696
    invoke-virtual {v0, p0}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 697
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public static createShortBuffer(I)Ljava/nio/ShortBuffer;
    .locals 3
    .param p0, "size"    # I

    .prologue
    .line 1016
    mul-int/lit8 v1, p0, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 1017
    .local v0, "buf":Ljava/nio/ShortBuffer;
    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 1018
    invoke-static {v0}, Lcom/smartisanos/smengine/util/BufferUtils;->onBufferAllocated(Ljava/nio/Buffer;)V

    .line 1019
    return-object v0
.end method

.method public static createShortBuffer(Ljava/nio/ShortBuffer;I)Ljava/nio/ShortBuffer;
    .locals 1
    .param p0, "buf"    # Ljava/nio/ShortBuffer;
    .param p1, "size"    # I

    .prologue
    .line 1034
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->limit()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 1035
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    .line 1040
    :goto_0
    return-object p0

    .line 1039
    :cond_0
    invoke-static {p1}, Lcom/smartisanos/smengine/util/BufferUtils;->createShortBuffer(I)Ljava/nio/ShortBuffer;

    move-result-object p0

    .line 1040
    goto :goto_0
.end method

.method public static varargs createShortBuffer([S)Ljava/nio/ShortBuffer;
    .locals 2
    .param p0, "data"    # [S

    .prologue
    .line 1044
    if-nez p0, :cond_0

    .line 1045
    const/4 v0, 0x0

    .line 1051
    :goto_0
    return-object v0

    .line 1047
    :cond_0
    array-length v1, p0

    invoke-static {v1}, Lcom/smartisanos/smengine/util/BufferUtils;->createShortBuffer(I)Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 1048
    .local v0, "buff":Ljava/nio/ShortBuffer;
    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 1049
    invoke-virtual {v0, p0}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 1050
    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public static createVector2Buffer(I)Ljava/nio/FloatBuffer;
    .locals 2
    .param p0, "vertices"    # I

    .prologue
    .line 510
    mul-int/lit8 v1, p0, 0x2

    invoke-static {v1}, Lcom/smartisanos/smengine/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 511
    .local v0, "vBuff":Ljava/nio/FloatBuffer;
    return-object v0
.end method

.method public static createVector2Buffer(Ljava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;
    .locals 2
    .param p0, "buf"    # Ljava/nio/FloatBuffer;
    .param p1, "vertices"    # I

    .prologue
    .line 527
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->limit()I

    move-result v0

    mul-int/lit8 v1, p1, 0x2

    if-ne v0, v1, :cond_0

    .line 528
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 532
    .end local p0    # "buf":Ljava/nio/FloatBuffer;
    :goto_0
    return-object p0

    .restart local p0    # "buf":Ljava/nio/FloatBuffer;
    :cond_0
    mul-int/lit8 v0, p1, 0x2

    invoke-static {v0}, Lcom/smartisanos/smengine/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object p0

    goto :goto_0
.end method

.method public static createVector3Buffer(I)Ljava/nio/FloatBuffer;
    .locals 2
    .param p0, "vertices"    # I

    .prologue
    .line 252
    mul-int/lit8 v1, p0, 0x3

    invoke-static {v1}, Lcom/smartisanos/smengine/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 253
    .local v0, "vBuff":Ljava/nio/FloatBuffer;
    return-object v0
.end method

.method public static createVector3Buffer(Ljava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;
    .locals 2
    .param p0, "buf"    # Ljava/nio/FloatBuffer;
    .param p1, "vertices"    # I

    .prologue
    .line 269
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->limit()I

    move-result v0

    mul-int/lit8 v1, p1, 0x3

    if-ne v0, v1, :cond_0

    .line 270
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 274
    .end local p0    # "buf":Ljava/nio/FloatBuffer;
    :goto_0
    return-object p0

    .restart local p0    # "buf":Ljava/nio/FloatBuffer;
    :cond_0
    mul-int/lit8 v0, p1, 0x3

    invoke-static {v0}, Lcom/smartisanos/smengine/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object p0

    goto :goto_0
.end method

.method public static destroyDirectBuffer(Ljava/nio/Buffer;)V
    .locals 6
    .param p0, "toBeDestroyed"    # Ljava/nio/Buffer;

    .prologue
    .line 1268
    invoke-static {p0}, Lcom/smartisanos/smengine/util/BufferUtils;->isDirect(Ljava/nio/Buffer;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1300
    :goto_0
    return-void

    .line 1272
    :cond_0
    invoke-static {}, Lcom/smartisanos/smengine/util/BufferUtils;->loadCleanerMethods()V

    .line 1275
    :try_start_0
    sget-object v3, Lcom/smartisanos/smengine/util/BufferUtils;->freeMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    .line 1276
    sget-object v3, Lcom/smartisanos/smengine/util/BufferUtils;->freeMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 1291
    :catch_0
    move-exception v1

    .line 1292
    .local v1, "ex":Ljava/lang/IllegalAccessException;
    const-class v3, Lcom/smartisanos/smengine/util/BufferUtils;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "{0}"

    invoke-virtual {v3, v4, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1278
    .end local v1    # "ex":Ljava/lang/IllegalAccessException;
    :cond_1
    :try_start_1
    sget-object v3, Lcom/smartisanos/smengine/util/BufferUtils;->cleanerMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1279
    .local v0, "cleaner":Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 1280
    sget-object v3, Lcom/smartisanos/smengine/util/BufferUtils;->cleanMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 1293
    .end local v0    # "cleaner":Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 1294
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    const-class v3, Lcom/smartisanos/smengine/util/BufferUtils;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "{0}"

    invoke-virtual {v3, v4, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1283
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "cleaner":Ljava/lang/Object;
    :cond_2
    :try_start_2
    sget-object v3, Lcom/smartisanos/smengine/util/BufferUtils;->viewedBufferMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1284
    .local v2, "viewedBuffer":Ljava/lang/Object;
    if-eqz v2, :cond_3

    .line 1285
    check-cast v2, Ljava/nio/Buffer;

    .end local v2    # "viewedBuffer":Ljava/lang/Object;
    invoke-static {v2}, Lcom/smartisanos/smengine/util/BufferUtils;->destroyDirectBuffer(Ljava/nio/Buffer;)V
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 1295
    .end local v0    # "cleaner":Ljava/lang/Object;
    :catch_2
    move-exception v1

    .line 1296
    .local v1, "ex":Ljava/lang/reflect/InvocationTargetException;
    const-class v3, Lcom/smartisanos/smengine/util/BufferUtils;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "{0}"

    invoke-virtual {v3, v4, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1287
    .end local v1    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .restart local v0    # "cleaner":Ljava/lang/Object;
    .restart local v2    # "viewedBuffer":Ljava/lang/Object;
    :cond_3
    :try_start_3
    const-class v3, Lcom/smartisanos/smengine/util/BufferUtils;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "Buffer cannot be destroyed: {0}"

    invoke-virtual {v3, v4, v5, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 1297
    .end local v0    # "cleaner":Ljava/lang/Object;
    .end local v2    # "viewedBuffer":Ljava/lang/Object;
    :catch_3
    move-exception v1

    .line 1298
    .local v1, "ex":Ljava/lang/SecurityException;
    const-class v3, Lcom/smartisanos/smengine/util/BufferUtils;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "{0}"

    invoke-virtual {v3, v4, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public static ensureLargeEnough(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "required"    # I

    .prologue
    .line 1142
    if-eqz p0, :cond_0

    .line 1143
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1145
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-ge v2, p1, :cond_3

    .line 1146
    :cond_1
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 1147
    .local v1, "position":I
    :goto_0
    add-int v2, v1, p1

    invoke-static {v2}, Lcom/smartisanos/smengine/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1148
    .local v0, "newVerts":Ljava/nio/ByteBuffer;
    if-eqz p0, :cond_2

    .line 1149
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1150
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1151
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1153
    :cond_2
    move-object p0, v0

    .line 1155
    .end local v0    # "newVerts":Ljava/nio/ByteBuffer;
    .end local v1    # "position":I
    :cond_3
    return-object p0

    .line 1146
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static ensureLargeEnough(Ljava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;
    .locals 3
    .param p0, "buffer"    # Ljava/nio/FloatBuffer;
    .param p1, "required"    # I

    .prologue
    .line 1090
    if-eqz p0, :cond_0

    .line 1091
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1093
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v2

    if-ge v2, p1, :cond_3

    .line 1094
    :cond_1
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->position()I

    move-result v1

    .line 1095
    .local v1, "position":I
    :goto_0
    add-int v2, v1, p1

    invoke-static {v2}, Lcom/smartisanos/smengine/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 1096
    .local v0, "newVerts":Ljava/nio/FloatBuffer;
    if-eqz p0, :cond_2

    .line 1097
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 1098
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 1099
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1101
    :cond_2
    move-object p0, v0

    .line 1103
    .end local v0    # "newVerts":Ljava/nio/FloatBuffer;
    .end local v1    # "position":I
    :cond_3
    return-object p0

    .line 1094
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static ensureLargeEnough(Ljava/nio/IntBuffer;I)Ljava/nio/IntBuffer;
    .locals 3
    .param p0, "buffer"    # Ljava/nio/IntBuffer;
    .param p1, "required"    # I

    .prologue
    .line 1107
    if-eqz p0, :cond_0

    .line 1108
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->capacity()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/nio/IntBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1110
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v2

    if-ge v2, p1, :cond_3

    .line 1111
    :cond_1
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->position()I

    move-result v1

    .line 1112
    .local v1, "position":I
    :goto_0
    add-int v2, v1, p1

    invoke-static {v2}, Lcom/smartisanos/smengine/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 1113
    .local v0, "newVerts":Ljava/nio/IntBuffer;
    if-eqz p0, :cond_2

    .line 1114
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    .line 1115
    invoke-virtual {v0, p0}, Ljava/nio/IntBuffer;->put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    .line 1116
    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 1118
    :cond_2
    move-object p0, v0

    .line 1120
    .end local v0    # "newVerts":Ljava/nio/IntBuffer;
    .end local v1    # "position":I
    :cond_3
    return-object p0

    .line 1111
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static ensureLargeEnough(Ljava/nio/ShortBuffer;I)Ljava/nio/ShortBuffer;
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ShortBuffer;
    .param p1, "required"    # I

    .prologue
    .line 1125
    if-eqz p0, :cond_0

    .line 1126
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/nio/ShortBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1128
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v2

    if-ge v2, p1, :cond_3

    .line 1129
    :cond_1
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->position()I

    move-result v1

    .line 1130
    .local v1, "position":I
    :goto_0
    add-int v2, v1, p1

    invoke-static {v2}, Lcom/smartisanos/smengine/util/BufferUtils;->createShortBuffer(I)Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 1131
    .local v0, "newVerts":Ljava/nio/ShortBuffer;
    if-eqz p0, :cond_2

    .line 1132
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    .line 1133
    invoke-virtual {v0, p0}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    .line 1134
    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 1136
    :cond_2
    move-object p0, v0

    .line 1138
    .end local v0    # "newVerts":Ljava/nio/ShortBuffer;
    .end local v1    # "position":I
    :cond_3
    return-object p0

    .line 1129
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static equals(Lcom/smartisanos/smengine/math/Vector2f;Ljava/nio/FloatBuffer;I)Z
    .locals 3
    .param p0, "check"    # Lcom/smartisanos/smengine/math/Vector2f;
    .param p1, "buf"    # Ljava/nio/FloatBuffer;
    .param p2, "index"    # I

    .prologue
    .line 673
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v2

    .line 674
    .local v2, "vars":Lcom/smartisanos/smengine/util/TempVars;
    iget-object v1, v2, Lcom/smartisanos/smengine/util/TempVars;->vect2d:Lcom/smartisanos/smengine/math/Vector2f;

    .line 675
    .local v1, "tempVec2":Lcom/smartisanos/smengine/math/Vector2f;
    invoke-static {v1, p1, p2}, Lcom/smartisanos/smengine/util/BufferUtils;->populateFromBuffer(Lcom/smartisanos/smengine/math/Vector2f;Ljava/nio/FloatBuffer;I)V

    .line 676
    invoke-virtual {v1, p0}, Lcom/smartisanos/smengine/math/Vector2f;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 677
    .local v0, "eq":Z
    invoke-virtual {v2}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 678
    return v0
.end method

.method public static equals(Lcom/smartisanos/smengine/math/Vector3f;Ljava/nio/FloatBuffer;I)Z
    .locals 3
    .param p0, "check"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p1, "buf"    # Ljava/nio/FloatBuffer;
    .param p2, "index"    # I

    .prologue
    .line 468
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v2

    .line 469
    .local v2, "vars":Lcom/smartisanos/smengine/util/TempVars;
    iget-object v1, v2, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    .line 470
    .local v1, "tempVec3":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-static {v1, p1, p2}, Lcom/smartisanos/smengine/util/BufferUtils;->populateFromBuffer(Lcom/smartisanos/smengine/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    .line 471
    invoke-virtual {v1, p0}, Lcom/smartisanos/smengine/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 472
    .local v0, "eq":Z
    invoke-virtual {v2}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 473
    return v0
.end method

.method public static getFloatArray(Ljava/nio/FloatBuffer;)[F
    .locals 3
    .param p0, "buff"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 730
    if-nez p0, :cond_1

    .line 731
    const/4 v0, 0x0

    .line 738
    :cond_0
    return-object v0

    .line 733
    :cond_1
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 734
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->limit()I

    move-result v2

    new-array v0, v2, [F

    .line 735
    .local v0, "inds":[F
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 736
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->get()F

    move-result v2

    aput v2, v0, v1

    .line 735
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getIntArray(Ljava/nio/IntBuffer;)[I
    .locals 3
    .param p0, "buff"    # Ljava/nio/IntBuffer;

    .prologue
    .line 710
    if-nez p0, :cond_1

    .line 711
    const/4 v0, 0x0

    .line 718
    :cond_0
    return-object v0

    .line 713
    :cond_1
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 714
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->limit()I

    move-result v2

    new-array v0, v2, [I

    .line 715
    .local v0, "inds":[I
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 716
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->get()I

    move-result v2

    aput v2, v0, v1

    .line 715
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getVector2Array(Ljava/nio/FloatBuffer;)[Lcom/smartisanos/smengine/math/Vector2f;
    .locals 5
    .param p0, "buff"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 576
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 577
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->limit()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    new-array v1, v3, [Lcom/smartisanos/smengine/math/Vector2f;

    .line 578
    .local v1, "verts":[Lcom/smartisanos/smengine/math/Vector2f;
    const/4 v2, 0x0

    .local v2, "x":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 579
    new-instance v0, Lcom/smartisanos/smengine/math/Vector2f;

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->get()F

    move-result v3

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->get()F

    move-result v4

    invoke-direct {v0, v3, v4}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    .line 580
    .local v0, "v":Lcom/smartisanos/smengine/math/Vector2f;
    aput-object v0, v1, v2

    .line 578
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 582
    .end local v0    # "v":Lcom/smartisanos/smengine/math/Vector2f;
    :cond_0
    return-object v1
.end method

.method public static getVector3Array(Ljava/nio/FloatBuffer;)[Lcom/smartisanos/smengine/math/Vector3f;
    .locals 6
    .param p0, "buff"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 371
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 372
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->limit()I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    new-array v1, v3, [Lcom/smartisanos/smengine/math/Vector3f;

    .line 373
    .local v1, "verts":[Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v2, 0x0

    .local v2, "x":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 374
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->get()F

    move-result v3

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->get()F

    move-result v4

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->get()F

    move-result v5

    invoke-direct {v0, v3, v4, v5}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 375
    .local v0, "v":Lcom/smartisanos/smengine/math/Vector3f;
    aput-object v0, v1, v2

    .line 373
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 377
    .end local v0    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_0
    return-object v1
.end method

.method private static isDirect(Ljava/nio/Buffer;)Z
    .locals 3
    .param p0, "buf"    # Ljava/nio/Buffer;

    .prologue
    .line 1311
    instance-of v0, p0, Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    .line 1312
    check-cast p0, Ljava/nio/FloatBuffer;

    .end local p0    # "buf":Ljava/nio/Buffer;
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->isDirect()Z

    move-result v0

    .line 1327
    :goto_0
    return v0

    .line 1314
    .restart local p0    # "buf":Ljava/nio/Buffer;
    :cond_0
    instance-of v0, p0, Ljava/nio/IntBuffer;

    if-eqz v0, :cond_1

    .line 1315
    check-cast p0, Ljava/nio/IntBuffer;

    .end local p0    # "buf":Ljava/nio/Buffer;
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->isDirect()Z

    move-result v0

    goto :goto_0

    .line 1317
    .restart local p0    # "buf":Ljava/nio/Buffer;
    :cond_1
    instance-of v0, p0, Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_2

    .line 1318
    check-cast p0, Ljava/nio/ShortBuffer;

    .end local p0    # "buf":Ljava/nio/Buffer;
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->isDirect()Z

    move-result v0

    goto :goto_0

    .line 1320
    .restart local p0    # "buf":Ljava/nio/Buffer;
    :cond_2
    instance-of v0, p0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    .line 1321
    check-cast p0, Ljava/nio/ByteBuffer;

    .end local p0    # "buf":Ljava/nio/Buffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    goto :goto_0

    .line 1323
    .restart local p0    # "buf":Ljava/nio/Buffer;
    :cond_3
    instance-of v0, p0, Ljava/nio/DoubleBuffer;

    if-eqz v0, :cond_4

    .line 1324
    check-cast p0, Ljava/nio/DoubleBuffer;

    .end local p0    # "buf":Ljava/nio/Buffer;
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->isDirect()Z

    move-result v0

    goto :goto_0

    .line 1326
    .restart local p0    # "buf":Ljava/nio/Buffer;
    :cond_4
    instance-of v0, p0, Ljava/nio/LongBuffer;

    if-eqz v0, :cond_5

    .line 1327
    check-cast p0, Ljava/nio/LongBuffer;

    .end local p0    # "buf":Ljava/nio/Buffer;
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->isDirect()Z

    move-result v0

    goto :goto_0

    .line 1329
    .restart local p0    # "buf":Ljava/nio/Buffer;
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " BufferUtils.isDirect was called on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static loadCleanerMethods()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 1229
    sget-object v2, Lcom/smartisanos/smengine/util/BufferUtils;->loadedMethods:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1253
    .local v0, "bb":Ljava/nio/ByteBuffer;
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 1234
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    sget-object v3, Lcom/smartisanos/smengine/util/BufferUtils;->loadedMethods:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    .line 1236
    :try_start_0
    const-string v2, "sun.nio.ch.DirectBuffer"

    const-string v4, "cleaner"

    invoke-static {v2, v4}, Lcom/smartisanos/smengine/util/BufferUtils;->loadMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/smartisanos/smengine/util/BufferUtils;->cleanerMethod:Ljava/lang/reflect/Method;

    .line 1237
    const-string v2, "sun.misc.Cleaner"

    const-string v4, "clean"

    invoke-static {v2, v4}, Lcom/smartisanos/smengine/util/BufferUtils;->loadMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/smartisanos/smengine/util/BufferUtils;->cleanMethod:Ljava/lang/reflect/Method;

    .line 1238
    const-string v2, "sun.nio.ch.DirectBuffer"

    const-string v4, "viewedBuffer"

    invoke-static {v2, v4}, Lcom/smartisanos/smengine/util/BufferUtils;->loadMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/smartisanos/smengine/util/BufferUtils;->viewedBufferMethod:Ljava/lang/reflect/Method;

    .line 1239
    sget-object v2, Lcom/smartisanos/smengine/util/BufferUtils;->viewedBufferMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    .line 1241
    const-string v2, "sun.nio.ch.DirectBuffer"

    const-string v4, "attachment"

    invoke-static {v2, v4}, Lcom/smartisanos/smengine/util/BufferUtils;->loadMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/smartisanos/smengine/util/BufferUtils;->viewedBufferMethod:Ljava/lang/reflect/Method;

    .line 1245
    :cond_1
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/smartisanos/smengine/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1246
    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1248
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-string v2, "free"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/smartisanos/smengine/util/BufferUtils;->freeMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1252
    :goto_1
    :try_start_2
    monitor-exit v3

    goto :goto_0

    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1250
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    goto :goto_1

    .line 1249
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private static loadMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 5
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1215
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, p1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1216
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1223
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v1

    .line 1218
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    move-object v1, v2

    .line 1219
    goto :goto_0

    .line 1220
    .end local v0    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/SecurityException;
    move-object v1, v2

    .line 1221
    goto :goto_0

    .line 1222
    .end local v0    # "ex":Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    move-object v1, v2

    .line 1223
    goto :goto_0
.end method

.method public static multInBuffer(Lcom/smartisanos/smengine/math/Vector2f;Ljava/nio/FloatBuffer;I)V
    .locals 2
    .param p0, "toMult"    # Lcom/smartisanos/smengine/math/Vector2f;
    .param p1, "buf"    # Ljava/nio/FloatBuffer;
    .param p2, "index"    # I

    .prologue
    .line 651
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v1

    .line 652
    .local v1, "vars":Lcom/smartisanos/smengine/util/TempVars;
    iget-object v0, v1, Lcom/smartisanos/smengine/util/TempVars;->vect2d:Lcom/smartisanos/smengine/math/Vector2f;

    .line 653
    .local v0, "tempVec2":Lcom/smartisanos/smengine/math/Vector2f;
    invoke-static {v0, p1, p2}, Lcom/smartisanos/smengine/util/BufferUtils;->populateFromBuffer(Lcom/smartisanos/smengine/math/Vector2f;Ljava/nio/FloatBuffer;I)V

    .line 654
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/math/Vector2f;->multLocal(Lcom/smartisanos/smengine/math/Vector2f;)Lcom/smartisanos/smengine/math/Vector2f;

    .line 655
    invoke-static {v0, p1, p2}, Lcom/smartisanos/smengine/util/BufferUtils;->setInBuffer(Lcom/smartisanos/smengine/math/Vector2f;Ljava/nio/FloatBuffer;I)V

    .line 656
    invoke-virtual {v1}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 657
    return-void
.end method

.method public static multInBuffer(Lcom/smartisanos/smengine/math/Vector3f;Ljava/nio/FloatBuffer;I)V
    .locals 2
    .param p0, "toMult"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p1, "buf"    # Ljava/nio/FloatBuffer;
    .param p2, "index"    # I

    .prologue
    .line 446
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v1

    .line 447
    .local v1, "vars":Lcom/smartisanos/smengine/util/TempVars;
    iget-object v0, v1, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    .line 448
    .local v0, "tempVec3":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-static {v0, p1, p2}, Lcom/smartisanos/smengine/util/BufferUtils;->populateFromBuffer(Lcom/smartisanos/smengine/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    .line 449
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/math/Vector3f;->multLocal(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 450
    invoke-static {v0, p1, p2}, Lcom/smartisanos/smengine/util/BufferUtils;->setInBuffer(Lcom/smartisanos/smengine/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    .line 451
    invoke-virtual {v1}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 452
    return-void
.end method

.method public static normalizeVector2(Ljava/nio/FloatBuffer;I)V
    .locals 2
    .param p0, "buf"    # Ljava/nio/FloatBuffer;
    .param p1, "index"    # I

    .prologue
    .line 611
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v1

    .line 612
    .local v1, "vars":Lcom/smartisanos/smengine/util/TempVars;
    iget-object v0, v1, Lcom/smartisanos/smengine/util/TempVars;->vect2d:Lcom/smartisanos/smengine/math/Vector2f;

    .line 613
    .local v0, "tempVec2":Lcom/smartisanos/smengine/math/Vector2f;
    invoke-static {v0, p0, p1}, Lcom/smartisanos/smengine/util/BufferUtils;->populateFromBuffer(Lcom/smartisanos/smengine/math/Vector2f;Ljava/nio/FloatBuffer;I)V

    .line 614
    invoke-virtual {v0}, Lcom/smartisanos/smengine/math/Vector2f;->normalizeLocal()Lcom/smartisanos/smengine/math/Vector2f;

    .line 615
    invoke-static {v0, p0, p1}, Lcom/smartisanos/smengine/util/BufferUtils;->setInBuffer(Lcom/smartisanos/smengine/math/Vector2f;Ljava/nio/FloatBuffer;I)V

    .line 616
    invoke-virtual {v1}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 617
    return-void
.end method

.method public static normalizeVector3(Ljava/nio/FloatBuffer;I)V
    .locals 2
    .param p0, "buf"    # Ljava/nio/FloatBuffer;
    .param p1, "index"    # I

    .prologue
    .line 406
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v1

    .line 407
    .local v1, "vars":Lcom/smartisanos/smengine/util/TempVars;
    iget-object v0, v1, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    .line 408
    .local v0, "tempVec3":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-static {v0, p0, p1}, Lcom/smartisanos/smengine/util/BufferUtils;->populateFromBuffer(Lcom/smartisanos/smengine/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    .line 409
    invoke-virtual {v0}, Lcom/smartisanos/smengine/math/Vector3f;->normalizeLocal()Lcom/smartisanos/smengine/math/Vector3f;

    .line 410
    invoke-static {v0, p0, p1}, Lcom/smartisanos/smengine/util/BufferUtils;->setInBuffer(Lcom/smartisanos/smengine/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    .line 411
    invoke-virtual {v1}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 412
    return-void
.end method

.method private static onBufferAllocated(Ljava/nio/Buffer;)V
    .locals 4
    .param p0, "buffer"    # Ljava/nio/Buffer;

    .prologue
    .line 134
    sget-boolean v1, Lcom/smartisanos/smengine/util/BufferUtils;->trackDirectMemory:Z

    if-eqz v1, :cond_1

    .line 136
    sget-object v1, Lcom/smartisanos/smengine/util/BufferUtils;->cleanupthread:Lcom/smartisanos/smengine/util/BufferUtils$ClearReferences;

    if-nez v1, :cond_0

    .line 137
    new-instance v1, Lcom/smartisanos/smengine/util/BufferUtils$ClearReferences;

    invoke-direct {v1}, Lcom/smartisanos/smengine/util/BufferUtils$ClearReferences;-><init>()V

    sput-object v1, Lcom/smartisanos/smengine/util/BufferUtils;->cleanupthread:Lcom/smartisanos/smengine/util/BufferUtils$ClearReferences;

    .line 138
    sget-object v1, Lcom/smartisanos/smengine/util/BufferUtils;->cleanupthread:Lcom/smartisanos/smengine/util/BufferUtils$ClearReferences;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/util/BufferUtils$ClearReferences;->start()V

    .line 140
    :cond_0
    instance-of v1, p0, Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_2

    .line 141
    new-instance v0, Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;

    const-class v1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    sget-object v3, Lcom/smartisanos/smengine/util/BufferUtils;->removeCollected:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;-><init>(Ljava/lang/Class;ILjava/nio/Buffer;Ljava/lang/ref/ReferenceQueue;)V

    .line 142
    .local v0, "info":Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;
    sget-object v1, Lcom/smartisanos/smengine/util/BufferUtils;->trackedBuffers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .end local v0    # "info":Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;
    :cond_1
    :goto_0
    return-void

    .line 143
    :cond_2
    instance-of v1, p0, Ljava/nio/FloatBuffer;

    if-eqz v1, :cond_3

    .line 144
    new-instance v0, Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;

    const-class v1, Ljava/nio/FloatBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    sget-object v3, Lcom/smartisanos/smengine/util/BufferUtils;->removeCollected:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;-><init>(Ljava/lang/Class;ILjava/nio/Buffer;Ljava/lang/ref/ReferenceQueue;)V

    .line 145
    .restart local v0    # "info":Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;
    sget-object v1, Lcom/smartisanos/smengine/util/BufferUtils;->trackedBuffers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 146
    .end local v0    # "info":Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;
    :cond_3
    instance-of v1, p0, Ljava/nio/IntBuffer;

    if-eqz v1, :cond_4

    .line 147
    new-instance v0, Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;

    const-class v1, Ljava/nio/IntBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    sget-object v3, Lcom/smartisanos/smengine/util/BufferUtils;->removeCollected:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;-><init>(Ljava/lang/Class;ILjava/nio/Buffer;Ljava/lang/ref/ReferenceQueue;)V

    .line 148
    .restart local v0    # "info":Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;
    sget-object v1, Lcom/smartisanos/smengine/util/BufferUtils;->trackedBuffers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 149
    .end local v0    # "info":Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;
    :cond_4
    instance-of v1, p0, Ljava/nio/ShortBuffer;

    if-eqz v1, :cond_5

    .line 150
    new-instance v0, Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;

    const-class v1, Ljava/nio/ShortBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sget-object v3, Lcom/smartisanos/smengine/util/BufferUtils;->removeCollected:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;-><init>(Ljava/lang/Class;ILjava/nio/Buffer;Ljava/lang/ref/ReferenceQueue;)V

    .line 151
    .restart local v0    # "info":Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;
    sget-object v1, Lcom/smartisanos/smengine/util/BufferUtils;->trackedBuffers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 152
    .end local v0    # "info":Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;
    :cond_5
    instance-of v1, p0, Ljava/nio/DoubleBuffer;

    if-eqz v1, :cond_1

    .line 153
    new-instance v0, Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;

    const-class v1, Ljava/nio/DoubleBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    sget-object v3, Lcom/smartisanos/smengine/util/BufferUtils;->removeCollected:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;-><init>(Ljava/lang/Class;ILjava/nio/Buffer;Ljava/lang/ref/ReferenceQueue;)V

    .line 154
    .restart local v0    # "info":Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;
    sget-object v1, Lcom/smartisanos/smengine/util/BufferUtils;->trackedBuffers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static populateFromBuffer(Lcom/smartisanos/smengine/math/Vector2f;Ljava/nio/FloatBuffer;I)V
    .locals 1
    .param p0, "vector"    # Lcom/smartisanos/smengine/math/Vector2f;
    .param p1, "buf"    # Ljava/nio/FloatBuffer;
    .param p2, "index"    # I

    .prologue
    .line 564
    mul-int/lit8 v0, p2, 0x2

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 565
    mul-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    .line 566
    return-void
.end method

.method public static populateFromBuffer(Lcom/smartisanos/smengine/math/Vector3f;Ljava/nio/FloatBuffer;I)V
    .locals 1
    .param p0, "vector"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p1, "buf"    # Ljava/nio/FloatBuffer;
    .param p2, "index"    # I

    .prologue
    .line 358
    mul-int/lit8 v0, p2, 0x3

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 359
    mul-int/lit8 v0, p2, 0x3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 360
    mul-int/lit8 v0, p2, 0x3

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 361
    return-void
.end method

.method public static printCurrentDirectMemory(Ljava/lang/StringBuilder;)V
    .locals 24
    .param p0, "store"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1159
    const-wide/16 v18, 0x0

    .line 1160
    .local v18, "totalHeld":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v20

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v22

    sub-long v12, v20, v22

    .line 1162
    .local v12, "heapMem":J
    if-nez p0, :cond_2

    const/4 v15, 0x1

    .line 1163
    .local v15, "printStout":Z
    :goto_0
    if-nez p0, :cond_0

    .line 1164
    new-instance p0, Ljava/lang/StringBuilder;

    .end local p0    # "store":Ljava/lang/StringBuilder;
    invoke-direct/range {p0 .. p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1166
    .restart local p0    # "store":Ljava/lang/StringBuilder;
    :cond_0
    sget-boolean v20, Lcom/smartisanos/smengine/util/BufferUtils;->trackDirectMemory:Z

    if-eqz v20, :cond_9

    .line 1168
    const/4 v9, 0x0

    .local v9, "fBufs":I
    const/4 v5, 0x0

    .local v5, "bBufs":I
    const/4 v11, 0x0

    .local v11, "iBufs":I
    const/16 v16, 0x0

    .local v16, "sBufs":I
    const/4 v7, 0x0

    .line 1169
    .local v7, "dBufs":I
    const/4 v10, 0x0

    .local v10, "fBufsM":I
    const/4 v6, 0x0

    .local v6, "bBufsM":I
    const/4 v14, 0x0

    .local v14, "iBufsM":I
    const/16 v17, 0x0

    .local v17, "sBufsM":I
    const/4 v8, 0x0

    .line 1170
    .local v8, "dBufsM":I
    sget-object v20, Lcom/smartisanos/smengine/util/BufferUtils;->trackedBuffers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_1
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_7

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;

    .line 1171
    .local v4, "b":Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;
    invoke-static {v4}, Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;->access$000(Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;)Ljava/lang/Class;

    move-result-object v21

    const-class v22, Ljava/nio/ByteBuffer;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 1172
    invoke-static {v4}, Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;->access$100(Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;)I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v18, v18, v22

    .line 1173
    invoke-static {v4}, Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;->access$100(Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;)I

    move-result v21

    add-int v6, v6, v21

    .line 1174
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1162
    .end local v4    # "b":Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;
    .end local v5    # "bBufs":I
    .end local v6    # "bBufsM":I
    .end local v7    # "dBufs":I
    .end local v8    # "dBufsM":I
    .end local v9    # "fBufs":I
    .end local v10    # "fBufsM":I
    .end local v11    # "iBufs":I
    .end local v14    # "iBufsM":I
    .end local v15    # "printStout":Z
    .end local v16    # "sBufs":I
    .end local v17    # "sBufsM":I
    :cond_2
    const/4 v15, 0x0

    goto :goto_0

    .line 1175
    .restart local v4    # "b":Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;
    .restart local v5    # "bBufs":I
    .restart local v6    # "bBufsM":I
    .restart local v7    # "dBufs":I
    .restart local v8    # "dBufsM":I
    .restart local v9    # "fBufs":I
    .restart local v10    # "fBufsM":I
    .restart local v11    # "iBufs":I
    .restart local v14    # "iBufsM":I
    .restart local v15    # "printStout":Z
    .restart local v16    # "sBufs":I
    .restart local v17    # "sBufsM":I
    :cond_3
    invoke-static {v4}, Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;->access$000(Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;)Ljava/lang/Class;

    move-result-object v21

    const-class v22, Ljava/nio/FloatBuffer;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 1176
    invoke-static {v4}, Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;->access$100(Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;)I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v18, v18, v22

    .line 1177
    invoke-static {v4}, Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;->access$100(Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;)I

    move-result v21

    add-int v10, v10, v21

    .line 1178
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1179
    :cond_4
    invoke-static {v4}, Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;->access$000(Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;)Ljava/lang/Class;

    move-result-object v21

    const-class v22, Ljava/nio/IntBuffer;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 1180
    invoke-static {v4}, Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;->access$100(Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;)I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v18, v18, v22

    .line 1181
    invoke-static {v4}, Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;->access$100(Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;)I

    move-result v21

    add-int v14, v14, v21

    .line 1182
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1183
    :cond_5
    invoke-static {v4}, Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;->access$000(Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;)Ljava/lang/Class;

    move-result-object v21

    const-class v22, Ljava/nio/ShortBuffer;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 1184
    invoke-static {v4}, Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;->access$100(Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;)I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v18, v18, v22

    .line 1185
    invoke-static {v4}, Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;->access$100(Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;)I

    move-result v21

    add-int v17, v17, v21

    .line 1186
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 1187
    :cond_6
    invoke-static {v4}, Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;->access$000(Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;)Ljava/lang/Class;

    move-result-object v21

    const-class v22, Ljava/nio/DoubleBuffer;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 1188
    invoke-static {v4}, Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;->access$100(Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;)I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v18, v18, v22

    .line 1189
    invoke-static {v4}, Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;->access$100(Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;)I

    move-result v21

    add-int v8, v8, v21

    .line 1190
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 1194
    .end local v4    # "b":Lcom/smartisanos/smengine/util/BufferUtils$BufferInfo;
    :cond_7
    const-string v20, "Existing buffers: "

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Lcom/smartisanos/smengine/util/BufferUtils;->trackedBuffers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1195
    const-string v20, "(b: "

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "  f: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "  i: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "  s: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "  d: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1196
    const-string v20, "Total   heap memory held: "

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-wide/16 v22, 0x400

    div-long v22, v12, v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "kb\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1197
    const-string v20, "Total direct memory held: "

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-wide/16 v22, 0x400

    div-long v22, v18, v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "kb\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1198
    const-string v20, "(b: "

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    div-int/lit16 v0, v6, 0x400

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "kb  f: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    div-int/lit16 v0, v10, 0x400

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "kb  i: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    div-int/lit16 v0, v14, 0x400

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "kb  s: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0x400

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "kb  d: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    div-int/lit16 v0, v8, 0x400

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "kb)"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1203
    .end local v5    # "bBufs":I
    .end local v6    # "bBufsM":I
    .end local v7    # "dBufs":I
    .end local v8    # "dBufsM":I
    .end local v9    # "fBufs":I
    .end local v10    # "fBufsM":I
    .end local v11    # "iBufs":I
    .end local v14    # "iBufsM":I
    .end local v16    # "sBufs":I
    .end local v17    # "sBufsM":I
    :goto_2
    if-eqz v15, :cond_8

    .line 1204
    sget-object v20, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1206
    :cond_8
    return-void

    .line 1200
    :cond_9
    const-string v20, "Total   heap memory held: "

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-wide/16 v22, 0x400

    div-long v22, v12, v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "kb\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1201
    const-string v20, "Only heap memory available, if you want to monitor direct memory use BufferUtils.setTrackDirectMemoryEnabled(true) during initialization."

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public static setInBuffer(Lcom/smartisanos/smengine/math/Quaternion;Ljava/nio/FloatBuffer;I)V
    .locals 1
    .param p0, "quat"    # Lcom/smartisanos/smengine/math/Quaternion;
    .param p1, "buf"    # Ljava/nio/FloatBuffer;
    .param p2, "index"    # I

    .prologue
    .line 292
    mul-int/lit8 v0, p2, 0x4

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 293
    invoke-virtual {p0}, Lcom/smartisanos/smengine/math/Quaternion;->getX()F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 294
    invoke-virtual {p0}, Lcom/smartisanos/smengine/math/Quaternion;->getY()F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 295
    invoke-virtual {p0}, Lcom/smartisanos/smengine/math/Quaternion;->getZ()F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 296
    invoke-virtual {p0}, Lcom/smartisanos/smengine/math/Quaternion;->getW()F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 297
    return-void
.end method

.method public static setInBuffer(Lcom/smartisanos/smengine/math/Vector2f;Ljava/nio/FloatBuffer;I)V
    .locals 2
    .param p0, "vector"    # Lcom/smartisanos/smengine/math/Vector2f;
    .param p1, "buf"    # Ljava/nio/FloatBuffer;
    .param p2, "index"    # I

    .prologue
    .line 547
    mul-int/lit8 v0, p2, 0x2

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    invoke-virtual {p1, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 548
    mul-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    invoke-virtual {p1, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 549
    return-void
.end method

.method public static setInBuffer(Lcom/smartisanos/smengine/math/Vector3f;Ljava/nio/FloatBuffer;I)V
    .locals 2
    .param p0, "vector"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p1, "buf"    # Ljava/nio/FloatBuffer;
    .param p2, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 331
    if-nez p1, :cond_0

    .line 343
    :goto_0
    return-void

    .line 334
    :cond_0
    if-nez p0, :cond_1

    .line 335
    mul-int/lit8 v0, p2, 0x3

    invoke-virtual {p1, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 336
    mul-int/lit8 v0, p2, 0x3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 337
    mul-int/lit8 v0, p2, 0x3

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto :goto_0

    .line 339
    :cond_1
    mul-int/lit8 v0, p2, 0x3

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    invoke-virtual {p1, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 340
    mul-int/lit8 v0, p2, 0x3

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    invoke-virtual {p1, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 341
    mul-int/lit8 v0, p2, 0x3

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {p1, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto :goto_0
.end method

.method public static setInBuffer(Lcom/smartisanos/smengine/math/Vector4f;Ljava/nio/FloatBuffer;I)V
    .locals 1
    .param p0, "vec"    # Lcom/smartisanos/smengine/math/Vector4f;
    .param p1, "buf"    # Ljava/nio/FloatBuffer;
    .param p2, "index"    # I

    .prologue
    .line 312
    mul-int/lit8 v0, p2, 0x4

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 313
    invoke-virtual {p0}, Lcom/smartisanos/smengine/math/Vector4f;->getX()F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 314
    invoke-virtual {p0}, Lcom/smartisanos/smengine/math/Vector4f;->getY()F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 315
    invoke-virtual {p0}, Lcom/smartisanos/smengine/math/Vector4f;->getZ()F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 316
    invoke-virtual {p0}, Lcom/smartisanos/smengine/math/Vector4f;->getW()F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 317
    return-void
.end method

.method public static setTrackDirectMemoryEnabled(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .prologue
    .line 78
    sput-boolean p0, Lcom/smartisanos/smengine/util/BufferUtils;->trackDirectMemory:Z

    .line 79
    return-void
.end method
