.class public Landroid/support/v7/app/WindowDecorActionBar$TabImpl;
.super Landroid/support/v7/app/ActionBar$Tab;
.source "WindowDecorActionBar.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabImpl"
.end annotation


.field private mCallback:Landroid/support/v7/app/ActionBar$TabListener;

.field private mContentDesc:Ljava/lang/CharSequence;

.field private mCustomView:Landroid/view/View;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mPosition:I

.field private mTag:Ljava/lang/Object;

.field private mText:Ljava/lang/CharSequence;

.field final synthetic this$0:Landroid/support/v7/app/WindowDecorActionBar;


.method public constructor <init>(Landroid/support/v7/app/WindowDecorActionBar;)V
    .locals 1
    .param p1, "this$0"    # Landroid/support/v7/app/WindowDecorActionBar;

    .prologue
    .line 1132
    iput-object p1, p0, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-direct {p0}, Landroid/support/v7/app/ActionBar$Tab;-><init>()V

    .line 1138
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->mPosition:I

    return-void
.end method


.method public getCallback()Landroid/support/v7/app/ActionBar$TabListener;
    .locals 1

    .prologue
    .line 1153
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->mCallback:Landroid/support/v7/app/ActionBar$TabListener;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1250
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1164
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1184
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 1189
    iget v0, p0, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->mPosition:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1143
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1198
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public select()V
    .locals 1

    .prologue
    .line 1231
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-virtual {v0, p0}, Landroid/support/v7/app/WindowDecorActionBar;->selectTab(Landroid/support/v7/app/ActionBar$Tab;)V

    .line 1232
    return-void
.end method

.method public setContentDescription(I)Landroid/support/v7/app/ActionBar$Tab;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1236
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    iget-object v0, v0, Landroid/support/v7/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->setContentDescription(Ljava/lang/CharSequence;)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroid/support/v7/app/ActionBar$Tab;
    .locals 2
    .param p1, "contentDesc"    # Ljava/lang/CharSequence;

    .prologue
    .line 1241
    iput-object p1, p0, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    .line 1242
    iget v0, p0, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    .line 1243
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    iget-object v0, v0, Landroid/support/v7/app/WindowDecorActionBar;->mTabScrollView:Landroid/support/v7/widget/ScrollingTabContainerView;

    iget v1, p0, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1245
    :cond_0
    return-object p0
.end method

.method public setCustomView(I)Landroid/support/v7/app/ActionBar$Tab;
    .locals 2
    .param p1, "layoutResId"    # I

    .prologue
    .line 1178
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/WindowDecorActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    .line 1179
    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1178
    invoke-virtual {p0, v0}, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->setCustomView(Landroid/view/View;)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setCustomView(Landroid/view/View;)Landroid/support/v7/app/ActionBar$Tab;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1169
    iput-object p1, p0, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->mCustomView:Landroid/view/View;

    .line 1170
    iget v0, p0, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    .line 1171
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    iget-object v0, v0, Landroid/support/v7/app/WindowDecorActionBar;->mTabScrollView:Landroid/support/v7/widget/ScrollingTabContainerView;

    iget v1, p0, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1173
    :cond_0
    return-object p0
.end method

.method public setIcon(I)Landroid/support/v7/app/ActionBar$Tab;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1212
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    iget-object v0, v0, Landroid/support/v7/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/app/ActionBar$Tab;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1203
    iput-object p1, p0, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1204
    iget v0, p0, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    .line 1205
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    iget-object v0, v0, Landroid/support/v7/app/WindowDecorActionBar;->mTabScrollView:Landroid/support/v7/widget/ScrollingTabContainerView;

    iget v1, p0, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1207
    :cond_0
    return-object p0
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 1193
    iput p1, p0, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->mPosition:I

    .line 1194
    return-void
.end method

.method public setTabListener(Landroid/support/v7/app/ActionBar$TabListener;)Landroid/support/v7/app/ActionBar$Tab;
    .locals 0
    .param p1, "callback"    # Landroid/support/v7/app/ActionBar$TabListener;

    .prologue
    .line 1158
    iput-object p1, p0, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->mCallback:Landroid/support/v7/app/ActionBar$TabListener;

    .line 1159
    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Landroid/support/v7/app/ActionBar$Tab;
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 1148
    iput-object p1, p0, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->mTag:Ljava/lang/Object;

    .line 1149
    return-object p0
.end method

.method public setText(I)Landroid/support/v7/app/ActionBar$Tab;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1226
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    iget-object v0, v0, Landroid/support/v7/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->setText(Ljava/lang/CharSequence;)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;)Landroid/support/v7/app/ActionBar$Tab;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1217
    iput-object p1, p0, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->mText:Ljava/lang/CharSequence;

    .line 1218
    iget v0, p0, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    .line 1219
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    iget-object v0, v0, Landroid/support/v7/app/WindowDecorActionBar;->mTabScrollView:Landroid/support/v7/widget/ScrollingTabContainerView;

    iget v1, p0, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1221
    :cond_0
    return-object p0
.end method
