.class public interface abstract Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingleContract$View;
.super Ljava/lang/Object;
.source "ItemDoubleSingleContract.java"

.implements Lcom/smartisanos/quicksearchbox/ibase/BaseView;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingleContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/smartisanos/quicksearchbox/ibase/BaseView",
        "<",
        "Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingleContract$Presenter;",
        ">;"
    }
.end annotation


.method public abstract create(Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;)V
.end method

.method public abstract setIcon(I)V
.end method

.method public abstract setIcon(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setIcon(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setIconGone()V
.end method

.method public abstract setIconInVisible()V
.end method

.method public abstract setIconVisible()V
.end method

.method public abstract setLongClickable()V
.end method

.method public abstract setText(I)V
.end method

.method public abstract setText(Ljava/lang/String;)V
.end method

.method public abstract setUnLongClickable()V
.end method
