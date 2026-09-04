.class public Lcom/smartisanos/quicksearchbox/repository/ui/bean/title/TitleBean;
.super Lcom/smartisanos/quicksearchbox/repository/ui/bean/BaseBean;
.source "TitleBean.java"


.field private Title:Ljava/lang/String;


.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 20
    const/16 v0, 0x3867

    invoke-direct {p0, v0}, Lcom/smartisanos/quicksearchbox/repository/ui/bean/BaseBean;-><init>(I)V

    .line 21
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/repository/ui/bean/title/TitleBean;->Title:Ljava/lang/String;

    .line 22
    return-void
.end method


.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/ui/bean/title/TitleBean;->Title:Ljava/lang/String;

    return-object v0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/repository/ui/bean/title/TitleBean;->Title:Ljava/lang/String;

    .line 17
    return-void
.end method
