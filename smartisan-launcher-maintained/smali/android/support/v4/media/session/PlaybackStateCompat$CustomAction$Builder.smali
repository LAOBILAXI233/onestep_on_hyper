.class public final Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;
.super Ljava/lang/Object;
.source "PlaybackStateCompat.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


.field private final mAction:Ljava/lang/String;

.field private mExtras:Landroid/os/Bundle;

.field private final mIcon:I

.field private final mName:Ljava/lang/CharSequence;


.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/CharSequence;
    .param p3, "icon"    # I

    .prologue
    .line 798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 799
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 800
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must specify an action to build a CustomAction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 803
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 804
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must specify a name to build a CustomAction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 807
    :cond_1
    if-nez p3, :cond_2

    .line 808
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must specify an icon resource id to build a CustomAction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 811
    :cond_2
    iput-object p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->mAction:Ljava/lang/String;

    .line 812
    iput-object p2, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->mName:Ljava/lang/CharSequence;

    .line 813
    iput p3, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->mIcon:I

    .line 814
    return-void
.end method


.method public build()Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;
    .locals 5

    .prologue
    .line 837
    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    iget-object v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->mAction:Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->mName:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->mIcon:I

    iget-object v4, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/Bundle;)V

    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 826
    iput-object p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->mExtras:Landroid/os/Bundle;

    .line 827
    return-object p0
.end method
