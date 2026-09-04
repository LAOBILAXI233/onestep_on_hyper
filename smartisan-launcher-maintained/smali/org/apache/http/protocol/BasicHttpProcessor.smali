.class public final Lorg/apache/http/protocol/BasicHttpProcessor;
.super Ljava/lang/Object;
.source "BasicHttpProcessor.java"

.implements Lorg/apache/http/protocol/HttpProcessor;
.implements Lorg/apache/http/protocol/HttpRequestInterceptorList;
.implements Lorg/apache/http/protocol/HttpResponseInterceptorList;
.implements Ljava/lang/Cloneable;


.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


.field protected final requestInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/HttpRequestInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field protected final responseInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/HttpResponseInterceptor;",
            ">;"
        }
    .end annotation
.end field


.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    return-void
.end method


.method public final addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V
    .locals 0
    .param p1, "interceptor"    # Lorg/apache/http/HttpRequestInterceptor;

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 107
    return-void
.end method

.method public final addInterceptor(Lorg/apache/http/HttpRequestInterceptor;I)V
    .locals 0
    .param p1, "interceptor"    # Lorg/apache/http/HttpRequestInterceptor;
    .param p2, "index"    # I

    .prologue
    .line 110
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;I)V

    .line 111
    return-void
.end method

.method public final addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V
    .locals 0
    .param p1, "interceptor"    # Lorg/apache/http/HttpResponseInterceptor;

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 137
    return-void
.end method

.method public final addInterceptor(Lorg/apache/http/HttpResponseInterceptor;I)V
    .locals 0
    .param p1, "interceptor"    # Lorg/apache/http/HttpResponseInterceptor;
    .param p2, "index"    # I

    .prologue
    .line 140
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/protocol/BasicHttpProcessor;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;I)V

    .line 141
    return-void
.end method

.method public addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V
    .locals 1
    .param p1, "itcp"    # Lorg/apache/http/HttpRequestInterceptor;

    .prologue
    .line 63
    if-nez p1, :cond_0

    .line 67
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;I)V
    .locals 1
    .param p1, "itcp"    # Lorg/apache/http/HttpRequestInterceptor;
    .param p2, "index"    # I

    .prologue
    .line 71
    if-nez p1, :cond_0

    .line 75
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V
    .locals 1
    .param p1, "itcp"    # Lorg/apache/http/HttpResponseInterceptor;

    .prologue
    .line 129
    if-nez p1, :cond_0

    .line 133
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;I)V
    .locals 1
    .param p1, "itcp"    # Lorg/apache/http/HttpResponseInterceptor;
    .param p2, "index"    # I

    .prologue
    .line 79
    if-nez p1, :cond_0

    .line 83
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public clearInterceptors()V
    .locals 0

    .prologue
    .line 193
    invoke-virtual {p0}, Lorg/apache/http/protocol/BasicHttpProcessor;->clearRequestInterceptors()V

    .line 194
    invoke-virtual {p0}, Lorg/apache/http/protocol/BasicHttpProcessor;->clearResponseInterceptors()V

    .line 195
    return-void
.end method

.method public clearRequestInterceptors()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 126
    return-void
.end method

.method public clearResponseInterceptors()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 156
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 241
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/protocol/BasicHttpProcessor;

    .line 242
    .local v0, "clone":Lorg/apache/http/protocol/BasicHttpProcessor;
    invoke-virtual {p0, v0}, Lorg/apache/http/protocol/BasicHttpProcessor;->copyInterceptors(Lorg/apache/http/protocol/BasicHttpProcessor;)V

    .line 243
    return-object v0
.end method

.method public copy()Lorg/apache/http/protocol/BasicHttpProcessor;
    .locals 1

    .prologue
    .line 234
    new-instance v0, Lorg/apache/http/protocol/BasicHttpProcessor;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpProcessor;-><init>()V

    .line 235
    .local v0, "clone":Lorg/apache/http/protocol/BasicHttpProcessor;
    invoke-virtual {p0, v0}, Lorg/apache/http/protocol/BasicHttpProcessor;->copyInterceptors(Lorg/apache/http/protocol/BasicHttpProcessor;)V

    .line 236
    return-object v0
.end method

.method protected copyInterceptors(Lorg/apache/http/protocol/BasicHttpProcessor;)V
    .locals 2
    .param p1, "target"    # Lorg/apache/http/protocol/BasicHttpProcessor;

    .prologue
    .line 222
    iget-object v0, p1, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 223
    iget-object v0, p1, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 224
    iget-object v0, p1, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 225
    iget-object v0, p1, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 226
    return-void
.end method

.method public getRequestInterceptor(I)Lorg/apache/http/HttpRequestInterceptor;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 118
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 119
    :cond_0
    const/4 v0, 0x0

    .line 121
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpRequestInterceptor;

    goto :goto_0
.end method

.method public getRequestInterceptorCount()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getResponseInterceptor(I)Lorg/apache/http/HttpResponseInterceptor;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 148
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 149
    :cond_0
    const/4 v0, 0x0

    .line 151
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpResponseInterceptor;

    goto :goto_0
.end method

.method public getResponseInterceptorCount()I
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 3
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 201
    iget-object v2, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/HttpRequestInterceptor;

    .line 202
    .local v1, "interceptor":Lorg/apache/http/HttpRequestInterceptor;
    invoke-interface {v1, p1, p2}, Lorg/apache/http/HttpRequestInterceptor;->process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V

    goto :goto_0

    .line 204
    .end local v1    # "interceptor":Lorg/apache/http/HttpRequestInterceptor;
    :cond_0
    return-void
.end method

.method public process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 3
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 210
    iget-object v2, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/HttpResponseInterceptor;

    .line 211
    .local v1, "interceptor":Lorg/apache/http/HttpResponseInterceptor;
    invoke-interface {v1, p1, p2}, Lorg/apache/http/HttpResponseInterceptor;->process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V

    goto :goto_0

    .line 213
    .end local v1    # "interceptor":Lorg/apache/http/HttpResponseInterceptor;
    :cond_0
    return-void
.end method

.method public removeRequestInterceptorByClass(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/http/HttpRequestInterceptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/http/HttpRequestInterceptor;>;"
    iget-object v2, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 87
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/http/HttpRequestInterceptor;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 89
    .local v1, "request":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 93
    .end local v1    # "request":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public removeResponseInterceptorByClass(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/http/HttpResponseInterceptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/http/HttpResponseInterceptor;>;"
    iget-object v2, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 97
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/http/HttpResponseInterceptor;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 99
    .local v1, "request":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 103
    .end local v1    # "request":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public setInterceptors(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    const-string v2, "Inteceptor list"

    invoke-static {p1, v2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 177
    iget-object v2, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 178
    iget-object v2, p0, Lorg/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 179
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 180
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Lorg/apache/http/HttpRequestInterceptor;

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 181
    check-cast v2, Lorg/apache/http/HttpRequestInterceptor;

    invoke-virtual {p0, v2}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 183
    :cond_1
    instance-of v2, v1, Lorg/apache/http/HttpResponseInterceptor;

    if-eqz v2, :cond_0

    .line 184
    check-cast v1, Lorg/apache/http/HttpResponseInterceptor;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    goto :goto_0

    .line 187
    :cond_2
    return-void
.end method
