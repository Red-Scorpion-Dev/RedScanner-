.class public final Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Explicit;
.super Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Constructed;
.source "ASN1Explicit.java"


# instance fields
.field public final type:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;


# direct methods
.method public constructor <init>(IILandroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V
    .locals 0
    .param p1, "tagClass"    # I
    .param p2, "tagNumber"    # I
    .param p3, "type"    # Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Constructed;-><init>(II)V

    .line 59
    iput-object p3, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Explicit;->type:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    .line 60
    return-void
.end method

.method public constructor <init>(ILandroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V
    .locals 1
    .param p1, "tagNumber"    # I
    .param p2, "type"    # Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    .prologue
    .line 46
    const/16 v0, 0x80

    invoke-direct {p0, v0, p1, p2}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Explicit;-><init>(IILandroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V

    .line 47
    return-void
.end method


# virtual methods
.method public decode(Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 3
    .param p1, "in"    # Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    iget v0, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Explicit;->constrId:I

    iget v1, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->tag:I

    if-eq v0, v1, :cond_0

    .line 64
    new-instance v0, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ASN.1 explicitly tagged type is expected at ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->tagOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]. Expected tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Explicit;->constrId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "but encountered tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->tag:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    invoke-virtual {p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->next()I

    .line 70
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Explicit;->type:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    invoke-virtual {v0, p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;->decode(Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->content:Ljava/lang/Object;

    .line 72
    iget-boolean v0, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->isVerify:Z

    if-eqz v0, :cond_1

    .line 73
    const/4 v0, 0x0

    .line 75
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Explicit;->getDecodedObject(Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public encodeContent(Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;)V
    .locals 0
    .param p1, "out"    # Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;

    .prologue
    .line 79
    invoke-virtual {p1, p0}, Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;->encodeExplicit(Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Explicit;)V

    .line 80
    return-void
.end method

.method public setEncodingContent(Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;)V
    .locals 0
    .param p1, "out"    # Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;

    .prologue
    .line 83
    invoke-virtual {p1, p0}, Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;->getExplicitLength(Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Explicit;)V

    .line 84
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Constructed;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Explicit;->type:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
