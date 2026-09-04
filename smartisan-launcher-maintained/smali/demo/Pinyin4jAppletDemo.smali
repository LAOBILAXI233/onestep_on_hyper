.class public Ldemo/Pinyin4jAppletDemo;
.super Ljavax/swing/JApplet;


.field private static final APP_SIZE:Ljava/awt/Dimension;

.field private static appName:Ljava/lang/String; = null

.field private static final serialVersionUID:J = -0x1ada5e09aef493d2L


.field private buttonPanel:Ljavax/swing/JPanel;

.field caseTypes:[Ljava/lang/String;

.field private caseTypesComboBox:Ljavax/swing/JComboBox;

.field private charLabel:Ljavax/swing/JLabel;

.field private charTextField:Ljavax/swing/JTextField;

.field private convertButton:Ljavax/swing/JButton;

.field private formattedCharPanel:Ljavax/swing/JPanel;

.field private formattedOutputField:Ljavax/swing/JTextArea;

.field private jContentPane:Ljavax/swing/JPanel;

.field private jTabbedPane:Ljavax/swing/JTabbedPane;

.field private optionPanel:Ljavax/swing/JPanel;

.field private toneLabel:Ljavax/swing/JLabel;

.field toneTypes:[Ljava/lang/String;

.field private toneTypesComboBox:Ljavax/swing/JComboBox;

.field private unformattedCharPanel:Ljavax/swing/JPanel;

.field private unformattedGwoyeuRomatzyhLabel:Ljavax/swing/JLabel;

.field private unformattedGwoyeuRomatzyhPanel:Ljavax/swing/JPanel;

.field private unformattedGwoyeuRomatzyhScrollPane:Ljavax/swing/JScrollPane;

.field private unformattedGwoyeuRomatzyhTextArea:Ljavax/swing/JTextArea;

.field private unformattedHanyuPinyinLabel:Ljavax/swing/JLabel;

.field private unformattedHanyuPinyinPanel:Ljavax/swing/JPanel;

.field private unformattedHanyuPinyinScrollPane:Ljavax/swing/JScrollPane;

.field private unformattedHanyuPinyinTextArea:Ljavax/swing/JTextArea;

.field private unformattedMPS2PinyinLabel:Ljavax/swing/JLabel;

.field private unformattedMPS2PinyinPanel:Ljavax/swing/JPanel;

.field private unformattedMPS2PinyinScrollPane:Ljavax/swing/JScrollPane;

.field private unformattedMPS2PinyinTextArea:Ljavax/swing/JTextArea;

.field private unformattedTongyongPinyinLabel:Ljavax/swing/JLabel;

.field private unformattedTongyongPinyinPanel:Ljavax/swing/JPanel;

.field private unformattedTongyongPinyinScrollPane:Ljavax/swing/JScrollPane;

.field private unformattedTongyongPinyinTextArea:Ljavax/swing/JTextArea;

.field private unformattedWadePinyinLabel:Ljavax/swing/JLabel;

.field private unformattedWadePinyinPanel:Ljavax/swing/JPanel;

.field private unformattedWadePinyinScrollPane:Ljavax/swing/JScrollPane;

.field private unformattedWadePinyinTextArea:Ljavax/swing/JTextArea;

.field private unformattedYalePinyinLabel:Ljavax/swing/JLabel;

.field private unformattedYalePinyinPanel:Ljavax/swing/JPanel;

.field private unformattedYalePinyinScrollPane:Ljavax/swing/JScrollPane;

.field private unformattedYalePinyinTextArea:Ljavax/swing/JTextArea;

.field vCharTypes:[Ljava/lang/String;

.field private vCharTypesComboBox:Ljavax/swing/JComboBox;


.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/awt/Dimension;

    const/16 v1, 0x258

    const/16 v2, 0x190

    invoke-direct {v0, v1, v2}, Ljava/awt/Dimension;-><init>(II)V

    sput-object v0, Ldemo/Pinyin4jAppletDemo;->APP_SIZE:Ljava/awt/Dimension;

    const-string v0, "pinyin4j-2.0.0 applet demo"

    sput-object v0, Ldemo/Pinyin4jAppletDemo;->appName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljavax/swing/JApplet;-><init>()V

    iput-object v2, p0, Ldemo/Pinyin4jAppletDemo;->jContentPane:Ljavax/swing/JPanel;

    iput-object v2, p0, Ldemo/Pinyin4jAppletDemo;->jTabbedPane:Ljavax/swing/JTabbedPane;

    iput-object v2, p0, Ldemo/Pinyin4jAppletDemo;->formattedCharPanel:Ljavax/swing/JPanel;

    iput-object v2, p0, Ldemo/Pinyin4jAppletDemo;->optionPanel:Ljavax/swing/JPanel;

    iput-object v2, p0, Ldemo/Pinyin4jAppletDemo;->convertButton:Ljavax/swing/JButton;

    iput-object v2, p0, Ldemo/Pinyin4jAppletDemo;->buttonPanel:Ljavax/swing/JPanel;

    iput-object v2, p0, Ldemo/Pinyin4jAppletDemo;->formattedOutputField:Ljavax/swing/JTextArea;

    iput-object v2, p0, Ldemo/Pinyin4jAppletDemo;->toneTypesComboBox:Ljavax/swing/JComboBox;

    iput-object v2, p0, Ldemo/Pinyin4jAppletDemo;->vCharTypesComboBox:Ljavax/swing/JComboBox;

    iput-object v2, p0, Ldemo/Pinyin4jAppletDemo;->caseTypesComboBox:Ljavax/swing/JComboBox;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "LOWERCASE"

    aput-object v1, v0, v3

    const-string v1, "UPPERCASE"

    aput-object v1, v0, v4

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->caseTypes:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "WITH_U_AND_COLON"

    aput-object v1, v0, v3

    const-string v1, "WITH_V"

    aput-object v1, v0, v4

    const-string v1, "WITH_U_UNICODE"

    aput-object v1, v0, v5

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->vCharTypes:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "WITH_TONE_NUMBER"

    aput-object v1, v0, v3

    const-string v1, "WITHOUT_TONE"

    aput-object v1, v0, v4

    const-string v1, "WITH_TONE_MARK"

    aput-object v1, v0, v5

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->toneTypes:[Ljava/lang/String;

    iput-object v2, p0, Ldemo/Pinyin4jAppletDemo;->toneLabel:Ljavax/swing/JLabel;

    iput-object v2, p0, Ldemo/Pinyin4jAppletDemo;->charLabel:Ljavax/swing/JLabel;

    iput-object v2, p0, Ldemo/Pinyin4jAppletDemo;->charTextField:Ljavax/swing/JTextField;

    iput-object v2, p0, Ldemo/Pinyin4jAppletDemo;->unformattedCharPanel:Ljavax/swing/JPanel;

    iput-object v2, p0, Ldemo/Pinyin4jAppletDemo;->unformattedHanyuPinyinLabel:Ljavax/swing/JLabel;

    iput-object v2, p0, Ldemo/Pinyin4jAppletDemo;->unformattedHanyuPinyinTextArea:Ljavax/swing/JTextArea;

    iput-object v2, p0, Ldemo/Pinyin4jAppletDemo;->unformattedHanyuPinyinPanel:Ljavax/swing/JPanel;

    iput-object v2, p0, Ldemo/Pinyin4jAppletDemo;->unformattedTongyongPinyinPanel:Ljavax/swing/JPanel;

    iput-object v2, p0, Ldemo/Pinyin4jAppletDemo;->unformattedTongyongPinyinLabel:Ljavax/swing/JLabel;

    iput-object v2, p0, Ldemo/Pinyin4jAppletDemo;->unformattedTongyongPinyinTextArea:Ljavax/swing/JTextArea;

    iput-object v2, p0, Ldemo/Pinyin4jAppletDemo;->unformattedWadePinyinPanel:Ljavax/swing/JPanel;

    iput-object v2, p0, Ldemo/Pinyin4jAppletDemo;->unformattedWadePinyinLabel:Ljavax/swing/JLabel;

    iput-object v2, p0, Ldemo/Pinyin4jAppletDemo;->unformattedWadePinyinTextArea:Ljavax/swing/JTextArea;

    iput-object v2, p0, Ldemo/Pinyin4jAppletDemo;->unformattedMPS2PinyinPanel:Ljavax/swing/JPanel;

    iput-object v2, p0, Ldemo/Pinyin4jAppletDemo;->unformattedMPS2PinyinLabel:Ljavax/swing/JLabel;

    iput-object v2, p0, Ldemo/Pinyin4jAppletDemo;->unformattedMPS2PinyinTextArea:Ljavax/swing/JTextArea;

    iput-object v2, p0, Ldemo/Pinyin4jAppletDemo;->unformattedYalePinyinPanel:Ljavax/swing/JPanel;

    iput-object v2, p0, Ldemo/Pinyin4jAppletDemo;->unformattedYalePinyinLabel:Ljavax/swing/JLabel;

    iput-object v2, p0, Ldemo/Pinyin4jAppletDemo;->unformattedYalePinyinTextArea:Ljavax/swing/JTextArea;

    iput-object v2, p0, Ldemo/Pinyin4jAppletDemo;->unformattedGwoyeuRomatzyhPanel:Ljavax/swing/JPanel;

    iput-object v2, p0, Ldemo/Pinyin4jAppletDemo;->unformattedGwoyeuRomatzyhLabel:Ljavax/swing/JLabel;

    iput-object v2, p0, Ldemo/Pinyin4jAppletDemo;->unformattedGwoyeuRomatzyhTextArea:Ljavax/swing/JTextArea;

    iput-object v2, p0, Ldemo/Pinyin4jAppletDemo;->unformattedMPS2PinyinScrollPane:Ljavax/swing/JScrollPane;

    iput-object v2, p0, Ldemo/Pinyin4jAppletDemo;->unformattedHanyuPinyinScrollPane:Ljavax/swing/JScrollPane;

    iput-object v2, p0, Ldemo/Pinyin4jAppletDemo;->unformattedTongyongPinyinScrollPane:Ljavax/swing/JScrollPane;

    iput-object v2, p0, Ldemo/Pinyin4jAppletDemo;->unformattedWadePinyinScrollPane:Ljavax/swing/JScrollPane;

    iput-object v2, p0, Ldemo/Pinyin4jAppletDemo;->unformattedYalePinyinScrollPane:Ljavax/swing/JScrollPane;

    iput-object v2, p0, Ldemo/Pinyin4jAppletDemo;->unformattedGwoyeuRomatzyhScrollPane:Ljavax/swing/JScrollPane;

    invoke-virtual {p0}, Ldemo/Pinyin4jAppletDemo;->init()V

    return-void
.end method

.method static access$000(Ldemo/Pinyin4jAppletDemo;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->getChineseCharText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static access$100(Ldemo/Pinyin4jAppletDemo;)Ljavax/swing/JComboBox;
    .locals 1

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->toneTypesComboBox:Ljavax/swing/JComboBox;

    return-object v0
.end method

.method static access$1000(Ldemo/Pinyin4jAppletDemo;)Ljavax/swing/JTextArea;
    .locals 1

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->formattedOutputField:Ljavax/swing/JTextArea;

    return-object v0
.end method

.method static access$200(Ldemo/Pinyin4jAppletDemo;)Ljavax/swing/JComboBox;
    .locals 1

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->vCharTypesComboBox:Ljavax/swing/JComboBox;

    return-object v0
.end method

.method static access$300(Ldemo/Pinyin4jAppletDemo;)Ljavax/swing/JComboBox;
    .locals 1

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->caseTypesComboBox:Ljavax/swing/JComboBox;

    return-object v0
.end method

.method static access$400(Ldemo/Pinyin4jAppletDemo;)Ljavax/swing/JTextArea;
    .locals 1

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedHanyuPinyinTextArea:Ljavax/swing/JTextArea;

    return-object v0
.end method

.method static access$500(Ldemo/Pinyin4jAppletDemo;)Ljavax/swing/JTextArea;
    .locals 1

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedTongyongPinyinTextArea:Ljavax/swing/JTextArea;

    return-object v0
.end method

.method static access$600(Ldemo/Pinyin4jAppletDemo;)Ljavax/swing/JTextArea;
    .locals 1

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedWadePinyinTextArea:Ljavax/swing/JTextArea;

    return-object v0
.end method

.method static access$700(Ldemo/Pinyin4jAppletDemo;)Ljavax/swing/JTextArea;
    .locals 1

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedMPS2PinyinTextArea:Ljavax/swing/JTextArea;

    return-object v0
.end method

.method static access$800(Ldemo/Pinyin4jAppletDemo;)Ljavax/swing/JTextArea;
    .locals 1

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedYalePinyinTextArea:Ljavax/swing/JTextArea;

    return-object v0
.end method

.method static access$900(Ldemo/Pinyin4jAppletDemo;)Ljavax/swing/JTextArea;
    .locals 1

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedGwoyeuRomatzyhTextArea:Ljavax/swing/JTextArea;

    return-object v0
.end method

.method private getButtonPanel()Ljavax/swing/JPanel;
    .locals 3

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->buttonPanel:Ljavax/swing/JPanel;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->buttonPanel:Ljavax/swing/JPanel;

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->buttonPanel:Ljavax/swing/JPanel;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->getConvertButton()Ljavax/swing/JButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->buttonPanel:Ljavax/swing/JPanel;

    return-object v0
.end method

.method private getCaseTypesComboBox()Ljavax/swing/JComboBox;
    .locals 2

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->caseTypesComboBox:Ljavax/swing/JComboBox;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JComboBox;

    iget-object v1, p0, Ldemo/Pinyin4jAppletDemo;->caseTypes:[Ljava/lang/String;

    invoke-direct {v0, v1}, Ljavax/swing/JComboBox;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->caseTypesComboBox:Ljavax/swing/JComboBox;

    :cond_0
    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->caseTypesComboBox:Ljavax/swing/JComboBox;

    return-object v0
.end method

.method private getCharTextField()Ljavax/swing/JTextField;
    .locals 5

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->charTextField:Ljavax/swing/JTextField;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JTextField;

    invoke-direct {v0}, Ljavax/swing/JTextField;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->charTextField:Ljavax/swing/JTextField;

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->charTextField:Ljavax/swing/JTextField;

    new-instance v1, Ljava/awt/Font;

    const-string v2, "Dialog"

    const/4 v3, 0x0

    const/16 v4, 0xc

    invoke-direct {v1, v2, v3, v4}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljavax/swing/JTextField;->setFont(Ljava/awt/Font;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->charTextField:Ljavax/swing/JTextField;

    const-string v1, "\u548c"

    invoke-virtual {v0, v1}, Ljavax/swing/JTextField;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->charTextField:Ljavax/swing/JTextField;

    new-instance v1, Ljava/awt/Dimension;

    const/16 v2, 0x1a

    const/16 v3, 0x14

    invoke-direct {v1, v2, v3}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v0, v1}, Ljavax/swing/JTextField;->setPreferredSize(Ljava/awt/Dimension;)V

    :cond_0
    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->charTextField:Ljavax/swing/JTextField;

    return-object v0
.end method

.method private getChineseCharText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->charTextField:Ljavax/swing/JTextField;

    invoke-virtual {v0}, Ljavax/swing/JTextField;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getConvertButton()Ljavax/swing/JButton;
    .locals 2

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->convertButton:Ljavax/swing/JButton;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JButton;

    invoke-direct {v0}, Ljavax/swing/JButton;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->convertButton:Ljavax/swing/JButton;

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->convertButton:Ljavax/swing/JButton;

    const-string v1, "Convert to Pinyin"

    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->convertButton:Ljavax/swing/JButton;

    new-instance v1, Ldemo/Pinyin4jAppletDemo$2;

    invoke-direct {v1, p0}, Ldemo/Pinyin4jAppletDemo$2;-><init>(Ldemo/Pinyin4jAppletDemo;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    :cond_0
    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->convertButton:Ljavax/swing/JButton;

    return-object v0
.end method

.method private getFormattedCharPanel()Ljavax/swing/JPanel;
    .locals 3

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->formattedCharPanel:Ljavax/swing/JPanel;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->formattedCharPanel:Ljavax/swing/JPanel;

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->formattedCharPanel:Ljavax/swing/JPanel;

    new-instance v1, Ljava/awt/BorderLayout;

    invoke-direct {v1}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->formattedCharPanel:Ljavax/swing/JPanel;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->getFormattedOutputField()Ljavax/swing/JTextArea;

    move-result-object v1

    const-string v2, "Center"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->formattedCharPanel:Ljavax/swing/JPanel;

    return-object v0
.end method

.method private getFormattedOutputField()Ljavax/swing/JTextArea;
    .locals 2

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->formattedOutputField:Ljavax/swing/JTextArea;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JTextArea;

    invoke-direct {v0}, Ljavax/swing/JTextArea;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->formattedOutputField:Ljavax/swing/JTextArea;

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->formattedOutputField:Ljavax/swing/JTextArea;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setEditable(Z)V

    :cond_0
    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->formattedOutputField:Ljavax/swing/JTextArea;

    return-object v0
.end method

.method private getJContentPane()Ljavax/swing/JPanel;
    .locals 3

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->jContentPane:Ljavax/swing/JPanel;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->jContentPane:Ljavax/swing/JPanel;

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->jContentPane:Ljavax/swing/JPanel;

    new-instance v1, Ljava/awt/BorderLayout;

    invoke-direct {v1}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->jContentPane:Ljavax/swing/JPanel;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->getJTabbedPane()Ljavax/swing/JTabbedPane;

    move-result-object v1

    const-string v2, "Center"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->jContentPane:Ljavax/swing/JPanel;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->getOptionPanel()Ljavax/swing/JPanel;

    move-result-object v1

    const-string v2, "North"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->jContentPane:Ljavax/swing/JPanel;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->getButtonPanel()Ljavax/swing/JPanel;

    move-result-object v1

    const-string v2, "South"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->jContentPane:Ljavax/swing/JPanel;

    return-object v0
.end method

.method private getJTabbedPane()Ljavax/swing/JTabbedPane;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->jTabbedPane:Ljavax/swing/JTabbedPane;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JTabbedPane;

    invoke-direct {v0}, Ljavax/swing/JTabbedPane;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->jTabbedPane:Ljavax/swing/JTabbedPane;

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->jTabbedPane:Ljavax/swing/JTabbedPane;

    const-string v1, "Unformatted Chinese Romanization Systems"

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->getUnformattedCharPanel()Ljavax/swing/JPanel;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2, v3}, Ljavax/swing/JTabbedPane;->addTab(Ljava/lang/String;Ljavax/swing/Icon;Ljava/awt/Component;Ljava/lang/String;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->jTabbedPane:Ljavax/swing/JTabbedPane;

    const-string v1, "Formatted Hanyu Pinyin"

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->getFormattedCharPanel()Ljavax/swing/JPanel;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2, v3}, Ljavax/swing/JTabbedPane;->addTab(Ljava/lang/String;Ljavax/swing/Icon;Ljava/awt/Component;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->jTabbedPane:Ljavax/swing/JTabbedPane;

    return-object v0
.end method

.method private getOptionPanel()Ljavax/swing/JPanel;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->optionPanel:Ljavax/swing/JPanel;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JLabel;

    invoke-direct {v0}, Ljavax/swing/JLabel;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->charLabel:Ljavax/swing/JLabel;

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->charLabel:Ljavax/swing/JLabel;

    const-string v1, "Input Chinese:"

    invoke-virtual {v0, v1}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    new-instance v0, Ljavax/swing/JLabel;

    invoke-direct {v0}, Ljavax/swing/JLabel;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->toneLabel:Ljavax/swing/JLabel;

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->toneLabel:Ljavax/swing/JLabel;

    const-string v1, " Format:"

    invoke-virtual {v0, v1}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->optionPanel:Ljavax/swing/JPanel;

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->optionPanel:Ljavax/swing/JPanel;

    new-instance v1, Ljava/awt/Dimension;

    const/16 v2, 0x280

    const/16 v3, 0x22

    invoke-direct {v1, v2, v3}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setPreferredSize(Ljava/awt/Dimension;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->optionPanel:Ljavax/swing/JPanel;

    iget-object v1, p0, Ldemo/Pinyin4jAppletDemo;->charLabel:Ljavax/swing/JLabel;

    invoke-virtual {v0, v1, v4}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->optionPanel:Ljavax/swing/JPanel;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->getCharTextField()Ljavax/swing/JTextField;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->optionPanel:Ljavax/swing/JPanel;

    iget-object v1, p0, Ldemo/Pinyin4jAppletDemo;->toneLabel:Ljavax/swing/JLabel;

    invoke-virtual {v0, v1, v4}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->optionPanel:Ljavax/swing/JPanel;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->getToneTypesComboBox()Ljavax/swing/JComboBox;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->optionPanel:Ljavax/swing/JPanel;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->getVCharTypesComboBox()Ljavax/swing/JComboBox;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->optionPanel:Ljavax/swing/JPanel;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->getCaseTypesComboBox()Ljavax/swing/JComboBox;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->optionPanel:Ljavax/swing/JPanel;

    return-object v0
.end method

.method private getToneTypesComboBox()Ljavax/swing/JComboBox;
    .locals 2

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->toneTypesComboBox:Ljavax/swing/JComboBox;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JComboBox;

    iget-object v1, p0, Ldemo/Pinyin4jAppletDemo;->toneTypes:[Ljava/lang/String;

    invoke-direct {v0, v1}, Ljavax/swing/JComboBox;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->toneTypesComboBox:Ljavax/swing/JComboBox;

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->toneTypesComboBox:Ljavax/swing/JComboBox;

    new-instance v1, Ldemo/Pinyin4jAppletDemo$3;

    invoke-direct {v1, p0}, Ldemo/Pinyin4jAppletDemo$3;-><init>(Ldemo/Pinyin4jAppletDemo;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JComboBox;->addActionListener(Ljava/awt/event/ActionListener;)V

    :cond_0
    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->toneTypesComboBox:Ljavax/swing/JComboBox;

    return-object v0
.end method

.method private getUnformattedCharPanel()Ljavax/swing/JPanel;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedCharPanel:Ljavax/swing/JPanel;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JLabel;

    invoke-direct {v0}, Ljavax/swing/JLabel;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedHanyuPinyinLabel:Ljavax/swing/JLabel;

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedHanyuPinyinLabel:Ljavax/swing/JLabel;

    const-string v1, "Hanyu Pinyin"

    invoke-virtual {v0, v1}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    new-instance v0, Ljava/awt/GridLayout;

    invoke-direct {v0}, Ljava/awt/GridLayout;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/awt/GridLayout;->setRows(I)V

    invoke-virtual {v0, v3}, Ljava/awt/GridLayout;->setHgap(I)V

    invoke-virtual {v0, v3}, Ljava/awt/GridLayout;->setVgap(I)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/awt/GridLayout;->setColumns(I)V

    new-instance v1, Ljavax/swing/JPanel;

    invoke-direct {v1}, Ljavax/swing/JPanel;-><init>()V

    iput-object v1, p0, Ldemo/Pinyin4jAppletDemo;->unformattedCharPanel:Ljavax/swing/JPanel;

    iget-object v1, p0, Ldemo/Pinyin4jAppletDemo;->unformattedCharPanel:Ljavax/swing/JPanel;

    invoke-virtual {v1, v0}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedCharPanel:Ljavax/swing/JPanel;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->getUnformattedHanyuPinyinPanel()Ljavax/swing/JPanel;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedCharPanel:Ljavax/swing/JPanel;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->getUnformattedTongyongPinyinPanel()Ljavax/swing/JPanel;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedCharPanel:Ljavax/swing/JPanel;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->getUnformattedWadePinyinPanel()Ljavax/swing/JPanel;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedCharPanel:Ljavax/swing/JPanel;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->getUnformattedMPS2PinyinPanel()Ljavax/swing/JPanel;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedCharPanel:Ljavax/swing/JPanel;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->getUnformattedYalePinyinPanel()Ljavax/swing/JPanel;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedCharPanel:Ljavax/swing/JPanel;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->getUnformattedGwoyeuRomatzyhPanel()Ljavax/swing/JPanel;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedCharPanel:Ljavax/swing/JPanel;

    return-object v0
.end method

.method private getUnformattedGwoyeuRomatzyhPanel()Ljavax/swing/JPanel;
    .locals 3

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedGwoyeuRomatzyhPanel:Ljavax/swing/JPanel;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JLabel;

    invoke-direct {v0}, Ljavax/swing/JLabel;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedGwoyeuRomatzyhLabel:Ljavax/swing/JLabel;

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedGwoyeuRomatzyhLabel:Ljavax/swing/JLabel;

    const-string v1, "Gwoyeu Romatzyh"

    invoke-virtual {v0, v1}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedGwoyeuRomatzyhPanel:Ljavax/swing/JPanel;

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedGwoyeuRomatzyhPanel:Ljavax/swing/JPanel;

    new-instance v1, Ljava/awt/BorderLayout;

    invoke-direct {v1}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedGwoyeuRomatzyhPanel:Ljavax/swing/JPanel;

    iget-object v1, p0, Ldemo/Pinyin4jAppletDemo;->unformattedGwoyeuRomatzyhLabel:Ljavax/swing/JLabel;

    const-string v2, "North"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedGwoyeuRomatzyhPanel:Ljavax/swing/JPanel;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->getUnformattedGwoyeuRomatzyhScrollPane()Ljavax/swing/JScrollPane;

    move-result-object v1

    const-string v2, "Center"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedGwoyeuRomatzyhPanel:Ljavax/swing/JPanel;

    return-object v0
.end method

.method private getUnformattedGwoyeuRomatzyhScrollPane()Ljavax/swing/JScrollPane;
    .locals 2

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedGwoyeuRomatzyhScrollPane:Ljavax/swing/JScrollPane;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JScrollPane;

    invoke-direct {v0}, Ljavax/swing/JScrollPane;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedGwoyeuRomatzyhScrollPane:Ljavax/swing/JScrollPane;

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedGwoyeuRomatzyhScrollPane:Ljavax/swing/JScrollPane;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->getUnformattedGwoyeuRomatzyhTextArea()Ljavax/swing/JTextArea;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JScrollPane;->setViewportView(Ljava/awt/Component;)V

    :cond_0
    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedGwoyeuRomatzyhScrollPane:Ljavax/swing/JScrollPane;

    return-object v0
.end method

.method private getUnformattedGwoyeuRomatzyhTextArea()Ljavax/swing/JTextArea;
    .locals 2

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedGwoyeuRomatzyhTextArea:Ljavax/swing/JTextArea;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JTextArea;

    invoke-direct {v0}, Ljavax/swing/JTextArea;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedGwoyeuRomatzyhTextArea:Ljavax/swing/JTextArea;

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedGwoyeuRomatzyhTextArea:Ljavax/swing/JTextArea;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setEditable(Z)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedGwoyeuRomatzyhTextArea:Ljavax/swing/JTextArea;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setLineWrap(Z)V

    :cond_0
    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedGwoyeuRomatzyhTextArea:Ljavax/swing/JTextArea;

    return-object v0
.end method

.method private getUnformattedHanyuPinyinPanel()Ljavax/swing/JPanel;
    .locals 3

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedHanyuPinyinPanel:Ljavax/swing/JPanel;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedHanyuPinyinPanel:Ljavax/swing/JPanel;

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedHanyuPinyinPanel:Ljavax/swing/JPanel;

    new-instance v1, Ljava/awt/BorderLayout;

    invoke-direct {v1}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedHanyuPinyinPanel:Ljavax/swing/JPanel;

    iget-object v1, p0, Ldemo/Pinyin4jAppletDemo;->unformattedHanyuPinyinLabel:Ljavax/swing/JLabel;

    const-string v2, "North"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedHanyuPinyinPanel:Ljavax/swing/JPanel;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->getUnformattedHanyuPinyinScrollPane()Ljavax/swing/JScrollPane;

    move-result-object v1

    const-string v2, "Center"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedHanyuPinyinPanel:Ljavax/swing/JPanel;

    return-object v0
.end method

.method private getUnformattedHanyuPinyinScrollPane()Ljavax/swing/JScrollPane;
    .locals 2

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedHanyuPinyinScrollPane:Ljavax/swing/JScrollPane;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JScrollPane;

    invoke-direct {v0}, Ljavax/swing/JScrollPane;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedHanyuPinyinScrollPane:Ljavax/swing/JScrollPane;

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedHanyuPinyinScrollPane:Ljavax/swing/JScrollPane;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->getUnformattedHanyuPinyinTextArea()Ljavax/swing/JTextArea;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JScrollPane;->setViewportView(Ljava/awt/Component;)V

    :cond_0
    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedHanyuPinyinScrollPane:Ljavax/swing/JScrollPane;

    return-object v0
.end method

.method private getUnformattedHanyuPinyinTextArea()Ljavax/swing/JTextArea;
    .locals 2

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedHanyuPinyinTextArea:Ljavax/swing/JTextArea;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JTextArea;

    invoke-direct {v0}, Ljavax/swing/JTextArea;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedHanyuPinyinTextArea:Ljavax/swing/JTextArea;

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedHanyuPinyinTextArea:Ljavax/swing/JTextArea;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setEditable(Z)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedHanyuPinyinTextArea:Ljavax/swing/JTextArea;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setLineWrap(Z)V

    :cond_0
    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedHanyuPinyinTextArea:Ljavax/swing/JTextArea;

    return-object v0
.end method

.method private getUnformattedMPS2PinyinPanel()Ljavax/swing/JPanel;
    .locals 3

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedMPS2PinyinPanel:Ljavax/swing/JPanel;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JLabel;

    invoke-direct {v0}, Ljavax/swing/JLabel;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedMPS2PinyinLabel:Ljavax/swing/JLabel;

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedMPS2PinyinLabel:Ljavax/swing/JLabel;

    const-string v1, "MPSII Pinyin"

    invoke-virtual {v0, v1}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedMPS2PinyinPanel:Ljavax/swing/JPanel;

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedMPS2PinyinPanel:Ljavax/swing/JPanel;

    new-instance v1, Ljava/awt/BorderLayout;

    invoke-direct {v1}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedMPS2PinyinPanel:Ljavax/swing/JPanel;

    iget-object v1, p0, Ldemo/Pinyin4jAppletDemo;->unformattedMPS2PinyinLabel:Ljavax/swing/JLabel;

    const-string v2, "North"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedMPS2PinyinPanel:Ljavax/swing/JPanel;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->getUnformattedMPS2PinyinScrollPane()Ljavax/swing/JScrollPane;

    move-result-object v1

    const-string v2, "Center"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedMPS2PinyinPanel:Ljavax/swing/JPanel;

    return-object v0
.end method

.method private getUnformattedMPS2PinyinScrollPane()Ljavax/swing/JScrollPane;
    .locals 2

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedMPS2PinyinScrollPane:Ljavax/swing/JScrollPane;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JScrollPane;

    invoke-direct {v0}, Ljavax/swing/JScrollPane;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedMPS2PinyinScrollPane:Ljavax/swing/JScrollPane;

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedMPS2PinyinScrollPane:Ljavax/swing/JScrollPane;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->getUnformattedMPS2PinyinTextArea()Ljavax/swing/JTextArea;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JScrollPane;->setViewportView(Ljava/awt/Component;)V

    :cond_0
    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedMPS2PinyinScrollPane:Ljavax/swing/JScrollPane;

    return-object v0
.end method

.method private getUnformattedMPS2PinyinTextArea()Ljavax/swing/JTextArea;
    .locals 2

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedMPS2PinyinTextArea:Ljavax/swing/JTextArea;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JTextArea;

    invoke-direct {v0}, Ljavax/swing/JTextArea;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedMPS2PinyinTextArea:Ljavax/swing/JTextArea;

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedMPS2PinyinTextArea:Ljavax/swing/JTextArea;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setEditable(Z)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedMPS2PinyinTextArea:Ljavax/swing/JTextArea;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setLineWrap(Z)V

    :cond_0
    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedMPS2PinyinTextArea:Ljavax/swing/JTextArea;

    return-object v0
.end method

.method private getUnformattedTongyongPinyinPanel()Ljavax/swing/JPanel;
    .locals 3

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedTongyongPinyinPanel:Ljavax/swing/JPanel;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JLabel;

    invoke-direct {v0}, Ljavax/swing/JLabel;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedTongyongPinyinLabel:Ljavax/swing/JLabel;

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedTongyongPinyinLabel:Ljavax/swing/JLabel;

    const-string v1, "Tongyong Pinyin"

    invoke-virtual {v0, v1}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedTongyongPinyinPanel:Ljavax/swing/JPanel;

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedTongyongPinyinPanel:Ljavax/swing/JPanel;

    new-instance v1, Ljava/awt/BorderLayout;

    invoke-direct {v1}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedTongyongPinyinPanel:Ljavax/swing/JPanel;

    iget-object v1, p0, Ldemo/Pinyin4jAppletDemo;->unformattedTongyongPinyinLabel:Ljavax/swing/JLabel;

    const-string v2, "North"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedTongyongPinyinPanel:Ljavax/swing/JPanel;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->getUnformattedTongyongPinyinScrollPane()Ljavax/swing/JScrollPane;

    move-result-object v1

    const-string v2, "Center"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedTongyongPinyinPanel:Ljavax/swing/JPanel;

    return-object v0
.end method

.method private getUnformattedTongyongPinyinScrollPane()Ljavax/swing/JScrollPane;
    .locals 2

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedTongyongPinyinScrollPane:Ljavax/swing/JScrollPane;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JScrollPane;

    invoke-direct {v0}, Ljavax/swing/JScrollPane;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedTongyongPinyinScrollPane:Ljavax/swing/JScrollPane;

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedTongyongPinyinScrollPane:Ljavax/swing/JScrollPane;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->getUnformattedTongyongPinyinTextArea()Ljavax/swing/JTextArea;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JScrollPane;->setViewportView(Ljava/awt/Component;)V

    :cond_0
    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedTongyongPinyinScrollPane:Ljavax/swing/JScrollPane;

    return-object v0
.end method

.method private getUnformattedTongyongPinyinTextArea()Ljavax/swing/JTextArea;
    .locals 2

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedTongyongPinyinTextArea:Ljavax/swing/JTextArea;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JTextArea;

    invoke-direct {v0}, Ljavax/swing/JTextArea;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedTongyongPinyinTextArea:Ljavax/swing/JTextArea;

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedTongyongPinyinTextArea:Ljavax/swing/JTextArea;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setEditable(Z)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedTongyongPinyinTextArea:Ljavax/swing/JTextArea;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setLineWrap(Z)V

    :cond_0
    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedTongyongPinyinTextArea:Ljavax/swing/JTextArea;

    return-object v0
.end method

.method private getUnformattedWadePinyinPanel()Ljavax/swing/JPanel;
    .locals 3

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedWadePinyinPanel:Ljavax/swing/JPanel;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JLabel;

    invoke-direct {v0}, Ljavax/swing/JLabel;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedWadePinyinLabel:Ljavax/swing/JLabel;

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedWadePinyinLabel:Ljavax/swing/JLabel;

    const-string v1, "Wade-Giles  Pinyin"

    invoke-virtual {v0, v1}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedWadePinyinPanel:Ljavax/swing/JPanel;

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedWadePinyinPanel:Ljavax/swing/JPanel;

    new-instance v1, Ljava/awt/BorderLayout;

    invoke-direct {v1}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedWadePinyinPanel:Ljavax/swing/JPanel;

    iget-object v1, p0, Ldemo/Pinyin4jAppletDemo;->unformattedWadePinyinLabel:Ljavax/swing/JLabel;

    const-string v2, "North"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedWadePinyinPanel:Ljavax/swing/JPanel;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->getUnformattedWadePinyinScrollPane()Ljavax/swing/JScrollPane;

    move-result-object v1

    const-string v2, "Center"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedWadePinyinPanel:Ljavax/swing/JPanel;

    return-object v0
.end method

.method private getUnformattedWadePinyinScrollPane()Ljavax/swing/JScrollPane;
    .locals 2

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedWadePinyinScrollPane:Ljavax/swing/JScrollPane;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JScrollPane;

    invoke-direct {v0}, Ljavax/swing/JScrollPane;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedWadePinyinScrollPane:Ljavax/swing/JScrollPane;

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedWadePinyinScrollPane:Ljavax/swing/JScrollPane;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->getUnformattedWadePinyinTextArea()Ljavax/swing/JTextArea;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JScrollPane;->setViewportView(Ljava/awt/Component;)V

    :cond_0
    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedWadePinyinScrollPane:Ljavax/swing/JScrollPane;

    return-object v0
.end method

.method private getUnformattedWadePinyinTextArea()Ljavax/swing/JTextArea;
    .locals 2

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedWadePinyinTextArea:Ljavax/swing/JTextArea;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JTextArea;

    invoke-direct {v0}, Ljavax/swing/JTextArea;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedWadePinyinTextArea:Ljavax/swing/JTextArea;

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedWadePinyinTextArea:Ljavax/swing/JTextArea;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setEditable(Z)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedWadePinyinTextArea:Ljavax/swing/JTextArea;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setLineWrap(Z)V

    :cond_0
    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedWadePinyinTextArea:Ljavax/swing/JTextArea;

    return-object v0
.end method

.method private getUnformattedYalePinyinPanel()Ljavax/swing/JPanel;
    .locals 3

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedYalePinyinPanel:Ljavax/swing/JPanel;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JLabel;

    invoke-direct {v0}, Ljavax/swing/JLabel;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedYalePinyinLabel:Ljavax/swing/JLabel;

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedYalePinyinLabel:Ljavax/swing/JLabel;

    const-string v1, "Yale Pinyin"

    invoke-virtual {v0, v1}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedYalePinyinPanel:Ljavax/swing/JPanel;

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedYalePinyinPanel:Ljavax/swing/JPanel;

    new-instance v1, Ljava/awt/BorderLayout;

    invoke-direct {v1}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedYalePinyinPanel:Ljavax/swing/JPanel;

    iget-object v1, p0, Ldemo/Pinyin4jAppletDemo;->unformattedYalePinyinLabel:Ljavax/swing/JLabel;

    const-string v2, "North"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedYalePinyinPanel:Ljavax/swing/JPanel;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->getUnformattedYalePinyinScrollPane()Ljavax/swing/JScrollPane;

    move-result-object v1

    const-string v2, "Center"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedYalePinyinPanel:Ljavax/swing/JPanel;

    return-object v0
.end method

.method private getUnformattedYalePinyinScrollPane()Ljavax/swing/JScrollPane;
    .locals 2

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedYalePinyinScrollPane:Ljavax/swing/JScrollPane;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JScrollPane;

    invoke-direct {v0}, Ljavax/swing/JScrollPane;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedYalePinyinScrollPane:Ljavax/swing/JScrollPane;

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedYalePinyinScrollPane:Ljavax/swing/JScrollPane;

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->getUnformattedYalePinyinTextArea()Ljavax/swing/JTextArea;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JScrollPane;->setViewportView(Ljava/awt/Component;)V

    :cond_0
    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedYalePinyinScrollPane:Ljavax/swing/JScrollPane;

    return-object v0
.end method

.method private getUnformattedYalePinyinTextArea()Ljavax/swing/JTextArea;
    .locals 2

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedYalePinyinTextArea:Ljavax/swing/JTextArea;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JTextArea;

    invoke-direct {v0}, Ljavax/swing/JTextArea;-><init>()V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedYalePinyinTextArea:Ljavax/swing/JTextArea;

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedYalePinyinTextArea:Ljavax/swing/JTextArea;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setEditable(Z)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedYalePinyinTextArea:Ljavax/swing/JTextArea;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setLineWrap(Z)V

    :cond_0
    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->unformattedYalePinyinTextArea:Ljavax/swing/JTextArea;

    return-object v0
.end method

.method private getVCharTypesComboBox()Ljavax/swing/JComboBox;
    .locals 2

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->vCharTypesComboBox:Ljavax/swing/JComboBox;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/JComboBox;

    iget-object v1, p0, Ldemo/Pinyin4jAppletDemo;->vCharTypes:[Ljava/lang/String;

    invoke-direct {v0, v1}, Ljavax/swing/JComboBox;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Ldemo/Pinyin4jAppletDemo;->vCharTypesComboBox:Ljavax/swing/JComboBox;

    :cond_0
    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo;->vCharTypesComboBox:Ljavax/swing/JComboBox;

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Ldemo/Pinyin4jAppletDemo;

    invoke-direct {v0}, Ldemo/Pinyin4jAppletDemo;-><init>()V

    invoke-static {v3}, Ljava/lang/System;->runFinalizersOnExit(Z)V

    new-instance v1, Ljavax/swing/JFrame;

    sget-object v2, Ldemo/Pinyin4jAppletDemo;->appName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljavax/swing/JFrame;-><init>(Ljava/lang/String;)V

    new-instance v2, Ldemo/Pinyin4jAppletDemo$1;

    invoke-direct {v2, v0}, Ldemo/Pinyin4jAppletDemo$1;-><init>(Ldemo/Pinyin4jAppletDemo;)V

    invoke-virtual {v1, v2}, Ljavax/swing/JFrame;->addWindowListener(Ljava/awt/event/WindowListener;)V

    const-string v2, "Center"

    invoke-virtual {v1, v2, v0}, Ljavax/swing/JFrame;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    invoke-virtual {v0}, Ldemo/Pinyin4jAppletDemo;->init()V

    invoke-virtual {v0}, Ldemo/Pinyin4jAppletDemo;->start()V

    sget-object v0, Ldemo/Pinyin4jAppletDemo;->APP_SIZE:Ljava/awt/Dimension;

    invoke-virtual {v1, v0}, Ljavax/swing/JFrame;->setSize(Ljava/awt/Dimension;)V

    invoke-virtual {v1}, Ljavax/swing/JFrame;->pack()V

    invoke-virtual {v1, v3}, Ljavax/swing/JFrame;->setVisible(Z)V

    return-void
.end method


.method public init()V
    .locals 1

    sget-object v0, Ldemo/Pinyin4jAppletDemo;->APP_SIZE:Ljava/awt/Dimension;

    invoke-virtual {p0, v0}, Ldemo/Pinyin4jAppletDemo;->setSize(Ljava/awt/Dimension;)V

    invoke-direct {p0}, Ldemo/Pinyin4jAppletDemo;->getJContentPane()Ljavax/swing/JPanel;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldemo/Pinyin4jAppletDemo;->setContentPane(Ljava/awt/Container;)V

    sget-object v0, Ldemo/Pinyin4jAppletDemo;->appName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ldemo/Pinyin4jAppletDemo;->setName(Ljava/lang/String;)V

    return-void
.end method
