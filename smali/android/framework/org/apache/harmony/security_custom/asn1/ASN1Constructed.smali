.class public abstract Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Constructed;
.super Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;
.source "ASN1Constructed.java"


# direct methods
.method protected constructor <init>(I)V
    .locals 1
    .param p1, "tagNumber"    # I

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;-><init>(II)V

    .line 35
    return-void
.end method

.method protected constructor <init>(II)V
    .locals 0
    .param p1, "tagClass"    # I
    .param p2, "tagNumber"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;-><init>(II)V

    .line 39
    return-void
.end method


# virtual methods
.method public final checkTag(I)Z
    .locals 1
    .param p1, "identifier"    # I

    .prologue
    .line 49
    iget v0, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Constructed;->constrId:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public encodeASN(Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;)V
    .locals 1
    .param p1, "out"    # Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;

    .prologue
    .line 53
    iget v0, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Constructed;->constrId:I

    invoke-virtual {p1, v0}, Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;->encodeTag(I)V

    .line 54
    invoke-virtual {p0, p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Constructed;->encodeContent(Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;)V

    .line 55
    return-void
.end method