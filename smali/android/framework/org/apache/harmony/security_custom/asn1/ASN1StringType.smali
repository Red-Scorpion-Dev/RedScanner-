.class public abstract Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType;
.super Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;
.source "ASN1StringType.java"


# static fields
.field public static final BMPSTRING:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType;

.field public static final GENERALSTRING:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType;

.field public static final IA5STRING:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType;

.field public static final PRINTABLESTRING:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType;

.field public static final TELETEXSTRING:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType;

.field public static final UNIVERSALSTRING:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType;

.field public static final UTF8STRING:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType$1;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType$1;-><init>(I)V

    sput-object v0, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType;->BMPSTRING:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType;

    .line 42
    new-instance v0, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType$2;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType$2;-><init>(I)V

    sput-object v0, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType;->IA5STRING:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType;

    .line 46
    new-instance v0, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType$3;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType$3;-><init>(I)V

    sput-object v0, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType;->GENERALSTRING:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType;

    .line 50
    new-instance v0, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType$4;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType$4;-><init>(I)V

    sput-object v0, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType;->PRINTABLESTRING:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType;

    .line 54
    new-instance v0, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType$5;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType$5;-><init>(I)V

    sput-object v0, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType;->TELETEXSTRING:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType;

    .line 58
    new-instance v0, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType$6;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType$6;-><init>(I)V

    sput-object v0, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType;->UNIVERSALSTRING:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType;

    .line 62
    new-instance v0, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType$7;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType$7;-><init>(I)V

    sput-object v0, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType;->UTF8STRING:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "tagNumber"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;-><init>(I)V

    .line 76
    return-void
.end method


# virtual methods
.method public final checkTag(I)Z
    .locals 1
    .param p1, "identifier"    # I

    .prologue
    .line 86
    iget v0, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType;->id:I

    if-eq v0, p1, :cond_0

    iget v0, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType;->constrId:I

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public decode(Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p1, p0}, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->readString(Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType;)V

    .line 92
    iget-boolean v0, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->isVerify:Z

    if-eqz v0, :cond_0

    .line 93
    const/4 v0, 0x0

    .line 95
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType;->getDecodedObject(Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public encodeASN(Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;)V
    .locals 1
    .param p1, "out"    # Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;

    .prologue
    .line 108
    iget v0, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType;->id:I

    invoke-virtual {p1, v0}, Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;->encodeTag(I)V

    .line 109
    invoke-virtual {p0, p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType;->encodeContent(Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;)V

    .line 110
    return-void
.end method

.method public encodeContent(Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;)V
    .locals 0
    .param p1, "out"    # Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;

    .prologue
    .line 113
    invoke-virtual {p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;->encodeString()V

    .line 114
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
    .line 104
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->buffer:[B

    iget v2, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->contentOffset:I

    iget v3, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->length:I

    sget-object v4, Lorg/apache/commons/compress/utils/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public setEncodingContent(Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;)V
    .locals 3
    .param p1, "out"    # Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;

    .prologue
    .line 117
    iget-object v1, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;->content:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lorg/apache/commons/compress/utils/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 118
    .local v0, "bytes":[B
    iput-object v0, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;->content:Ljava/lang/Object;

    .line 119
    array-length v1, v0

    iput v1, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;->length:I

    .line 120
    return-void
.end method
