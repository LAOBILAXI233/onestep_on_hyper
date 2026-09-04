.class public Lcom/smartisanos/home/apps/AppStore;
.super Lcom/smartisanos/home/apps/EmbeddedApp;
.source "AppStore.java"


.field public static final PRIVATE_APP_NAME:Ljava/lang/String; = "appstore"

.field public static final cmp:Ljava/lang/String; = "#"

.field public static final dockApp:Z = false

.field public static final icon:Ljava/lang/String; = "app_icon_app_store"

.field public static final label:Ljava/lang/String; = "app_name_app_store"

.field public static final pkg:Ljava/lang/String; = "com.smartisan.appstore"


.method public constructor <init>()V
    .locals 6

    .prologue
    .line 17
    const-string v1, "com.smartisan.appstore"

    const-string v2, "#"

    const-string v3, "app_name_app_store"

    const-string v4, "app_icon_app_store"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/smartisanos/home/apps/EmbeddedApp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 18
    const-string v0, "appstore"

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/apps/AppStore;->setAppPrivateName(Ljava/lang/String;)V

    .line 19
    return-void
.end method
