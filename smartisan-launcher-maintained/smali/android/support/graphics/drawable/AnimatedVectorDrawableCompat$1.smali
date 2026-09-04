.class Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$1;
.super Ljava/lang/Object;
.source "AnimatedVectorDrawableCompat.java"

.implements Landroid/graphics/drawable/Drawable$Callback;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;


.method constructor <init>(Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;

    .prologue
    .line 635
    iput-object p1, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$1;->this$0:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 638
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$1;->this$0:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {v0}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->invalidateSelf()V

    .line 639
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 643
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$1;->this$0:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {v0, p2, p3, p4}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 644
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 648
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$1;->this$0:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {v0, p2}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 649
    return-void
.end method
