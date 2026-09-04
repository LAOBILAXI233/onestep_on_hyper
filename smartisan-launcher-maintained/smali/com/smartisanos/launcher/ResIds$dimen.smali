.class public Lcom/smartisanos/launcher/ResIds$dimen;
.super Ljava/lang/Object;
.source "ResIds.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/ResIds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dimen"
.end annotation


.field public static dialog_padding:I

.field public static minScalingSpan:I

.field public static minScalingTouchMajor:I


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 242
    const v0, 0x7f0900e8

    sput v0, Lcom/smartisanos/launcher/ResIds$dimen;->minScalingTouchMajor:I

    .line 243
    const v0, 0x7f0900e7

    sput v0, Lcom/smartisanos/launcher/ResIds$dimen;->minScalingSpan:I

    .line 244
    const v0, 0x7f090018

    sput v0, Lcom/smartisanos/launcher/ResIds$dimen;->dialog_padding:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
