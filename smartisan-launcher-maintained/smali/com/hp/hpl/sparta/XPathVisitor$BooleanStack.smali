.class Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack;
.super Ljava/lang/Object;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hp/hpl/sparta/XPathVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BooleanStack"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack$Item;
    }
.end annotation


.field private top_:Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack$Item;


.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack;->top_:Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack$Item;

    return-void
.end method

.method constructor <init>(Lcom/hp/hpl/sparta/XPathVisitor$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack;-><init>()V

    return-void
.end method


.method pop()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack;->top_:Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack$Item;

    iget-object v0, v0, Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack$Item;->bool:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack;->top_:Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack$Item;

    iget-object v1, v1, Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack$Item;->prev:Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack$Item;

    iput-object v1, p0, Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack;->top_:Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack$Item;

    return-object v0
.end method

.method push(Ljava/lang/Boolean;)V
    .locals 2

    new-instance v0, Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack$Item;

    iget-object v1, p0, Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack;->top_:Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack$Item;

    invoke-direct {v0, p1, v1}, Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack$Item;-><init>(Ljava/lang/Boolean;Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack$Item;)V

    iput-object v0, p0, Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack;->top_:Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack$Item;

    return-void
.end method
