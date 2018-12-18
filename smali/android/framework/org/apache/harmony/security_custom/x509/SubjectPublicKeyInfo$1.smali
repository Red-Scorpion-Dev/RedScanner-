.class final Landroid/framework/org/apache/harmony/security_custom/x509/SubjectPublicKeyInfo$1;
.super Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;
.source "SubjectPublicKeyInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/framework/org/apache/harmony/security_custom/x509/SubjectPublicKeyInfo;
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
    .line 133
    invoke-direct {p0, p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;-><init>([Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V

    return-void
.end method


# virtual methods
.method protected getDecodedObject(Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 7
    .param p1, "in"    # Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;

    .prologue
    const/4 v3, 0x1

    .line 135
    iget-object v0, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, [Ljava/lang/Object;

    .line 136
    .local v6, "values":[Ljava/lang/Object;
    new-instance v0, Landroid/framework/org/apache/harmony/security_custom/x509/SubjectPublicKeyInfo;

    const/4 v1, 0x0

    aget-object v1, v6, v1

    check-cast v1, Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;

    aget-object v2, v6, v3

    check-cast v2, Landroid/framework/org/apache/harmony/security_custom/asn1/BitString;

    iget-object v2, v2, Landroid/framework/org/apache/harmony/security_custom/asn1/BitString;->bytes:[B

    aget-object v3, v6, v3

    check-cast v3, Landroid/framework/org/apache/harmony/security_custom/asn1/BitString;

    iget v3, v3, Landroid/framework/org/apache/harmony/security_custom/asn1/BitString;->unusedBits:I

    invoke-virtual {p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->getEncoded()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/framework/org/apache/harmony/security_custom/x509/SubjectPublicKeyInfo;-><init>(Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;[BI[BLandroid/framework/org/apache/harmony/security_custom/x509/SubjectPublicKeyInfo$1;)V

    return-object v0
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    .prologue
    .line 144
    move-object v0, p1

    check-cast v0, Landroid/framework/org/apache/harmony/security_custom/x509/SubjectPublicKeyInfo;

    .line 145
    .local v0, "spki":Landroid/framework/org/apache/harmony/security_custom/x509/SubjectPublicKeyInfo;
    const/4 v1, 0x0

    invoke-static {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/SubjectPublicKeyInfo;->access$100(Landroid/framework/org/apache/harmony/security_custom/x509/SubjectPublicKeyInfo;)Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;

    move-result-object v2

    aput-object v2, p2, v1

    .line 146
    const/4 v1, 0x1

    new-instance v2, Landroid/framework/org/apache/harmony/security_custom/asn1/BitString;

    invoke-static {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/SubjectPublicKeyInfo;->access$200(Landroid/framework/org/apache/harmony/security_custom/x509/SubjectPublicKeyInfo;)[B

    move-result-object v3

    invoke-static {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/SubjectPublicKeyInfo;->access$300(Landroid/framework/org/apache/harmony/security_custom/x509/SubjectPublicKeyInfo;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/framework/org/apache/harmony/security_custom/asn1/BitString;-><init>([BI)V

    aput-object v2, p2, v1

    .line 147
    return-void
.end method
