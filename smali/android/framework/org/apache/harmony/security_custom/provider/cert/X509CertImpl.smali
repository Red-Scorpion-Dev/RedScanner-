.class public final Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;
.super Ljava/security/cert/X509Certificate;
.source "X509CertImpl.java"


# static fields
.field public static final OPENSSL_PROVIDER_NAME:Ljava/lang/String; = "AndroidOpenSSL"

.field private static final serialVersionUID:J = 0x293f8c78c6c7611aL


# instance fields
.field private final certificate:Landroid/framework/org/apache/harmony/security_custom/x509/Certificate;

.field private volatile encoding:[B

.field private final extensions:Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;

.field private volatile issuer:Ljavax/security/auth/x500/X500Principal;

.field private volatile notAfter:J

.field private volatile notBefore:J

.field private volatile nullSigAlgParams:Z

.field private volatile publicKey:Ljava/security/PublicKey;

.field private volatile serialNumber:Ljava/math/BigInteger;

.field private volatile sigAlgName:Ljava/lang/String;

.field private volatile sigAlgOID:Ljava/lang/String;

.field private volatile sigAlgParams:[B

.field private volatile signature:[B

.field private volatile subject:Ljavax/security/auth/x500/X500Principal;

.field private final tbsCert:Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertificate;

.field private volatile tbsCertificate:[B


# direct methods
.method public constructor <init>(Landroid/framework/org/apache/harmony/security_custom/x509/Certificate;)V
    .locals 2
    .param p1, "certificate"    # Landroid/framework/org/apache/harmony/security_custom/x509/Certificate;

    .prologue
    const-wide/16 v0, -0x1

    .line 113
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    .line 74
    iput-wide v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->notBefore:J

    .line 75
    iput-wide v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->notAfter:J

    .line 114
    iput-object p1, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->certificate:Landroid/framework/org/apache/harmony/security_custom/x509/Certificate;

    .line 116
    invoke-virtual {p1}, Landroid/framework/org/apache/harmony/security_custom/x509/Certificate;->getTbsCertificate()Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertificate;

    move-result-object v0

    iput-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->tbsCert:Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertificate;

    .line 117
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->tbsCert:Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertificate;

    invoke-virtual {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertificate;->getExtensions()Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;

    move-result-object v0

    iput-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->extensions:Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;

    .line 118
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    .line 97
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    .line 74
    iput-wide v2, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->notBefore:J

    .line 75
    iput-wide v2, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->notAfter:J

    .line 100
    :try_start_0
    sget-object v1, Landroid/framework/org/apache/harmony/security_custom/x509/Certificate;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;

    invoke-virtual {v1, p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/framework/org/apache/harmony/security_custom/x509/Certificate;

    iput-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->certificate:Landroid/framework/org/apache/harmony/security_custom/x509/Certificate;

    .line 102
    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->certificate:Landroid/framework/org/apache/harmony/security_custom/x509/Certificate;

    invoke-virtual {v1}, Landroid/framework/org/apache/harmony/security_custom/x509/Certificate;->getTbsCertificate()Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertificate;

    move-result-object v1

    iput-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->tbsCert:Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertificate;

    .line 103
    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->tbsCert:Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertificate;

    invoke-virtual {v1}, Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertificate;->getExtensions()Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;

    move-result-object v1

    iput-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->extensions:Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "encoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    sget-object v0, Landroid/framework/org/apache/harmony/security_custom/x509/Certificate;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;

    invoke-virtual {v0, p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/framework/org/apache/harmony/security_custom/x509/Certificate;

    invoke-direct {p0, v0}, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;-><init>(Landroid/framework/org/apache/harmony/security_custom/x509/Certificate;)V

    .line 128
    return-void
.end method

.method private checkValidity(J)V
    .locals 7
    .param p1, "time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->getNotBeforeInternal()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 143
    new-instance v0, Ljava/security/cert/CertificateNotYetValidException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", validation time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {p0}, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->getNotBeforeInternal()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    invoke-direct {p0}, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->getNotAfterInternal()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 147
    new-instance v0, Ljava/security/cert/CertificateExpiredException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expiration time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {p0}, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->getNotAfterInternal()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_1
    return-void
.end method

.method private getEncodedInternal()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 348
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->encoding:[B

    .line 349
    .local v0, "result":[B
    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->encoding:[B

    if-nez v1, :cond_0

    .line 350
    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->certificate:Landroid/framework/org/apache/harmony/security_custom/x509/Certificate;

    invoke-virtual {v1}, Landroid/framework/org/apache/harmony/security_custom/x509/Certificate;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->encoding:[B

    .line 352
    :cond_0
    return-object v0
.end method

.method private getNotAfterInternal()J
    .locals 4

    .prologue
    .line 207
    iget-wide v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->notAfter:J

    .line 208
    .local v0, "result":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 209
    iget-object v2, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->tbsCert:Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertificate;

    invoke-virtual {v2}, Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertificate;->getValidity()Landroid/framework/org/apache/harmony/security_custom/x509/Validity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/framework/org/apache/harmony/security_custom/x509/Validity;->getNotAfter()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->notAfter:J

    .line 211
    :cond_0
    return-wide v0
.end method

.method private getNotBeforeInternal()J
    .locals 4

    .prologue
    .line 195
    iget-wide v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->notBefore:J

    .line 196
    .local v0, "result":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 197
    iget-object v2, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->tbsCert:Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertificate;

    invoke-virtual {v2}, Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertificate;->getValidity()Landroid/framework/org/apache/harmony/security_custom/x509/Validity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/framework/org/apache/harmony/security_custom/x509/Validity;->getNotBefore()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->notBefore:J

    .line 199
    :cond_0
    return-wide v0
.end method

.method private getSignatureInternal()[B
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->signature:[B

    .line 232
    .local v0, "result":[B
    if-nez v0, :cond_0

    .line 233
    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->certificate:Landroid/framework/org/apache/harmony/security_custom/x509/Certificate;

    invoke-virtual {v1}, Landroid/framework/org/apache/harmony/security_custom/x509/Certificate;->getSignatureValue()[B

    move-result-object v0

    iput-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->signature:[B

    .line 235
    :cond_0
    return-object v0
.end method

.method private getTbsCertificateInternal()[B
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->tbsCertificate:[B

    .line 220
    .local v0, "result":[B
    if-nez v0, :cond_0

    .line 221
    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->tbsCert:Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertificate;

    invoke-virtual {v1}, Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertificate;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->tbsCertificate:[B

    .line 223
    :cond_0
    return-object v0
.end method


# virtual methods
.method public checkValidity()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->checkValidity(J)V

    .line 133
    return-void
.end method

.method public checkValidity(Ljava/util/Date;)V
    .locals 2
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->checkValidity(J)V

    .line 138
    return-void
.end method

.method public getBasicConstraints()I
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->extensions:Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;

    if-nez v0, :cond_0

    .line 307
    const v0, 0x7fffffff

    .line 309
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->extensions:Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;

    invoke-virtual {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->valueOfBasicConstrains()I

    move-result v0

    goto :goto_0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 420
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->extensions:Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;

    if-nez v0, :cond_0

    .line 421
    const/4 v0, 0x0

    .line 424
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->extensions:Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;

    invoke-virtual {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->getCriticalExtensions()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 345
    invoke-direct {p0}, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->getEncodedInternal()[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getExtendedKeyUsage()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 295
    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->extensions:Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;

    if-nez v1, :cond_0

    .line 296
    const/4 v1, 0x0

    .line 299
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->extensions:Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;

    invoke-virtual {v1}, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->valueOfExtendedKeyUsage()Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 3
    .param p1, "oid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 428
    iget-object v2, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->extensions:Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;

    if-nez v2, :cond_1

    .line 433
    :cond_0
    :goto_0
    return-object v1

    .line 432
    :cond_1
    iget-object v2, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->extensions:Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;

    invoke-virtual {v2, p1}, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->getExtensionByOID(Ljava/lang/String;)Landroid/framework/org/apache/harmony/security_custom/x509/Extension;

    move-result-object v0

    .line 433
    .local v0, "ext":Landroid/framework/org/apache/harmony/security_custom/x509/Extension;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/Extension;->getRawExtnValue()[B

    move-result-object v1

    goto :goto_0
.end method

.method public getIssuerAlternativeNames()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 331
    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->extensions:Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;

    if-nez v1, :cond_0

    .line 332
    const/4 v1, 0x0

    .line 338
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->extensions:Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;

    invoke-virtual {v1}, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->valueOfIssuerAlternativeName()Ljava/util/Collection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 165
    invoke-virtual {p0}, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public getIssuerUniqueID()[Z
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->tbsCert:Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertificate;

    invoke-virtual {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertificate;->getIssuerUniqueID()[Z

    move-result-object v0

    return-object v0
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->issuer:Ljavax/security/auth/x500/X500Principal;

    .line 170
    .local v0, "result":Ljavax/security/auth/x500/X500Principal;
    if-nez v0, :cond_0

    .line 172
    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->tbsCert:Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertificate;

    invoke-virtual {v1}, Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertificate;->getIssuer()Landroid/framework/org/apache/harmony/security_custom/x501/Name;

    move-result-object v1

    invoke-virtual {v1}, Landroid/framework/org/apache/harmony/security_custom/x501/Name;->getX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->issuer:Ljavax/security/auth/x500/X500Principal;

    .line 174
    :cond_0
    return-object v0
.end method

.method public getKeyUsage()[Z
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->extensions:Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;

    if-nez v0, :cond_0

    .line 288
    const/4 v0, 0x0

    .line 290
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->extensions:Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;

    invoke-virtual {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->valueOfKeyUsage()[Z

    move-result-object v0

    goto :goto_0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 412
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->extensions:Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;

    if-nez v0, :cond_0

    .line 413
    const/4 v0, 0x0

    .line 416
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->extensions:Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;

    invoke-virtual {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->getNonCriticalExtensions()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public getNotAfter()Ljava/util/Date;
    .locals 4

    .prologue
    .line 203
    new-instance v0, Ljava/util/Date;

    invoke-direct {p0}, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->getNotAfterInternal()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getNotBefore()Ljava/util/Date;
    .locals 4

    .prologue
    .line 191
    new-instance v0, Ljava/util/Date;

    invoke-direct {p0}, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->getNotBeforeInternal()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->publicKey:Ljava/security/PublicKey;

    .line 357
    .local v0, "result":Ljava/security/PublicKey;
    if-nez v0, :cond_0

    .line 358
    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->tbsCert:Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertificate;

    invoke-virtual {v1}, Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertificate;->getSubjectPublicKeyInfo()Landroid/framework/org/apache/harmony/security_custom/x509/SubjectPublicKeyInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/framework/org/apache/harmony/security_custom/x509/SubjectPublicKeyInfo;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->publicKey:Ljava/security/PublicKey;

    .line 360
    :cond_0
    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->serialNumber:Ljava/math/BigInteger;

    .line 158
    .local v0, "result":Ljava/math/BigInteger;
    if-nez v0, :cond_0

    .line 159
    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->tbsCert:Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertificate;

    invoke-virtual {v1}, Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->serialNumber:Ljava/math/BigInteger;

    .line 161
    :cond_0
    return-object v0
.end method

.method public getSigAlgName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->sigAlgName:Ljava/lang/String;

    .line 240
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 241
    invoke-virtual {p0}, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->getSigAlgOID()Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, "sigAlgOIDLocal":Ljava/lang/String;
    invoke-static {v1}, Landroid/framework/org/apache/harmony/security_custom/utils/AlgNameMapper;->map2AlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    if-nez v0, :cond_0

    .line 246
    move-object v0, v1

    .line 248
    :cond_0
    iput-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->sigAlgName:Ljava/lang/String;

    .line 250
    .end local v1    # "sigAlgOIDLocal":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->sigAlgOID:Ljava/lang/String;

    .line 255
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 257
    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->tbsCert:Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertificate;

    invoke-virtual {v1}, Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertificate;->getSignature()Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->sigAlgOID:Ljava/lang/String;

    .line 259
    :cond_0
    return-object v0
.end method

.method public getSigAlgParams()[B
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 263
    iget-boolean v2, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->nullSigAlgParams:Z

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 275
    :cond_0
    :goto_0
    return-object v0

    .line 266
    :cond_1
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->sigAlgParams:[B

    .line 267
    .local v0, "result":[B
    if-nez v0, :cond_0

    .line 268
    iget-object v2, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->tbsCert:Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertificate;

    invoke-virtual {v2}, Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertificate;->getSignature()Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;->getParameters()[B

    move-result-object v0

    .line 269
    if-nez v0, :cond_2

    .line 270
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->nullSigAlgParams:Z

    move-object v0, v1

    .line 271
    goto :goto_0

    .line 273
    :cond_2
    iput-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->sigAlgParams:[B

    goto :goto_0
.end method

.method public getSignature()[B
    .locals 1

    .prologue
    .line 227
    invoke-direct {p0}, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->getSignatureInternal()[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getSubjectAlternativeNames()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 313
    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->extensions:Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;

    if-nez v1, :cond_0

    .line 314
    const/4 v1, 0x0

    .line 320
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->extensions:Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;

    invoke-virtual {v1}, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->valueOfSubjectAlternativeName()Ljava/util/Collection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSubjectDN()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0}, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectUniqueID()[Z
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->tbsCert:Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertificate;

    invoke-virtual {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertificate;->getSubjectUniqueID()[Z

    move-result-object v0

    return-object v0
.end method

.method public getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->subject:Ljavax/security/auth/x500/X500Principal;

    .line 183
    .local v0, "result":Ljavax/security/auth/x500/X500Principal;
    if-nez v0, :cond_0

    .line 185
    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->tbsCert:Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertificate;

    invoke-virtual {v1}, Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertificate;->getSubject()Landroid/framework/org/apache/harmony/security_custom/x501/Name;

    move-result-object v1

    invoke-virtual {v1}, Landroid/framework/org/apache/harmony/security_custom/x501/Name;->getX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->subject:Ljavax/security/auth/x500/X500Principal;

    .line 187
    :cond_0
    return-object v0
.end method

.method public getTBSCertificate()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 215
    invoke-direct {p0}, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->getTbsCertificateInternal()[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->tbsCert:Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertificate;

    invoke-virtual {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/TBSCertificate;->getVersion()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->extensions:Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;

    if-nez v0, :cond_0

    .line 438
    const/4 v0, 0x0

    .line 441
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->extensions:Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;

    invoke-virtual {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->hasUnsupportedCritical()Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->certificate:Landroid/framework/org/apache/harmony/security_custom/x509/Certificate;

    invoke-virtual {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/Certificate;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verify(Ljava/security/PublicKey;)V
    .locals 5
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 373
    :try_start_0
    invoke-virtual {p0}, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->getSigAlgName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AndroidOpenSSL"

    invoke-static {v3, v4}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 377
    .local v1, "signature":Ljava/security/Signature;
    :goto_0
    invoke-virtual {v1, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 379
    invoke-direct {p0}, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->getTbsCertificateInternal()[B

    move-result-object v2

    .line 381
    .local v2, "tbsCertificateLocal":[B
    const/4 v3, 0x0

    array-length v4, v2

    invoke-virtual {v1, v2, v3, v4}, Ljava/security/Signature;->update([BII)V

    .line 382
    iget-object v3, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->certificate:Landroid/framework/org/apache/harmony/security_custom/x509/Certificate;

    invoke-virtual {v3}, Landroid/framework/org/apache/harmony/security_custom/x509/Certificate;->getSignatureValue()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/Signature;->verify([B)Z

    move-result v3

    if-nez v3, :cond_0

    .line 383
    new-instance v3, Ljava/security/SignatureException;

    const-string v4, "Signature was not verified"

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 374
    .end local v1    # "signature":Ljava/security/Signature;
    .end local v2    # "tbsCertificateLocal":[B
    :catch_0
    move-exception v0

    .line 375
    .local v0, "ignored":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {p0}, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->getSigAlgName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .restart local v1    # "signature":Ljava/security/Signature;
    goto :goto_0

    .line 385
    .end local v0    # "ignored":Ljava/security/NoSuchAlgorithmException;
    .restart local v2    # "tbsCertificateLocal":[B
    :cond_0
    return-void
.end method

.method public verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 393
    if-nez p2, :cond_0

    .line 394
    :try_start_0
    invoke-virtual {p0}, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->getSigAlgName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AndroidOpenSSL"

    invoke-static {v3, v4}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 401
    .local v1, "signature":Ljava/security/Signature;
    :goto_0
    invoke-virtual {v1, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 403
    invoke-direct {p0}, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->getTbsCertificateInternal()[B

    move-result-object v2

    .line 405
    .local v2, "tbsCertificateLocal":[B
    const/4 v3, 0x0

    array-length v4, v2

    invoke-virtual {v1, v2, v3, v4}, Ljava/security/Signature;->update([BII)V

    .line 406
    iget-object v3, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->certificate:Landroid/framework/org/apache/harmony/security_custom/x509/Certificate;

    invoke-virtual {v3}, Landroid/framework/org/apache/harmony/security_custom/x509/Certificate;->getSignatureValue()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/Signature;->verify([B)Z

    move-result v3

    if-nez v3, :cond_1

    .line 407
    new-instance v3, Ljava/security/SignatureException;

    const-string v4, "Signature was not verified"

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 396
    .end local v1    # "signature":Ljava/security/Signature;
    .end local v2    # "tbsCertificateLocal":[B
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->getSigAlgName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .restart local v1    # "signature":Ljava/security/Signature;
    goto :goto_0

    .line 398
    .end local v1    # "signature":Ljava/security/Signature;
    :catch_0
    move-exception v0

    .line 399
    .local v0, "ignored":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {p0}, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;->getSigAlgName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .restart local v1    # "signature":Ljava/security/Signature;
    goto :goto_0

    .line 409
    .end local v0    # "ignored":Ljava/security/NoSuchAlgorithmException;
    .restart local v2    # "tbsCertificateLocal":[B
    :cond_1
    return-void
.end method
