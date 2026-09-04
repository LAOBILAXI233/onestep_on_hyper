.class Lcom/hp/hpl/sparta/NodeListWithPosition;
.super Ljava/lang/Object;


.field private static final EIGHT:Ljava/lang/Integer;

.field private static final FIVE:Ljava/lang/Integer;

.field private static final FOUR:Ljava/lang/Integer;

.field private static final NINE:Ljava/lang/Integer;

.field private static final ONE:Ljava/lang/Integer;

.field private static final SEVEN:Ljava/lang/Integer;

.field private static final SIX:Ljava/lang/Integer;

.field private static final TEN:Ljava/lang/Integer;

.field private static final THREE:Ljava/lang/Integer;

.field private static final TWO:Ljava/lang/Integer;


.field private positions_:Ljava/util/Hashtable;

.field private final vector_:Ljava/util/Vector;


.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/hp/hpl/sparta/NodeListWithPosition;->ONE:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/hp/hpl/sparta/NodeListWithPosition;->TWO:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/hp/hpl/sparta/NodeListWithPosition;->THREE:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/hp/hpl/sparta/NodeListWithPosition;->FOUR:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/hp/hpl/sparta/NodeListWithPosition;->FIVE:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/hp/hpl/sparta/NodeListWithPosition;->SIX:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/hp/hpl/sparta/NodeListWithPosition;->SEVEN:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Integer;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/hp/hpl/sparta/NodeListWithPosition;->EIGHT:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Integer;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/hp/hpl/sparta/NodeListWithPosition;->NINE:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Integer;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/hp/hpl/sparta/NodeListWithPosition;->TEN:Ljava/lang/Integer;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hp/hpl/sparta/NodeListWithPosition;->vector_:Ljava/util/Vector;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/hp/hpl/sparta/NodeListWithPosition;->positions_:Ljava/util/Hashtable;

    return-void
.end method

.method private static identity(Lcom/hp/hpl/sparta/Node;)Ljava/lang/Integer;
    .locals 2

    new-instance v0, Ljava/lang/Integer;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method


.method add(Lcom/hp/hpl/sparta/Node;I)V
    .locals 3

    iget-object v0, p0, Lcom/hp/hpl/sparta/NodeListWithPosition;->vector_:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    packed-switch p2, :pswitch_data_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    :goto_0
    iget-object v1, p0, Lcom/hp/hpl/sparta/NodeListWithPosition;->positions_:Ljava/util/Hashtable;

    invoke-static {p1}, Lcom/hp/hpl/sparta/NodeListWithPosition;->identity(Lcom/hp/hpl/sparta/Node;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_0
    sget-object v0, Lcom/hp/hpl/sparta/NodeListWithPosition;->ONE:Ljava/lang/Integer;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/hp/hpl/sparta/NodeListWithPosition;->TWO:Ljava/lang/Integer;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/hp/hpl/sparta/NodeListWithPosition;->THREE:Ljava/lang/Integer;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/hp/hpl/sparta/NodeListWithPosition;->FOUR:Ljava/lang/Integer;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/hp/hpl/sparta/NodeListWithPosition;->FIVE:Ljava/lang/Integer;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/hp/hpl/sparta/NodeListWithPosition;->SIX:Ljava/lang/Integer;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/hp/hpl/sparta/NodeListWithPosition;->SEVEN:Ljava/lang/Integer;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/hp/hpl/sparta/NodeListWithPosition;->EIGHT:Ljava/lang/Integer;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/hp/hpl/sparta/NodeListWithPosition;->NINE:Ljava/lang/Integer;

    goto :goto_0

    :pswitch_9
    sget-object v0, Lcom/hp/hpl/sparta/NodeListWithPosition;->TEN:Ljava/lang/Integer;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method add(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hp/hpl/sparta/NodeListWithPosition;->vector_:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method iterator()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lcom/hp/hpl/sparta/NodeListWithPosition;->vector_:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method position(Lcom/hp/hpl/sparta/Node;)I
    .locals 2

    iget-object v0, p0, Lcom/hp/hpl/sparta/NodeListWithPosition;->positions_:Ljava/util/Hashtable;

    invoke-static {p1}, Lcom/hp/hpl/sparta/NodeListWithPosition;->identity(Lcom/hp/hpl/sparta/Node;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method removeAllElements()V
    .locals 1

    iget-object v0, p0, Lcom/hp/hpl/sparta/NodeListWithPosition;->vector_:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, p0, Lcom/hp/hpl/sparta/NodeListWithPosition;->positions_:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v0, "{ "

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hp/hpl/sparta/NodeListWithPosition;->vector_:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "String("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, ") "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :try_start_1
    check-cast v0, Lcom/hp/hpl/sparta/Node;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Node("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/hp/hpl/sparta/Node;->toXml()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ")["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/hp/hpl/sparta/NodeListWithPosition;->positions_:Ljava/util/Hashtable;

    invoke-static {v0}, Lcom/hp/hpl/sparta/NodeListWithPosition;->identity(Lcom/hp/hpl/sparta/Node;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "] "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
