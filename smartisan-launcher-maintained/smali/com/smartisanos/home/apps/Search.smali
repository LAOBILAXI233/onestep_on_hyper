.class public Lcom/smartisanos/home/apps/Search;
.super Lcom/smartisanos/home/apps/EmbeddedApp;
.source "Search.java"


.field public static final PRIVATE_APP_NAME:Ljava/lang/String; = "search"

.field public static final cmp:Ljava/lang/String; = "com.smartisanos.quicksearchbox.SearchMainActivity"

.field public static final dockApp:Z = false

.field public static final icon:Ljava/lang/String; = "app_icon_search"

.field public static final label:Ljava/lang/String; = "app_name_quicksearchbox"

.field public static final pkg:Ljava/lang/String; = "com.smartisanos.quicksearchbox"


.method public constructor <init>()V
    .locals 6

    .prologue
    .line 16
    const-string v1, "com.smartisanos.quicksearchbox"

    const-string v2, "com.smartisanos.quicksearchbox.SearchMainActivity"

    const-string v3, "app_name_quicksearchbox"

    const-string v4, "app_icon_search"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/smartisanos/home/apps/EmbeddedApp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 17
    const-string v0, "search"

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/apps/Search;->setAppPrivateName(Ljava/lang/String;)V

    .line 18
    return-void
.end method
