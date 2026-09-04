.class Lcom/smartisanos/smengine/util/TempVars$TempVarsStack;
.super Ljava/lang/Object;
.source "TempVars.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/smengine/util/TempVars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TempVarsStack"
.end annotation


.field index:I

.field tempVars:[Lcom/smartisanos/smengine/util/TempVars;


.method private constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisanos/smengine/util/TempVars$TempVarsStack;->index:I

    .line 66
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/smartisanos/smengine/util/TempVars;

    iput-object v0, p0, Lcom/smartisanos/smengine/util/TempVars$TempVarsStack;->tempVars:[Lcom/smartisanos/smengine/util/TempVars;

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartisanos/smengine/util/TempVars$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/smartisanos/smengine/util/TempVars$1;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/smartisanos/smengine/util/TempVars$TempVarsStack;-><init>()V

    return-void
.end method
