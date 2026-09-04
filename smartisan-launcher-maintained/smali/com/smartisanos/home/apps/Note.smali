.class public Lcom/smartisanos/home/apps/Note;
.super Lcom/smartisanos/home/apps/EmbeddedApp;
.source "Note.java"


.field public static final PRIVATE_APP_NAME:Ljava/lang/String; = "notes"

.field public static final cmp:Ljava/lang/String; = "#"

.field public static final dockApp:Z = false

.field public static final icon:Ljava/lang/String; = "app_icon_notes"

.field public static final label:Ljava/lang/String; = "app_name_notes"

.field public static final pkg:Ljava/lang/String; = "com.smartisan.notes"


.method public constructor <init>()V
    .locals 6

    .prologue
    .line 16
    const-string v1, "com.smartisan.notes"

    const-string v2, "#"

    const-string v3, "app_name_notes"

    const-string v4, "app_icon_notes"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/smartisanos/home/apps/EmbeddedApp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 17
    const-string v0, "notes"

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/apps/Note;->setAppPrivateName(Ljava/lang/String;)V

    .line 18
    return-void
.end method
