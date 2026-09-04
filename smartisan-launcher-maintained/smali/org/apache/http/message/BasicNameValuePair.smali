.class public Lorg/apache/http/message/BasicNameValuePair;
.super Ljava/lang/Object;
.source "BasicNameValuePair.java"

.implements Lorg/apache/http/NameValuePair;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


.field private static final serialVersionUID:J = -0x5957a9ac336aca08L


.field private final name:Ljava/lang/String;

.field private final value:Ljava/lang/String;


.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v0, "Name"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/message/BasicNameValuePair;->name:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lorg/apache/http/message/BasicNameValuePair;->value:Ljava/lang/String;

    .line 60
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
    .line 108
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 87
    if-ne p0, p1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v1

    .line 90
    :cond_1
    instance-of v3, p1, Lorg/apache/http/NameValuePair;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 91
    check-cast v0, Lorg/apache/http/message/BasicNameValuePair;

    .line 92
    .local v0, "that":Lorg/apache/http/message/BasicNameValuePair;
    iget-object v3, p0, Lorg/apache/http/message/BasicNameValuePair;->name:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/http/message/BasicNameValuePair;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/http/message/BasicNameValuePair;->value:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/http/message/BasicNameValuePair;->value:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "that":Lorg/apache/http/message/BasicNameValuePair;
    :cond_3
    move v1, v2

    .line 95
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/http/message/BasicNameValuePair;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/http/message/BasicNameValuePair;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 100
    const/16 v0, 0x11

    .line 101
    .local v0, "hash":I
    iget-object v1, p0, Lorg/apache/http/message/BasicNameValuePair;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 102
    iget-object v1, p0, Lorg/apache/http/message/BasicNameValuePair;->value:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 103
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 74
    iget-object v2, p0, Lorg/apache/http/message/BasicNameValuePair;->value:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 75
    iget-object v2, p0, Lorg/apache/http/message/BasicNameValuePair;->name:Ljava/lang/String;

    .line 82
    :goto_0
    return-object v2

    .line 77
    :cond_0
    iget-object v2, p0, Lorg/apache/http/message/BasicNameValuePair;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lorg/apache/http/message/BasicNameValuePair;->value:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v1, v2, v3

    .line 78
    .local v1, "len":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 79
    .local v0, "buffer":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lorg/apache/http/message/BasicNameValuePair;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-object v2, p0, Lorg/apache/http/message/BasicNameValuePair;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
