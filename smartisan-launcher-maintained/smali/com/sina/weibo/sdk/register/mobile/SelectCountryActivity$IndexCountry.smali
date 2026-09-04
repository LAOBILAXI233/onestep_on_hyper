.class Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$IndexCountry;
.super Ljava/lang/Object;
.source "SelectCountryActivity.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IndexCountry"
.end annotation


.field indexInList:I

.field indexInListArray:I

.field final synthetic this$0:Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;


.method constructor <init>(Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;II)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$IndexCountry;->this$0:Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput p2, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$IndexCountry;->indexInListArray:I

    .line 205
    iput p3, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$IndexCountry;->indexInList:I

    .line 206
    return-void
.end method


.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 210
    instance-of v1, p1, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$IndexCountry;

    if-nez v1, :cond_1

    .line 217
    :cond_0
    :goto_0
    return v0

    .line 213
    :cond_1
    iget v1, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$IndexCountry;->indexInList:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 216
    check-cast p1, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$IndexCountry;

    .line 217
    iget v1, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$IndexCountry;->indexInListArray:I

    iget v2, p1, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$IndexCountry;->indexInListArray:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$IndexCountry;->indexInList:I

    iget v2, p1, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$IndexCountry;->indexInList:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
