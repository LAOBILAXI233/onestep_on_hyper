.class Lcom/smartisanos/home/Launcher$16;
.super Lcom/smartisanos/smengine/Event;
.source "Launcher.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/Launcher;->changeTheme(Lcom/smartisanos/launcher/theme/Theme;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/home/Launcher;

.field final synthetic val$the:Lcom/smartisanos/launcher/theme/Theme;


.method constructor <init>(Lcom/smartisanos/home/Launcher;ILcom/smartisanos/launcher/theme/Theme;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/home/Launcher;
    .param p2, "type"    # I

    .prologue
    .line 1419
    iput-object p1, p0, Lcom/smartisanos/home/Launcher$16;->this$0:Lcom/smartisanos/home/Launcher;

    iput-object p3, p0, Lcom/smartisanos/home/Launcher$16;->val$the:Lcom/smartisanos/launcher/theme/Theme;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 2

    .prologue
    .line 1422
    invoke-static {}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->getInstance()Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/home/Launcher$16;->val$the:Lcom/smartisanos/launcher/theme/Theme;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->changeTheme(Lcom/smartisanos/launcher/theme/Theme;)V

    .line 1423
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->updateGLView()V

    .line 1424
    return-void
.end method
