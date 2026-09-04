.class public Lcom/smartisanos/quicksearchbox/repository/contact/bean/BaseContactBean;
.super Ljava/lang/Object;
.source "BaseContactBean.java"


.field private contactId:I

.field private displayname:Ljava/lang/String;

.field private lookupkey:Ljava/lang/String;

.field private number:Ljava/lang/String;

.field private rawDataVersion:I

.field private rawId:I


.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "rawId"    # I
    .param p2, "contactId"    # I
    .param p3, "rawDataVersion"    # I
    .param p4, "displayname"    # Ljava/lang/String;
    .param p5, "lookupkey"    # Ljava/lang/String;
    .param p6, "number"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/smartisanos/quicksearchbox/repository/contact/bean/BaseContactBean;->rawId:I

    .line 16
    iput p2, p0, Lcom/smartisanos/quicksearchbox/repository/contact/bean/BaseContactBean;->contactId:I

    .line 17
    iput p3, p0, Lcom/smartisanos/quicksearchbox/repository/contact/bean/BaseContactBean;->rawDataVersion:I

    .line 18
    iput-object p5, p0, Lcom/smartisanos/quicksearchbox/repository/contact/bean/BaseContactBean;->lookupkey:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/smartisanos/quicksearchbox/repository/contact/bean/BaseContactBean;->displayname:Ljava/lang/String;

    .line 20
    iput-object p6, p0, Lcom/smartisanos/quicksearchbox/repository/contact/bean/BaseContactBean;->number:Ljava/lang/String;

    .line 21
    return-void
.end method


.method public getContactId()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/smartisanos/quicksearchbox/repository/contact/bean/BaseContactBean;->contactId:I

    return v0
.end method

.method public getDisplayname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/contact/bean/BaseContactBean;->displayname:Ljava/lang/String;

    return-object v0
.end method

.method public getLookupkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/contact/bean/BaseContactBean;->lookupkey:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/contact/bean/BaseContactBean;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getRawDataVersion()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/smartisanos/quicksearchbox/repository/contact/bean/BaseContactBean;->rawDataVersion:I

    return v0
.end method

.method public getRawId()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/smartisanos/quicksearchbox/repository/contact/bean/BaseContactBean;->rawId:I

    return v0
.end method

.method public setRawDataVersion(I)V
    .locals 0
    .param p1, "rawDataVersion"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/smartisanos/quicksearchbox/repository/contact/bean/BaseContactBean;->rawDataVersion:I

    .line 33
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/quicksearchbox/repository/contact/bean/BaseContactBean;->rawId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/quicksearchbox/repository/contact/bean/BaseContactBean;->rawDataVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/quicksearchbox/repository/contact/bean/BaseContactBean;->displayname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/quicksearchbox/repository/contact/bean/BaseContactBean;->lookupkey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/quicksearchbox/repository/contact/bean/BaseContactBean;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
