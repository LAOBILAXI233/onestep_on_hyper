.class public Lcom/smartisanos/home/HomeConfig$PhoneInfo;
.super Ljava/lang/Object;
.source "HomeConfig.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/home/HomeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneInfo"
.end annotation


.field public desc:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public openGLES:Ljava/lang/String;

.field public render:Ljava/lang/String;

.field public supportMipMap:Z

.field public supportPolygonOffset:Z


.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "n"    # Ljava/lang/String;
    .param p2, "r"    # Ljava/lang/String;
    .param p3, "openGl"    # Ljava/lang/String;
    .param p4, "d"    # Ljava/lang/String;
    .param p5, "smm"    # Z
    .param p6, "spo"    # Z

    .prologue
    const/4 v0, 0x1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-boolean v0, p0, Lcom/smartisanos/home/HomeConfig$PhoneInfo;->supportMipMap:Z

    .line 83
    iput-boolean v0, p0, Lcom/smartisanos/home/HomeConfig$PhoneInfo;->supportPolygonOffset:Z

    .line 92
    iput-object p1, p0, Lcom/smartisanos/home/HomeConfig$PhoneInfo;->name:Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lcom/smartisanos/home/HomeConfig$PhoneInfo;->render:Ljava/lang/String;

    .line 94
    iput-object p3, p0, Lcom/smartisanos/home/HomeConfig$PhoneInfo;->openGLES:Ljava/lang/String;

    .line 95
    iput-object p4, p0, Lcom/smartisanos/home/HomeConfig$PhoneInfo;->desc:Ljava/lang/String;

    .line 96
    iput-boolean p5, p0, Lcom/smartisanos/home/HomeConfig$PhoneInfo;->supportMipMap:Z

    .line 97
    iput-boolean p6, p0, Lcom/smartisanos/home/HomeConfig$PhoneInfo;->supportPolygonOffset:Z

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "r"    # Ljava/lang/String;
    .param p2, "smm"    # Z
    .param p3, "spo"    # Z

    .prologue
    const/4 v0, 0x1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-boolean v0, p0, Lcom/smartisanos/home/HomeConfig$PhoneInfo;->supportMipMap:Z

    .line 83
    iput-boolean v0, p0, Lcom/smartisanos/home/HomeConfig$PhoneInfo;->supportPolygonOffset:Z

    .line 86
    iput-object p1, p0, Lcom/smartisanos/home/HomeConfig$PhoneInfo;->render:Ljava/lang/String;

    .line 87
    iput-boolean p2, p0, Lcom/smartisanos/home/HomeConfig$PhoneInfo;->supportMipMap:Z

    .line 88
    iput-boolean p3, p0, Lcom/smartisanos/home/HomeConfig$PhoneInfo;->supportPolygonOffset:Z

    .line 89
    return-void
.end method
