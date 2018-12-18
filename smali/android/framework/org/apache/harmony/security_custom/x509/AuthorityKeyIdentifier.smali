.class public final Landroid/framework/org/apache/harmony/security_custom/x509/AuthorityKeyIdentifier;
.super Landroid/framework/org/apache/harmony/security_custom/x509/ExtensionValue;
.source "AuthorityKeyIdentifier.java"


# static fields
.field public static final ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;


# instance fields
.field private final authorityCertIssuer:Landroid/framework/org/apache/harmony/security_custom/x509/GeneralNames;

.field private final authorityCertSerialNumber:Ljava/math/BigInteger;

.field private final keyIdentifier:[B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 98
    new-instance v0, Landroid/framework/org/apache/harmony/security_custom/x509/AuthorityKeyIdentifier$1;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    new-instance v2, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Implicit;

    invoke-static {}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1OctetString;->getInstance()Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1OctetString;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Implicit;-><init>(ILandroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V

    aput-object v2, v1, v4

    new-instance v2, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Implicit;

    sget-object v3, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralNames;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    invoke-direct {v2, v5, v3}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Implicit;-><init>(ILandroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V

    aput-object v2, v1, v5

    new-instance v2, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Implicit;

    invoke-static {}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Integer;->getInstance()Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Integer;

    move-result-object v3

    invoke-direct {v2, v6, v3}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Implicit;-><init>(ILandroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V

    aput-object v2, v1, v6

    invoke-direct {v0, v1}, Landroid/framework/org/apache/harmony/security_custom/x509/AuthorityKeyIdentifier$1;-><init>([Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V

    sput-object v0, Landroid/framework/org/apache/harmony/security_custom/x509/AuthorityKeyIdentifier;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    return-void
.end method

.method public constructor <init>([BLandroid/framework/org/apache/harmony/security_custom/x509/GeneralNames;Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "keyIdentifier"    # [B
    .param p2, "authorityCertIssuer"    # Landroid/framework/org/apache/harmony/security_custom/x509/GeneralNames;
    .param p3, "authorityCertSerialNumber"    # Ljava/math/BigInteger;

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/framework/org/apache/harmony/security_custom/x509/ExtensionValue;-><init>()V

    .line 62
    iput-object p1, p0, Landroid/framework/org/apache/harmony/security_custom/x509/AuthorityKeyIdentifier;->keyIdentifier:[B

    .line 63
    iput-object p2, p0, Landroid/framework/org/apache/harmony/security_custom/x509/AuthorityKeyIdentifier;->authorityCertIssuer:Landroid/framework/org/apache/harmony/security_custom/x509/GeneralNames;

    .line 64
    iput-object p3, p0, Landroid/framework/org/apache/harmony/security_custom/x509/AuthorityKeyIdentifier;->authorityCertSerialNumber:Ljava/math/BigInteger;

    .line 65
    return-void
.end method

.method static synthetic access$000(Landroid/framework/org/apache/harmony/security_custom/x509/AuthorityKeyIdentifier;)[B
    .locals 1
    .param p0, "x0"    # Landroid/framework/org/apache/harmony/security_custom/x509/AuthorityKeyIdentifier;

    .prologue
    .line 54
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/AuthorityKeyIdentifier;->keyIdentifier:[B

    return-object v0
.end method

.method static synthetic access$100(Landroid/framework/org/apache/harmony/security_custom/x509/AuthorityKeyIdentifier;)Landroid/framework/org/apache/harmony/security_custom/x509/GeneralNames;
    .locals 1
    .param p0, "x0"    # Landroid/framework/org/apache/harmony/security_custom/x509/AuthorityKeyIdentifier;

    .prologue
    .line 54
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/AuthorityKeyIdentifier;->authorityCertIssuer:Landroid/framework/org/apache/harmony/security_custom/x509/GeneralNames;

    return-object v0
.end method

.method static synthetic access$200(Landroid/framework/org/apache/harmony/security_custom/x509/AuthorityKeyIdentifier;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "x0"    # Landroid/framework/org/apache/harmony/security_custom/x509/AuthorityKeyIdentifier;

    .prologue
    .line 54
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/AuthorityKeyIdentifier;->authorityCertSerialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public static decode([B)Landroid/framework/org/apache/harmony/security_custom/x509/AuthorityKeyIdentifier;
    .locals 2
    .param p0, "encoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    sget-object v1, Landroid/framework/org/apache/harmony/security_custom/x509/AuthorityKeyIdentifier;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    invoke-virtual {v1, p0}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/framework/org/apache/harmony/security_custom/x509/AuthorityKeyIdentifier;

    .line 69
    .local v0, "aki":Landroid/framework/org/apache/harmony/security_custom/x509/AuthorityKeyIdentifier;
    iput-object p0, v0, Landroid/framework/org/apache/harmony/security_custom/x509/AuthorityKeyIdentifier;->encoding:[B

    .line 70
    return-object v0
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AuthorityKeyIdentifier [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/AuthorityKeyIdentifier;->keyIdentifier:[B

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  keyIdentifier:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/AuthorityKeyIdentifier;->keyIdentifier:[B

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/framework/org/apache/harmony/security_custom/utils/Array;->toString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    :cond_0
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/AuthorityKeyIdentifier;->authorityCertIssuer:Landroid/framework/org/apache/harmony/security_custom/x509/GeneralNames;

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  authorityCertIssuer: [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/AuthorityKeyIdentifier;->authorityCertIssuer:Landroid/framework/org/apache/harmony/security_custom/x509/GeneralNames;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralNames;->dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  ]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    :cond_1
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/AuthorityKeyIdentifier;->authorityCertSerialNumber:Ljava/math/BigInteger;

    if-eqz v0, :cond_2

    .line 92
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  authorityCertSerialNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/AuthorityKeyIdentifier;->authorityCertSerialNumber:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    return-void
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/AuthorityKeyIdentifier;->encoding:[B

    if-nez v0, :cond_0

    .line 75
    sget-object v0, Landroid/framework/org/apache/harmony/security_custom/x509/AuthorityKeyIdentifier;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    invoke-virtual {v0, p0}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/AuthorityKeyIdentifier;->encoding:[B

    .line 77
    :cond_0
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/AuthorityKeyIdentifier;->encoding:[B

    return-object v0
.end method
