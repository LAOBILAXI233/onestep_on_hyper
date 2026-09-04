.class public Lcom/hp/hpl/sparta/DOMException;
.super Ljava/lang/Exception;


.field public static final DOMSTRING_SIZE_ERR:S = 0x2s

.field public static final HIERARCHY_REQUEST_ERR:S = 0x3s

.field public static final NOT_FOUND_ERR:S = 0x8s


.field public code:S


.method public constructor <init>(SLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-short p1, p0, Lcom/hp/hpl/sparta/DOMException;->code:S

    return-void
.end method
