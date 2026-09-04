.class public Lcom/hp/hpl/sparta/xpath/TextExistsExpr;
.super Lcom/hp/hpl/sparta/xpath/BooleanExpr;


.field static final INSTANCE:Lcom/hp/hpl/sparta/xpath/TextExistsExpr;


.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hp/hpl/sparta/xpath/TextExistsExpr;

    invoke-direct {v0}, Lcom/hp/hpl/sparta/xpath/TextExistsExpr;-><init>()V

    sput-object v0, Lcom/hp/hpl/sparta/xpath/TextExistsExpr;->INSTANCE:Lcom/hp/hpl/sparta/xpath/TextExistsExpr;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/xpath/BooleanExpr;-><init>()V

    return-void
.end method


.method public accept(Lcom/hp/hpl/sparta/xpath/BooleanExprVisitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/xpath/XPathException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/hp/hpl/sparta/xpath/BooleanExprVisitor;->visit(Lcom/hp/hpl/sparta/xpath/TextExistsExpr;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "[text()]"

    return-object v0
.end method
