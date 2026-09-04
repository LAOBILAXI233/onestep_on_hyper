.class public Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;
.super Landroid/app/Activity;
.source "MobileRegisterActivity.java"

.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/sina/weibo/sdk/component/view/ResizeableLayout$SizeChangeListener;


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$CodeTextWatcher;,
        Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$InputHandler;,
        Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$PhoneNumTextWatcher;,
        Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$WBSdkUrlClickSpan;
    }
.end annotation


.field private static final APPKEY_NOT_SET_CN:Ljava/lang/String; = "\u60a8\u7684app_key\u6ca1\u6709\u8bbe\u7f6e"

.field private static final APPKEY_NOT_SET_EN:Ljava/lang/String; = "your appkey not set"

.field private static final APPKEY_NOT_SET_TW:Ljava/lang/String; = "\u60a8\u7684app_key\u6c92\u6709\u8a2d\u7f6e"

.field private static final CANCEL_EN:Ljava/lang/String; = "Cancel"

.field private static final CANCEL_ZH_CN:Ljava/lang/String; = "\u53d6\u6d88"

.field private static final CANCEL_ZH_TW:Ljava/lang/String; = "\u53d6\u6d88"

.field private static final CHINA_CN:Ljava/lang/String; = "\u4e2d\u56fd"

.field private static final CHINA_EN:Ljava/lang/String; = "China"

.field private static final CHINA_TW:Ljava/lang/String; = "\u4e2d\u570b"

.field private static final CODE_LENGTH_CN:Ljava/lang/String; = "\u4f60\u7684\u9a8c\u8bc1\u7801\u4e0d\u662f6\u4f4d\u6570"

.field private static final CODE_LENGTH_EN:Ljava/lang/String; = "Your code isn\u2019t 6-digit long"

.field private static final CODE_LENGTH_TW:Ljava/lang/String; = "\u4f60\u7684\u9a57\u8b49\u78bc\u4e0d\u662f6\u4f4d\u6578"

.field private static final DEFAULT_BG_COLOR:I = -0xd0d0e

.field private static final DEFAULT_CLEAR_BTN:I = 0x16

.field private static final DEFAULT_TEXT_PADDING:I = 0xc

.field private static final DEFAULT_TIPS_TEXT_SIZE:I = 0xd

.field private static final DEFAULT__RIGHT_TRIANGLE:I = 0xd

.field private static final EMPTY_VIEW_TEXT_COLOR:I = -0x424243

.field private static final GET_CODE_BTN_ID:I = 0x3

.field private static final GET_CODE_CN:Ljava/lang/String; = "\u83b7\u53d6\u9a8c\u8bc1\u7801"

.field private static final GET_CODE_EN:Ljava/lang/String; = "Get code"

.field private static final GET_CODE_TW:Ljava/lang/String; = "\u7372\u53d6\u9a57\u8b49\u78bc"

.field private static final HELP_INFO_CN:Ljava/lang/String; = "\u8bf7\u786e\u8ba4\u56fd\u5bb6\u548c\u5730\u533a\u5e76\u586b\u5199\u624b\u673a\u53f7\u7801"

.field private static final HELP_INFO_EN:Ljava/lang/String; = "Confirm your country/region and enter your mobile number"

.field private static final HELP_INFO_TW:Ljava/lang/String; = "\u8acb\u78ba\u8a8d\u570b\u5bb6\u548c\u5730\u5340\u5e76\u586b\u5beb\u624b\u6a5f\u865f"

.field private static final INPUT_AUTH_CODE_CN:Ljava/lang/String; = "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

.field private static final INPUT_AUTH_CODE_EN:Ljava/lang/String; = "Verification code"

.field private static final INPUT_AUTH_CODE_TW:Ljava/lang/String; = "\u8acb\u8f38\u5165\u9a57\u8b49\u78bc"

.field private static final INPUT_PHONE_NUM_CN:Ljava/lang/String; = "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801"

.field private static final INPUT_PHONE_NUM_EN:Ljava/lang/String; = "Your mobile number"

.field private static final INPUT_PHONE_NUM_TW:Ljava/lang/String; = "\u8acb\u8f38\u5165\u624b\u6a5f\u865f"

.field private static final LINK_TEXT_COLOR:I = -0x7d7d7e

.field private static final MIAN_LINK_TEXT_COLOR:I = -0xaf8251

.field private static final NETWORK_ERROR_CN:Ljava/lang/String; = "\u60a8\u7684\u7f51\u7edc\u4e0d\u53ef\u7528\uff0c\u8bf7\u7a0d\u540e"

.field private static final NETWORK_ERROR_EN:Ljava/lang/String; = "your network is  disabled  try again later"

.field private static final NETWORK_ERROR_TW:Ljava/lang/String; = "\u60a8\u7684\u7db2\u7d61\u4e0d\u53ef\u7528\uff0c\u8acb\u7a0d\u5f8c"

.field private static final OK_EN:Ljava/lang/String; = "OK"

.field private static final OK_ZH_CN:Ljava/lang/String; = "\u786e\u5b9a"

.field private static final OK_ZH_TW:Ljava/lang/String; = "\u78ba\u5b9a"

.field private static final PHONE_ERROR_CN:Ljava/lang/String; = "\u60a8\u7684\u624b\u673a\u53f7\u4e0d\u662f11\u4f4d\u6570"

.field private static final PHONE_ERROR_EN:Ljava/lang/String; = "Your phone number isn\u2019t 11-digit long"

.field private static final PHONE_ERROR_TW:Ljava/lang/String; = "\u60a8\u7684\u624b\u6a5f\u865f\u4e0d\u662f11\u4f4d\u6578"

.field private static final PHONE_NUM_CLEAR_BTN_ID:I = 0x4

.field public static final REGISTER_TITLE:Ljava/lang/String; = "register_title"

.field private static final RESIZEABLE_INPUTMETHODHIDE:I = 0x0

.field private static final RESIZEABLE_INPUTMETHODSHOW:I = 0x1

.field public static final RESPONSE_EXPIRES:Ljava/lang/String; = "expires"

.field public static final RESPONSE_OAUTH_TOKEN:Ljava/lang/String; = "oauth_token"

.field private static final SELECT_COUNTRY_REQUEST_CODE:I = 0x0

.field private static final SEND_MSG:Ljava/lang/String; = "http://api.weibo.com/oauth2/sms_authorize/send"

.field private static final SEND_SUBMIT:Ljava/lang/String; = "http://api.weibo.com/oauth2/sms_authorize/submit"

.field private static final SERVER_ERROR_CN:Ljava/lang/String; = "\u670d\u52a1\u5668\u5fd9,\u8bf7\u7a0d\u540e\u518d\u8bd5"

.field private static final SERVER_ERROR_EN:Ljava/lang/String; = "the server is busy, please  wait"

.field private static final SERVER_ERROR_TW:Ljava/lang/String; = "\u670d\u52d9\u5668\u5fd9,\u8acb\u7a0d\u5f8c\u518d\u8a66"

.field private static final SINA_NOTICE_EN:Ljava/lang/String; = "By clicking ok, you hereby agree to Weibo Online Service Agreement and Privacy Policy"

.field private static final SINA_NOTICE_ZH_CN:Ljava/lang/String; = "\u70b9\u51fb\u201c\u786e\u5b9a\u201d\u8868\u793a\u4f60\u540c\u610f\u670d\u52a1\u4f7f\u7528\u534f\u8bae\u548c\u9690\u79c1\u6761\u6b3e\u3002"

.field private static final SINA_NOTICE_ZH_TW:Ljava/lang/String; = "\u9ede\u64ca\u201c\u78ba\u5b9a\u201d\u6a19\u793a\u4f60\u540c\u610f\u670d\u52d9\u4f7f\u7528\u5354\u8b70\u548c\u96b1\u79c1\u689d\u6b3e\u3002"

.field private static final SINA_PRIVATE_URL:Ljava/lang/String; = "http://m.weibo.cn/reg/privacyagreement?from=h5&wm=3349"

.field private static final SINA_PROTOCOL_URL:Ljava/lang/String; = "http://weibo.cn/dpool/ttt/h5/regagreement.php?from=h5"

.field private static final SINA_SERVICE_EN:Ljava/lang/String; = "Service By Sina WeiBo"

.field private static final SINA_SERVICE_ZH_CN:Ljava/lang/String; = "\u6b64\u670d\u52a1\u7531\u5fae\u535a\u63d0\u4f9b"

.field private static final SINA_SERVICE_ZH_TW:Ljava/lang/String; = "\u6b64\u670d\u52d9\u7531\u5fae\u535a\u63d0\u4f9b"

.field private static final TAG:Ljava/lang/String;

.field private static final TITLE_BAR_ID:I = 0x1

.field private static final TITLE_CN:Ljava/lang/String; = "\u9a8c\u8bc1\u7801\u767b\u5f55"

.field private static final TITLE_EN:Ljava/lang/String; = "Login"

.field private static final TITLE_TW:Ljava/lang/String; = "\u9a57\u8b49\u78bc\u767b\u9304"

.field private static final TRIANGLE_ID:I = 0x2

.field private static final WAIT_CN:Ljava/lang/String; = "\u6b63\u5728\u5904\u7406\u4e2d....."

.field private static final WAIT_EN:Ljava/lang/String; = "please wait .... "

.field private static final WAIT_TW:Ljava/lang/String; = "\u6b63\u5728\u8655\u7406\u4e2d....."


.field private cfrom:Ljava/lang/String;

.field private mAppkey:Ljava/lang/String;

.field private mBtnRegist:Landroid/widget/Button;

.field private mCheckCode:Landroid/widget/EditText;

.field private mCountDownTimer:Landroid/os/CountDownTimer;

.field private mCountryCode:Landroid/widget/TextView;

.field private mCountryCodeStr:Ljava/lang/String;

.field private mCountryLayout:Landroid/widget/RelativeLayout;

.field private mCountryName:Landroid/widget/TextView;

.field private mCountryNameStr:Ljava/lang/String;

.field private mGetCodeBtn:Landroid/widget/Button;

.field private mInfoText:Landroid/widget/TextView;

.field private mInputHandler:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$InputHandler;

.field private mKeyHash:Ljava/lang/String;

.field private mLoadingDlg:Landroid/app/ProgressDialog;

.field private mMaxHeight:I

.field private mPackageName:Ljava/lang/String;

.field private mPhoneNum:Landroid/widget/EditText;

.field private mPhoneNumClearBtn:Landroid/widget/ImageView;

.field private mRegistScrollview:Landroid/widget/ScrollView;

.field private mRegiter_llt:Landroid/widget/LinearLayout;

.field private mSpecifyTitle:Ljava/lang/String;

.field private mTips:Landroid/widget/TextView;

.field private titleBar:Lcom/sina/weibo/sdk/component/view/TitleBar;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->TAG:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 193
    new-instance v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$InputHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$InputHandler;-><init>(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$InputHandler;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mInputHandler:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$InputHandler;

    .line 194
    const/4 v0, 0x0

    iput v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mMaxHeight:I

    .line 58
    return-void
.end method

.method static synthetic access$0(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNum:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCheckCode:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$10(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->cfrom:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$11(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mTips:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)V
    .locals 0

    .prologue
    .line 729
    invoke-direct {p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->disableRegisterBtn()V

    return-void
.end method

.method static synthetic access$3(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)V
    .locals 0

    .prologue
    .line 737
    invoke-direct {p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->enableRegisterBtn()V

    return-void
.end method

.method static synthetic access$4(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNumClearBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mInfoText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$7(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mGetCodeBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$8(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)V
    .locals 0

    .prologue
    .line 721
    invoke-direct {p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->enableGetCodeBtn()V

    return-void
.end method

.method static synthetic access$9()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private disableGetCodeBtn()V
    .locals 2

    .prologue
    .line 714
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mGetCodeBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 715
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mGetCodeBtn:Landroid/widget/Button;

    const v1, -0x424243

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 716
    return-void
.end method

.method private disableRegisterBtn()V
    .locals 2

    .prologue
    .line 730
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mBtnRegist:Landroid/widget/Button;

    const v1, 0x4dffffff    # 5.3687088E8f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 731
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mBtnRegist:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 732
    return-void
.end method

.method private doCheckOnGetMsg(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 637
    invoke-static {p0}, Lcom/sina/weibo/sdk/utils/NetworkHelper;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 638
    invoke-direct {p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->showNetFail()V

    .line 651
    :goto_0
    return v0

    .line 642
    :cond_0
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->verifyPhoneNum(Ljava/lang/String;)Z

    move-result v1

    .line 643
    if-nez v1, :cond_1

    .line 644
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mTips:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 645
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mTips:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Your phone number isn\u2019t 11-digit long"

    .line 646
    const-string v4, "\u60a8\u7684\u624b\u673a\u53f7\u4e0d\u662f11\u4f4d\u6570"

    const-string v5, "\u60a8\u7684\u624b\u6a5f\u865f\u4e0d\u662f11\u4f4d\u6578"

    .line 645
    invoke-static {v2, v3, v4, v5}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 649
    :cond_1
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mTips:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 651
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private doCheckOnSubmit(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 678
    invoke-static {p0}, Lcom/sina/weibo/sdk/utils/NetworkHelper;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 679
    invoke-direct {p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->showNetFail()V

    .line 693
    :goto_0
    return v0

    .line 683
    :cond_0
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->verifyCheckCode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 684
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mTips:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 685
    const/4 v0, 0x1

    goto :goto_0

    .line 687
    :cond_1
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mTips:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 688
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mTips:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Your code isn\u2019t 6-digit long"

    .line 689
    const-string v4, "\u4f60\u7684\u9a8c\u8bc1\u7801\u4e0d\u662f6\u4f4d\u6570"

    const-string v5, "\u4f60\u7684\u9a57\u8b49\u78bc\u4e0d\u662f6\u4f4d\u6578"

    .line 688
    invoke-static {v2, v3, v4, v5}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 690
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 691
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Your code isn\u2019t 6-digit long"

    const-string v4, "\u4f60\u7684\u9a8c\u8bc1\u7801\u4e0d\u662f6\u4f4d\u6570"

    const-string v5, "\u4f60\u7684\u9a57\u8b49\u78bc\u4e0d\u662f6\u4f4d\u6578"

    .line 690
    invoke-static {v2, v3, v4, v5}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/sina/weibo/sdk/utils/UIUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method private enableGetCodeBtn()V
    .locals 2

    .prologue
    .line 722
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mGetCodeBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 723
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mGetCodeBtn:Landroid/widget/Button;

    const v1, -0xaf8251

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 724
    return-void
.end method

.method private enableRegisterBtn()V
    .locals 2

    .prologue
    .line 738
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mBtnRegist:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 739
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mBtnRegist:Landroid/widget/Button;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 740
    return-void
.end method

.method private genOKBtn()Landroid/widget/Button;
    .locals 5

    .prologue
    .line 505
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 507
    const-string v1, "common_button_big_blue.9.png"

    const-string v2, "common_button_big_blue_highlighted.9.png"

    .line 508
    const-string v3, "common_button_big_blue_disable.9.png"

    .line 506
    invoke-static {p0, v1, v2, v3}, Lcom/sina/weibo/sdk/utils/ResourceManager;->createStateListDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 509
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 510
    const/4 v2, -0x1

    const/16 v3, 0x2e

    invoke-static {p0, v3}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v3

    .line 509
    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 512
    const/16 v2, 0xc

    .line 511
    invoke-static {p0, v2}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 513
    const-string v2, "OK"

    const-string v3, "\u786e\u5b9a"

    const-string v4, "\u78ba\u5b9a"

    invoke-static {p0, v2, v3, v4}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 514
    const/high16 v2, 0x41880000    # 17.0f

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 515
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 516
    return-object v0
.end method

.method private genProtocalInfoTv()Landroid/widget/TextView;
    .locals 12

    .prologue
    const/16 v11, 0x21

    const/16 v3, 0xc

    const/high16 v2, 0x41500000    # 13.0f

    const/4 v10, -0x1

    .line 535
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 536
    const/4 v0, 0x2

    invoke-virtual {v6, v0, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 538
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 539
    const/4 v1, -0x2

    .line 538
    invoke-direct {v0, v10, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 540
    const/16 v1, 0x8

    invoke-static {p0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 541
    invoke-static {p0, v3}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 542
    invoke-static {p0, v3}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 543
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 544
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 545
    const/4 v0, 0x3

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 546
    const v0, -0x7d7d7e

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 548
    invoke-static {}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getLanguage()Ljava/util/Locale;

    move-result-object v1

    .line 553
    const-string v0, "\u70b9\u51fb\u201c\u786e\u5b9a\u201d\u8868\u793a\u4f60\u540c\u610f\u670d\u52a1\u4f7f\u7528\u534f\u8bae\u548c\u9690\u79c1\u6761\u6b3e\u3002"

    .line 554
    const-string v0, "zh_CN"

    .line 555
    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v2, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 556
    const-string v1, "\u70b9\u51fb\u201c\u786e\u5b9a\u201d\u8868\u793a\u4f60\u540c\u610f\u670d\u52a1\u4f7f\u7528\u534f\u8bae\u548c\u9690\u79c1\u6761\u6b3e\u3002"

    .line 557
    const-string v2, "\u670d\u52a1\u4f7f\u7528\u534f\u8bae"

    .line 558
    const-string v7, "\u9690\u79c1\u6761\u6b3e"

    .line 559
    const-string v3, "\u70b9\u51fb\u201c\u786e\u5b9a\u201d\u8868\u793a\u4f60\u540c\u610f\u670d\u52a1\u4f7f\u7528\u534f\u8bae\u548c\u9690\u79c1\u6761\u6b3e\u3002"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 560
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int v4, v5, v2

    .line 561
    const-string v2, "\u70b9\u51fb\u201c\u786e\u5b9a\u201d\u8868\u793a\u4f60\u540c\u610f\u670d\u52a1\u4f7f\u7528\u534f\u8bae\u548c\u9690\u79c1\u6761\u6b3e\u3002"

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 562
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    .line 582
    :goto_0
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 583
    if-eq v5, v10, :cond_0

    if-eq v4, v10, :cond_0

    .line 584
    new-instance v1, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$WBSdkUrlClickSpan;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "http://weibo.cn/dpool/ttt/h5/regagreement.php?from=h5&lang="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, p0, p0, v8}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$WBSdkUrlClickSpan;-><init>(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v7, v1, v5, v4, v11}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 587
    :cond_0
    if-eq v3, v10, :cond_1

    if-eq v2, v10, :cond_1

    .line 588
    new-instance v1, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$WBSdkUrlClickSpan;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://m.weibo.cn/reg/privacyagreement?from=h5&wm=3349&lang="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, p0, v0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$WBSdkUrlClickSpan;-><init>(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v7, v1, v3, v2, v11}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 592
    :cond_1
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 593
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 594
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 595
    return-object v6

    .line 563
    :cond_2
    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 564
    const-string v1, "\u9ede\u64ca\u201c\u78ba\u5b9a\u201d\u6a19\u793a\u4f60\u540c\u610f\u670d\u52d9\u4f7f\u7528\u5354\u8b70\u548c\u96b1\u79c1\u689d\u6b3e\u3002"

    .line 565
    const-string v0, "zh_HK"

    .line 566
    const-string v2, "\u670d\u52d9\u4f7f\u7528\u5354\u8b70"

    .line 567
    const-string v7, "\u96b1\u79c1\u689d\u6b3e"

    .line 568
    const-string v3, "\u9ede\u64ca\u201c\u78ba\u5b9a\u201d\u6a19\u793a\u4f60\u540c\u610f\u670d\u52d9\u4f7f\u7528\u5354\u8b70\u548c\u96b1\u79c1\u689d\u6b3e\u3002"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 569
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int v4, v5, v2

    .line 570
    const-string v2, "\u9ede\u64ca\u201c\u78ba\u5b9a\u201d\u6a19\u793a\u4f60\u540c\u610f\u670d\u52d9\u4f7f\u7528\u5354\u8b70\u548c\u96b1\u79c1\u689d\u6b3e\u3002"

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 571
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    .line 572
    goto :goto_0

    .line 573
    :cond_3
    const-string v1, "By clicking ok, you hereby agree to Weibo Online Service Agreement and Privacy Policy"

    .line 574
    const-string v0, "en_US"

    .line 575
    const-string v2, "Service Agreement"

    .line 576
    const-string v7, "Privacy Policy"

    .line 577
    const-string v3, "By clicking ok, you hereby agree to Weibo Online Service Agreement and Privacy Policy"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 578
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int v4, v5, v2

    .line 579
    const-string v2, "By clicking ok, you hereby agree to Weibo Online Service Agreement and Privacy Policy"

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 580
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    goto/16 :goto_0
.end method

.method private genSinaServiceTv()Landroid/widget/TextView;
    .locals 5

    .prologue
    const/16 v4, 0xc

    .line 520
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 521
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 522
    const/4 v2, -0x1

    const/4 v3, -0x2

    .line 521
    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 523
    invoke-static {p0, v4}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 524
    invoke-static {p0, v4}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 525
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 526
    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 527
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 528
    const v1, -0x7d7d7e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 529
    const-string v1, "Service By Sina WeiBo"

    const-string v2, "\u6b64\u670d\u52a1\u7531\u5fae\u535a\u63d0\u4f9b"

    .line 530
    const-string v3, "\u6b64\u670d\u52d9\u7531\u5fae\u535a\u63d0\u4f9b"

    .line 529
    invoke-static {p0, v1, v2, v3}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    return-object v0
.end method

.method private initLoadingDlg()V
    .locals 4

    .prologue
    .line 776
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mLoadingDlg:Landroid/app/ProgressDialog;

    .line 777
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mLoadingDlg:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 778
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mLoadingDlg:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 779
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mLoadingDlg:Landroid/app/ProgressDialog;

    const-string v1, "please wait .... "

    const-string v2, "\u6b63\u5728\u5904\u7406\u4e2d....."

    const-string v3, "\u6b63\u5728\u8655\u7406\u4e2d....."

    invoke-static {p0, v1, v2, v3}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 780
    return-void
.end method

.method private initView()V
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/16 v7, 0xf

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, -0x1

    .line 244
    new-instance v0, Lcom/sina/weibo/sdk/component/view/ResizeableLayout;

    invoke-direct {v0, p0}, Lcom/sina/weibo/sdk/component/view/ResizeableLayout;-><init>(Landroid/content/Context;)V

    .line 245
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 246
    invoke-direct {v1, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 245
    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/view/ResizeableLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    const v1, -0xd0d0e

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/view/ResizeableLayout;->setBackgroundColor(I)V

    .line 250
    new-instance v1, Lcom/sina/weibo/sdk/component/view/TitleBar;

    invoke-direct {v1, p0}, Lcom/sina/weibo/sdk/component/view/TitleBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->titleBar:Lcom/sina/weibo/sdk/component/view/TitleBar;

    .line 251
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->titleBar:Lcom/sina/weibo/sdk/component/view/TitleBar;

    invoke-virtual {v1, v5}, Lcom/sina/weibo/sdk/component/view/TitleBar;->setId(I)V

    .line 252
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->titleBar:Lcom/sina/weibo/sdk/component/view/TitleBar;

    const-string v2, "Cancel"

    const-string v3, "\u53d6\u6d88"

    .line 253
    const-string v4, "\u53d6\u6d88"

    .line 252
    invoke-static {p0, v2, v3, v4}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sina/weibo/sdk/component/view/TitleBar;->setLeftBtnText(Ljava/lang/String;)V

    .line 254
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->titleBar:Lcom/sina/weibo/sdk/component/view/TitleBar;

    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mSpecifyTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sina/weibo/sdk/component/view/TitleBar;->setTitleBarText(Ljava/lang/String;)V

    .line 255
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->titleBar:Lcom/sina/weibo/sdk/component/view/TitleBar;

    new-instance v2, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$2;

    invoke-direct {v2, p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$2;-><init>(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)V

    invoke-virtual {v1, v2}, Lcom/sina/weibo/sdk/component/view/TitleBar;->setTitleBarClickListener(Lcom/sina/weibo/sdk/component/view/TitleBar$ListenerOnTitleBtnClicked;)V

    .line 264
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->titleBar:Lcom/sina/weibo/sdk/component/view/TitleBar;

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/view/ResizeableLayout;->addView(Landroid/view/View;)V

    .line 267
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 268
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 269
    invoke-static {p0, v9}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v3

    .line 268
    invoke-direct {v2, v8, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 271
    const-string v3, "weibosdk_common_shadow_top.9.png"

    .line 270
    invoke-static {p0, v3}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getNinePatchDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 272
    const/4 v3, 0x3

    invoke-virtual {v2, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 273
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/view/ResizeableLayout;->addView(Landroid/view/View;)V

    .line 277
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mRegistScrollview:Landroid/widget/ScrollView;

    .line 278
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 280
    const/16 v2, 0x2f

    invoke-static {p0, v2}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 281
    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mRegistScrollview:Landroid/widget/ScrollView;

    const v3, -0xd0d0e

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 282
    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mRegistScrollview:Landroid/widget/ScrollView;

    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mRegiter_llt:Landroid/widget/LinearLayout;

    .line 285
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 286
    const/4 v2, -0x2

    .line 285
    invoke-direct {v1, v8, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 287
    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mRegiter_llt:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 288
    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mRegiter_llt:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mInfoText:Landroid/widget/TextView;

    .line 291
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mInfoText:Landroid/widget/TextView;

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {v1, v9, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 292
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mInfoText:Landroid/widget/TextView;

    const/16 v2, 0x2c

    invoke-static {p0, v2}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHeight(I)V

    .line 293
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mInfoText:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 294
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mInfoText:Landroid/widget/TextView;

    const v2, -0x7d7d7e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 295
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mInfoText:Landroid/widget/TextView;

    const-string v2, "Confirm your country/region and enter your mobile number"

    const-string v3, "\u8bf7\u786e\u8ba4\u56fd\u5bb6\u548c\u5730\u533a\u5e76\u586b\u5199\u624b\u673a\u53f7\u7801"

    const-string v4, "\u8acb\u78ba\u8a8d\u570b\u5bb6\u548c\u5730\u5340\u5e76\u586b\u5beb\u624b\u6a5f\u865f"

    invoke-static {p0, v2, v3, v4}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mInfoText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 297
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mInfoText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 299
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mRegiter_llt:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mInfoText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 302
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryLayout:Landroid/widget/RelativeLayout;

    .line 303
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 304
    const/16 v2, 0x30

    invoke-static {p0, v2}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v2

    .line 303
    invoke-direct {v1, v8, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 305
    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryLayout:Landroid/widget/RelativeLayout;

    .line 306
    const-string v3, "login_country_background.9.png"

    const-string v4, "login_country_background_highlighted.9.png"

    .line 305
    invoke-static {p0, v3, v4}, Lcom/sina/weibo/sdk/utils/ResourceManager;->createStateListDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 307
    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryCode:Landroid/widget/TextView;

    .line 311
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryCode:Landroid/widget/TextView;

    const/high16 v2, 0x41880000    # 17.0f

    invoke-virtual {v1, v9, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 312
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryCode:Landroid/widget/TextView;

    const-string v2, "0086"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryCode:Landroid/widget/TextView;

    const v2, -0xadadae

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 314
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryCode:Landroid/widget/TextView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 315
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryCode:Landroid/widget/TextView;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 317
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 318
    const/4 v2, -0x2

    const/16 v3, 0x30

    invoke-static {p0, v3}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v3

    .line 317
    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 319
    invoke-static {p0, v7}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 320
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 321
    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryCode:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 325
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setId(I)V

    .line 326
    const-string v2, "triangle.png"

    invoke-static {p0, v2}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 327
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 328
    const/16 v3, 0xd

    invoke-static {p0, v3}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v3

    const/16 v4, 0xd

    invoke-static {p0, v4}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v4

    .line 327
    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 329
    invoke-static {p0, v7}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 330
    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 331
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 332
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryName:Landroid/widget/TextView;

    .line 336
    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryName:Landroid/widget/TextView;

    const/high16 v3, 0x41880000    # 17.0f

    invoke-virtual {v2, v9, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 337
    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryName:Landroid/widget/TextView;

    const v3, -0xadadae

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 338
    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryNameStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryName:Landroid/widget/TextView;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 340
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 341
    const/4 v3, -0x2

    const/16 v4, 0x30

    invoke-static {p0, v4}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v4

    .line 340
    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 343
    const/16 v3, 0x76

    invoke-static {p0, v3}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 344
    invoke-virtual {v2, v10, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 345
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 346
    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryName:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryCode:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 349
    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryName:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 350
    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 352
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mRegiter_llt:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 355
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 356
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 357
    const/4 v3, -0x2

    .line 356
    invoke-direct {v2, v8, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 358
    const/16 v3, 0xa

    invoke-static {p0, v3}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 360
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 364
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 365
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 366
    const/16 v4, 0x32

    invoke-static {p0, v4}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v4

    .line 365
    invoke-direct {v3, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 367
    const/16 v4, 0x10

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 369
    const-string v4, "login_top_background.9.png"

    .line 368
    invoke-static {p0, v4}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getNinePatchDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 370
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNumClearBtn:Landroid/widget/ImageView;

    .line 374
    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNumClearBtn:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setId(I)V

    .line 375
    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNumClearBtn:Landroid/widget/ImageView;

    .line 376
    const-string v4, "search_clear_btn_normal.png"

    const-string v5, "search_clear_btn_down.png"

    .line 375
    invoke-static {p0, v4, v5}, Lcom/sina/weibo/sdk/utils/ResourceManager;->createStateListDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 377
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 378
    const/16 v4, 0x16

    invoke-static {p0, v4}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v4

    const/16 v5, 0x16

    invoke-static {p0, v5}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v5

    .line 377
    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 379
    invoke-static {p0, v7}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 380
    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 381
    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 382
    iget-object v4, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNumClearBtn:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 383
    iget-object v4, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNumClearBtn:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNumClearBtn:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 389
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNum:Landroid/widget/EditText;

    .line 390
    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNum:Landroid/widget/EditText;

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v3, v9, v4}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 391
    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNum:Landroid/widget/EditText;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 392
    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNum:Landroid/widget/EditText;

    const-string v4, "Your mobile number"

    const-string v5, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801"

    .line 393
    const-string v6, "\u8acb\u8f38\u5165\u624b\u6a5f\u865f"

    .line 392
    invoke-static {p0, v4, v5, v6}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 394
    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNum:Landroid/widget/EditText;

    const v4, -0x424243

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 395
    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNum:Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 396
    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNum:Landroid/widget/EditText;

    invoke-virtual {v3, v10}, Landroid/widget/EditText;->setSelected(Z)V

    .line 398
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 399
    const/16 v4, 0x32

    invoke-static {p0, v4}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v4

    .line 398
    invoke-direct {v3, v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 400
    invoke-static {p0, v10}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 401
    invoke-static {p0, v10}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 402
    invoke-static {p0, v10}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 403
    invoke-static {p0, v10}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 404
    const/4 v4, 0x4

    invoke-virtual {v3, v10, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 406
    iget-object v4, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNum:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNum:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 410
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 411
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 412
    const/16 v5, 0x32

    invoke-static {p0, v5}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v5

    .line 411
    invoke-direct {v4, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 414
    const-string v5, "login_bottom_background.9.png"

    .line 413
    invoke-static {p0, v5}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getNinePatchDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 415
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 418
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mGetCodeBtn:Landroid/widget/Button;

    .line 419
    iget-object v4, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mGetCodeBtn:Landroid/widget/Button;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setId(I)V

    .line 420
    iget-object v4, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mGetCodeBtn:Landroid/widget/Button;

    .line 421
    const-string v5, "get_code_button.9.png"

    const-string v6, "get_code_button_highlighted.9.png"

    .line 420
    invoke-static {p0, v5, v6}, Lcom/sina/weibo/sdk/utils/ResourceManager;->createStateListDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 423
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 424
    const/4 v5, -0x2

    const/16 v6, 0x1d

    invoke-static {p0, v6}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v6

    .line 423
    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 425
    const/16 v5, 0xc

    invoke-static {p0, v5}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 426
    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 427
    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 428
    iget-object v5, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mGetCodeBtn:Landroid/widget/Button;

    const/16 v6, 0x12

    const/16 v7, 0x12

    invoke-virtual {v5, v6, v10, v7, v10}, Landroid/widget/Button;->setPadding(IIII)V

    .line 429
    iget-object v5, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mGetCodeBtn:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 430
    iget-object v4, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mGetCodeBtn:Landroid/widget/Button;

    const-string v5, "Get code"

    const-string v6, "\u83b7\u53d6\u9a8c\u8bc1\u7801"

    const-string v7, "\u7372\u53d6\u9a57\u8b49\u78bc"

    invoke-static {p0, v5, v6, v7}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v4, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mGetCodeBtn:Landroid/widget/Button;

    const/high16 v5, 0x41700000    # 15.0f

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextSize(F)V

    .line 432
    invoke-direct {p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->enableGetCodeBtn()V

    .line 433
    iget-object v4, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mGetCodeBtn:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 436
    new-instance v4, Landroid/widget/EditText;

    invoke-direct {v4, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCheckCode:Landroid/widget/EditText;

    .line 437
    iget-object v4, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCheckCode:Landroid/widget/EditText;

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v4, v9, v5}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 438
    iget-object v4, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCheckCode:Landroid/widget/EditText;

    const/high16 v5, -0x1000000

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTextColor(I)V

    .line 439
    iget-object v4, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCheckCode:Landroid/widget/EditText;

    const v5, -0x424243

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 440
    iget-object v4, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCheckCode:Landroid/widget/EditText;

    const-string v5, "Verification code"

    const-string v6, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    .line 441
    const-string v7, "\u8acb\u8f38\u5165\u9a57\u8b49\u78bc"

    .line 440
    invoke-static {p0, v5, v6, v7}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 442
    iget-object v4, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCheckCode:Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 444
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 445
    const/16 v5, 0x30

    invoke-static {p0, v5}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v5

    .line 444
    invoke-direct {v4, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 446
    const/4 v5, 0x3

    invoke-virtual {v4, v10, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 447
    iget-object v5, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCheckCode:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 448
    iget-object v4, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCheckCode:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 450
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 451
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 452
    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mRegiter_llt:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 454
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mGetCodeBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mTips:Landroid/widget/TextView;

    .line 458
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mTips:Landroid/widget/TextView;

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {v1, v9, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 459
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mTips:Landroid/widget/TextView;

    const v2, -0x1ebedd

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 460
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mTips:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mTips:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 462
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 463
    const/16 v2, 0x24

    invoke-static {p0, v2}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v2

    .line 462
    invoke-direct {v1, v8, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 464
    const/16 v2, 0xc

    invoke-static {p0, v2}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 465
    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mTips:Landroid/widget/TextView;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 466
    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mTips:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mRegiter_llt:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mTips:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 470
    invoke-direct {p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->genOKBtn()Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mBtnRegist:Landroid/widget/Button;

    .line 471
    invoke-direct {p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->disableRegisterBtn()V

    .line 472
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mRegiter_llt:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mBtnRegist:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 475
    invoke-direct {p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->genSinaServiceTv()Landroid/widget/TextView;

    move-result-object v1

    .line 477
    invoke-direct {p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->genProtocalInfoTv()Landroid/widget/TextView;

    move-result-object v2

    .line 479
    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mRegiter_llt:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 480
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mRegiter_llt:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 482
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mRegistScrollview:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mRegiter_llt:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 483
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mRegistScrollview:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/view/ResizeableLayout;->addView(Landroid/view/View;)V

    .line 484
    invoke-direct {p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->initLoadingDlg()V

    .line 487
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNum:Landroid/widget/EditText;

    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setInputType(I)V

    .line 488
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNum:Landroid/widget/EditText;

    new-instance v2, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$PhoneNumTextWatcher;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$PhoneNumTextWatcher;-><init>(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$PhoneNumTextWatcher;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 491
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCheckCode:Landroid/widget/EditText;

    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setInputType(I)V

    .line 492
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCheckCode:Landroid/widget/EditText;

    new-instance v2, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$CodeTextWatcher;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$CodeTextWatcher;-><init>(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$CodeTextWatcher;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 494
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNumClearBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 496
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNum:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 497
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mBtnRegist:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 498
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 499
    invoke-virtual {v0, p0}, Lcom/sina/weibo/sdk/component/view/ResizeableLayout;->setSizeChangeListener(Lcom/sina/weibo/sdk/component/view/ResizeableLayout$SizeChangeListener;)V

    .line 501
    invoke-virtual {p0, v0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->setContentView(Landroid/view/View;)V

    .line 502
    return-void
.end method

.method private showNetFail()V
    .locals 5

    .prologue
    .line 746
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 747
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "your network is  disabled  try again later"

    const-string v3, "\u60a8\u7684\u7f51\u7edc\u4e0d\u53ef\u7528\uff0c\u8bf7\u7a0d\u540e"

    const-string v4, "\u60a8\u7684\u7db2\u7d61\u4e0d\u53ef\u7528\uff0c\u8acb\u7a0d\u5f8c"

    .line 746
    invoke-static {v1, v2, v3, v4}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 748
    const/4 v2, 0x0

    .line 746
    invoke-static {v0, v1, v2}, Lcom/sina/weibo/sdk/utils/UIUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 749
    return-void
.end method

.method private verifyCheckCode(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 704
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 705
    const/4 v0, 0x1

    .line 707
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private verifyPhoneNum(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 661
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 671
    :cond_0
    :goto_0
    return v0

    .line 664
    :cond_1
    const-string v2, "0086"

    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryCodeStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 665
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 666
    goto :goto_0

    :cond_2
    move v0, v1

    .line 671
    goto :goto_0
.end method


.method public dismiss()V
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mLoadingDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mLoadingDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mLoadingDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 769
    :cond_0
    return-void
.end method

.method public getMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 871
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mAppkey:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>(Ljava/lang/String;)V

    .line 872
    const-string v1, "appkey"

    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mAppkey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    const-string v1, "packagename"

    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    const-string v1, "key_hash"

    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mKeyHash:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    const-string v1, "phone"

    const-string v2, "0086"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {v0, v1, p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    const-string v1, "version"

    const-string v2, "0031405000"

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    const-string v1, "http://api.weibo.com/oauth2/sms_authorize/send"

    const-string v2, "GET"

    .line 880
    new-instance v3, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$3;

    invoke-direct {v3, p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$3;-><init>(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)V

    .line 879
    invoke-static {p0, v1, v0, v2, v3}, Lcom/sina/weibo/sdk/net/NetUtils;->internalHttpRequest(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 912
    return-void

    .line 875
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 876
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 600
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 601
    packed-switch p1, :pswitch_data_0

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 603
    :pswitch_0
    if-eqz p3, :cond_0

    .line 604
    const-string v0, "code"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryCodeStr:Ljava/lang/String;

    .line 605
    const-string v0, "name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryNameStr:Ljava/lang/String;

    .line 606
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryCode:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryCodeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryNameStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 601
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 991
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mGetCodeBtn:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 992
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNum:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 993
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryCode:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 994
    invoke-direct {p0, v0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->doCheckOnGetMsg(Ljava/lang/String;)Z

    move-result v2

    .line 995
    if-eqz v2, :cond_0

    .line 996
    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 997
    invoke-direct {p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->disableGetCodeBtn()V

    .line 998
    invoke-virtual {p0, v0, v1}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->getMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    :cond_0
    :goto_0
    return-void

    .line 1000
    :cond_1
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNumClearBtn:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 1002
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNum:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1003
    :cond_2
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mBtnRegist:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 1004
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNum:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1005
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCheckCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1006
    invoke-direct {p0, v1}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->doCheckOnSubmit(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1007
    invoke-virtual {p0, v0, v1}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->submit(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1009
    :cond_3
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryLayout:Landroid/widget/RelativeLayout;

    if-ne p1, v0, :cond_0

    .line 1010
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mTips:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1011
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1012
    const-class v1, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1013
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 201
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 202
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 203
    if-nez v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Pass wrong params!!"

    invoke-static {v1, v2, v5}, Lcom/sina/weibo/sdk/utils/UIUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 205
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->finish()V

    .line 208
    :cond_0
    const-string v1, "appKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mAppkey:Ljava/lang/String;

    .line 209
    const-string v1, "packagename"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPackageName:Ljava/lang/String;

    .line 210
    const-string v1, "key_hash"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mKeyHash:Ljava/lang/String;

    .line 211
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mAppkey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 213
    const-string v2, "your appkey not set"

    const-string v3, "\u60a8\u7684app_key\u6ca1\u6709\u8bbe\u7f6e"

    const-string v4, "\u60a8\u7684app_key\u6c92\u6709\u8a2d\u7f6e"

    .line 212
    invoke-static {p0, v2, v3, v4}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Lcom/sina/weibo/sdk/utils/UIUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 214
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->finish()V

    .line 217
    :cond_1
    const-string v1, "register_title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "Login"

    .line 219
    const-string v1, "\u9a8c\u8bc1\u7801\u767b\u5f55"

    const-string v2, "\u9a57\u8b49\u78bc\u767b\u9304"

    .line 218
    invoke-static {p0, v0, v1, v2}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iput-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mSpecifyTitle:Ljava/lang/String;

    .line 221
    const-string v0, "0086"

    iput-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryCodeStr:Ljava/lang/String;

    .line 222
    const-string v0, "China"

    const-string v1, "\u4e2d\u56fd"

    const-string v2, "\u4e2d\u570b"

    invoke-static {p0, v0, v1, v2}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountryNameStr:Ljava/lang/String;

    .line 223
    invoke-direct {p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->initView()V

    .line 225
    new-instance v0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$1;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$1;-><init>(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;JJ)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mCountDownTimer:Landroid/os/CountDownTimer;

    .line 240
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    .prologue
    .line 615
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNum:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    .line 616
    if-nez p2, :cond_0

    .line 617
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPhoneNum:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 619
    invoke-direct {p0, v0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->verifyPhoneNum(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 620
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mTips:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 628
    :cond_0
    :goto_0
    return-void

    .line 622
    :cond_1
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mTips:Landroid/widget/TextView;

    const-string v1, "Your phone number isn\u2019t 11-digit long"

    const-string v2, "\u60a8\u7684\u624b\u673a\u53f7\u4e0d\u662f11\u4f4d\u6570"

    .line 623
    const-string v3, "\u60a8\u7684\u624b\u6a5f\u865f\u4e0d\u662f11\u4f4d\u6578"

    .line 622
    invoke-static {p0, v1, v2, v3}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mTips:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 754
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 755
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->setResult(I)V

    .line 756
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->finish()V

    .line 757
    const/4 v0, 0x1

    .line 759
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onSizeChanged(IIII)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1019
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1020
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1021
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v2, v0, :cond_1

    .line 1023
    iget v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mMaxHeight:I

    if-ge v0, p2, :cond_2

    move v0, p2

    :goto_0
    iput v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mMaxHeight:I

    .line 1025
    const/4 v0, 0x0

    .line 1026
    if-ge p2, p4, :cond_3

    move v0, v1

    .line 1036
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mInputHandler:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$InputHandler;

    invoke-virtual {v1, v0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$InputHandler;->sendEmptyMessage(I)Z

    .line 1038
    :cond_1
    return-void

    .line 1023
    :cond_2
    iget v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mMaxHeight:I

    goto :goto_0

    .line 1028
    :cond_3
    if-le p2, p4, :cond_4

    iget v2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mMaxHeight:I

    if-ge p2, v2, :cond_4

    move v0, v1

    .line 1031
    goto :goto_1

    :cond_4
    if-ne p2, p4, :cond_0

    iget v2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mMaxHeight:I

    if-eq p2, v2, :cond_0

    move v0, v1

    .line 1032
    goto :goto_1
.end method

.method public submit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 916
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mAppkey:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>(Ljava/lang/String;)V

    .line 917
    const-string v1, "appkey"

    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mAppkey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    const-string v1, "packagename"

    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    const-string v1, "key_hash"

    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mKeyHash:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    const-string v1, "phone"

    invoke-virtual {v0, v1, p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    const-string v1, "version"

    const-string v2, "0031405000"

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    const-string v1, "code"

    invoke-virtual {v0, v1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    const-string v1, "cfrom"

    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->cfrom:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->mLoadingDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 925
    const-string v1, "http://api.weibo.com/oauth2/sms_authorize/submit"

    const-string v2, "GET"

    .line 926
    new-instance v3, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$4;

    invoke-direct {v3, p0, p1}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$4;-><init>(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;Ljava/lang/String;)V

    .line 925
    invoke-static {p0, v1, v0, v2, v3}, Lcom/sina/weibo/sdk/net/NetUtils;->internalHttpRequest(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 969
    return-void
.end method
