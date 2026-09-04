.class Lcom/smartisan/updater/UpdateSharedPreference$1;
.super Ljava/lang/Object;
.source "UpdateSharedPreference.java"

.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisan/updater/UpdateSharedPreference;->initSharedPreferences(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisan/updater/UpdateSharedPreference;


.method constructor <init>(Lcom/smartisan/updater/UpdateSharedPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisan/updater/UpdateSharedPreference;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/smartisan/updater/UpdateSharedPreference$1;->this$0:Lcom/smartisan/updater/UpdateSharedPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 55
    const-string v0, "need_update"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/smartisan/updater/UpdateSharedPreference$1;->this$0:Lcom/smartisan/updater/UpdateSharedPreference;

    invoke-static {v0}, Lcom/smartisan/updater/UpdateSharedPreference;->access$000(Lcom/smartisan/updater/UpdateSharedPreference;)Lcom/smartisan/updater/UpdateSharedPreference$OnUpdateChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/smartisan/updater/UpdateSharedPreference$1;->this$0:Lcom/smartisan/updater/UpdateSharedPreference;

    invoke-static {v0}, Lcom/smartisan/updater/UpdateSharedPreference;->access$000(Lcom/smartisan/updater/UpdateSharedPreference;)Lcom/smartisan/updater/UpdateSharedPreference$OnUpdateChangeListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/smartisan/updater/UpdateSharedPreference$OnUpdateChangeListener;->onUpdateChange(Z)V

    .line 61
    :cond_0
    return-void
.end method
