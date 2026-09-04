.class Landroid/content/pm/ApplicationManager$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "ApplicationManager.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ApplicationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageDeleteObserver"
.end annotation


.field final synthetic this$0:Landroid/content/pm/ApplicationManager;


.method constructor <init>(Landroid/content/pm/ApplicationManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/content/pm/ApplicationManager;

    .prologue
    .line 107
    iput-object p1, p0, Landroid/content/pm/ApplicationManager$PackageDeleteObserver;->this$0:Landroid/content/pm/ApplicationManager;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method


.method public packageDeleted(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I

    .prologue
    .line 110
    iget-object v0, p0, Landroid/content/pm/ApplicationManager$PackageDeleteObserver;->this$0:Landroid/content/pm/ApplicationManager;

    invoke-static {v0, p2, p1}, Landroid/content/pm/ApplicationManager;->access$000(Landroid/content/pm/ApplicationManager;ILjava/lang/String;)V

    .line 111
    return-void
.end method
