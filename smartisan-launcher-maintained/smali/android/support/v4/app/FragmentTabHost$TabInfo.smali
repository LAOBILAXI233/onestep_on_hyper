.class final Landroid/support/v4/app/FragmentTabHost$TabInfo;
.super Ljava/lang/Object;
.source "FragmentTabHost.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/FragmentTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TabInfo"
.end annotation


.field final args:Landroid/os/Bundle;

.field final clss:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field fragment:Landroid/support/v4/app/Fragment;

.field final tag:Ljava/lang/String;


.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "_tag"    # Ljava/lang/String;
    .param p3, "_args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    .local p2, "_class":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Landroid/support/v4/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Landroid/support/v4/app/FragmentTabHost$TabInfo;->clss:Ljava/lang/Class;

    .line 70
    iput-object p3, p0, Landroid/support/v4/app/FragmentTabHost$TabInfo;->args:Landroid/os/Bundle;

    .line 71
    return-void
.end method
