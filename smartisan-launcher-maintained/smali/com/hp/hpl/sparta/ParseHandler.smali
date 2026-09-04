.class public interface abstract Lcom/hp/hpl/sparta/ParseHandler;
.super Ljava/lang/Object;


.method public abstract characters([CII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;
        }
    .end annotation
.end method

.method public abstract endDocument()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;
        }
    .end annotation
.end method

.method public abstract endElement(Lcom/hp/hpl/sparta/Element;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;
        }
    .end annotation
.end method

.method public abstract getParseSource()Lcom/hp/hpl/sparta/ParseSource;
.end method

.method public abstract setParseSource(Lcom/hp/hpl/sparta/ParseSource;)V
.end method

.method public abstract startDocument()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;
        }
    .end annotation
.end method

.method public abstract startElement(Lcom/hp/hpl/sparta/Element;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hp/hpl/sparta/ParseException;
        }
    .end annotation
.end method
