.class final Ldemo/Pinyin4jAppletDemo$1;
.super Ljava/awt/event/WindowAdapter;


.field private final val$appletDemo:Ldemo/Pinyin4jAppletDemo;


.method constructor <init>(Ldemo/Pinyin4jAppletDemo;)V
    .locals 0

    invoke-direct {p0}, Ljava/awt/event/WindowAdapter;-><init>()V

    iput-object p1, p0, Ldemo/Pinyin4jAppletDemo$1;->val$appletDemo:Ldemo/Pinyin4jAppletDemo;

    return-void
.end method


.method public windowClosing(Ljava/awt/event/WindowEvent;)V
    .locals 1

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo$1;->val$appletDemo:Ldemo/Pinyin4jAppletDemo;

    invoke-virtual {v0}, Ldemo/Pinyin4jAppletDemo;->stop()V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo$1;->val$appletDemo:Ldemo/Pinyin4jAppletDemo;

    invoke-virtual {v0}, Ldemo/Pinyin4jAppletDemo;->destroy()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method
