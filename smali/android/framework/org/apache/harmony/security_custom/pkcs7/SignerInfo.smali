.class public final Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;
.super Ljava/lang/Object;
.source "SignerInfo.java"


# static fields
.field public static final ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;

.field public static final ISSUER_AND_SERIAL_NUMBER:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;


# instance fields
.field private final authenticatedAttributes:Landroid/framework/org/apache/harmony/security_custom/pkcs7/AuthenticatedAttributes;

.field private final digestAlgorithm:Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;

.field private final digestEncryptionAlgorithm:Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;

.field private final encryptedDigest:[B

.field private final issuer:Ljavax/security/auth/x500/X500Principal;

.field private final serialNumber:Ljava/math/BigInteger;

.field private final unauthenticatedAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation
.end field

.field private final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 145
    new-instance v0, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo$1;

    new-array v1, v3, [Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    sget-object v2, Landroid/framework/org/apache/harmony/security_custom/x501/Name;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1SequenceOf;

    aput-object v2, v1, v5

    invoke-static {}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Integer;->getInstance()Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-direct {v0, v1}, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo$1;-><init>([Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V

    sput-object v0, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;->ISSUER_AND_SERIAL_NUMBER:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;

    .line 159
    new-instance v0, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo$2;

    const/4 v1, 0x7

    new-array v1, v1, [Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    invoke-static {}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Integer;->getInstance()Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Integer;

    move-result-object v2

    aput-object v2, v1, v5

    sget-object v2, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;->ISSUER_AND_SERIAL_NUMBER:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;

    aput-object v2, v1, v6

    sget-object v2, Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;

    aput-object v2, v1, v3

    const/4 v2, 0x3

    new-instance v3, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Implicit;

    sget-object v4, Landroid/framework/org/apache/harmony/security_custom/pkcs7/AuthenticatedAttributes;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1SetOf;

    invoke-direct {v3, v5, v4}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Implicit;-><init>(ILandroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1OctetString;->getInstance()Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1OctetString;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Implicit;

    new-instance v4, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1SetOf;

    sget-object v5, Landroid/framework/org/apache/harmony/security_custom/x501/AttributeTypeAndValue;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;

    invoke-direct {v4, v5}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1SetOf;-><init>(Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V

    invoke-direct {v3, v6, v4}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Implicit;-><init>(ILandroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo$2;-><init>([Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V

    sput-object v0, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;

    return-void
.end method

.method private constructor <init>(I[Ljava/lang/Object;Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;Landroid/framework/org/apache/harmony/security_custom/pkcs7/AuthenticatedAttributes;Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;[BLjava/util/List;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "issuerAndSerialNumber"    # [Ljava/lang/Object;
    .param p3, "digestAlgorithm"    # Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;
    .param p4, "authenticatedAttributes"    # Landroid/framework/org/apache/harmony/security_custom/pkcs7/AuthenticatedAttributes;
    .param p5, "digestEncryptionAlgorithm"    # Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;
    .param p6, "encryptedDigest"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/Object;",
            "Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;",
            "Landroid/framework/org/apache/harmony/security_custom/pkcs7/AuthenticatedAttributes;",
            "Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;",
            "[B",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p7, "unauthenticatedAttributes":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput p1, p0, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;->version:I

    .line 75
    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Landroid/framework/org/apache/harmony/security_custom/x501/Name;

    invoke-virtual {v0}, Landroid/framework/org/apache/harmony/security_custom/x501/Name;->getX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;->issuer:Ljavax/security/auth/x500/X500Principal;

    .line 76
    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-static {v0}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Integer;->toBigIntegerValue(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;->serialNumber:Ljava/math/BigInteger;

    .line 77
    iput-object p3, p0, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;->digestAlgorithm:Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;

    .line 78
    iput-object p4, p0, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;->authenticatedAttributes:Landroid/framework/org/apache/harmony/security_custom/pkcs7/AuthenticatedAttributes;

    .line 79
    iput-object p5, p0, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;->digestEncryptionAlgorithm:Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;

    .line 80
    iput-object p6, p0, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;->encryptedDigest:[B

    .line 81
    iput-object p7, p0, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;->unauthenticatedAttributes:Ljava/util/List;

    .line 82
    return-void
.end method

.method synthetic constructor <init>(I[Ljava/lang/Object;Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;Landroid/framework/org/apache/harmony/security_custom/pkcs7/AuthenticatedAttributes;Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;[BLjava/util/List;Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # [Ljava/lang/Object;
    .param p3, "x2"    # Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;
    .param p4, "x3"    # Landroid/framework/org/apache/harmony/security_custom/pkcs7/AuthenticatedAttributes;
    .param p5, "x4"    # Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;
    .param p6, "x5"    # [B
    .param p7, "x6"    # Ljava/util/List;
    .param p8, "x7"    # Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo$1;

    .prologue
    .line 57
    invoke-direct/range {p0 .. p7}, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;-><init>(I[Ljava/lang/Object;Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;Landroid/framework/org/apache/harmony/security_custom/pkcs7/AuthenticatedAttributes;Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;[BLjava/util/List;)V

    return-void
.end method

.method static synthetic access$000(Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;)I
    .locals 1
    .param p0, "x0"    # Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;

    .prologue
    .line 57
    iget v0, p0, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;->version:I

    return v0
.end method

.method static synthetic access$100(Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;)Ljavax/security/auth/x500/X500Principal;
    .locals 1
    .param p0, "x0"    # Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;

    .prologue
    .line 57
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;->issuer:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method static synthetic access$200(Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "x0"    # Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;

    .prologue
    .line 57
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;->serialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method static synthetic access$300(Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;)Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;
    .locals 1
    .param p0, "x0"    # Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;

    .prologue
    .line 57
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;->digestAlgorithm:Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method static synthetic access$400(Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;)Landroid/framework/org/apache/harmony/security_custom/pkcs7/AuthenticatedAttributes;
    .locals 1
    .param p0, "x0"    # Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;

    .prologue
    .line 57
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;->authenticatedAttributes:Landroid/framework/org/apache/harmony/security_custom/pkcs7/AuthenticatedAttributes;

    return-object v0
.end method

.method static synthetic access$500(Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;)Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;
    .locals 1
    .param p0, "x0"    # Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;

    .prologue
    .line 57
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;->digestEncryptionAlgorithm:Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method static synthetic access$600(Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;)[B
    .locals 1
    .param p0, "x0"    # Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;

    .prologue
    .line 57
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;->encryptedDigest:[B

    return-object v0
.end method

.method static synthetic access$700(Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;

    .prologue
    .line 57
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;->unauthenticatedAttributes:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getAuthenticatedAttributes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/framework/org/apache/harmony/security_custom/x501/AttributeTypeAndValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;->authenticatedAttributes:Landroid/framework/org/apache/harmony/security_custom/pkcs7/AuthenticatedAttributes;

    if-nez v0, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 104
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;->authenticatedAttributes:Landroid/framework/org/apache/harmony/security_custom/pkcs7/AuthenticatedAttributes;

    invoke-virtual {v0}, Landroid/framework/org/apache/harmony/security_custom/pkcs7/AuthenticatedAttributes;->getAttributes()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getDigestAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;->digestAlgorithm:Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDigestEncryptionAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;->digestEncryptionAlgorithm:Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncodedAuthenticatedAttributes()[B
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;->authenticatedAttributes:Landroid/framework/org/apache/harmony/security_custom/pkcs7/AuthenticatedAttributes;

    if-nez v0, :cond_0

    .line 109
    const/4 v0, 0x0

    .line 111
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;->authenticatedAttributes:Landroid/framework/org/apache/harmony/security_custom/pkcs7/AuthenticatedAttributes;

    invoke-virtual {v0}, Landroid/framework/org/apache/harmony/security_custom/pkcs7/AuthenticatedAttributes;->getEncoded()[B

    move-result-object v0

    goto :goto_0
.end method

.method public getEncryptedDigest()[B
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;->encryptedDigest:[B

    return-object v0
.end method

.method public getIssuer()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;->issuer:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;->serialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .local v0, "res":Ljava/lang/StringBuilder;
    const-string v1, "-- SignerInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string v1, "\n version : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget v1, p0, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, "\nissuerAndSerialNumber:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;->issuer:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;->serialNumber:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    const-string v1, "\ndigestAlgorithm:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;->digestAlgorithm:Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-string v1, "\nauthenticatedAttributes:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;->authenticatedAttributes:Landroid/framework/org/apache/harmony/security_custom/pkcs7/AuthenticatedAttributes;

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;->authenticatedAttributes:Landroid/framework/org/apache/harmony/security_custom/pkcs7/AuthenticatedAttributes;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    :cond_0
    const-string v1, "\ndigestEncryptionAlgorithm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;->digestEncryptionAlgorithm:Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-string v1, "\nunauthenticatedAttributes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;->unauthenticatedAttributes:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 138
    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;->unauthenticatedAttributes:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :cond_1
    const-string v1, "\n-- SignerInfo End\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
