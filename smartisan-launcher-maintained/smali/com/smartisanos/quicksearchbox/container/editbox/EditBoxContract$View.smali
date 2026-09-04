.class public interface abstract Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxContract$View;
.super Ljava/lang/Object;
.source "EditBoxContract.java"

.implements Lcom/smartisanos/quicksearchbox/ibase/BaseView;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxContract;
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
        "Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxContract$Presenter;",
        ">;"
    }
.end annotation


.method public abstract clearKeyWordEditor()V
.end method

.method public abstract getActivityContext()Landroid/content/Context;
.end method

.method public abstract getKeyWordEditorText()Ljava/lang/String;
.end method

.method public abstract isClearButtonVisible()Z
.end method

.method public abstract query(Ljava/lang/String;)V
.end method

.method public abstract setClearButtonInvisible()V
.end method

.method public abstract setClearButtonVisible()V
.end method

.method public abstract setKeyWordEditorKeyCode(I)V
.end method

.method public abstract setKeyWordEditorText(Ljava/lang/String;)V
.end method

.method public abstract showEngineList()V
.end method

.method public abstract showKeyBoard(Z)V
.end method
