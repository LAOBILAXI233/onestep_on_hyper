.class Lcom/smartisanos/home/settings/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

.implements Landroid/view/View$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/settings/BaseActivity;->setupBackBtnOnTitle(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/home/settings/BaseActivity;


.method constructor <init>(Lcom/smartisanos/home/settings/BaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/home/settings/BaseActivity;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/smartisanos/home/settings/BaseActivity$1;->this$0:Lcom/smartisanos/home/settings/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/smartisanos/home/settings/BaseActivity$1;->this$0:Lcom/smartisanos/home/settings/BaseActivity;

    invoke-virtual {v0}, Lcom/smartisanos/home/settings/BaseActivity;->finish()V

    .line 41
    return-void
.end method
