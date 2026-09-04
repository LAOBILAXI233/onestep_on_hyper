.class final Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;
.super Ljava/lang/Object;
.source "ByteQuadsCanonicalizer.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TableInfo"
.end annotation


.field public final count:I

.field public final longNameOffset:I

.field public final mainHash:[I

.field public final names:[Ljava/lang/String;

.field public final size:I

.field public final spilloverEnd:I

.field public final tertiaryShift:I


.method public constructor <init>(III[I[Ljava/lang/String;II)V
    .locals 0
    .param p1, "size"    # I
    .param p2, "count"    # I
    .param p3, "tertiaryShift"    # I
    .param p4, "mainHash"    # [I
    .param p5, "names"    # [Ljava/lang/String;
    .param p6, "spilloverEnd"    # I
    .param p7, "longNameOffset"    # I

    .prologue
    .line 1234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1235
    iput p1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->size:I

    .line 1236
    iput p2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->count:I

    .line 1237
    iput p3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->tertiaryShift:I

    .line 1238
    iput-object p4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->mainHash:[I

    .line 1239
    iput-object p5, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->names:[Ljava/lang/String;

    .line 1240
    iput p6, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->spilloverEnd:I

    .line 1241
    iput p7, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->longNameOffset:I

    .line 1242
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    .prologue
    .line 1245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1246
    invoke-static {p1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->access$000(Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->size:I

    .line 1247
    invoke-static {p1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->access$100(Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->count:I

    .line 1248
    invoke-static {p1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->access$200(Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->tertiaryShift:I

    .line 1249
    invoke-static {p1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->access$300(Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->mainHash:[I

    .line 1250
    invoke-static {p1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->access$400(Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->names:[Ljava/lang/String;

    .line 1251
    invoke-static {p1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->access$500(Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->spilloverEnd:I

    .line 1252
    invoke-static {p1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->access$600(Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->longNameOffset:I

    .line 1253
    return-void
.end method

.method public static createInitial(I)Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;
    .locals 8
    .param p0, "sz"    # I

    .prologue
    .line 1256
    shl-int/lit8 v7, p0, 0x3

    .line 1257
    .local v7, "hashAreaSize":I
    invoke-static {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_calcTertiaryShift(I)I

    move-result v3

    .line 1259
    .local v3, "tertShift":I
    new-instance v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;

    const/4 v2, 0x0

    new-array v4, v7, [I

    shl-int/lit8 v1, p0, 0x1

    new-array v5, v1, [Ljava/lang/String;

    sub-int v6, v7, p0

    move v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;-><init>(III[I[Ljava/lang/String;II)V

    return-object v0
.end method
