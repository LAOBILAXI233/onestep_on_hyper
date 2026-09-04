.class public Lcom/hp/hpl/sparta/DefaultParseHandler;
.super Ljava/lang/Object;

.implements Lcom/hp/hpl/sparta/ParseHandler;


.field private parseSource_:Lcom/hp/hpl/sparta/ParseSource;


.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hp/hpl/sparta/DefaultParseHandler;->parseSource_:Lcom/hp/hpl/sparta/ParseSource;

    return-void
.end method


.method public characters([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;
        }
    .end annotation

    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;
        }
    .end annotation

    return-void
.end method

.method public endElement(Lcom/hp/hpl/sparta/Element;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;
        }
    .end annotation

    return-void
.end method

.method public getParseSource()Lcom/hp/hpl/sparta/ParseSource;
    .locals 1

    iget-object v0, p0, Lcom/hp/hpl/sparta/DefaultParseHandler;->parseSource_:Lcom/hp/hpl/sparta/ParseSource;

    return-object v0
.end method

.method public setParseSource(Lcom/hp/hpl/sparta/ParseSource;)V
    .locals 0

    iput-object p1, p0, Lcom/hp/hpl/sparta/DefaultParseHandler;->parseSource_:Lcom/hp/hpl/sparta/ParseSource;

    return-void
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;
        }
    .end annotation

    return-void
.end method

.method public startElement(Lcom/hp/hpl/sparta/Element;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;
        }
    .end annotation

    return-void
.end method
