.class public final Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Boolean;
.super Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Primitive;
.source "ASN1Boolean.java"


# static fields
.field private static final ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Boolean;

    invoke-direct {v0}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Boolean;-><init>()V

    sput-object v0, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Boolean;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Primitive;-><init>(I)V

    .line 48
    return-void
.end method

.method public static getInstance()Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Boolean;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Boolean;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Boolean;

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
    invoke-virtual {p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->readBoolean()V

    .line 65
    iget-boolean v0, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->isVerify:Z

    if-eqz v0, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 68
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Boolean;->getDecodedObject(Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public encodeContent(Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;)V
    .locals 0
    .param p1, "out"    # Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;->encodeBoolean()V

    .line 86
    return-void
.end method

.method public getDecodedObject(Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 2
    .param p1, "in"    # Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->buffer:[B

    iget v1, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->contentOffset:I

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    .line 79
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 81
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public setEncodingContent(Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;)V
    .locals 1
    .param p1, "out"    # Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;

    .prologue
    .line 89
    const/4 v0, 0x1

    iput v0, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;->length:I

    .line 90
    return-void
.end method
