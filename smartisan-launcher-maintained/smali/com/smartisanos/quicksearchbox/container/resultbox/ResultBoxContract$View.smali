.class public interface abstract Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxContract$View;
.super Ljava/lang/Object;
.source "ResultBoxContract.java"

.implements Lcom/smartisanos/quicksearchbox/ibase/BaseView;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxContract;
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
        "Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxContract$Presenter;",
        ">;"
    }
.end annotation


.method public abstract clearResult()V
.end method

.method public abstract hideKeyBoard()V
.end method

.method public abstract refreshResult(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract setResultListGone()V
.end method

.method public abstract setResultListVisible()V
.end method
