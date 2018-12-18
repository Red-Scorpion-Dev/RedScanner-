.class public Landroid/framework/org/apache/harmony/security_custom/utils/JarUtils;
.super Ljava/lang/Object;
.source "JarUtils.java"


# static fields
.field private static final MESSAGE_DIGEST_OID:[I

.field private static final OPEN_SSL_PROVIDER_NAME:Ljava/lang/String; = "AndroidOpenSSL"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/framework/org/apache/harmony/security_custom/utils/JarUtils;->MESSAGE_DIGEST_OID:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x9
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createChain(Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;Z)[Ljava/security/cert/X509Certificate;
    .locals 7
    .param p0, "signer"    # Ljava/security/cert/X509Certificate;
    .param p1, "candidates"    # [Ljava/security/cert/X509Certificate;
    .param p2, "chainCheck"    # Z

    .prologue
    .line 187
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 188
    .local v0, "chain":Ljava/util/LinkedList;
    const/4 v5, 0x0

    invoke-virtual {v0, v5, p0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 191
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v5

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 192
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/security/cert/X509Certificate;

    check-cast v5, [Ljava/security/cert/X509Certificate;

    .line 212
    :goto_0
    return-object v5

    .line 195
    :cond_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    .line 197
    .local v2, "issuer":Ljava/security/Principal;
    move-object v4, p0

    .line 198
    .local v4, "subjectCert":Ljava/security/cert/X509Certificate;
    const/4 v1, 0x1

    .line 200
    .local v1, "count":I
    :goto_1
    invoke-static {v2, p1, v4, p2}, Landroid/framework/org/apache/harmony/security_custom/utils/JarUtils;->findCert(Ljava/security/Principal;[Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Z)Ljava/security/cert/X509Certificate;

    move-result-object v3

    .line 201
    .local v3, "issuerCert":Ljava/security/cert/X509Certificate;
    if-nez v3, :cond_2

    .line 212
    :cond_1
    new-array v5, v1, [Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/security/cert/X509Certificate;

    check-cast v5, [Ljava/security/cert/X509Certificate;

    goto :goto_0

    .line 204
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 205
    add-int/lit8 v1, v1, 0x1

    .line 206
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v5

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 209
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    .line 210
    move-object v4, v3

    goto :goto_1
.end method

.method private static findCert(Ljava/security/Principal;[Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Z)Ljava/security/cert/X509Certificate;
    .locals 3
    .param p0, "issuer"    # Ljava/security/Principal;
    .param p1, "candidates"    # [Ljava/security/cert/X509Certificate;
    .param p2, "subjectCert"    # Ljava/security/cert/X509Certificate;
    .param p3, "chainCheck"    # Z

    .prologue
    .line 217
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 218
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 219
    if-eqz p3, :cond_0

    .line 221
    :try_start_0
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :cond_0
    aget-object v2, p1, v1

    .line 229
    :goto_1
    return-object v2

    .line 222
    :catch_0
    move-exception v0

    .line 217
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 229
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static verifySignature(Ljava/io/InputStream;Ljava/io/InputStream;)[Ljava/security/cert/Certificate;
    .locals 1
    .param p0, "signature"    # Ljava/io/InputStream;
    .param p1, "signatureBlock"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/framework/org/apache/harmony/security_custom/utils/JarUtils;->verifySignature(Ljava/io/InputStream;Ljava/io/InputStream;Z)[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public static verifySignature(Ljava/io/InputStream;Ljava/io/InputStream;Z)[Ljava/security/cert/Certificate;
    .locals 29
    .param p0, "signature"    # Ljava/io/InputStream;
    .param p1, "signatureBlock"    # Ljava/io/InputStream;
    .param p2, "chainCheck"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 76
    new-instance v5, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;-><init>(Ljava/io/InputStream;)V

    .line 77
    .local v5, "bis":Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;
    sget-object v27, Landroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;->decode(Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo;

    .line 78
    .local v17, "info":Landroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo;
    invoke-virtual/range {v17 .. v17}, Landroid/framework/org/apache/harmony/security_custom/pkcs7/ContentInfo;->getSignedData()Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignedData;

    move-result-object v25

    .line 79
    .local v25, "signedData":Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignedData;
    if-nez v25, :cond_0

    .line 80
    new-instance v27, Ljava/io/IOException;

    const-string v28, "No SignedData found"

    invoke-direct/range {v27 .. v28}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 82
    :cond_0
    invoke-virtual/range {v25 .. v25}, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignedData;->getCertificates()Ljava/util/List;

    move-result-object v12

    .line 84
    .local v12, "encCerts":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/framework/org/apache/harmony/security_custom/x509/Certificate;>;"
    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v27

    if-eqz v27, :cond_1

    .line 85
    const/16 v27, 0x0

    .line 182
    :goto_0
    return-object v27

    .line 87
    :cond_1
    invoke-interface {v12}, Ljava/util/Collection;->size()I

    move-result v27

    move/from16 v0, v27

    new-array v6, v0, [Ljava/security/cert/X509Certificate;

    .line 88
    .local v6, "certs":[Ljava/security/cert/X509Certificate;
    const/4 v14, 0x0

    .line 89
    .local v14, "i":I
    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/framework/org/apache/harmony/security_custom/x509/Certificate;

    .line 90
    .local v11, "encCert":Landroid/framework/org/apache/harmony/security_custom/x509/Certificate;
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "i":I
    .local v15, "i":I
    new-instance v27, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;

    move-object/from16 v0, v27

    invoke-direct {v0, v11}, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertImpl;-><init>(Landroid/framework/org/apache/harmony/security_custom/x509/Certificate;)V

    aput-object v27, v6, v14

    move v14, v15

    .line 91
    .end local v15    # "i":I
    .restart local v14    # "i":I
    goto :goto_1

    .line 93
    .end local v11    # "encCert":Landroid/framework/org/apache/harmony/security_custom/x509/Certificate;
    :cond_2
    invoke-virtual/range {v25 .. v25}, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignedData;->getSignerInfos()Ljava/util/List;

    move-result-object v24

    .line 95
    .local v24, "sigInfos":Ljava/util/List;, "Ljava/util/List<Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->isEmpty()Z

    move-result v27

    if-nez v27, :cond_4

    .line 96
    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;

    .line 102
    .local v23, "sigInfo":Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;
    invoke-virtual/range {v23 .. v23}, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;->getIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v18

    .line 105
    .local v18, "issuer":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual/range {v23 .. v23}, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v26

    .line 108
    .local v26, "snum":Ljava/math/BigInteger;
    const/16 v19, 0x0

    .line 109
    .local v19, "issuerSertIndex":I
    const/4 v14, 0x0

    :goto_2
    array-length v0, v6

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v14, v0, :cond_3

    .line 110
    aget-object v27, v6, v14

    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v27

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_5

    aget-object v27, v6, v14

    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_5

    .line 112
    move/from16 v19, v14

    .line 116
    :cond_3
    array-length v0, v6

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v14, v0, :cond_6

    .line 117
    const/16 v27, 0x0

    goto :goto_0

    .line 98
    .end local v18    # "issuer":Ljavax/security/auth/x500/X500Principal;
    .end local v19    # "issuerSertIndex":I
    .end local v23    # "sigInfo":Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;
    .end local v26    # "snum":Ljava/math/BigInteger;
    :cond_4
    const/16 v27, 0x0

    goto :goto_0

    .line 109
    .restart local v18    # "issuer":Ljavax/security/auth/x500/X500Principal;
    .restart local v19    # "issuerSertIndex":I
    .restart local v23    # "sigInfo":Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;
    .restart local v26    # "snum":Ljava/math/BigInteger;
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 120
    :cond_6
    aget-object v27, v6, v19

    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/X509Certificate;->hasUnsupportedCriticalExtension()Z

    move-result v27

    if-eqz v27, :cond_7

    .line 121
    new-instance v27, Ljava/lang/SecurityException;

    const-string v28, "Can not recognize a critical extension"

    invoke-direct/range {v27 .. v28}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 125
    :cond_7
    const/16 v22, 0x0

    .line 126
    .local v22, "sig":Ljava/security/Signature;
    invoke-virtual/range {v23 .. v23}, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v8

    .line 127
    .local v8, "da":Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;->getDigestEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v9

    .line 128
    .local v9, "dea":Ljava/lang/String;
    const/4 v3, 0x0

    .line 129
    .local v3, "alg":Ljava/lang/String;
    if-eqz v8, :cond_8

    if-eqz v9, :cond_8

    .line 130
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "with"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 132
    :try_start_0
    const-string v27, "AndroidOpenSSL"

    move-object/from16 v0, v27

    invoke-static {v3, v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v22

    .line 135
    :cond_8
    :goto_3
    if-nez v22, :cond_a

    .line 136
    move-object v3, v8

    .line 137
    if-nez v3, :cond_9

    .line 138
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 141
    :cond_9
    :try_start_1
    const-string v27, "AndroidOpenSSL"

    move-object/from16 v0, v27

    invoke-static {v3, v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v22

    .line 146
    :cond_a
    aget-object v27, v6, v19

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initVerify(Ljava/security/cert/Certificate;)V

    .line 151
    invoke-virtual/range {v23 .. v23}, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;->getAuthenticatedAttributes()Ljava/util/List;

    move-result-object v4

    .line 153
    .local v4, "atr":Ljava/util/List;, "Ljava/util/List<Landroid/framework/org/apache/harmony/security_custom/x501/AttributeTypeAndValue;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->available()I

    move-result v27

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 154
    .local v21, "sfBytes":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 156
    if-nez v4, :cond_c

    .line 157
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 178
    :cond_b
    invoke-virtual/range {v23 .. v23}, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;->getEncryptedDigest()[B

    move-result-object v27

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v27

    if-nez v27, :cond_f

    .line 179
    new-instance v27, Ljava/lang/SecurityException;

    const-string v28, "Incorrect signature"

    invoke-direct/range {v27 .. v28}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 142
    .end local v4    # "atr":Ljava/util/List;, "Ljava/util/List<Landroid/framework/org/apache/harmony/security_custom/x501/AttributeTypeAndValue;>;"
    .end local v21    # "sfBytes":[B
    :catch_0
    move-exception v10

    .line 143
    .local v10, "e":Ljava/security/NoSuchAlgorithmException;
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 159
    .end local v10    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v4    # "atr":Ljava/util/List;, "Ljava/util/List<Landroid/framework/org/apache/harmony/security_custom/x501/AttributeTypeAndValue;>;"
    .restart local v21    # "sfBytes":[B
    :cond_c
    invoke-virtual/range {v23 .. v23}, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;->getEncodedAuthenticatedAttributes()[B

    move-result-object v27

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 163
    const/4 v13, 0x0

    .line 164
    .local v13, "existingDigest":[B
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_d
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_e

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/framework/org/apache/harmony/security_custom/x501/AttributeTypeAndValue;

    .line 165
    .local v2, "a":Landroid/framework/org/apache/harmony/security_custom/x501/AttributeTypeAndValue;
    invoke-virtual {v2}, Landroid/framework/org/apache/harmony/security_custom/x501/AttributeTypeAndValue;->getType()Landroid/framework/org/apache/harmony/security_custom/utils/ObjectIdentifier;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/framework/org/apache/harmony/security_custom/utils/ObjectIdentifier;->getOid()[I

    move-result-object v27

    sget-object v28, Landroid/framework/org/apache/harmony/security_custom/utils/JarUtils;->MESSAGE_DIGEST_OID:[I

    invoke-static/range {v27 .. v28}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v27

    if-eqz v27, :cond_d

    goto :goto_4

    .line 169
    .end local v2    # "a":Landroid/framework/org/apache/harmony/security_custom/x501/AttributeTypeAndValue;
    :cond_e
    if-eqz v13, :cond_b

    .line 170
    invoke-virtual/range {v23 .. v23}, Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v20

    .line 171
    .local v20, "md":Ljava/security/MessageDigest;
    invoke-virtual/range {v20 .. v21}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v7

    .line 172
    .local v7, "computedDigest":[B
    invoke-static {v13, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v27

    if-nez v27, :cond_b

    .line 173
    new-instance v27, Ljava/lang/SecurityException;

    const-string v28, "Incorrect MD"

    invoke-direct/range {v27 .. v28}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 182
    .end local v7    # "computedDigest":[B
    .end local v13    # "existingDigest":[B
    .end local v20    # "md":Ljava/security/MessageDigest;
    :cond_f
    aget-object v27, v6, v19

    move-object/from16 v0, v27

    move/from16 v1, p2

    invoke-static {v0, v6, v1}, Landroid/framework/org/apache/harmony/security_custom/utils/JarUtils;->createChain(Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;Z)[Ljava/security/cert/X509Certificate;

    move-result-object v27

    goto/16 :goto_0

    .line 133
    .end local v4    # "atr":Ljava/util/List;, "Ljava/util/List<Landroid/framework/org/apache/harmony/security_custom/x501/AttributeTypeAndValue;>;"
    .end local v21    # "sfBytes":[B
    :catch_1
    move-exception v27

    goto/16 :goto_3
.end method
