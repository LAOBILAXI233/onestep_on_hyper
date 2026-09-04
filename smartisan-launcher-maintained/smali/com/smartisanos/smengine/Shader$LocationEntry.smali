.class Lcom/smartisanos/smengine/Shader$LocationEntry;
.super Ljava/lang/Object;
.source "Shader.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/smengine/Shader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocationEntry"
.end annotation


.field public mLocation:I

.field public mName:Ljava/lang/String;


.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartisanos/smengine/Shader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/smartisanos/smengine/Shader$1;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/smartisanos/smengine/Shader$LocationEntry;-><init>()V

    return-void
.end method
