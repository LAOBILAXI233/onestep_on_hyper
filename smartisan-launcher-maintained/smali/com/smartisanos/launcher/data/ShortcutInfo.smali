.class public Lcom/smartisanos/launcher/data/ShortcutInfo;
.super Lcom/smartisanos/launcher/data/ItemInfo;
.source "ShortcutInfo.java"


.field public icon:Landroid/graphics/Bitmap;

.field public intent:Landroid/content/Intent;


.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/smartisanos/launcher/data/ItemInfo;-><init>()V

    .line 15
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/smartisanos/launcher/data/ShortcutInfo;->itemType:B

    .line 16
    return-void
.end method
