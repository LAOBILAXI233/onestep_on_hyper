.class public Lcom/smartisanos/quicksearchbox/repository/ui/bean/BaseBean;
.super Ljava/lang/Object;
.source "BaseBean.java"


.field public static final TYPE_BASE:I = 0x3866

.field public static final TYPE_ITEM_APP:I = 0x3868

.field public static final TYPE_ITEM_CLEARRECORD:I = 0x386b

.field public static final TYPE_ITEM_CONTACT:I = 0x3869

.field public static final TYPE_ITEM_DISPLAYMORE:I = 0x386c

.field public static final TYPE_ITEM_SEARCHONLINE:I = 0x386a

.field public static final TYPE_TITLE:I = 0x3867


.field private type:I


.method public constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/smartisanos/quicksearchbox/repository/ui/bean/BaseBean;->type:I

    .line 26
    return-void
.end method


.method public getType()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/smartisanos/quicksearchbox/repository/ui/bean/BaseBean;->type:I

    return v0
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/smartisanos/quicksearchbox/repository/ui/bean/BaseBean;->type:I

    .line 34
    return-void
.end method
