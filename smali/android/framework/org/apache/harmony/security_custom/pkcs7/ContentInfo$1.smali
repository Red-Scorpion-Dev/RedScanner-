.class final Landroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo$1;
.super Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;
.source "ContentInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo;
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
    .line 110
    invoke-direct {p0, p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;-><init>([Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V

    .line 112
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo$1;->setOptional(I)V

    .line 113
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 8
    .param p1, "in"    # Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 133
    iget-object v2, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 134
    .local v1, "values":[Ljava/lang/Object;
    aget-object v2, v1, v5

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    .line 135
    .local v0, "oid":[I
    sget-object v2, Landroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo;->DATA:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    aget-object v2, v1, v7

    if-eqz v2, :cond_0

    .line 137
    new-instance v3, Landroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo;

    invoke-static {}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1OctetString;->getInstance()Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1OctetString;

    move-result-object v4

    aget-object v2, v1, v7

    check-cast v2, [B

    check-cast v2, [B

    invoke-virtual {v4, v2}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1OctetString;->decode([B)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v0, v2, v4, v6}, Landroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo;-><init>([ILjava/lang/Object;[BLandroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo$1;)V

    move-object v2, v3

    .line 150
    :goto_0
    return-object v2

    .line 141
    :cond_0
    new-instance v3, Landroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo;

    aget-object v2, v1, v5

    check-cast v2, [I

    check-cast v2, [I

    invoke-virtual {p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v2, v6, v4, v6}, Landroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo;-><init>([ILjava/lang/Object;[BLandroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo$1;)V

    move-object v2, v3

    goto :goto_0

    .line 145
    :cond_1
    sget-object v2, Landroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo;->SIGNED_DATA:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 146
    new-instance v4, Landroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo;

    aget-object v2, v1, v5

    check-cast v2, [I

    check-cast v2, [I

    sget-object v5, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignedData;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;

    aget-object v3, v1, v7

    check-cast v3, [B

    check-cast v3, [B

    invoke-virtual {v5, v3}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->getEncoded()[B

    move-result-object v5

    invoke-direct {v4, v2, v3, v5, v6}, Landroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo;-><init>([ILjava/lang/Object;[BLandroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo$1;)V

    move-object v2, v4

    goto :goto_0

    .line 150
    :cond_2
    new-instance v3, Landroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo;

    aget-object v2, v1, v5

    check-cast v2, [I

    check-cast v2, [I

    aget-object v4, v1, v7

    invoke-virtual {p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->getEncoded()[B

    move-result-object v5

    invoke-direct {v3, v2, v4, v5, v6}, Landroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo;-><init>([ILjava/lang/Object;[BLandroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo$1;)V

    move-object v2, v3

    goto :goto_0
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 116
    move-object v0, p1

    check-cast v0, Landroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo;

    .line 117
    .local v0, "ci":Landroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo;
    const/4 v1, 0x0

    invoke-static {v0}, Landroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo;->access$000(Landroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo;)[I

    move-result-object v2

    aput-object v2, p2, v1

    .line 118
    invoke-static {v0}, Landroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo;->access$100(Landroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 119
    invoke-static {v0}, Landroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo;->access$000(Landroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo;)[I

    move-result-object v1

    sget-object v2, Landroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo;->DATA:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    invoke-static {v0}, Landroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo;->access$100(Landroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 121
    invoke-static {}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1OctetString;->getInstance()Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1OctetString;

    move-result-object v1

    invoke-static {v0}, Landroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo;->access$100(Landroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1OctetString;->encode(Ljava/lang/Object;)[B

    move-result-object v1

    aput-object v1, p2, v3

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    invoke-static {v0}, Landroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo;->access$100(Landroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignedData;

    if-eqz v1, :cond_2

    .line 125
    sget-object v1, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignedData;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;

    invoke-static {v0}, Landroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo;->access$100(Landroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v1

    aput-object v1, p2, v3

    goto :goto_0

    .line 127
    :cond_2
    invoke-static {v0}, Landroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo;->access$100(Landroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p2, v3

    goto :goto_0
.end method
