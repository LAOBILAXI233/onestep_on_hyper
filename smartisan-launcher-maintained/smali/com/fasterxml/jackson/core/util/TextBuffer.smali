.class public final Lcom/fasterxml/jackson/core/util/TextBuffer;
.super Ljava/lang/Object;
.source "TextBuffer.java"


.field static final MAX_SEGMENT_LEN:I = 0x40000

.field static final MIN_SEGMENT_LEN:I = 0x3e8

.field static final NO_CHARS:[C


.field private final _allocator:Lcom/fasterxml/jackson/core/util/BufferRecycler;

.field private _currentSegment:[C

.field private _currentSize:I

.field private _hasSegments:Z

.field private _inputBuffer:[C

.field private _inputLen:I

.field private _inputStart:I

.field private _resultArray:[C

.field private _resultString:Ljava/lang/String;

.field private _segmentSize:I

.field private _segments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[C>;"
        }
    .end annotation
.end field


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    new-array v0, v0, [C

    sput-object v0, Lcom/fasterxml/jackson/core/util/TextBuffer;->NO_CHARS:[C

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/util/BufferRecycler;)V
    .locals 0
    .param p1, "allocator"    # Lcom/fasterxml/jackson/core/util/BufferRecycler;

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_allocator:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    .line 123
    return-void
.end method

.method private buf(I)[C
    .locals 2
    .param p1, "needed"    # I

    .prologue
    .line 234
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_allocator:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_allocator:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->allocCharBuffer(II)[C

    move-result-object v0

    .line 237
    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x3e8

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [C

    goto :goto_0
.end method

.method private carr(I)[C
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 778
    new-array v0, p1, [C

    return-object v0
.end method

.method private clearSegments()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 242
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_hasSegments:Z

    .line 250
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 251
    iput v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segmentSize:I

    iput v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    .line 252
    return-void
.end method

.method private expand(I)V
    .locals 5
    .param p1, "minNewSegmentSize"    # I

    .prologue
    .line 722
    iget-object v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 723
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    .line 726
    .local v0, "curr":[C
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_hasSegments:Z

    .line 727
    iget-object v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 728
    iget v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segmentSize:I

    array-length v4, v0

    add-int/2addr v3, v4

    iput v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segmentSize:I

    .line 729
    const/4 v3, 0x0

    iput v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    .line 730
    array-length v2, v0

    .line 733
    .local v2, "oldLen":I
    shr-int/lit8 v3, v2, 0x1

    add-int v1, v2, v3

    .line 734
    .local v1, "newLen":I
    const/16 v3, 0x3e8

    if-ge v1, v3, :cond_2

    .line 735
    const/16 v1, 0x3e8

    .line 739
    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->carr(I)[C

    move-result-object v3

    iput-object v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    .line 740
    return-void

    .line 736
    :cond_2
    const/high16 v3, 0x40000

    if-le v1, v3, :cond_1

    .line 737
    const/high16 v1, 0x40000

    goto :goto_0
.end method

.method private resultArray()[C
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 744
    iget-object v8, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 745
    iget-object v8, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 775
    :goto_0
    return-object v5

    .line 748
    :cond_0
    iget v8, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    if-ltz v8, :cond_3

    .line 749
    iget v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputLen:I

    .line 750
    .local v3, "len":I
    if-ge v3, v9, :cond_1

    .line 751
    sget-object v5, Lcom/fasterxml/jackson/core/util/TextBuffer;->NO_CHARS:[C

    goto :goto_0

    .line 753
    :cond_1
    iget v7, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    .line 754
    .local v7, "start":I
    if-nez v7, :cond_2

    .line 755
    iget-object v8, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputBuffer:[C

    invoke-static {v8, v3}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v5

    goto :goto_0

    .line 757
    :cond_2
    iget-object v8, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputBuffer:[C

    add-int v9, v7, v3

    invoke-static {v8, v7, v9}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v5

    goto :goto_0

    .line 760
    .end local v3    # "len":I
    .end local v7    # "start":I
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->size()I

    move-result v6

    .line 761
    .local v6, "size":I
    if-ge v6, v9, :cond_4

    .line 762
    sget-object v5, Lcom/fasterxml/jackson/core/util/TextBuffer;->NO_CHARS:[C

    goto :goto_0

    .line 764
    :cond_4
    const/4 v4, 0x0

    .line 765
    .local v4, "offset":I
    invoke-direct {p0, v6}, Lcom/fasterxml/jackson/core/util/TextBuffer;->carr(I)[C

    move-result-object v5

    .line 766
    .local v5, "result":[C
    iget-object v8, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    if-eqz v8, :cond_5

    .line 767
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v8, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    .restart local v3    # "len":I
    :goto_1
    if-ge v2, v3, :cond_5

    .line 768
    iget-object v8, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    .line 769
    .local v0, "curr":[C
    array-length v1, v0

    .line 770
    .local v1, "currLen":I
    invoke-static {v0, v10, v5, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 771
    add-int/2addr v4, v1

    .line 767
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 774
    .end local v0    # "curr":[C
    .end local v1    # "currLen":I
    .end local v2    # "i":I
    .end local v3    # "len":I
    :cond_5
    iget-object v8, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    iget v9, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    invoke-static {v8, v10, v5, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private unshare(I)V
    .locals 6
    .param p1, "needExtra"    # I

    .prologue
    const/4 v5, 0x0

    .line 696
    iget v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputLen:I

    .line 697
    .local v2, "sharedLen":I
    iput v5, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputLen:I

    .line 698
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputBuffer:[C

    .line 699
    .local v0, "inputBuf":[C
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputBuffer:[C

    .line 700
    iget v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    .line 701
    .local v3, "start":I
    const/4 v4, -0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    .line 704
    add-int v1, v2, p1

    .line 705
    .local v1, "needed":I
    iget-object v4, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    array-length v4, v4

    if-le v1, v4, :cond_1

    .line 706
    :cond_0
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->buf(I)[C

    move-result-object v4

    iput-object v4, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    .line 708
    :cond_1
    if-lez v2, :cond_2

    .line 709
    iget-object v4, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    invoke-static {v0, v3, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 711
    :cond_2
    iput v5, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segmentSize:I

    .line 712
    iput v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    .line 713
    return-void
.end method


.method public append(C)V
    .locals 3
    .param p1, "c"    # C

    .prologue
    const/4 v2, 0x0

    .line 459
    iget v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    if-ltz v1, :cond_0

    .line 460
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->unshare(I)V

    .line 462
    :cond_0
    iput-object v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 463
    iput-object v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C

    .line 465
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    .line 466
    .local v0, "curr":[C
    iget v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    array-length v2, v0

    if-lt v1, v2, :cond_1

    .line 467
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expand(I)V

    .line 468
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    .line 470
    :cond_1
    iget v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    aput-char p1, v0, v1

    .line 471
    return-void
.end method

.method public append(Ljava/lang/String;II)V
    .locals 6
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v4, 0x0

    .line 514
    iget v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    if-ltz v3, :cond_0

    .line 515
    invoke-direct {p0, p3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->unshare(I)V

    .line 517
    :cond_0
    iput-object v4, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 518
    iput-object v4, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C

    .line 521
    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    .line 522
    .local v1, "curr":[C
    array-length v3, v1

    iget v4, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    sub-int v2, v3, v4

    .line 523
    .local v2, "max":I
    if-lt v2, p3, :cond_1

    .line 524
    add-int v3, p2, p3

    iget v4, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    invoke-virtual {p1, p2, v3, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 525
    iget v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    add-int/2addr v3, p3

    iput v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    .line 546
    :goto_0
    return-void

    .line 529
    :cond_1
    if-lez v2, :cond_2

    .line 530
    add-int v3, p2, v2

    iget v4, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    invoke-virtual {p1, p2, v3, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 531
    sub-int/2addr p3, v2

    .line 532
    add-int/2addr p2, v2

    .line 539
    :cond_2
    invoke-direct {p0, p3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expand(I)V

    .line 540
    iget-object v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    array-length v3, v3

    invoke-static {v3, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 541
    .local v0, "amount":I
    add-int v3, p2, v0

    iget-object v4, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    const/4 v5, 0x0

    invoke-virtual {p1, p2, v3, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 542
    iget v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    .line 543
    add-int/2addr p2, v0

    .line 544
    sub-int/2addr p3, v0

    .line 545
    if-gtz p3, :cond_2

    goto :goto_0
.end method

.method public append([CII)V
    .locals 5
    .param p1, "c"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v4, 0x0

    .line 476
    iget v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    if-ltz v3, :cond_0

    .line 477
    invoke-direct {p0, p3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->unshare(I)V

    .line 479
    :cond_0
    iput-object v4, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 480
    iput-object v4, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C

    .line 483
    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    .line 484
    .local v1, "curr":[C
    array-length v3, v1

    iget v4, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    sub-int v2, v3, v4

    .line 486
    .local v2, "max":I
    if-lt v2, p3, :cond_1

    .line 487
    iget v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    invoke-static {p1, p2, v1, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 488
    iget v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    add-int/2addr v3, p3

    iput v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    .line 509
    :goto_0
    return-void

    .line 492
    :cond_1
    if-lez v2, :cond_2

    .line 493
    iget v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    invoke-static {p1, p2, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 494
    add-int/2addr p2, v2

    .line 495
    sub-int/2addr p3, v2

    .line 502
    :cond_2
    invoke-direct {p0, p3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expand(I)V

    .line 503
    iget-object v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    array-length v3, v3

    invoke-static {v3, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 504
    .local v0, "amount":I
    iget-object v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    const/4 v4, 0x0

    invoke-static {p1, p2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 505
    iget v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    .line 506
    add-int/2addr p2, v0

    .line 507
    sub-int/2addr p3, v0

    .line 508
    if-gtz p3, :cond_2

    goto :goto_0
.end method

.method public contentsAsArray()[C
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C

    .line 366
    .local v0, "result":[C
    if-nez v0, :cond_0

    .line 367
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resultArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C

    .line 369
    :cond_0
    return-object v0
.end method

.method public contentsAsDecimal()Ljava/math/BigDecimal;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 379
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C

    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseBigDecimal([C)Ljava/math/BigDecimal;

    move-result-object v0

    .line 391
    :goto_0
    return-object v0

    .line 383
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputBuffer:[C

    if-eqz v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    iget v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputLen:I

    invoke-static {v0, v1, v2}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseBigDecimal([CII)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0

    .line 387
    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segmentSize:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    if-eqz v0, :cond_2

    .line 388
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    const/4 v1, 0x0

    iget v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    invoke-static {v0, v1, v2}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseBigDecimal([CII)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0

    .line 391
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsArray()[C

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseBigDecimal([C)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0
.end method

.method public contentsAsDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public contentsAsString()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 327
    iget-object v6, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 329
    iget-object v6, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C

    if-eqz v6, :cond_1

    .line 330
    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([C)V

    iput-object v6, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 361
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;

    :goto_1
    return-object v6

    .line 333
    :cond_1
    iget v6, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    if-ltz v6, :cond_3

    .line 334
    iget v6, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputLen:I

    const/4 v7, 0x1

    if-ge v6, v7, :cond_2

    .line 335
    const-string v6, ""

    iput-object v6, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;

    goto :goto_1

    .line 337
    :cond_2
    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputBuffer:[C

    iget v8, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    iget v9, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputLen:I

    invoke-direct {v6, v7, v8, v9}, Ljava/lang/String;-><init>([CII)V

    iput-object v6, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;

    goto :goto_0

    .line 340
    :cond_3
    iget v5, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segmentSize:I

    .line 341
    .local v5, "segLen":I
    iget v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    .line 343
    .local v1, "currLen":I
    if-nez v5, :cond_5

    .line 344
    if-nez v1, :cond_4

    const-string v6, ""

    :goto_2
    iput-object v6, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;

    goto :goto_0

    :cond_4
    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    invoke-direct {v6, v7, v8, v1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_2

    .line 346
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    add-int v6, v5, v1

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 348
    .local v4, "sb":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    .line 349
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v6, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "len":I
    :goto_3
    if-ge v2, v3, :cond_6

    .line 350
    iget-object v6, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    .line 351
    .local v0, "curr":[C
    array-length v6, v0

    invoke-virtual {v4, v0, v8, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 349
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 355
    .end local v0    # "curr":[C
    .end local v2    # "i":I
    .end local v3    # "len":I
    :cond_6
    iget-object v6, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    iget v7, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    invoke-virtual {v4, v6, v8, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;

    goto :goto_0
.end method

.method public contentsToWriter(Ljava/io/Writer;)I
    .locals 8
    .param p1, "w"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 407
    iget-object v6, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C

    if-eqz v6, :cond_1

    .line 408
    iget-object v6, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C

    invoke-virtual {p1, v6}, Ljava/io/Writer;->write([C)V

    .line 409
    iget-object v6, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C

    array-length v4, v6

    .line 438
    :cond_0
    :goto_0
    return v4

    .line 411
    :cond_1
    iget-object v6, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 412
    iget-object v6, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 413
    iget-object v6, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_0

    .line 416
    :cond_2
    iget v6, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    if-ltz v6, :cond_3

    .line 417
    iget v4, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputLen:I

    .line 418
    .local v4, "len":I
    if-lez v4, :cond_0

    .line 419
    iget-object v6, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputBuffer:[C

    iget v7, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    invoke-virtual {p1, v6, v7, v4}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    .line 424
    .end local v4    # "len":I
    :cond_3
    const/4 v5, 0x0

    .line 425
    .local v5, "total":I
    iget-object v6, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    .line 426
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v6, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "end":I
    :goto_1
    if-ge v3, v2, :cond_4

    .line 427
    iget-object v6, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    .line 428
    .local v0, "curr":[C
    array-length v1, v0

    .line 429
    .local v1, "currLen":I
    invoke-virtual {p1, v0, v7, v1}, Ljava/io/Writer;->write([CII)V

    .line 430
    add-int/2addr v5, v1

    .line 426
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 433
    .end local v0    # "curr":[C
    .end local v1    # "currLen":I
    .end local v2    # "end":I
    .end local v3    # "i":I
    :cond_4
    iget v4, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    .line 434
    .restart local v4    # "len":I
    if-lez v4, :cond_5

    .line 435
    iget-object v6, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    invoke-virtual {p1, v6, v7, v4}, Ljava/io/Writer;->write([CII)V

    .line 436
    add-int/2addr v5, v4

    :cond_5
    move v4, v5

    .line 438
    goto :goto_0
.end method

.method public emptyAndGetCurrentSegment()[C
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 577
    const/4 v1, -0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    .line 578
    iput v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    .line 579
    iput v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputLen:I

    .line 581
    iput-object v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputBuffer:[C

    .line 582
    iput-object v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 583
    iput-object v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C

    .line 586
    iget-boolean v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_hasSegments:Z

    if-eqz v1, :cond_0

    .line 587
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->clearSegments()V

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    .line 590
    .local v0, "curr":[C
    if-nez v0, :cond_1

    .line 591
    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->buf(I)[C

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    .line 593
    :cond_1
    return-object v0
.end method

.method public ensureNotShared()V
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    if-ltz v0, :cond_0

    .line 453
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->unshare(I)V

    .line 455
    :cond_0
    return-void
.end method

.method public expandCurrentSegment()[C
    .locals 4

    .prologue
    .line 644
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    .line 646
    .local v0, "curr":[C
    array-length v1, v0

    .line 647
    .local v1, "len":I
    shr-int/lit8 v3, v1, 0x1

    add-int v2, v1, v3

    .line 649
    .local v2, "newLen":I
    const/high16 v3, 0x40000

    if-le v2, v3, :cond_0

    .line 650
    shr-int/lit8 v3, v1, 0x2

    add-int v2, v1, v3

    .line 652
    :cond_0
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v3

    iput-object v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    return-object v3
.end method

.method public expandCurrentSegment(I)[C
    .locals 3
    .param p1, "minSize"    # I

    .prologue
    .line 665
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    .line 666
    .local v0, "curr":[C
    array-length v2, v0

    if-lt v2, p1, :cond_0

    move-object v1, v0

    .line 668
    .end local v0    # "curr":[C
    .local v1, "curr":[C
    :goto_0
    return-object v1

    .line 667
    .end local v1    # "curr":[C
    .restart local v0    # "curr":[C
    :cond_0
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    move-object v1, v0

    .line 668
    .end local v0    # "curr":[C
    .restart local v1    # "curr":[C
    goto :goto_0
.end method

.method public finishCurrentSegment()[C
    .locals 5

    .prologue
    .line 616
    iget-object v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 617
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    .line 619
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_hasSegments:Z

    .line 620
    iget-object v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    iget-object v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    array-length v2, v3

    .line 622
    .local v2, "oldLen":I
    iget v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segmentSize:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segmentSize:I

    .line 623
    const/4 v3, 0x0

    iput v3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    .line 626
    shr-int/lit8 v3, v2, 0x1

    add-int v1, v2, v3

    .line 627
    .local v1, "newLen":I
    const/16 v3, 0x3e8

    if-ge v1, v3, :cond_2

    .line 628
    const/16 v1, 0x3e8

    .line 632
    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->carr(I)[C

    move-result-object v0

    .line 633
    .local v0, "curr":[C
    iput-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    .line 634
    return-object v0

    .line 629
    .end local v0    # "curr":[C
    :cond_2
    const/high16 v3, 0x40000

    if-le v1, v3, :cond_1

    .line 630
    const/high16 v1, 0x40000

    goto :goto_0
.end method

.method public getCurrentSegment()[C
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 560
    iget v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    if-ltz v1, :cond_1

    .line 561
    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->unshare(I)V

    .line 571
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    return-object v1

    .line 563
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    .line 564
    .local v0, "curr":[C
    if-nez v0, :cond_2

    .line 565
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->buf(I)[C

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    goto :goto_0

    .line 566
    :cond_2
    iget v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 568
    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expand(I)V

    goto :goto_0
.end method

.method public getCurrentSegmentSize()I
    .locals 1

    .prologue
    .line 596
    iget v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    return v0
.end method

.method public getTextBuffer()[C
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputBuffer:[C

    .line 316
    :goto_0
    return-object v0

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C

    goto :goto_0

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 309
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C

    goto :goto_0

    .line 312
    :cond_2
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_hasSegments:Z

    if-nez v0, :cond_4

    .line 313
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    if-nez v0, :cond_3

    sget-object v0, Lcom/fasterxml/jackson/core/util/TextBuffer;->NO_CHARS:[C

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    goto :goto_0

    .line 316
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsArray()[C

    move-result-object v0

    goto :goto_0
.end method

.method public getTextOffset()I
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTextAsCharacters()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 292
    iget v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C

    if-eqz v1, :cond_1

    .line 295
    :cond_0
    :goto_0
    return v0

    .line 294
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public releaseBuffers()V
    .locals 3

    .prologue
    .line 136
    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_allocator:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    if-nez v1, :cond_1

    .line 137
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithEmpty()V

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithEmpty()V

    .line 143
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    .line 144
    .local v0, "buf":[C
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    .line 145
    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_allocator:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->releaseCharBuffer(I[C)V

    goto :goto_0
.end method

.method public resetWithCopy([CII)V
    .locals 3
    .param p1, "buf"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 195
    iput-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputBuffer:[C

    .line 196
    const/4 v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    .line 197
    iput v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputLen:I

    .line 199
    iput-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 200
    iput-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C

    .line 203
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_hasSegments:Z

    if-eqz v0, :cond_1

    .line 204
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->clearSegments()V

    .line 208
    :cond_0
    :goto_0
    iput v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segmentSize:I

    iput v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    .line 209
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->append([CII)V

    .line 210
    return-void

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    if-nez v0, :cond_0

    .line 206
    invoke-direct {p0, p3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->buf(I)[C

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    goto :goto_0
.end method

.method public resetWithEmpty()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 156
    const/4 v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    .line 157
    iput v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    .line 158
    iput v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputLen:I

    .line 160
    iput-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputBuffer:[C

    .line 161
    iput-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 162
    iput-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C

    .line 165
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_hasSegments:Z

    if-eqz v0, :cond_0

    .line 166
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->clearSegments()V

    .line 168
    :cond_0
    return-void
.end method

.method public resetWithShared([CII)V
    .locals 1
    .param p1, "buf"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v0, 0x0

    .line 179
    iput-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 180
    iput-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C

    .line 183
    iput-object p1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputBuffer:[C

    .line 184
    iput p2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    .line 185
    iput p3, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputLen:I

    .line 188
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_hasSegments:Z

    if-eqz v0, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->clearSegments()V

    .line 191
    :cond_0
    return-void
.end method

.method public resetWithString(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 214
    iput-object v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputBuffer:[C

    .line 215
    const/4 v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    .line 216
    iput v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputLen:I

    .line 218
    iput-object p1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 219
    iput-object v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C

    .line 221
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_hasSegments:Z

    if-eqz v0, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->clearSegments()V

    .line 224
    :cond_0
    iput v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    .line 226
    return-void
.end method

.method public setCurrentAndReturn(I)Ljava/lang/String;
    .locals 4
    .param p1, "len"    # I

    .prologue
    .line 603
    iput p1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    .line 605
    iget v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segmentSize:I

    if-lez v2, :cond_0

    .line 606
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v1

    .line 612
    :goto_0
    return-object v1

    .line 609
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    .line 610
    .local v0, "currLen":I
    if-nez v0, :cond_1

    const-string v1, ""

    .line 611
    .local v1, "str":Ljava/lang/String;
    :goto_1
    iput-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;

    goto :goto_0

    .line 610
    .end local v1    # "str":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    goto :goto_1
.end method

.method public setCurrentLength(I)V
    .locals 0
    .param p1, "len"    # I

    .prologue
    .line 597
    iput p1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    return-void
.end method

.method public size()I
    .locals 2

    .prologue
    .line 264
    iget v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    if-ltz v0, :cond_0

    .line 265
    iget v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputLen:I

    .line 274
    :goto_0
    return v0

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C

    array-length v0, v0

    goto :goto_0

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 271
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 274
    :cond_2
    iget v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segmentSize:I

    iget v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 682
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
