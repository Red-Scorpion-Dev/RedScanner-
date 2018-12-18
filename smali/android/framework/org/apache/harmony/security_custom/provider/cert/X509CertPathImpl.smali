.class public Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;
.super Ljava/security/cert/CertPath;
.source "X509CertPathImpl.java"


# static fields
.field public static final ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1SequenceOf;

.field private static final ASN1_SIGNED_DATA:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;

.field public static final PKCS7:I = 0x1

.field private static final PKCS7_SIGNED_DATA_OBJECT:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;

.field public static final PKI_PATH:I = 0x0

.field static final encodings:Ljava/util/List;

.field private static final encodingsArr:[Ljava/lang/String;

.field private static final serialVersionUID:J = 0x6ee14ff003fb47acL


# instance fields
.field private final certificates:Ljava/util/List;

.field private pkcs7Encoding:[B

.field private pkiPathEncoding:[B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 86
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "PkiPath"

    aput-object v1, v0, v4

    const-string v1, "PKCS7"

    aput-object v1, v0, v5

    sput-object v0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;->encodingsArr:[Ljava/lang/String;

    .line 87
    sget-object v0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;->encodingsArr:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;->encodings:Ljava/util/List;

    .line 301
    new-instance v0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl$1;

    invoke-static {}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Any;->getInstance()Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Any;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl$1;-><init>(Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V

    sput-object v0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1SequenceOf;

    .line 362
    new-instance v0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl$2;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    invoke-static {}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Any;->getInstance()Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Any;

    move-result-object v2

    aput-object v2, v1, v4

    new-instance v2, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Implicit;

    sget-object v3, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1SequenceOf;

    invoke-direct {v2, v4, v3}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Implicit;-><init>(ILandroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V

    aput-object v2, v1, v5

    invoke-static {}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Any;->getInstance()Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Any;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-direct {v0, v1}, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl$2;-><init>([Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V

    sput-object v0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;->ASN1_SIGNED_DATA:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;

    .line 396
    new-instance v0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl$3;

    new-array v1, v6, [Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    invoke-static {}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Any;->getInstance()Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Any;

    move-result-object v2

    aput-object v2, v1, v4

    new-instance v2, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Explicit;

    sget-object v3, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;->ASN1_SIGNED_DATA:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;

    invoke-direct {v2, v4, v3}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Explicit;-><init>(ILandroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V

    aput-object v2, v1, v5

    invoke-direct {v0, v1}, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl$3;-><init>([Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V

    sput-object v0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;->PKCS7_SIGNED_DATA_OBJECT:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 5
    .param p1, "certs"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 102
    const-string v3, "X.509"

    invoke-direct {p0, v3}, Ljava/security/cert/CertPath;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 104
    .local v2, "size":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;->certificates:Ljava/util/List;

    .line 105
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 106
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 107
    .local v0, "cert":Ljava/lang/Object;
    instance-of v3, v0, Ljava/security/cert/X509Certificate;

    if-nez v3, :cond_0

    .line 108
    new-instance v3, Ljava/security/cert/CertificateException;

    const-string v4, "One of the provided certificates is not an X509 certificate"

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 111
    :cond_0
    iget-object v3, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;->certificates:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    .end local v0    # "cert":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private constructor <init>(Ljava/util/List;I[B)V
    .locals 1
    .param p1, "certs"    # Ljava/util/List;
    .param p2, "type"    # I
    .param p3, "encoding"    # [B

    .prologue
    .line 125
    const-string v0, "X.509"

    invoke-direct {p0, v0}, Ljava/security/cert/CertPath;-><init>(Ljava/lang/String;)V

    .line 126
    if-nez p2, :cond_0

    .line 127
    iput-object p3, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;->pkiPathEncoding:[B

    .line 133
    :goto_0
    iput-object p1, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;->certificates:Ljava/util/List;

    .line 134
    return-void

    .line 129
    :cond_0
    iput-object p3, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;->pkcs7Encoding:[B

    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/util/List;I[BLandroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # I
    .param p3, "x2"    # [B
    .param p4, "x3"    # Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl$1;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;-><init>(Ljava/util/List;I[B)V

    return-void
.end method

.method static synthetic access$100(Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;

    .prologue
    .line 74
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;->certificates:Ljava/util/List;

    return-object v0
.end method

.method public static getInstance(Ljava/io/InputStream;)Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 144
    :try_start_0
    sget-object v1, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1SequenceOf;

    invoke-virtual {v1, p0}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1SequenceOf;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect encoded form: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getInstance(Ljava/io/InputStream;Ljava/lang/String;)Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;
    .locals 10
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 159
    sget-object v7, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;->encodings:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 160
    new-instance v7, Ljava/security/cert/CertificateException;

    const-string v8, "Unsupported encoding"

    invoke-direct {v7, v8}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 163
    :cond_0
    :try_start_0
    sget-object v7, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;->encodingsArr:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 165
    sget-object v7, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1SequenceOf;

    invoke-virtual {v7, p0}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1SequenceOf;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;

    .line 183
    :goto_0
    return-object v7

    .line 168
    :cond_1
    sget-object v7, Landroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;

    invoke-virtual {v7, p0}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo;

    .line 169
    .local v2, "ci":Landroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo;
    invoke-virtual {v2}, Landroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo;->getSignedData()Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignedData;

    move-result-object v6

    .line 170
    .local v6, "sd":Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignedData;
    if-nez v6, :cond_2

    .line 171
    new-instance v7, Ljava/security/cert/CertificateException;

    const-string v8, "Incorrect PKCS7 encoded form: missing signed data"

    invoke-direct {v7, v8}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .end local v2    # "ci":Landroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo;
    .end local v6    # "sd":Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignedData;
    :catch_0
    move-exception v3

    .line 186
    .local v3, "e":Ljava/io/IOException;
    new-instance v7, Ljava/security/cert/CertificateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Incorrect encoded form: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 174
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "ci":Landroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo;
    .restart local v6    # "sd":Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignedData;
    :cond_2
    :try_start_1
    invoke-virtual {v6}, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignedData;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 175
    .local v1, "certs":Ljava/util/List;, "Ljava/util/List<Landroid/framework/org/apache/harmony/security_custom/x509/Certificate;>;"
    if-nez v1, :cond_3

    .line 177
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "certs":Ljava/util/List;, "Ljava/util/List<Landroid/framework/org/apache/harmony/security_custom/x509/Certificate;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .restart local v1    # "certs":Ljava/util/List;, "Ljava/util/List<Landroid/framework/org/apache/harmony/security_custom/x509/Certificate;>;"
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/framework/org/apache/harmony/security_custom/x509/Certificate;

    .line 181
    .local v0, "cert":Landroid/framework/org/apache/harmony/security_custom/x509/Certificate;
    new-instance v7, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;

    invoke-direct {v7, v0}, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;-><init>(Landroid/framework/org/apache/harmony/security_custom/x509/Certificate;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 183
    .end local v0    # "cert":Landroid/framework/org/apache/harmony/security_custom/x509/Certificate;
    :cond_4
    new-instance v7, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;

    const/4 v8, 0x1

    invoke-virtual {v2}, Landroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo;->getEncoded()[B

    move-result-object v9

    invoke-direct {v7, v5, v8, v9}, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;-><init>(Ljava/util/List;I[B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static getInstance([B)Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;
    .locals 4
    .param p0, "in"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 198
    :try_start_0
    sget-object v1, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1SequenceOf;

    invoke-virtual {v1, p0}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1SequenceOf;->decode([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect encoded form: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getInstance([BLjava/lang/String;)Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;
    .locals 10
    .param p0, "in"    # [B
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 213
    sget-object v7, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;->encodings:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 214
    new-instance v7, Ljava/security/cert/CertificateException;

    const-string v8, "Unsupported encoding"

    invoke-direct {v7, v8}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 217
    :cond_0
    :try_start_0
    sget-object v7, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;->encodingsArr:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 219
    sget-object v7, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1SequenceOf;

    invoke-virtual {v7, p0}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1SequenceOf;->decode([B)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;

    .line 235
    :goto_0
    return-object v7

    .line 222
    :cond_1
    sget-object v7, Landroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;

    invoke-virtual {v7, p0}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo;

    .line 223
    .local v2, "ci":Landroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo;
    invoke-virtual {v2}, Landroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo;->getSignedData()Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignedData;

    move-result-object v6

    .line 224
    .local v6, "sd":Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignedData;
    if-nez v6, :cond_2

    .line 225
    new-instance v7, Ljava/security/cert/CertificateException;

    const-string v8, "Incorrect PKCS7 encoded form: missing signed data"

    invoke-direct {v7, v8}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .end local v2    # "ci":Landroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo;
    .end local v6    # "sd":Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignedData;
    :catch_0
    move-exception v3

    .line 238
    .local v3, "e":Ljava/io/IOException;
    new-instance v7, Ljava/security/cert/CertificateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Incorrect encoded form: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 227
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "ci":Landroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo;
    .restart local v6    # "sd":Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignedData;
    :cond_2
    :try_start_1
    invoke-virtual {v6}, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignedData;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 228
    .local v1, "certs":Ljava/util/List;, "Ljava/util/List<Landroid/framework/org/apache/harmony/security_custom/x509/Certificate;>;"
    if-nez v1, :cond_3

    .line 229
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "certs":Ljava/util/List;, "Ljava/util/List<Landroid/framework/org/apache/harmony/security_custom/x509/Certificate;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .restart local v1    # "certs":Ljava/util/List;, "Ljava/util/List<Landroid/framework/org/apache/harmony/security_custom/x509/Certificate;>;"
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/framework/org/apache/harmony/security_custom/x509/Certificate;

    .line 233
    .local v0, "cert":Landroid/framework/org/apache/harmony/security_custom/x509/Certificate;
    new-instance v7, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;

    invoke-direct {v7, v0}, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;-><init>(Landroid/framework/org/apache/harmony/security_custom/x509/Certificate;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 235
    .end local v0    # "cert":Landroid/framework/org/apache/harmony/security_custom/x509/Certificate;
    :cond_4
    new-instance v7, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;

    const/4 v8, 0x1

    invoke-virtual {v2}, Landroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo;->getEncoded()[B

    move-result-object v9

    invoke-direct {v7, v5, v8, v9}, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;-><init>(Ljava/util/List;I[B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public getCertificates()Ljava/util/List;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;->certificates:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 259
    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;->pkiPathEncoding:[B

    if-nez v1, :cond_0

    .line 260
    sget-object v1, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1SequenceOf;

    invoke-virtual {v1, p0}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1SequenceOf;->encode(Ljava/lang/Object;)[B

    move-result-object v1

    iput-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;->pkiPathEncoding:[B

    .line 262
    :cond_0
    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;->pkiPathEncoding:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 263
    .local v0, "result":[B
    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;->pkiPathEncoding:[B

    iget-object v2, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;->pkiPathEncoding:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    return-object v0
.end method

.method public getEncoded(Ljava/lang/String;)[B
    .locals 4
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 272
    sget-object v1, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;->encodings:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 273
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    const-string v2, "Unsupported encoding"

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 275
    :cond_0
    sget-object v1, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;->encodingsArr:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 277
    invoke-virtual {p0}, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;->getEncoded()[B

    move-result-object v0

    .line 286
    :goto_0
    return-object v0

    .line 280
    :cond_1
    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;->pkcs7Encoding:[B

    if-nez v1, :cond_2

    .line 281
    sget-object v1, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;->PKCS7_SIGNED_DATA_OBJECT:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;

    invoke-virtual {v1, p0}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v1

    iput-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;->pkcs7Encoding:[B

    .line 283
    :cond_2
    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;->pkcs7Encoding:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 284
    .local v0, "result":[B
    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;->pkcs7Encoding:[B

    iget-object v2, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;->pkcs7Encoding:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public getEncodings()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 295
    sget-object v0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertPathImpl;->encodings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
