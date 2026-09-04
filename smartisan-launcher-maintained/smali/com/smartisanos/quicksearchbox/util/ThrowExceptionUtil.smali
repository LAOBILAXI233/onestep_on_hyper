.class public Lcom/smartisanos/quicksearchbox/util/ThrowExceptionUtil;
.super Ljava/lang/Object;
.source "ThrowExceptionUtil.java"


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeExceptionCustom(Ljava/lang/String;)Ljava/lang/Exception;
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 8
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static printStack()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 16
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    return-void
.end method
