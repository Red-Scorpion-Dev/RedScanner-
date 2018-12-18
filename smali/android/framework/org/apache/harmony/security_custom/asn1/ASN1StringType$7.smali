.class final Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType$7;
.super Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType;
.source "ASN1StringType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getDecodedObject(Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 5
    .param p1, "in"    # Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->buffer:[B

    iget v2, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->contentOffset:I

    iget v3, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->length:I

    sget-object v4, Lorg/apache/commons/compress/utils/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public setEncodingContent(Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;)V
    .locals 3
    .param p1, "out"    # Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;

    .prologue
    .line 68
    iget-object v1, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;->content:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lorg/apache/commons/compress/utils/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 69
    .local v0, "bytes":[B
    iput-object v0, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;->content:Ljava/lang/Object;

    .line 70
    array-length v1, v0

    iput v1, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;->length:I

    .line 71
    return-void
.end method
