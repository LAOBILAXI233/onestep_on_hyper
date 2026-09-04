.class Lcom/smartisanos/home/settings/ThemeChooserActivity$2;
.super Ljava/lang/Object;
.source "ThemeChooserActivity.java"

.implements Landroid/view/View$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/settings/ThemeChooserActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/home/settings/ThemeChooserActivity;


.method constructor <init>(Lcom/smartisanos/home/settings/ThemeChooserActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/home/settings/ThemeChooserActivity;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity$2;->this$0:Lcom/smartisanos/home/settings/ThemeChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity$2;->this$0:Lcom/smartisanos/home/settings/ThemeChooserActivity;

    invoke-virtual {v0}, Lcom/smartisanos/home/settings/ThemeChooserActivity;->finish()V

    .line 131
    return-void
.end method
