.class final Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$Choice;
.super Ljava/lang/Object;
.source "IconPackChoiceSupport.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Choice"
.end annotation


.field final drawableName:Ljava/lang/String;

.field final icon:Landroid/graphics/drawable/Drawable;

.field final iconPackPackage:Ljava/lang/String;

.field final label:Ljava/lang/String;

.field final value:Ljava/lang/String;


.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    iput-object p1, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$Choice;->value:Ljava/lang/String;

    .line 347
    iput-object p2, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$Choice;->iconPackPackage:Ljava/lang/String;

    .line 348
    iput-object p3, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$Choice;->drawableName:Ljava/lang/String;

    .line 349
    iput-object p4, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$Choice;->label:Ljava/lang/String;

    .line 350
    iput-object p5, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$Choice;->icon:Landroid/graphics/drawable/Drawable;

    .line 351
    return-void
.end method
