.class final Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;
.super Ljava/lang/Object;
.source "FragmentActivity.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/FragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NonConfigurationInstances"
.end annotation


.field custom:Ljava/lang/Object;

.field fragments:Landroid/support/v4/app/FragmentManagerNonConfig;

.field loaders:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/LoaderManager;",
            ">;"
        }
    .end annotation
.end field


.method constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
