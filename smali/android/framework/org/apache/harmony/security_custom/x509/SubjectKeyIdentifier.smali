.class public final Landroid/framework/org/apache/harmony/security_custom/x509/SubjectKeyIdentifier;
.super Landroid/framework/org/apache/harmony/security_custom/x509/ExtensionValue;
.source "SubjectKeyIdentifier.java"


# instance fields
.field private final keyIdentifier:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1, "keyIdentifier"    # [B

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/framework/org/apache/harmony/security_custom/x509/ExtensionValue;-><init>()V

    .line 47
    iput-object p1, p0, Landroid/framework/org/apache/harmony/security_custom/x509/SubjectKeyIdentifier;->keyIdentifier:[B

    .line 48
    return-void
.end method

.method public static decode([B)Landroid/framework/org/apache/harmony/security_custom/x509/SubjectKeyIdentifier;
    .locals 2
    .param p0, "encoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Landroid/framework/org/apache/harmony/security_custom/x509/SubjectKeyIdentifier;

    invoke-static {}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1OctetString;->getInstance()Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1OctetString;->decode([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    invoke-direct {v0, v1}, Landroid/framework/org/apache/harmony/security_custom/x509/SubjectKeyIdentifier;-><init>([B)V

    .line 57
    .local v0, "res":Landroid/framework/org/apache/harmony/security_custom/x509/SubjectKeyIdentifier;
    iput-object p0, v0, Landroid/framework/org/apache/harmony/security_custom/x509/SubjectKeyIdentifier;->encoding:[B

    .line 58
    return-object v0
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SubjectKeyIdentifier: [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/SubjectKeyIdentifier;->keyIdentifier:[B

    invoke-static {v0, p2}, Landroid/framework/org/apache/harmony/security_custom/utils/Array;->toString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    return-void
.end method

.method public getEncoded()[B
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/SubjectKeyIdentifier;->encoding:[B

    if-nez v0, :cond_0

    .line 63
    invoke-static {}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1OctetString;->getInstance()Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1OctetString;

    move-result-object v0

    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/x509/SubjectKeyIdentifier;->keyIdentifier:[B

    invoke-virtual {v0, v1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1OctetString;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/SubjectKeyIdentifier;->encoding:[B

    .line 65
    :cond_0
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/SubjectKeyIdentifier;->encoding:[B

    return-object v0
.end method
