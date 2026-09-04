.class Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$ComparatorObj;
.super Ljava/lang/Object;
.source "AppSortBuilder.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/actions/sort/AppSortBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ComparatorObj"
.end annotation


.field public itemInfo:Lcom/smartisanos/launcher/data/ItemInfo;

.field public lastModifyTime:J

.field public launchCount:I

.field public usageTime:J


.method constructor <init>()V
    .locals 0

    .prologue
    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
