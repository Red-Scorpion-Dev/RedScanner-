.class public final Landroid/framework/org/apache/harmony/security_custom/x509/CRLNumber;
.super Landroid/framework/org/apache/harmony/security_custom/x509/ExtensionValue;
.source "CRLNumber.java"


# static fields
.field public static final ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;


# instance fields
.field private final number:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Integer;->getInstance()Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Integer;

    move-result-object v0

    sput-object v0, Landroid/framework/org/apache/harmony/security_custom/x509/CRLNumber;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "encoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/framework/org/apache/harmony/security_custom/x509/ExtensionValue;-><init>([B)V

    .line 45
    new-instance v1, Ljava/math/BigInteger;

    sget-object v0, Landroid/framework/org/apache/harmony/security_custom/x509/CRLNumber;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    invoke-virtual {v0, p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/x509/CRLNumber;->number:Ljava/math/BigInteger;

    .line 46
    return-void
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CRL Number: [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/x509/CRLNumber;->number:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    return-void
.end method

.method public getEncoded()[B
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/CRLNumber;->encoding:[B

    if-nez v0, :cond_0

    .line 60
    sget-object v0, Landroid/framework/org/apache/harmony/security_custom/x509/CRLNumber;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/x509/CRLNumber;->number:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/CRLNumber;->encoding:[B

    .line 62
    :cond_0
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/CRLNumber;->encoding:[B

    return-object v0
.end method

.method public getNumber()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/CRLNumber;->number:Ljava/math/BigInteger;

    return-object v0
.end method
