.class final Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl$1;
.super Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1SequenceOf;
.source "X509CertPathImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V
    .locals 0
    .param p1, "x0"    # Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    .prologue
    .line 302
    invoke-direct {p0, p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1SequenceOf;-><init>(Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V

    return-void
.end method


# virtual methods
.method public getDecodedObject(Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 8
    .param p1, "in"    # Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 312
    iget-object v1, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 313
    .local v1, "encodings":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 314
    .local v3, "size":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 315
    .local v0, "certificates":Ljava/util/List;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 318
    new-instance v5, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;

    sget-object v6, Landroid/framework/org/apache/harmony/security_custom/x509/Certificate;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    check-cast v4, [B

    invoke-virtual {v6, v4}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/framework/org/apache/harmony/security_custom/x509/Certificate;

    invoke-direct {v5, v4}, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;-><init>(Landroid/framework/org/apache/harmony/security_custom/x509/Certificate;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 323
    :cond_0
    new-instance v4, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->getEncoded()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, v0, v5, v6, v7}, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;-><init>(Ljava/util/List;I[BLandroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl$1;)V

    return-object v4
.end method

.method public getValues(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 334
    move-object v0, p1

    check-cast v0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;

    .line 336
    .local v0, "cp":Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;
    invoke-static {v0}, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;->access$100(Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_1

    .line 337
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 350
    :cond_0
    return-object v2

    .line 339
    :cond_1
    invoke-static {v0}, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;->access$100(Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 340
    .local v4, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 342
    .local v2, "encodings":Ljava/util/List;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 345
    :try_start_0
    invoke-static {v0}, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;->access$100(Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 347
    :catch_0
    move-exception v1

    .line 348
    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Encoding Error occurred"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method
