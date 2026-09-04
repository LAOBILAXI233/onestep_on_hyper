.class Lcom/smartisanos/launcher/theme/ChangeThemeHandler$1;
.super Ljava/lang/Object;
.source "ChangeThemeHandler.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/theme/ChangeThemeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;


.method constructor <init>(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$1;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 2

    .prologue
    .line 117
    new-instance v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$1$1;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$1$1;-><init>(Lcom/smartisanos/launcher/theme/ChangeThemeHandler$1;I)V

    const/4 v1, 0x0

    .line 124
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$1$1;->send(F)V

    .line 125
    return-void
.end method
