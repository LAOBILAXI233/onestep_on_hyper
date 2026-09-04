.class public Lcom/hp/hpl/sparta/xpath/AllElementTest;
.super Lcom/hp/hpl/sparta/xpath/NodeTest;


.field static final INSTANCE:Lcom/hp/hpl/sparta/xpath/AllElementTest;


.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hp/hpl/sparta/xpath/AllElementTest;

    invoke-direct {v0}, Lcom/hp/hpl/sparta/xpath/AllElementTest;-><init>()V

    sput-object v0, Lcom/hp/hpl/sparta/xpath/AllElementTest;->INSTANCE:Lcom/hp/hpl/sparta/xpath/AllElementTest;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/xpath/NodeTest;-><init>()V

    return-void
.end method


.method public accept(Lcom/hp/hpl/sparta/xpath/Visitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/hp/hpl/sparta/xpath/NodeTestVisitor;->visit(Lcom/hp/hpl/sparta/xpath/AllElementTest;)V

    return-void
.end method

.method public isStringValue()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "*"

    return-object v0
.end method
