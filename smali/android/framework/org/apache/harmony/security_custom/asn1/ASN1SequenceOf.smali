.class public Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1SequenceOf;
.super Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1ValueCollection;
.source "ASN1SequenceOf.java"


# direct methods
.method public constructor <init>(Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V
    .locals 1
    .param p1, "type"    # Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    .prologue
    .line 36
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1ValueCollection;-><init>(ILandroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V

    .line 37
    return-void
.end method


# virtual methods
.method public decode(Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p1, p0}, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->readSequenceOf(Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1SequenceOf;)V

    .line 42
    iget-boolean v0, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->isVerify:Z

    if-eqz v0, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1SequenceOf;->getDecodedObject(Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final encodeContent(Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;)V
    .locals 0
    .param p1, "out"    # Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;

    .prologue
    .line 49
    invoke-virtual {p1, p0}, Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;->encodeSequenceOf(Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1SequenceOf;)V

    .line 50
    return-void
.end method

.method public final setEncodingContent(Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;)V
    .locals 0
    .param p1, "out"    # Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;

    .prologue
    .line 53
    invoke-virtual {p1, p0}, Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;->getSequenceOfLength(Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1SequenceOf;)V

    .line 54
    return-void
.end method
