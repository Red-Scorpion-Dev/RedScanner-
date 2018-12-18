.class public Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1BitString;
.super Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType;
.source "ASN1BitString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1BitString$ASN1NamedBitList;
    }
.end annotation


# static fields
.field private static final ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1BitString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1BitString;

    invoke-direct {v0}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1BitString;-><init>()V

    sput-object v0, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1BitString;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1BitString;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType;-><init>(I)V

    .line 47
    return-void
.end method

.method public static getInstance()Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1BitString;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1BitString;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1BitString;

    return-object v0
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
    .line 63
    invoke-virtual {p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->readBitString()V

    .line 65
    iget-boolean v0, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->isVerify:Z

    if-eqz v0, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 68
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1BitString;->getDecodedObject(Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public encodeContent(Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;)V
    .locals 0
    .param p1, "out"    # Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;->encodeBitString()V

    .line 86
    return-void
.end method

.method public getDecodedObject(Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 5
    .param p1, "in"    # Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    iget v1, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->length:I

    add-int/lit8 v1, v1, -0x1

    new-array v0, v1, [B

    .line 79
    .local v0, "bytes":[B
    iget-object v1, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->buffer:[B

    iget v2, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    iget v4, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->length:I

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    new-instance v1, Landroid/framework/org/apache/harmony/security_custom/asn1/BitString;

    iget-object v2, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->buffer:[B

    iget v3, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->contentOffset:I

    aget-byte v2, v2, v3

    invoke-direct {v1, v0, v2}, Landroid/framework/org/apache/harmony/security_custom/asn1/BitString;-><init>([BI)V

    return-object v1
.end method

.method public setEncodingContent(Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;)V
    .locals 1
    .param p1, "out"    # Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;

    .prologue
    .line 89
    iget-object v0, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;->content:Ljava/lang/Object;

    check-cast v0, Landroid/framework/org/apache/harmony/security_custom/asn1/BitString;

    iget-object v0, v0, Landroid/framework/org/apache/harmony/security_custom/asn1/BitString;->bytes:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;->length:I

    .line 90
    return-void
.end method
