.class final Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo$2;
.super Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;
.source "SignerInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;
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
    .line 169
    invoke-direct {p0, p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;-><init>([Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V

    .line 171
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo$2;->setOptional(I)V

    .line 172
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo$2;->setOptional(I)V

    .line 173
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 10
    .param p1, "in"    # Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;

    .prologue
    .line 195
    iget-object v0, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, [Ljava/lang/Object;

    .line 196
    .local v9, "values":[Ljava/lang/Object;
    new-instance v0, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;

    const/4 v1, 0x0

    aget-object v1, v9, v1

    invoke-static {v1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    aget-object v2, v9, v2

    check-cast v2, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    const/4 v3, 0x2

    aget-object v3, v9, v3

    check-cast v3, Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;

    const/4 v4, 0x3

    aget-object v4, v9, v4

    check-cast v4, Landroid/framework/org/apache/harmony/security_custom/pkcs7/AuthenticatedAttributes;

    const/4 v5, 0x4

    aget-object v5, v9, v5

    check-cast v5, Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;

    const/4 v6, 0x5

    aget-object v6, v9, v6

    check-cast v6, [B

    check-cast v6, [B

    const/4 v7, 0x6

    aget-object v7, v9, v7

    check-cast v7, Ljava/util/List;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;-><init>(I[Ljava/lang/Object;Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;Landroid/framework/org/apache/harmony/security_custom/pkcs7/AuthenticatedAttributes;Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;[BLjava/util/List;Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo$1;)V

    return-object v0
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 176
    move-object v1, p1

    check-cast v1, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;

    .line 177
    .local v1, "si":Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;
    new-array v2, v2, [B

    invoke-static {v1}, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;->access$000(Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    aput-object v2, p2, v4

    .line 179
    const/4 v2, 0x1

    const/4 v3, 0x2

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Landroid/framework/org/apache/harmony/security_custom/x501/Name;

    invoke-static {v1}, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;->access$100(Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/framework/org/apache/harmony/security_custom/x501/Name;-><init>(Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;->access$200(Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    aput-object v5, v3, v4

    aput-object v3, p2, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    invoke-static {v1}, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;->access$300(Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;)Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;

    move-result-object v2

    aput-object v2, p2, v7

    .line 188
    const/4 v2, 0x3

    invoke-static {v1}, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;->access$400(Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;)Landroid/framework/org/apache/harmony/security_custom/pkcs7/AuthenticatedAttributes;

    move-result-object v3

    aput-object v3, p2, v2

    .line 189
    const/4 v2, 0x4

    invoke-static {v1}, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;->access$500(Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;)Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;

    move-result-object v3

    aput-object v3, p2, v2

    .line 190
    const/4 v2, 0x5

    invoke-static {v1}, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;->access$600(Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;)[B

    move-result-object v3

    aput-object v3, p2, v2

    .line 191
    const/4 v2, 0x6

    invoke-static {v1}, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;->access$700(Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;)Ljava/util/List;

    move-result-object v3

    aput-object v3, p2, v2

    .line 192
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to encode issuer name"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
