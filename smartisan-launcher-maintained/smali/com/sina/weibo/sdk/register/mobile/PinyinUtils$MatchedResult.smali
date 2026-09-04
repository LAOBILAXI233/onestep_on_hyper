.class public Lcom/sina/weibo/sdk/register/mobile/PinyinUtils$MatchedResult;
.super Ljava/lang/Object;
.source "PinyinUtils.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/register/mobile/PinyinUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MatchedResult"
.end annotation


.field public end:I

.field public start:I


.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput v0, p0, Lcom/sina/weibo/sdk/register/mobile/PinyinUtils$MatchedResult;->start:I

    .line 74
    iput v0, p0, Lcom/sina/weibo/sdk/register/mobile/PinyinUtils$MatchedResult;->end:I

    .line 72
    return-void
.end method
