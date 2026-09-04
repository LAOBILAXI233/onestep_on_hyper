.class Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV9.java"

.implements Landroid/os/Parcelable;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;",
            ">;"
        }
    .end annotation
.end field


.field featureId:I

.field isOpen:Z

.field menuState:Landroid/os/Bundle;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2085
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState$1;

    invoke-direct {v0}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState$1;-><init>()V

    .line 2086
    invoke-static {v0}, Landroid/support/v4/os/ParcelableCompat;->newCreator(Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2085
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 2055
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2056
    return-void
.end method

.method static readFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;
    .locals 3
    .param p0, "source"    # Landroid/os/Parcel;
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    const/4 v1, 0x1

    .line 2074
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;

    invoke-direct {v0}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;-><init>()V

    .line 2075
    .local v0, "savedState":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;->featureId:I

    .line 2076
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v1, :cond_1

    :goto_0
    iput-boolean v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;->isOpen:Z

    .line 2078
    iget-boolean v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;->isOpen:Z

    if-eqz v1, :cond_0

    .line 2079
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    .line 2082
    :cond_0
    return-object v0

    .line 2076
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


.method public describeContents()I
    .locals 1

    .prologue
    .line 2060
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 2065
    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;->featureId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2066
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;->isOpen:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2068
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;->isOpen:Z

    if-eqz v0, :cond_0

    .line 2069
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 2071
    :cond_0
    return-void

    .line 2066
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
