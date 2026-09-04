.class Lcom/hp/hpl/sparta/CharCircBuffer;
.super Ljava/lang/Object;


.field private final buf_:[I

.field private enabled_:Z

.field private next_:I

.field private total_:I


.method constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->next_:I

    iput v0, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->total_:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->enabled_:Z

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->buf_:[I

    return-void
.end method

.method private addRaw(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->enabled_:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->buf_:[I

    iget v1, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->next_:I

    aput p1, v0, v1

    iget v0, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->next_:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->buf_:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->next_:I

    iget v0, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->total_:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->total_:I

    :cond_0
    return-void
.end method


.method addChar(C)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hp/hpl/sparta/CharCircBuffer;->addRaw(I)V

    return-void
.end method

.method addInt(I)V
    .locals 1

    const/high16 v0, 0x10000

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/hp/hpl/sparta/CharCircBuffer;->addRaw(I)V

    return-void
.end method

.method addString(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    aget-char v3, v1, v0

    invoke-virtual {p0, v3}, Lcom/hp/hpl/sparta/CharCircBuffer;->addChar(C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method disable()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->enabled_:Z

    return-void
.end method

.method enable()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->enabled_:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/high16 v4, 0x10000

    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->buf_:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0xb

    div-int/lit8 v0, v0, 0xa

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    iget v0, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->total_:I

    iget-object v2, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->buf_:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->buf_:[I

    array-length v0, v0

    iget v2, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->total_:I

    sub-int/2addr v0, v2

    :goto_0
    iget-object v2, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->buf_:[I

    array-length v2, v2

    if-lt v0, v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->next_:I

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->buf_:[I

    array-length v3, v3

    rem-int/2addr v2, v3

    iget-object v3, p0, Lcom/hp/hpl/sparta/CharCircBuffer;->buf_:[I

    aget v2, v3, v2

    if-ge v2, v4, :cond_2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method
