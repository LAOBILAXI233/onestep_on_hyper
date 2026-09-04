.class public Lorg/apache/http/message/BasicHeaderElement;
.super Ljava/lang/Object;
.source "BasicHeaderElement.java"

.implements Lorg/apache/http/HeaderElement;
.implements Ljava/lang/Cloneable;


.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


.field private final name:Ljava/lang/String;

.field private final parameters:[Lorg/apache/http/NameValuePair;

.field private final value:Ljava/lang/String;


.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/http/message/BasicHeaderElement;-><init>(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/http/NameValuePair;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/http/NameValuePair;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "parameters"    # [Lorg/apache/http/NameValuePair;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-string v0, "Name"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/message/BasicHeaderElement;->name:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lorg/apache/http/message/BasicHeaderElement;->value:Ljava/lang/String;

    .line 63
    if-eqz p3, :cond_0

    .line 64
    iput-object p3, p0, Lorg/apache/http/message/BasicHeaderElement;->parameters:[Lorg/apache/http/NameValuePair;

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/http/NameValuePair;

    iput-object v0, p0, Lorg/apache/http/message/BasicHeaderElement;->parameters:[Lorg/apache/http/NameValuePair;

    goto :goto_0
.end method


.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 158
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

    .line 115
    if-ne p0, p1, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v1

    .line 118
    :cond_1
    instance-of v3, p1, Lorg/apache/http/HeaderElement;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 119
    check-cast v0, Lorg/apache/http/message/BasicHeaderElement;

    .line 120
    .local v0, "that":Lorg/apache/http/message/BasicHeaderElement;
    iget-object v3, p0, Lorg/apache/http/message/BasicHeaderElement;->name:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/http/message/BasicHeaderElement;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/http/message/BasicHeaderElement;->value:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/http/message/BasicHeaderElement;->value:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/http/message/BasicHeaderElement;->parameters:[Lorg/apache/http/NameValuePair;

    iget-object v4, v0, Lorg/apache/http/message/BasicHeaderElement;->parameters:[Lorg/apache/http/NameValuePair;

    invoke-static {v3, v4}, Lorg/apache/http/util/LangUtils;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "that":Lorg/apache/http/message/BasicHeaderElement;
    :cond_3
    move v1, v2

    .line 124
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/http/message/BasicHeaderElement;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter(I)Lorg/apache/http/NameValuePair;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lorg/apache/http/message/BasicHeaderElement;->parameters:[Lorg/apache/http/NameValuePair;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getParameterByName(Ljava/lang/String;)Lorg/apache/http/NameValuePair;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 102
    const-string v5, "Name"

    invoke-static {p1, v5}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    const/4 v2, 0x0

    .line 104
    .local v2, "found":Lorg/apache/http/NameValuePair;
    iget-object v0, p0, Lorg/apache/http/message/BasicHeaderElement;->parameters:[Lorg/apache/http/NameValuePair;

    .local v0, "arr$":[Lorg/apache/http/NameValuePair;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 105
    .local v1, "current":Lorg/apache/http/NameValuePair;
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 106
    move-object v2, v1

    .line 110
    .end local v1    # "current":Lorg/apache/http/NameValuePair;
    :cond_0
    return-object v2

    .line 104
    .restart local v1    # "current":Lorg/apache/http/NameValuePair;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getParameterCount()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/apache/http/message/BasicHeaderElement;->parameters:[Lorg/apache/http/NameValuePair;

    array-length v0, v0

    return v0
.end method

.method public getParameters()[Lorg/apache/http/NameValuePair;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/http/message/BasicHeaderElement;->parameters:[Lorg/apache/http/NameValuePair;

    invoke-virtual {v0}, [Lorg/apache/http/NameValuePair;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/http/NameValuePair;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/http/message/BasicHeaderElement;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 130
    const/16 v1, 0x11

    .line 131
    .local v1, "hash":I
    iget-object v5, p0, Lorg/apache/http/message/BasicHeaderElement;->name:Ljava/lang/String;

    invoke-static {v1, v5}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v1

    .line 132
    iget-object v5, p0, Lorg/apache/http/message/BasicHeaderElement;->value:Ljava/lang/String;

    invoke-static {v1, v5}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v1

    .line 133
    iget-object v0, p0, Lorg/apache/http/message/BasicHeaderElement;->parameters:[Lorg/apache/http/NameValuePair;

    .local v0, "arr$":[Lorg/apache/http/NameValuePair;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 134
    .local v4, "parameter":Lorg/apache/http/NameValuePair;
    invoke-static {v1, v4}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v1

    .line 133
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    .end local v4    # "parameter":Lorg/apache/http/NameValuePair;
    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .local v1, "buffer":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lorg/apache/http/message/BasicHeaderElement;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget-object v5, p0, Lorg/apache/http/message/BasicHeaderElement;->value:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 144
    const-string v5, "="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    iget-object v5, p0, Lorg/apache/http/message/BasicHeaderElement;->value:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_0
    iget-object v0, p0, Lorg/apache/http/message/BasicHeaderElement;->parameters:[Lorg/apache/http/NameValuePair;

    .local v0, "arr$":[Lorg/apache/http/NameValuePair;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 148
    .local v4, "parameter":Lorg/apache/http/NameValuePair;
    const-string v5, "; "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    .end local v4    # "parameter":Lorg/apache/http/NameValuePair;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
