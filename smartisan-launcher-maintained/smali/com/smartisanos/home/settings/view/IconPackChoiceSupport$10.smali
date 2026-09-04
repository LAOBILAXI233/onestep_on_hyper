.class final Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$10;
.super Ljava/lang/Object;
.source "IconPackChoiceSupport.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


.field final synthetic val$adapter:Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$ChoiceAdapter;

.field final synthetic val$items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$Choice;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic val$loading:Landroid/view/View;


.method constructor <init>(Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$ChoiceAdapter;Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$10;->val$adapter:Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$ChoiceAdapter;

    iput-object p2, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$10;->val$items:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$10;->val$loading:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$10;->val$adapter:Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$ChoiceAdapter;

    iget-object v1, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$10;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$ChoiceAdapter;->setItems(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$10;->val$loading:Landroid/view/View;

    if-eqz v0, :cond_done

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_done

    return-void
.end method
