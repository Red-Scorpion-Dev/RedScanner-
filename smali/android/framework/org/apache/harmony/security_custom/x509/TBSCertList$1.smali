.class final Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertList$1;
.super Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;
.source "TBSCertList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V
    .locals 1
    .param p1, "x0"    # [Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    .prologue
    .line 331
    invoke-direct {p0, p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;-><init>([Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V

    .line 333
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertList$1;->setOptional(I)V

    .line 334
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertList$1;->setOptional(I)V

    .line 335
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertList$1;->setOptional(I)V

    .line 336
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertList$1;->setOptional(I)V

    .line 337
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 11
    .param p1, "in"    # Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 340
    iget-object v0, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, [Ljava/lang/Object;

    .line 341
    .local v10, "values":[Ljava/lang/Object;
    new-instance v0, Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertList;

    aget-object v1, v10, v3

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    aget-object v2, v10, v2

    check-cast v2, Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;

    const/4 v3, 0x2

    aget-object v3, v10, v3

    check-cast v3, Landroid/framework/org/apache/harmony/security_custom/x501/Name;

    const/4 v4, 0x3

    aget-object v4, v10, v4

    check-cast v4, Ljava/util/Date;

    const/4 v5, 0x4

    aget-object v5, v10, v5

    check-cast v5, Ljava/util/Date;

    const/4 v6, 0x5

    aget-object v6, v10, v6

    check-cast v6, Ljava/util/List;

    const/4 v7, 0x6

    aget-object v7, v10, v7

    check-cast v7, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;

    invoke-virtual {p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->getEncoded()[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertList;-><init>(ILandroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;Landroid/framework/org/apache/harmony/security_custom/x501/Name;Ljava/util/Date;Ljava/util/Date;Ljava/util/List;Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;[BLandroid/framework/org/apache/harmony/security_custom/x509/TBSCertList$1;)V

    return-object v0

    :cond_0
    aget-object v1, v10, v3

    invoke-static {v1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 356
    move-object v0, p1

    check-cast v0, Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertList;

    .line 357
    .local v0, "tbs":Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertList;
    const/4 v2, 0x0

    invoke-static {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertList;->access$400(Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertList;)I

    move-result v1

    if-le v1, v3, :cond_0

    invoke-static {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertList;->access$400(Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertList;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Integer;->fromIntValue(I)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    aput-object v1, p2, v2

    .line 359
    invoke-static {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertList;->access$500(Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertList;)Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;

    move-result-object v1

    aput-object v1, p2, v3

    .line 360
    const/4 v1, 0x2

    invoke-static {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertList;->access$600(Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertList;)Landroid/framework/org/apache/harmony/security_custom/x501/Name;

    move-result-object v2

    aput-object v2, p2, v1

    .line 361
    const/4 v1, 0x3

    invoke-static {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertList;->access$700(Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertList;)Ljava/util/Date;

    move-result-object v2

    aput-object v2, p2, v1

    .line 362
    const/4 v1, 0x4

    invoke-static {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertList;->access$800(Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertList;)Ljava/util/Date;

    move-result-object v2

    aput-object v2, p2, v1

    .line 363
    const/4 v1, 0x5

    invoke-static {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertList;->access$900(Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertList;)Ljava/util/List;

    move-result-object v2

    aput-object v2, p2, v1

    .line 364
    const/4 v1, 0x6

    invoke-static {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertList;->access$1000(Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertList;)Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;

    move-result-object v2

    aput-object v2, p2, v1

    .line 365
    return-void

    .line 357
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
