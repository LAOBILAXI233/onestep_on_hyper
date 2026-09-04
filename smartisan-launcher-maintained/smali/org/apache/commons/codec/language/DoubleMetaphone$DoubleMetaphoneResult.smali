.class public Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
.super Ljava/lang/Object;
.source "DoubleMetaphone.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/codec/language/DoubleMetaphone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DoubleMetaphoneResult"
.end annotation


.field private final alternate:Ljava/lang/StringBuilder;

.field private final maxLength:I

.field private final primary:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lorg/apache/commons/codec/language/DoubleMetaphone;


.method public constructor <init>(Lorg/apache/commons/codec/language/DoubleMetaphone;I)V
    .locals 2
    .param p2, "maxLength"    # I

    .prologue
    .line 941
    iput-object p1, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->this$0:Lorg/apache/commons/codec/language/DoubleMetaphone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 937
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->this$0:Lorg/apache/commons/codec/language/DoubleMetaphone;

    invoke-virtual {v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->getMaxCodeLen()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    .line 938
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->this$0:Lorg/apache/commons/codec/language/DoubleMetaphone;

    invoke-virtual {v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->getMaxCodeLen()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    .line 942
    iput p2, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    .line 943
    return-void
.end method


.method public append(C)V
    .locals 0
    .param p1, "value"    # C

    .prologue
    .line 946
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendPrimary(C)V

    .line 947
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(C)V

    .line 948
    return-void
.end method

.method public append(CC)V
    .locals 0
    .param p1, "primary"    # C
    .param p2, "alternate"    # C

    .prologue
    .line 951
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendPrimary(C)V

    .line 952
    invoke-virtual {p0, p2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(C)V

    .line 953
    return-void
.end method

.method public append(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 968
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendPrimary(Ljava/lang/String;)V

    .line 969
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(Ljava/lang/String;)V

    .line 970
    return-void
.end method

.method public append(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "primary"    # Ljava/lang/String;
    .param p2, "alternate"    # Ljava/lang/String;

    .prologue
    .line 973
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendPrimary(Ljava/lang/String;)V

    .line 974
    invoke-virtual {p0, p2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(Ljava/lang/String;)V

    .line 975
    return-void
.end method

.method public appendAlternate(C)V
    .locals 2
    .param p1, "value"    # C

    .prologue
    .line 962
    iget-object v0, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v0, v1, :cond_0

    .line 963
    iget-object v0, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 965
    :cond_0
    return-void
.end method

.method public appendAlternate(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 987
    iget v1, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    iget-object v2, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int v0, v1, v2

    .line 988
    .local v0, "addChars":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v0, :cond_0

    .line 989
    iget-object v1, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    :goto_0
    return-void

    .line 991
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public appendPrimary(C)V
    .locals 2
    .param p1, "value"    # C

    .prologue
    .line 956
    iget-object v0, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-ge v0, v1, :cond_0

    .line 957
    iget-object v0, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 959
    :cond_0
    return-void
.end method

.method public appendPrimary(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 978
    iget v1, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    iget-object v2, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int v0, v1, v2

    .line 979
    .local v0, "addChars":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v0, :cond_0

    .line 980
    iget-object v1, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    :goto_0
    return-void

    .line 982
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getAlternate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1000
    iget-object v0, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrimary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isComplete()Z
    .locals 2

    .prologue
    .line 1004
    iget-object v0, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
