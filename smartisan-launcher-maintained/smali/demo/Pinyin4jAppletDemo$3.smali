.class final Ldemo/Pinyin4jAppletDemo$3;
.super Ljava/lang/Object;

.implements Ljava/awt/event/ActionListener;


.field private final this$0:Ldemo/Pinyin4jAppletDemo;


.method constructor <init>(Ldemo/Pinyin4jAppletDemo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldemo/Pinyin4jAppletDemo$3;->this$0:Ldemo/Pinyin4jAppletDemo;

    return-void
.end method


.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 3

    const/4 v2, 0x2

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo$3;->this$0:Ldemo/Pinyin4jAppletDemo;

    iget-object v0, v0, Ldemo/Pinyin4jAppletDemo;->toneTypes:[Ljava/lang/String;

    aget-object v1, v0, v2

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo$3;->this$0:Ldemo/Pinyin4jAppletDemo;

    invoke-static {v0}, Ldemo/Pinyin4jAppletDemo;->access$100(Ldemo/Pinyin4jAppletDemo;)Ljavax/swing/JComboBox;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/swing/JComboBox;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo$3;->this$0:Ldemo/Pinyin4jAppletDemo;

    invoke-static {v0}, Ldemo/Pinyin4jAppletDemo;->access$200(Ldemo/Pinyin4jAppletDemo;)Ljavax/swing/JComboBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljavax/swing/JComboBox;->setSelectedIndex(I)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo$3;->this$0:Ldemo/Pinyin4jAppletDemo;

    invoke-static {v0}, Ldemo/Pinyin4jAppletDemo;->access$200(Ldemo/Pinyin4jAppletDemo;)Ljavax/swing/JComboBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/swing/JComboBox;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo$3;->this$0:Ldemo/Pinyin4jAppletDemo;

    invoke-static {v0}, Ldemo/Pinyin4jAppletDemo;->access$200(Ldemo/Pinyin4jAppletDemo;)Ljavax/swing/JComboBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/swing/JComboBox;->setEnabled(Z)V

    goto :goto_0
.end method
