.class public Landroid/framework/org/apache/harmony/security_custom/x509/tsp/MessageImprint;
.super Ljava/lang/Object;
.source "MessageImprint.java"


# static fields
.field public static final ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;


# instance fields
.field private final algId:Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;

.field private final hashedMessage:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 47
    new-instance v0, Landroid/framework/org/apache/harmony/security_custom/x509/tsp/MessageImprint$1;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    const/4 v2, 0x0

    sget-object v3, Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1OctetString;->getInstance()Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1OctetString;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Landroid/framework/org/apache/harmony/security_custom/x509/tsp/MessageImprint$1;-><init>([Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V

    sput-object v0, Landroid/framework/org/apache/harmony/security_custom/x509/tsp/MessageImprint;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>(Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;[B)V
    .locals 0
    .param p1, "algId"    # Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;
    .param p2, "hashedMessage"    # [B

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroid/framework/org/apache/harmony/security_custom/x509/tsp/MessageImprint;->algId:Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;

    .line 44
    iput-object p2, p0, Landroid/framework/org/apache/harmony/security_custom/x509/tsp/MessageImprint;->hashedMessage:[B

    .line 45
    return-void
.end method

.method static synthetic access$000(Landroid/framework/org/apache/harmony/security_custom/x509/tsp/MessageImprint;)Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;
    .locals 1
    .param p0, "x0"    # Landroid/framework/org/apache/harmony/security_custom/x509/tsp/MessageImprint;

    .prologue
    .line 38
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/tsp/MessageImprint;->algId:Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method static synthetic access$100(Landroid/framework/org/apache/harmony/security_custom/x509/tsp/MessageImprint;)[B
    .locals 1
    .param p0, "x0"    # Landroid/framework/org/apache/harmony/security_custom/x509/tsp/MessageImprint;

    .prologue
    .line 38
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/tsp/MessageImprint;->hashedMessage:[B

    return-object v0
.end method
