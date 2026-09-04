.class public Lsmartisanos/widget/letters/LBLetter;
.super Ljava/lang/Object;
.source "LBLetter.java"


.field public static final ICON_STATUS_HOLDER:I = 0x1

.field public static final ICON_STATUS_NORMAL:I = 0x0

.field public static final ICON_STATUS_TOUCHED:I = 0x2

.field public static POUND:Lsmartisanos/widget/letters/LBLetter; = null

.field public static final TYPE_LETTER:I = 0x0

.field public static final TYPE_LOCALE_LETTER:I = 0x1

.field public static final TYPE_SYMBOL:I = 0x2


.field private letter:Ljava/lang/String;

.field private letterBitmaps:[Landroid/graphics/Bitmap;

.field private type:I


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "#"

    invoke-static {v0}, Lsmartisanos/widget/letters/LBLetter;->fromLetter(Ljava/lang/String;)Lsmartisanos/widget/letters/LBLetter;

    move-result-object v0

    sput-object v0, Lsmartisanos/widget/letters/LBLetter;->POUND:Lsmartisanos/widget/letters/LBLetter;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;[Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "letter"    # Ljava/lang/String;
    .param p3, "letterBitmaps"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lsmartisanos/widget/letters/LBLetter;->type:I

    .line 12
    iput-object p2, p0, Lsmartisanos/widget/letters/LBLetter;->letter:Ljava/lang/String;

    .line 13
    iget v0, p0, Lsmartisanos/widget/letters/LBLetter;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 14
    if-eqz p3, :cond_0

    array-length v0, p3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "symbol must have 3 bitmaps!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_1
    iput-object p3, p0, Lsmartisanos/widget/letters/LBLetter;->letterBitmaps:[Landroid/graphics/Bitmap;

    .line 19
    :cond_2
    return-void
.end method

.method public static fromLetter(Ljava/lang/String;)Lsmartisanos/widget/letters/LBLetter;
    .locals 3
    .param p0, "letter"    # Ljava/lang/String;

    .prologue
    .line 47
    new-instance v0, Lsmartisanos/widget/letters/LBLetter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lsmartisanos/widget/letters/LBLetter;-><init>(ILjava/lang/String;[Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static fromLocaleLetter(Ljava/lang/String;)Lsmartisanos/widget/letters/LBLetter;
    .locals 3
    .param p0, "letter"    # Ljava/lang/String;

    .prologue
    .line 51
    new-instance v0, Lsmartisanos/widget/letters/LBLetter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lsmartisanos/widget/letters/LBLetter;-><init>(ILjava/lang/String;[Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static fromSymbol(Ljava/lang/String;[Landroid/graphics/Bitmap;)Lsmartisanos/widget/letters/LBLetter;
    .locals 2
    .param p0, "symbol"    # Ljava/lang/String;
    .param p1, "letterBitmaps"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 55
    new-instance v0, Lsmartisanos/widget/letters/LBLetter;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, Lsmartisanos/widget/letters/LBLetter;-><init>(ILjava/lang/String;[Landroid/graphics/Bitmap;)V

    return-object v0
.end method


.method public getLetter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lsmartisanos/widget/letters/LBLetter;->letter:Ljava/lang/String;

    return-object v0
.end method

.method public getLetterBitmaps()[Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lsmartisanos/widget/letters/LBLetter;->letterBitmaps:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lsmartisanos/widget/letters/LBLetter;->type:I

    return v0
.end method
