.class Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AppIconsSettingsActivity.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


.field appName:Landroid/widget/TextView;

.field authorName:Landroid/widget/TextView;

.field layout:Landroid/widget/RelativeLayout;

.field officialIcon:Landroid/widget/ImageView;

.field officialIconBg:Landroid/widget/ImageView;

.field officialIconLayout:Landroid/widget/FrameLayout;

.field officialIconSelectedFrame:Landroid/widget/ImageView;

.field final synthetic this$1:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;

.field unofficialIcon:Landroid/widget/ImageView;

.field unofficialIconBg:Landroid/widget/ImageView;

.field unofficialIconLayout:Landroid/widget/FrameLayout;

.field unofficialIconSelectedFrame:Landroid/widget/ImageView;


.method constructor <init>(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;

    .prologue
    .line 484
    iput-object p1, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter$ViewHolder;->this$1:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
