.class Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$PhoneNumTextWatcher;
.super Ljava/lang/Object;
.source "MobileRegisterActivity.java"

.implements Landroid/text/TextWatcher;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneNumTextWatcher"
.end annotation


.field final synthetic this$0:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;


.method private constructor <init>(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)V
    .locals 0

    .prologue
    .line 811
    iput-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$PhoneNumTextWatcher;->this$0:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$PhoneNumTextWatcher;)V
    .locals 0

    .prologue
    .line 811
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$PhoneNumTextWatcher;-><init>(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)V

    return-void
.end method


.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$PhoneNumTextWatcher;->this$0:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    invoke-static {v0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->access$0(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$PhoneNumTextWatcher;->this$0:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    invoke-static {v0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->access$1(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 832
    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$PhoneNumTextWatcher;->this$0:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    invoke-static {v0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->access$2(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)V

    .line 836
    :goto_0
    return-void

    .line 834
    :cond_1
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$PhoneNumTextWatcher;->this$0:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    invoke-static {v0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->access$3(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 826
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 816
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$PhoneNumTextWatcher;->this$0:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    invoke-static {v0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->access$0(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$PhoneNumTextWatcher;->this$0:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    invoke-static {v0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->access$4(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 821
    :goto_0
    return-void

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$PhoneNumTextWatcher;->this$0:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    invoke-static {v0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->access$4(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
