.class public final Lcom/smartisanos/smengine/mymaterial/MaterialDef$MaterialDefException;
.super Ljava/lang/RuntimeException;
.source "MaterialDef.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/smengine/mymaterial/MaterialDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MaterialDefException"
.end annotation


.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1530
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1531
    return-void
.end method
