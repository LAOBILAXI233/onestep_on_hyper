.class public Lcom/smartisanos/launcher/HardwareAdaptation$HardwareInfo;
.super Ljava/lang/Object;
.source "HardwareAdaptation.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/HardwareAdaptation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HardwareInfo"
.end annotation


.field public board:Ljava/lang/String;

.field public hardware:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public platform:Ljava/lang/String;

.field public sweepThreshold:I


.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "descName"    # Ljava/lang/String;
    .param p2, "boardName"    # Ljava/lang/String;
    .param p3, "st"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/smartisanos/launcher/HardwareAdaptation$HardwareInfo;->name:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/smartisanos/launcher/HardwareAdaptation$HardwareInfo;->board:Ljava/lang/String;

    .line 26
    iput p3, p0, Lcom/smartisanos/launcher/HardwareAdaptation$HardwareInfo;->sweepThreshold:I

    .line 27
    return-void
.end method
