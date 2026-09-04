.class public Lcom/hp/hpl/sparta/xpath/TrueExpr;
.super Lcom/hp/hpl/sparta/xpath/BooleanExpr;


.field static final INSTANCE:Lcom/hp/hpl/sparta/xpath/TrueExpr;


.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hp/hpl/sparta/xpath/TrueExpr;

    invoke-direct {v0}, Lcom/hp/hpl/sparta/xpath/TrueExpr;-><init>()V

    sput-object v0, Lcom/hp/hpl/sparta/xpath/TrueExpr;->INSTANCE:Lcom/hp/hpl/sparta/xpath/TrueExpr;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/xpath/BooleanExpr;-><init>()V

    return-void
.end method


.method public accept(Lcom/hp/hpl/sparta/xpath/BooleanExprVisitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/hp/hpl/sparta/xpath/BooleanExprVisitor;->visit(Lcom/hp/hpl/sparta/xpath/TrueExpr;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
