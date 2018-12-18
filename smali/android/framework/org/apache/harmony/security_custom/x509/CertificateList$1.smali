.class final Landroid/framework/org/apache/harmony/security_custom/x509/CertificateList$1;
.super Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;
.source "CertificateList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/framework/org/apache/harmony/security_custom/x509/CertificateList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V
    .locals 0
    .param p1, "x0"    # [Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;-><init>([Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V

    return-void
.end method


# virtual methods
.method protected getDecodedObject(Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 7
    .param p1, "in"    # Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;

    .prologue
    .line 118
    iget-object v0, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, [Ljava/lang/Object;

    .line 119
    .local v6, "values":[Ljava/lang/Object;
    new-instance v0, Landroid/framework/org/apache/harmony/security_custom/x509/CertificateList;

    const/4 v1, 0x0

    aget-object v1, v6, v1

    check-cast v1, Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertList;

    const/4 v2, 0x1

    aget-object v2, v6, v2

    check-cast v2, Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;

    const/4 v3, 0x2

    aget-object v3, v6, v3

    check-cast v3, Landroid/framework/org/apache/harmony/security_custom/asn1/BitString;

    iget-object v3, v3, Landroid/framework/org/apache/harmony/security_custom/asn1/BitString;->bytes:[B

    invoke-virtual {p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->getEncoded()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/framework/org/apache/harmony/security_custom/x509/CertificateList;-><init>(Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertList;Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;[B[BLandroid/framework/org/apache/harmony/security_custom/x509/CertificateList$1;)V

    return-object v0
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 128
    move-object v0, p1

    check-cast v0, Landroid/framework/org/apache/harmony/security_custom/x509/CertificateList;

    .line 129
    .local v0, "certificateList":Landroid/framework/org/apache/harmony/security_custom/x509/CertificateList;
    invoke-static {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/CertificateList;->access$100(Landroid/framework/org/apache/harmony/security_custom/x509/CertificateList;)Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertList;

    move-result-object v1

    aput-object v1, p2, v4

    .line 130
    const/4 v1, 0x1

    invoke-static {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/CertificateList;->access$200(Landroid/framework/org/apache/harmony/security_custom/x509/CertificateList;)Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;

    move-result-object v2

    aput-object v2, p2, v1

    .line 131
    const/4 v1, 0x2

    new-instance v2, Landroid/framework/org/apache/harmony/security_custom/asn1/BitString;

    invoke-static {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/CertificateList;->access$300(Landroid/framework/org/apache/harmony/security_custom/x509/CertificateList;)[B

    move-result-object v3

    invoke-direct {v2, v3, v4}, Landroid/framework/org/apache/harmony/security_custom/asn1/BitString;-><init>([BI)V

    aput-object v2, p2, v1

    .line 132
    return-void
.end method
