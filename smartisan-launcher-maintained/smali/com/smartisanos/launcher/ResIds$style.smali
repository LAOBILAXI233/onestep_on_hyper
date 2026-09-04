.class public Lcom/smartisanos/launcher/ResIds$style;
.super Ljava/lang/Object;
.source "ResIds.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/ResIds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "style"
.end annotation


.field public static ParticleConfigDialogStyle:I

.field public static SettingItemTitleStyle:I

.field public static Theme_DeviceDefault_Light:I


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const v0, 0x7f0a00ce

    sput v0, Lcom/smartisanos/launcher/ResIds$style;->ParticleConfigDialogStyle:I

    .line 22
    const v0, 0x7f0a00db

    sput v0, Lcom/smartisanos/launcher/ResIds$style;->SettingItemTitleStyle:I

    .line 23
    const v0, 0x103012b

    sput v0, Lcom/smartisanos/launcher/ResIds$style;->Theme_DeviceDefault_Light:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
