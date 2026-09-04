.class Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$InputHandler;
.super Landroid/os/Handler;
.source "MobileRegisterActivity.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InputHandler"
.end annotation


.field final synthetic this$0:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;


.method private constructor <init>(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)V
    .locals 0

    .prologue
    .line 971
    iput-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$InputHandler;->this$0:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$InputHandler;)V
    .locals 0

    .prologue
    .line 971
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$InputHandler;-><init>(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)V

    return-void
.end method


.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 974
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 986
    :goto_0
    return-void

    .line 976
    :pswitch_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$InputHandler;->this$0:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    invoke-static {v0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->access$5(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 977
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$InputHandler;->this$0:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    invoke-static {v0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->access$6(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 980
    :pswitch_1
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$InputHandler;->this$0:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    invoke-static {v0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->access$5(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 981
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$InputHandler;->this$0:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    invoke-static {v0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->access$6(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 974
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
