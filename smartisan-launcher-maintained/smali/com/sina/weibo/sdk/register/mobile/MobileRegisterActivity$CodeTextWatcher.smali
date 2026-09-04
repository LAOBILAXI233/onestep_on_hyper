.class Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$CodeTextWatcher;
.super Ljava/lang/Object;
.source "MobileRegisterActivity.java"

.implements Landroid/text/TextWatcher;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CodeTextWatcher"
.end annotation


.field final synthetic this$0:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;


.method private constructor <init>(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)V
    .locals 0

    .prologue
    .line 785
    iput-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$CodeTextWatcher;->this$0:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$CodeTextWatcher;)V
    .locals 0

    .prologue
    .line 785
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$CodeTextWatcher;-><init>(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)V

    return-void
.end method


.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$CodeTextWatcher;->this$0:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    invoke-static {v0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->access$0(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$CodeTextWatcher;->this$0:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    invoke-static {v0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->access$1(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 800
    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$CodeTextWatcher;->this$0:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    invoke-static {v0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->access$2(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)V

    .line 804
    :goto_0
    return-void

    .line 802
    :cond_1
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$CodeTextWatcher;->this$0:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    invoke-static {v0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->access$3(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 794
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 789
    return-void
.end method
