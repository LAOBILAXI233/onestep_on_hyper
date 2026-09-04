.class public Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;
.super Lcom/fasterxml/jackson/core/util/JsonParserDelegate;
.source "FilteringParserDelegate.java"


.field protected _allowMultipleMatches:Z

.field protected _currToken:Lcom/fasterxml/jackson/core/JsonToken;

.field protected _exposedContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

.field protected _headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

.field protected _includeImmediateParent:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected _includePath:Z

.field protected _itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

.field protected _lastClearedToken:Lcom/fasterxml/jackson/core/JsonToken;

.field protected _matchCount:I

.field protected rootFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;


.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/filter/TokenFilter;ZZ)V
    .locals 1
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "f"    # Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .param p3, "includePath"    # Z
    .param p4, "allowMultipleMatches"    # Z

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;-><init>(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 118
    iput-object p2, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->rootFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 120
    iput-object p2, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 121
    invoke-static {p2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createRootContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 122
    iput-boolean p3, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_includePath:Z

    .line 123
    iput-boolean p4, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_allowMultipleMatches:Z

    .line 124
    return-void
.end method

.method private _nextBuffered(Lcom/fasterxml/jackson/core/filter/TokenFilterContext;)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4
    .param p1, "buffRoot"    # Lcom/fasterxml/jackson/core/filter/TokenFilterContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 742
    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_exposedContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 743
    move-object v0, p1

    .line 744
    .local v0, "ctxt":Lcom/fasterxml/jackson/core/filter/TokenFilterContext;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->nextTokenToRead()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 745
    .local v1, "t":Lcom/fasterxml/jackson/core/JsonToken;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 765
    .end local v1    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .local v2, "t":Lcom/fasterxml/jackson/core/JsonToken;
    :goto_0
    return-object v2

    .line 750
    .end local v2    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v1    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_0
    iget-object v3, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    if-ne v0, v3, :cond_1

    .line 751
    const-string v3, "Internal error: failed to locate expected buffered tokens"

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object v3

    throw v3

    .line 758
    :cond_1
    iget-object v3, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_exposedContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->findChildOf(Lcom/fasterxml/jackson/core/filter/TokenFilterContext;)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    .line 759
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_exposedContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 760
    if-nez v0, :cond_2

    .line 761
    const-string v3, "Unexpected problem: chain of filtered context broken"

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object v3

    throw v3

    .line 763
    :cond_2
    iget-object v3, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_exposedContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->nextTokenToRead()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 764
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 765
    .end local v1    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v2    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto :goto_0
.end method


.method protected _filterContext()Lcom/fasterxml/jackson/core/JsonStreamContext;
    .locals 1

    .prologue
    .line 897
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_exposedContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_exposedContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 900
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    goto :goto_0
.end method

.method protected final _nextToken2()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 460
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    .line 461
    .local v3, "t":Lcom/fasterxml/jackson/core/JsonToken;
    if-nez v3, :cond_1

    .line 462
    iput-object v3, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v4, v3

    .line 599
    .end local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .local v4, "t":Lcom/fasterxml/jackson/core/JsonToken;
    :goto_1
    return-object v4

    .line 467
    .end local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_1
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 591
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 592
    .local v0, "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    sget-object v5, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v5, :cond_11

    .line 593
    iput-object v3, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v4, v3

    .end local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto :goto_1

    .line 469
    .end local v0    # "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .end local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :pswitch_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 470
    .restart local v0    # "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    sget-object v5, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v5, :cond_2

    .line 471
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5, v0, v6}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v5

    iput-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 472
    iput-object v3, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v4, v3

    .end local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto :goto_1

    .line 474
    .end local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_2
    if-nez v0, :cond_3

    .line 475
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_0

    .line 479
    :cond_3
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5, v0}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    .line 480
    if-nez v0, :cond_4

    .line 481
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_0

    .line 484
    :cond_4
    sget-object v5, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v5, :cond_5

    .line 485
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->filterStartArray()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    .line 487
    :cond_5
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 488
    sget-object v5, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v5, :cond_6

    .line 489
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5, v0, v6}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v5

    iput-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 490
    iput-object v3, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v4, v3

    .end local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto :goto_1

    .line 492
    .end local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_6
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5, v0, v7}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v5

    iput-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 494
    iget-boolean v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_includePath:Z

    if-eqz v5, :cond_0

    .line 495
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_nextTokenWithBuffering(Lcom/fasterxml/jackson/core/filter/TokenFilterContext;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    .line 496
    if-eqz v3, :cond_0

    .line 497
    iput-object v3, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v4, v3

    .line 498
    .end local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto :goto_1

    .line 504
    .end local v0    # "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .end local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :pswitch_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 505
    .restart local v0    # "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    sget-object v5, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v5, :cond_7

    .line 506
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5, v0, v6}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v5

    iput-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 507
    iput-object v3, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v4, v3

    .end local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto :goto_1

    .line 509
    .end local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_7
    if-nez v0, :cond_8

    .line 510
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_0

    .line 514
    :cond_8
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5, v0}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    .line 515
    if-nez v0, :cond_9

    .line 516
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_0

    .line 519
    :cond_9
    sget-object v5, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v5, :cond_a

    .line 520
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->filterStartObject()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    .line 522
    :cond_a
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 523
    sget-object v5, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v5, :cond_b

    .line 524
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5, v0, v6}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v5

    iput-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 525
    iput-object v3, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v4, v3

    .end local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto/16 :goto_1

    .line 527
    .end local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_b
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5, v0, v7}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v5

    iput-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 528
    iget-boolean v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_includePath:Z

    if-eqz v5, :cond_0

    .line 529
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_nextTokenWithBuffering(Lcom/fasterxml/jackson/core/filter/TokenFilterContext;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    .line 530
    if-eqz v3, :cond_0

    .line 531
    iput-object v3, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v4, v3

    .line 532
    .end local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto/16 :goto_1

    .line 540
    .end local v0    # "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .end local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :pswitch_2
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->isStartHandled()Z

    move-result v2

    .line 541
    .local v2, "returnEnd":Z
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->getFilter()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    .line 542
    .restart local v0    # "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    if-eqz v0, :cond_c

    sget-object v5, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v5, :cond_c

    .line 543
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->filterFinishArray()V

    .line 545
    :cond_c
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->getParent()Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v5

    iput-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 546
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->getFilter()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v5

    iput-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 547
    if-eqz v2, :cond_0

    .line 548
    iput-object v3, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v4, v3

    .end local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto/16 :goto_1

    .line 555
    .end local v0    # "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .end local v2    # "returnEnd":Z
    .end local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :pswitch_3
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 556
    .local v1, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->setFieldName(Ljava/lang/String;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    .line 557
    .restart local v0    # "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    sget-object v5, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v5, :cond_d

    .line 558
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 559
    iput-object v3, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v4, v3

    .end local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto/16 :goto_1

    .line 561
    .end local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_d
    if-nez v0, :cond_e

    .line 562
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 563
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_0

    .line 566
    :cond_e
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    .line 567
    if-nez v0, :cond_f

    .line 568
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 569
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_0

    .line 572
    :cond_f
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 573
    sget-object v5, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v5, :cond_10

    .line 574
    iget-boolean v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_includePath:Z

    if-eqz v5, :cond_0

    .line 575
    iput-object v3, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v4, v3

    .end local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto/16 :goto_1

    .line 580
    .end local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_10
    iget-boolean v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_includePath:Z

    if-eqz v5, :cond_0

    .line 581
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_nextTokenWithBuffering(Lcom/fasterxml/jackson/core/filter/TokenFilterContext;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    .line 582
    if-eqz v3, :cond_0

    .line 583
    iput-object v3, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v4, v3

    .line 584
    .end local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto/16 :goto_1

    .line 595
    .end local v1    # "name":Ljava/lang/String;
    .end local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_11
    if-eqz v0, :cond_0

    .line 596
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5, v0}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    .line 597
    sget-object v5, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v5, :cond_12

    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0, v5}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeValue(Lcom/fasterxml/jackson/core/JsonParser;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 599
    :cond_12
    iput-object v3, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v4, v3

    .end local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto/16 :goto_1

    .line 467
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected final _nextTokenWithBuffering(Lcom/fasterxml/jackson/core/filter/TokenFilterContext;)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 9
    .param p1, "buffRoot"    # Lcom/fasterxml/jackson/core/filter/TokenFilterContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 616
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    .line 617
    .local v4, "t":Lcom/fasterxml/jackson/core/JsonToken;
    if-nez v4, :cond_2

    .line 731
    .end local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_1
    :goto_1
    return-object v4

    .line 626
    .restart local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_2
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 723
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 724
    .local v0, "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    sget-object v7, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v7, :cond_12

    .line 725
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_nextBuffered(Lcom/fasterxml/jackson/core/filter/TokenFilterContext;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    goto :goto_1

    .line 628
    .end local v0    # "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    :pswitch_0
    iget-object v7, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iget-object v8, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {v7, v8}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    .line 629
    .restart local v0    # "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    if-nez v0, :cond_3

    .line 630
    iget-object v7, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_0

    .line 633
    :cond_3
    sget-object v7, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v7, :cond_4

    .line 634
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->filterStartArray()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    .line 636
    :cond_4
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 637
    sget-object v7, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v7, :cond_5

    .line 638
    iget-object v6, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v6, v0, v5}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v5

    iput-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 639
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_nextBuffered(Lcom/fasterxml/jackson/core/filter/TokenFilterContext;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    goto :goto_1

    .line 641
    :cond_5
    iget-object v7, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v7, v0, v6}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v7

    iput-object v7, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    goto :goto_0

    .line 645
    .end local v0    # "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    :pswitch_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 646
    .restart local v0    # "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    sget-object v7, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v7, :cond_6

    .line 647
    iget-object v6, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v6, v0, v5}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v5

    iput-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    goto :goto_1

    .line 650
    :cond_6
    if-nez v0, :cond_7

    .line 651
    iget-object v7, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_0

    .line 655
    :cond_7
    iget-object v7, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v7, v0}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    .line 656
    if-nez v0, :cond_8

    .line 657
    iget-object v7, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_0

    .line 660
    :cond_8
    sget-object v7, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v7, :cond_9

    .line 661
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->filterStartObject()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    .line 663
    :cond_9
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 664
    sget-object v7, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v7, :cond_a

    .line 665
    iget-object v6, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v6, v0, v5}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v5

    iput-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 666
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_nextBuffered(Lcom/fasterxml/jackson/core/filter/TokenFilterContext;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    goto/16 :goto_1

    .line 668
    :cond_a
    iget-object v7, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v7, v0, v6}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v7

    iput-object v7, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    goto/16 :goto_0

    .line 676
    .end local v0    # "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    :pswitch_2
    iget-object v7, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->getFilter()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    .line 677
    .restart local v0    # "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    if-eqz v0, :cond_b

    sget-object v7, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v7, :cond_b

    .line 678
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->filterFinishArray()V

    .line 680
    :cond_b
    iget-object v7, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    if-ne v7, p1, :cond_d

    move v1, v5

    .line 681
    .local v1, "gotEnd":Z
    :goto_2
    if-eqz v1, :cond_e

    iget-object v7, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->isStartHandled()Z

    move-result v7

    if-eqz v7, :cond_e

    move v3, v5

    .line 683
    .local v3, "returnEnd":Z
    :goto_3
    iget-object v7, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->getParent()Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v7

    iput-object v7, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 684
    iget-object v7, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->getFilter()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v7

    iput-object v7, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 686
    if-nez v3, :cond_1

    .line 690
    if-nez v1, :cond_c

    iget-object v7, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    if-ne v7, p1, :cond_0

    .line 691
    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_1

    .end local v1    # "gotEnd":Z
    .end local v3    # "returnEnd":Z
    :cond_d
    move v1, v6

    .line 680
    goto :goto_2

    .restart local v1    # "gotEnd":Z
    :cond_e
    move v3, v6

    .line 681
    goto :goto_3

    .line 698
    .end local v0    # "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .end local v1    # "gotEnd":Z
    :pswitch_3
    iget-object v7, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 699
    .local v2, "name":Ljava/lang/String;
    iget-object v7, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v7, v2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->setFieldName(Ljava/lang/String;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    .line 700
    .restart local v0    # "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    sget-object v7, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v7, :cond_f

    .line 701
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 702
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_nextBuffered(Lcom/fasterxml/jackson/core/filter/TokenFilterContext;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    goto/16 :goto_1

    .line 704
    :cond_f
    if-nez v0, :cond_10

    .line 705
    iget-object v7, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 706
    iget-object v7, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_0

    .line 709
    :cond_10
    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    .line 710
    if-nez v0, :cond_11

    .line 711
    iget-object v7, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 712
    iget-object v7, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_0

    .line 715
    :cond_11
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 716
    sget-object v7, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v7, :cond_0

    .line 717
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_nextBuffered(Lcom/fasterxml/jackson/core/filter/TokenFilterContext;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    goto/16 :goto_1

    .line 727
    .end local v2    # "name":Ljava/lang/String;
    :cond_12
    if-eqz v0, :cond_0

    .line 728
    iget-object v7, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v7, v0}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v0

    .line 729
    sget-object v7, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v7, :cond_13

    if-eqz v0, :cond_0

    iget-object v7, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0, v7}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeValue(Lcom/fasterxml/jackson/core/JsonParser;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 731
    :cond_13
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_nextBuffered(Lcom/fasterxml/jackson/core/filter/TokenFilterContext;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    goto/16 :goto_1

    .line 626
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public clearCurrentToken()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_lastClearedToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 206
    :cond_0
    return-void
.end method

.method public currentToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method public final currentTokenId()I
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 157
    .local v0, "t":Lcom/fasterxml/jackson/core/JsonToken;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v1

    goto :goto_0
.end method

.method public getBigIntegerValue()Ljava/math/BigInteger;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 830
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;)[B
    .locals 1
    .param p1, "b64variant"    # Lcom/fasterxml/jackson/core/Base64Variant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 886
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonParser;->getBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;)[B

    move-result-object v0

    return-object v0
.end method

.method public getBooleanValue()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 833
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z

    move-result v0

    return v0
.end method

.method public getByteValue()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 836
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getByteValue()B

    move-result v0

    return v0
.end method

.method public getCurrentLocation()Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentName()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_filterContext()Lcom/fasterxml/jackson/core/JsonStreamContext;

    move-result-object v0

    .line 187
    .local v0, "ctxt":Lcom/fasterxml/jackson/core/JsonStreamContext;
    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v2, v3, :cond_2

    .line 188
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonStreamContext;->getParent()Lcom/fasterxml/jackson/core/JsonStreamContext;

    move-result-object v1

    .line 189
    .local v1, "parent":Lcom/fasterxml/jackson/core/JsonStreamContext;
    if-nez v1, :cond_1

    const/4 v2, 0x0

    .line 191
    .end local v1    # "parent":Lcom/fasterxml/jackson/core/JsonStreamContext;
    :goto_0
    return-object v2

    .line 189
    .restart local v1    # "parent":Lcom/fasterxml/jackson/core/JsonStreamContext;
    :cond_1
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonStreamContext;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 191
    .end local v1    # "parent":Lcom/fasterxml/jackson/core/JsonStreamContext;
    :cond_2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonStreamContext;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method public final getCurrentTokenId()I
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 153
    .local v0, "t":Lcom/fasterxml/jackson/core/JsonToken;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v1

    goto :goto_0
.end method

.method public getDecimalValue()Ljava/math/BigDecimal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 842
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public getDoubleValue()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 845
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getDoubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getEmbeddedObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 885
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getEmbeddedObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFilter()Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->rootFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    return-object v0
.end method

.method public getFloatValue()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 848
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getFloatValue()F

    move-result v0

    return v0
.end method

.method public getIntValue()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 851
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getLastClearedToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_lastClearedToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method public getLongValue()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 854
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMatchCount()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_matchCount:I

    return v0
.end method

.method public getNumberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 857
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getNumberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    move-result-object v0

    return-object v0
.end method

.method public getNumberValue()Ljava/lang/Number;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 860
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getNumberValue()Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public getParsingContext()Lcom/fasterxml/jackson/core/JsonStreamContext;
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_filterContext()Lcom/fasterxml/jackson/core/JsonStreamContext;

    move-result-object v0

    return-object v0
.end method

.method public getShortValue()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 839
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getShortValue()S

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 817
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextCharacters()[C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 819
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getTextCharacters()[C

    move-result-object v0

    return-object v0
.end method

.method public getTextLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 820
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getTextLength()I

    move-result v0

    return v0
.end method

.method public getTextOffset()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 821
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getTextOffset()I

    move-result v0

    return v0
.end method

.method public getTokenLocation()Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 1

    .prologue
    .line 888
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getTokenLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v0

    return-object v0
.end method

.method public getValueAsBoolean()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 874
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getValueAsBoolean(Z)Z
    .locals 1
    .param p1, "defaultValue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 875
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsBoolean(Z)Z

    move-result v0

    return v0
.end method

.method public getValueAsDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 872
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public getValueAsDouble(D)D
    .locals 3
    .param p1, "defaultValue"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 873
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsDouble(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getValueAsInt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 868
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getValueAsInt(I)I
    .locals 1
    .param p1, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 869
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsInt(I)I

    move-result v0

    return v0
.end method

.method public getValueAsLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 870
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getValueAsLong(J)J
    .locals 3
    .param p1, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 871
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getValueAsString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 876
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValueAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "defaultValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 877
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasCurrentToken()Z
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTextCharacters()Z
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->hasTextCharacters()Z

    move-result v0

    return v0
.end method

.method public final hasToken(Lcom/fasterxml/jackson/core/JsonToken;)Z
    .locals 1
    .param p1, "t"    # Lcom/fasterxml/jackson/core/JsonToken;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTokenId(I)Z
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 162
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 163
    .local v0, "t":Lcom/fasterxml/jackson/core/JsonToken;
    if-nez v0, :cond_2

    .line 164
    if-nez p1, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 164
    goto :goto_0

    .line 166
    :cond_2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v3

    if-eq v3, p1, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public isExpectedStartArrayToken()Z
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExpectedStartObjectToken()Z
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 232
    iget-boolean v6, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_allowMultipleMatches:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_exposedContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    if-nez v6, :cond_1

    .line 234
    iget-object v6, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/core/JsonToken;->isStructEnd()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->isStartHandled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 235
    iput-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v4, v5

    .line 447
    :goto_0
    return-object v4

    .line 239
    :cond_0
    iget-object v6, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/core/JsonToken;->isScalarValue()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->isStartHandled()Z

    move-result v6

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_includePath:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    sget-object v7, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v6, v7, :cond_1

    .line 241
    iput-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v4, v5

    goto :goto_0

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_exposedContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 247
    .local v0, "ctxt":Lcom/fasterxml/jackson/core/filter/TokenFilterContext;
    if-eqz v0, :cond_5

    .line 249
    :cond_2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->nextTokenToRead()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    .line 250
    .local v4, "t":Lcom/fasterxml/jackson/core/JsonToken;
    if-eqz v4, :cond_3

    .line 251
    iput-object v4, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 255
    :cond_3
    iget-object v6, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    if-ne v0, v6, :cond_4

    .line 256
    iput-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_exposedContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 257
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->inArray()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 258
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    .line 261
    iput-object v4, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 277
    :cond_4
    iget-object v6, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v6, v0}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->findChildOf(Lcom/fasterxml/jackson/core/filter/TokenFilterContext;)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    .line 278
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_exposedContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 279
    if-nez v0, :cond_2

    .line 280
    const-string v5, "Unexpected problem: chain of filtered context broken"

    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object v5

    throw v5

    .line 286
    .end local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_5
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    .line 287
    .restart local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    if-nez v4, :cond_6

    .line 289
    iput-object v4, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 296
    :cond_6
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 431
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 432
    .local v1, "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    sget-object v5, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v1, v5, :cond_18

    .line 433
    iput-object v4, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 298
    .end local v1    # "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    :pswitch_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 299
    .restart local v1    # "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    sget-object v5, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v1, v5, :cond_7

    .line 300
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5, v1, v8}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v5

    iput-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 301
    iput-object v4, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 303
    :cond_7
    if-nez v1, :cond_9

    .line 304
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    .line 447
    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_nextToken2()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    goto/16 :goto_0

    .line 308
    :cond_9
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v1

    .line 309
    if-nez v1, :cond_a

    .line 310
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 313
    :cond_a
    sget-object v5, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v1, v5, :cond_b

    .line 314
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->filterStartArray()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v1

    .line 316
    :cond_b
    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 317
    sget-object v5, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v1, v5, :cond_c

    .line 318
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5, v1, v8}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v5

    iput-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 319
    iput-object v4, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_0

    .line 321
    :cond_c
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5, v1, v9}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v5

    iput-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 324
    iget-boolean v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_includePath:Z

    if-eqz v5, :cond_8

    .line 325
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_nextTokenWithBuffering(Lcom/fasterxml/jackson/core/filter/TokenFilterContext;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    .line 326
    if-eqz v4, :cond_8

    .line 327
    iput-object v4, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_0

    .line 334
    .end local v1    # "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    :pswitch_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 335
    .restart local v1    # "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    sget-object v5, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v1, v5, :cond_d

    .line 336
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5, v1, v8}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v5

    iput-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 337
    iput-object v4, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_0

    .line 339
    :cond_d
    if-nez v1, :cond_e

    .line 340
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 344
    :cond_e
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v1

    .line 345
    if-nez v1, :cond_f

    .line 346
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 349
    :cond_f
    sget-object v5, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v1, v5, :cond_10

    .line 350
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->filterStartObject()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v1

    .line 352
    :cond_10
    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 353
    sget-object v5, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v1, v5, :cond_11

    .line 354
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5, v1, v8}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v5

    iput-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 355
    iput-object v4, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_0

    .line 357
    :cond_11
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5, v1, v9}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v5

    iput-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 359
    iget-boolean v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_includePath:Z

    if-eqz v5, :cond_8

    .line 360
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_nextTokenWithBuffering(Lcom/fasterxml/jackson/core/filter/TokenFilterContext;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    .line 361
    if-eqz v4, :cond_8

    .line 362
    iput-object v4, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_0

    .line 373
    .end local v1    # "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    :pswitch_2
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->isStartHandled()Z

    move-result v3

    .line 374
    .local v3, "returnEnd":Z
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->getFilter()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v1

    .line 375
    .restart local v1    # "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    if-eqz v1, :cond_12

    sget-object v5, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v1, v5, :cond_12

    .line 376
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->filterFinishArray()V

    .line 378
    :cond_12
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->getParent()Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v5

    iput-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 379
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->getFilter()Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v5

    iput-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 380
    if-eqz v3, :cond_8

    .line 381
    iput-object v4, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_0

    .line 388
    .end local v1    # "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .end local v3    # "returnEnd":Z
    :pswitch_3
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 390
    .local v2, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5, v2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->setFieldName(Ljava/lang/String;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v1

    .line 391
    .restart local v1    # "f":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    sget-object v5, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v1, v5, :cond_14

    .line 392
    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 393
    iget-boolean v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_includePath:Z

    if-nez v5, :cond_13

    .line 396
    iget-boolean v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_includeImmediateParent:Z

    if-eqz v5, :cond_13

    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->isStartHandled()Z

    move-result v5

    if-nez v5, :cond_13

    .line 397
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->nextTokenToRead()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    .line 398
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iput-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_exposedContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 401
    :cond_13
    iput-object v4, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_0

    .line 403
    :cond_14
    if-nez v1, :cond_15

    .line 404
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 405
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_1

    .line 408
    :cond_15
    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v1

    .line 409
    if-nez v1, :cond_16

    .line 410
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 411
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_1

    .line 414
    :cond_16
    iput-object v1, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_itemFilter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 415
    sget-object v5, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v1, v5, :cond_17

    .line 416
    iget-boolean v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_includePath:Z

    if-eqz v5, :cond_17

    .line 417
    iput-object v4, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_0

    .line 420
    :cond_17
    iget-boolean v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_includePath:Z

    if-eqz v5, :cond_8

    .line 421
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_nextTokenWithBuffering(Lcom/fasterxml/jackson/core/filter/TokenFilterContext;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    .line 422
    if-eqz v4, :cond_8

    .line 423
    iput-object v4, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_0

    .line 435
    .end local v2    # "name":Ljava/lang/String;
    :cond_18
    if-eqz v1, :cond_8

    .line 436
    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_headContext:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v5, v1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object v1

    .line 437
    sget-object v5, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v1, v5, :cond_19

    if-eqz v1, :cond_8

    iget-object v5, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v1, v5}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeValue(Lcom/fasterxml/jackson/core/JsonParser;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 439
    :cond_19
    iput-object v4, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_0

    .line 296
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public nextValue()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 773
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 774
    .local v0, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 775
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 777
    :cond_0
    return-object v0
.end method

.method public overrideCurrentName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 217
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can not currently override name during filtering read"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/OutputStream;)I
    .locals 1
    .param p1, "b64variant"    # Lcom/fasterxml/jackson/core/Base64Variant;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 887
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonParser;->readBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/OutputStream;)I

    move-result v0

    return v0
.end method

.method public skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 788
    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v3, :cond_1

    .line 805
    :cond_0
    :goto_0
    return-object p0

    .line 792
    :cond_1
    const/4 v0, 0x1

    .line 797
    .local v0, "open":I
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/FilteringParserDelegate;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 798
    .local v1, "t":Lcom/fasterxml/jackson/core/JsonToken;
    if-eqz v1, :cond_0

    .line 801
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->isStructStart()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 802
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 803
    :cond_3
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->isStructEnd()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 804
    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_2

    goto :goto_0
.end method
