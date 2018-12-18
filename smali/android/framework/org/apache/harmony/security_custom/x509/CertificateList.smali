.class public final Landroid/framework/org/apache/harmony/security_custom/x509/CertificateList;
.super Ljava/lang/Object;
.source "CertificateList.java"


# static fields
.field public static final ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;


# instance fields
.field private encoding:[B

.field private final signatureAlgorithm:Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;

.field private final signatureValue:[B

.field private final tbsCertList:Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertList;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 112
    new-instance v0, Landroid/framework/org/apache/harmony/security_custom/x509/CertificateList$1;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    const/4 v2, 0x0

    sget-object v3, Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertList;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1BitString;->getInstance()Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1BitString;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Landroid/framework/org/apache/harmony/security_custom/x509/CertificateList$1;-><init>([Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V

    sput-object v0, Landroid/framework/org/apache/harmony/security_custom/x509/CertificateList;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>(Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertList;Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;[B)V
    .locals 3
    .param p1, "tbsCertList"    # Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertList;
    .param p2, "signatureAlgorithm"    # Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;
    .param p3, "signatureValue"    # [B

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Landroid/framework/org/apache/harmony/security_custom/x509/CertificateList;->tbsCertList:Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertList;

    .line 61
    iput-object p2, p0, Landroid/framework/org/apache/harmony/security_custom/x509/CertificateList;->signatureAlgorithm:Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;

    .line 62
    array-length v0, p3

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/CertificateList;->signatureValue:[B

    .line 63
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/CertificateList;->signatureValue:[B

    array-length v1, p3

    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    return-void
.end method

.method private constructor <init>(Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertList;Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;[B[B)V
    .locals 0
    .param p1, "tbsCertList"    # Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertList;
    .param p2, "signatureAlgorithm"    # Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;
    .param p3, "signatureValue"    # [B
    .param p4, "encoding"    # [B

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/framework/org/apache/harmony/security_custom/x509/CertificateList;-><init>(Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertList;Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;[B)V

    .line 71
    iput-object p4, p0, Landroid/framework/org/apache/harmony/security_custom/x509/CertificateList;->encoding:[B

    .line 72
    return-void
.end method

.method synthetic constructor <init>(Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertList;Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;[B[BLandroid/framework/org/apache/harmony/security_custom/x509/CertificateList$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertList;
    .param p2, "x1"    # Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;
    .param p3, "x2"    # [B
    .param p4, "x3"    # [B
    .param p5, "x4"    # Landroid/framework/org/apache/harmony/security_custom/x509/CertificateList$1;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/framework/org/apache/harmony/security_custom/x509/CertificateList;-><init>(Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertList;Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;[B[B)V

    return-void
.end method

.method static synthetic access$100(Landroid/framework/org/apache/harmony/security_custom/x509/CertificateList;)Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertList;
    .locals 1
    .param p0, "x0"    # Landroid/framework/org/apache/harmony/security_custom/x509/CertificateList;

    .prologue
    .line 47
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/CertificateList;->tbsCertList:Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertList;

    return-object v0
.end method

.method static synthetic access$200(Landroid/framework/org/apache/harmony/security_custom/x509/CertificateList;)Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;
    .locals 1
    .param p0, "x0"    # Landroid/framework/org/apache/harmony/security_custom/x509/CertificateList;

    .prologue
    .line 47
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/CertificateList;->signatureAlgorithm:Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method static synthetic access$300(Landroid/framework/org/apache/harmony/security_custom/x509/CertificateList;)[B
    .locals 1
    .param p0, "x0"    # Landroid/framework/org/apache/harmony/security_custom/x509/CertificateList;

    .prologue
    .line 47
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/CertificateList;->signatureValue:[B

    return-object v0
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/CertificateList;->encoding:[B

    if-nez v0, :cond_0

    .line 104
    sget-object v0, Landroid/framework/org/apache/harmony/security_custom/x509/CertificateList;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/CertificateList;->encoding:[B

    .line 106
    :cond_0
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/CertificateList;->encoding:[B

    return-object v0
.end method

.method public getSignatureValue()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 85
    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/x509/CertificateList;->signatureValue:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 86
    .local v0, "result":[B
    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/x509/CertificateList;->signatureValue:[B

    iget-object v2, p0, Landroid/framework/org/apache/harmony/security_custom/x509/CertificateList;->signatureValue:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    return-object v0
.end method

.method public getTbsCertList()Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertList;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/CertificateList;->tbsCertList:Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertList;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .local v4, "result":Ljava/lang/StringBuilder;
    iget-object v5, p0, Landroid/framework/org/apache/harmony/security_custom/x509/CertificateList;->tbsCertList:Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertList;

    invoke-virtual {v5, v4}, Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertList;->dumpValue(Ljava/lang/StringBuilder;)V

    .line 93
    const-string v5, "\nSignature Value:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/CertificateList;->signatureValue:[B

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    .line 95
    .local v1, "b":B
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    .end local v1    # "b":B
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
