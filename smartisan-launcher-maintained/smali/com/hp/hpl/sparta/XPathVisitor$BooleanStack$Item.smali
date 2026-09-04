.class Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack$Item;
.super Ljava/lang/Object;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Item"
.end annotation


.field final bool:Ljava/lang/Boolean;

.field final prev:Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack$Item;


.method constructor <init>(Ljava/lang/Boolean;Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack$Item;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack$Item;->bool:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack$Item;->prev:Lcom/hp/hpl/sparta/XPathVisitor$BooleanStack$Item;

    return-void
.end method
