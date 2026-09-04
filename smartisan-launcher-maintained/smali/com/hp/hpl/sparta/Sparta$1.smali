.class Lcom/hp/hpl/sparta/Sparta$1;
.super Ljava/lang/Object;

.implements Lcom/hp/hpl/sparta/Sparta$Internment;


.field private final strings_:Ljava/util/Hashtable;


.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/hp/hpl/sparta/Sparta$1;->strings_:Ljava/util/Hashtable;

    return-void
.end method


.method public intern(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hp/hpl/sparta/Sparta$1;->strings_:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hp/hpl/sparta/Sparta$1;->strings_:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p1

    :cond_0
    move-object p1, v0

    goto :goto_0
.end method
