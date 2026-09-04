.class public Lcom/smartisanos/smengine/TKeyEvent;
.super Ljava/lang/Object;
.source "TKeyEvent.java"


.field private mAction:I

.field private mKeyCode:I


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public getAction()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/smartisanos/smengine/TKeyEvent;->mAction:I

    return v0
.end method

.method public getKeyCode()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/smartisanos/smengine/TKeyEvent;->mKeyCode:I

    return v0
.end method

.method public setKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/KeyEvent;

    .prologue
    .line 10
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/TKeyEvent;->mAction:I

    .line 11
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/TKeyEvent;->mKeyCode:I

    .line 12
    return-void
.end method
