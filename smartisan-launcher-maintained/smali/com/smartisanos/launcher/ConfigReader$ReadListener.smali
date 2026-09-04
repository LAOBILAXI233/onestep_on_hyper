.class public interface abstract Lcom/smartisanos/launcher/ConfigReader$ReadListener;
.super Ljava/lang/Object;
.source "ConfigReader.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/ConfigReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ReadListener"
.end annotation


.method public abstract readBlock(Ljava/lang/String;)V
.end method

.method public abstract readItem(Ljava/lang/String;Lcom/smartisanos/smengine/math/Vector3f;)V
.end method

.method public abstract readItem(Ljava/lang/String;Lcom/smartisanos/smengine/math/Vector4f;)V
.end method

.method public abstract readItem(Ljava/lang/String;Ljava/lang/Boolean;)V
.end method

.method public abstract readItem(Ljava/lang/String;Ljava/lang/Float;)V
.end method

.method public abstract readItem(Ljava/lang/String;Ljava/lang/String;)V
.end method
