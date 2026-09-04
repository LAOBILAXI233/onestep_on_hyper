.class public Lcom/smartisanos/smengine/Mesh$VertexType;
.super Ljava/lang/Object;
.source "Mesh.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/smengine/Mesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VertexType"
.end annotation


.field public static final COLOR_FLOAT_NUM:I = 0x4

.field public static final INVALID_VERTEX_TYPE:I = 0x0

.field public static final MATINDEX_FLOAT_NUM:I = 0x1

.field public static final NORMAL_FLOAT_NUM:I = 0x3

.field public static final POINT_COLOR_TYPE:I = 0x3

.field public static final POINT_FLOAT_NUM:I = 0x3

.field public static final POINT_TEX1_TEX2_DIFF_TYPE:I = 0x8

.field public static final POINT_TEX1_TEX2_MATINDEX_TYPE:I = 0x7

.field public static final POINT_TEX_COLOR_TYPE:I = 0x4

.field public static final POINT_TEX_MATINDEX_TYPE:I = 0x5

.field public static final POINT_TEX_NORMAL_TYPE:I = 0x2

.field public static final POINT_TEX_TYPE:I = 0x1

.field public static final POINT_TYPE:I = 0x6

.field public static final TEX_FLOAT_NUM:I = 0x2


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColorFloatOffset(I)I
    .locals 2
    .param p0, "vertexType"    # I

    .prologue
    .line 161
    packed-switch p0, :pswitch_data_0

    .line 171
    new-instance v0, Lcom/smartisanos/smengine/Mesh$MeshException;

    const-string v1, "vertexType can not support ColorFloatOffset"

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :pswitch_0
    const/4 v0, 0x3

    .line 168
    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x5

    goto :goto_0

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getFloatNum(I)I
    .locals 2
    .param p0, "vertexType"    # I

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x7

    .line 40
    packed-switch p0, :pswitch_data_0

    .line 76
    const/4 v0, 0x0

    :goto_0
    :pswitch_0
    return v0

    .line 43
    :pswitch_1
    const/4 v0, 0x5

    goto :goto_0

    .line 52
    :pswitch_2
    const/16 v0, 0x9

    goto :goto_0

    .line 56
    :pswitch_3
    const/4 v0, 0x6

    goto :goto_0

    .line 60
    :pswitch_4
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_5
    move v0, v1

    .line 64
    goto :goto_0

    :pswitch_6
    move v0, v1

    .line 72
    goto :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public static getMatIndexFloatOffset(I)I
    .locals 2
    .param p0, "vertexType"    # I

    .prologue
    .line 174
    packed-switch p0, :pswitch_data_0

    .line 184
    :pswitch_0
    new-instance v0, Lcom/smartisanos/smengine/Mesh$MeshException;

    const-string v1, "vertexType can not support Mat Index Offset"

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :pswitch_1
    const/4 v0, 0x5

    .line 181
    :goto_0
    return v0

    :pswitch_2
    const/4 v0, 0x7

    goto :goto_0

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getNormalFloatOffset(I)I
    .locals 2
    .param p0, "vertexType"    # I

    .prologue
    .line 111
    packed-switch p0, :pswitch_data_0

    .line 117
    new-instance v0, Lcom/smartisanos/smengine/Mesh$MeshException;

    const-string v1, "vertexType can not support normal float offset"

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static getPointFloatOffset(I)I
    .locals 1
    .param p0, "vertexType"    # I

    .prologue
    const/4 v0, 0x0

    .line 79
    packed-switch p0, :pswitch_data_0

    .line 108
    :pswitch_0
    return v0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getTex2FloatOffset(I)I
    .locals 2
    .param p0, "vertexType"    # I

    .prologue
    const/4 v0, 0x5

    .line 120
    packed-switch p0, :pswitch_data_0

    .line 130
    new-instance v0, Lcom/smartisanos/smengine/Mesh$MeshException;

    const-string v1, "vertex type can not support tex2 offset"

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :pswitch_0
    return v0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getTexFloatOffset(I)I
    .locals 2
    .param p0, "vertexType"    # I

    .prologue
    const/4 v0, 0x3

    .line 133
    packed-switch p0, :pswitch_data_0

    .line 158
    :pswitch_0
    new-instance v0, Lcom/smartisanos/smengine/Mesh$MeshException;

    const-string v1, "vertexType can not support tex float offset"

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :pswitch_1
    return v0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
