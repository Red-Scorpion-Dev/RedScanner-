.class public final Landroid/framework/org/apache/harmony/security_custom/x509/InhibitAnyPolicy;
.super Landroid/framework/org/apache/harmony/security_custom/x509/ExtensionValue;
.source "InhibitAnyPolicy.java"


# instance fields
.field private final skipCerts:I


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .param p1, "encoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/framework/org/apache/harmony/security_custom/x509/ExtensionValue;-><init>([B)V

    .line 46
    new-instance v1, Ljava/math/BigInteger;

    invoke-static {}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Integer;->getInstance()Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Integer;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/InhibitAnyPolicy;->skipCerts:I

    .line 48
    return-void
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Inhibit Any-Policy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/framework/org/apache/harmony/security_custom/x509/InhibitAnyPolicy;->skipCerts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    return-void
.end method

.method public getEncoded()[B
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/InhibitAnyPolicy;->encoding:[B

    if-nez v0, :cond_0

    .line 55
    invoke-static {}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Integer;->getInstance()Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Integer;

    move-result-object v0

    iget v1, p0, Landroid/framework/org/apache/harmony/security_custom/x509/InhibitAnyPolicy;->skipCerts:I

    invoke-static {v1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Integer;->fromIntValue(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Integer;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/InhibitAnyPolicy;->encoding:[B

    .line 58
    :cond_0
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/InhibitAnyPolicy;->encoding:[B

    return-object v0
.end method
