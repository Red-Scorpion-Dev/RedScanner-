.class Landroid/framework/util/jar/JarVerifier;
.super Ljava/lang/Object;
.source "JarVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/framework/util/jar/JarVerifier$VerifierEntry;
    }
.end annotation


# instance fields
.field private final certificates:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final chainCheck:Z

.field private final jarName:Ljava/lang/String;

.field mainAttributesEnd:I

.field private man:Landroid/framework/util/jar/Manifest;

.field private metaEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private final signatures:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/framework/util/jar/Attributes;",
            ">;>;"
        }
    .end annotation
.end field

.field private final verifiedEntries:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/framework/util/jar/JarVerifier;-><init>(Ljava/lang/String;Z)V

    .line 150
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "chainCheck"    # Z

    .prologue
    const/4 v1, 0x5

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Landroid/framework/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    .line 64
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Landroid/framework/util/jar/JarVerifier;->signatures:Ljava/util/Hashtable;

    .line 67
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Landroid/framework/util/jar/JarVerifier;->certificates:Ljava/util/Hashtable;

    .line 70
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Landroid/framework/util/jar/JarVerifier;->verifiedEntries:Ljava/util/Hashtable;

    .line 161
    iput-object p1, p0, Landroid/framework/util/jar/JarVerifier;->jarName:Ljava/lang/String;

    .line 162
    iput-boolean p2, p0, Landroid/framework/util/jar/JarVerifier;->chainCheck:Z

    .line 163
    return-void
.end method

.method static synthetic access$000(Landroid/framework/util/jar/JarVerifier;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/framework/util/jar/JarVerifier;

    .prologue
    .line 56
    iget-object v0, p0, Landroid/framework/util/jar/JarVerifier;->jarName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/framework/util/jar/JarVerifier;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;
    .locals 1
    .param p0, "x0"    # Landroid/framework/util/jar/JarVerifier;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/framework/util/jar/JarVerifier;->invalidDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/framework/util/jar/JarVerifier;)Ljava/util/Hashtable;
    .locals 1
    .param p0, "x0"    # Landroid/framework/util/jar/JarVerifier;

    .prologue
    .line 56
    iget-object v0, p0, Landroid/framework/util/jar/JarVerifier;->verifiedEntries:Ljava/util/Hashtable;

    return-object v0
.end method

.method private failedVerification(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;
    .locals 3
    .param p1, "jarName"    # Ljava/lang/String;
    .param p2, "signatureFile"    # Ljava/lang/String;

    .prologue
    .line 142
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed verification of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSignerCertificates(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Vector;
    .locals 6
    .param p0, "signatureFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/cert/Certificate;",
            ">;)",
            "Ljava/util/Vector",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 475
    .local p1, "certificates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/security/cert/Certificate;>;"
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 476
    .local v5, "result":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/security/cert/Certificate;>;"
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/Certificate;

    .line 477
    .local v1, "certChain":[Ljava/security/cert/Certificate;
    if-eqz v1, :cond_0

    .line 478
    move-object v0, v1

    .local v0, "arr$":[Ljava/security/cert/Certificate;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 479
    .local v2, "element":Ljava/security/cert/Certificate;
    invoke-virtual {v5, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 478
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 482
    .end local v0    # "arr$":[Ljava/security/cert/Certificate;
    .end local v2    # "element":Ljava/security/cert/Certificate;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    return-object v5
.end method

.method private invalidDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;
    .locals 3
    .param p1, "signatureFile"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "jarName"    # Ljava/lang/String;

    .prologue
    .line 137
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has invalid digest for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verify(Landroid/framework/util/jar/Attributes;Ljava/lang/String;[BIIZZ)Z
    .locals 10
    .param p1, "attributes"    # Landroid/framework/util/jar/Attributes;
    .param p2, "entry"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .param p4, "start"    # I
    .param p5, "end"    # I
    .param p6, "ignoreSecondEndline"    # Z
    .param p7, "ignorable"    # Z

    .prologue
    .line 398
    const-string v8, "Digest-Algorithms"

    invoke-virtual {p1, v8}, Landroid/framework/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, "algorithms":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 400
    const-string v1, "SHA SHA1"

    .line 402
    :cond_0
    new-instance v7, Ljava/util/StringTokenizer;

    invoke-direct {v7, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 403
    .local v7, "tokens":Ljava/util/StringTokenizer;
    :cond_1
    :goto_0
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 404
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, "algorithm":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/framework/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 406
    .local v4, "hash":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 412
    :try_start_0
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 416
    .local v6, "md":Ljava/security/MessageDigest;
    if-eqz p6, :cond_3

    add-int/lit8 v8, p5, -0x1

    aget-byte v8, p3, v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_3

    add-int/lit8 v8, p5, -0x2

    aget-byte v8, p3, v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_3

    .line 418
    add-int/lit8 v8, p5, -0x1

    sub-int/2addr v8, p4

    invoke-virtual {v6, p3, p4, v8}, Ljava/security/MessageDigest;->update([BII)V

    .line 422
    :goto_1
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 423
    .local v2, "b":[B
    sget-object v8, Lorg/apache/commons/compress/utils/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 424
    .local v5, "hashBytes":[B
    const/4 v8, 0x0

    invoke-static {v5, v8}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v8

    invoke-static {v2, v8}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result p7

    .line 426
    .end local v0    # "algorithm":Ljava/lang/String;
    .end local v2    # "b":[B
    .end local v4    # "hash":Ljava/lang/String;
    .end local v5    # "hashBytes":[B
    .end local v6    # "md":Ljava/security/MessageDigest;
    .end local p7    # "ignorable":Z
    :cond_2
    return p7

    .line 413
    .restart local v0    # "algorithm":Ljava/lang/String;
    .restart local v4    # "hash":Ljava/lang/String;
    .restart local p7    # "ignorable":Z
    :catch_0
    move-exception v3

    .line 414
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_0

    .line 420
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v6    # "md":Ljava/security/MessageDigest;
    :cond_3
    sub-int v8, p5, p4

    invoke-virtual {v6, p3, p4, v8}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_1
.end method

.method private verifyCertificate(Ljava/lang/String;)V
    .locals 25
    .param p1, "certFile"    # Ljava/lang/String;

    .prologue
    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    const/16 v7, 0x2e

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ".SF"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 292
    .local v23, "signatureFile":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/framework/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [B

    .line 293
    .local v22, "sfBytes":[B
    if-nez v22, :cond_1

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/framework/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    const-string v6, "META-INF/MANIFEST.MF"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 299
    .local v5, "manifest":[B
    if-eqz v5, :cond_0

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/framework/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [B

    .line 305
    .local v21, "sBlockBytes":[B
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v22

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v6, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v21

    invoke-direct {v6, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, p0

    iget-boolean v7, v0, Landroid/framework/util/jar/JarVerifier;->chainCheck:Z

    invoke-static {v2, v6, v7}, Landroid/framework/org/apache/harmony/security_custom/utils/JarUtils;->verifySignature(Ljava/io/InputStream;Ljava/io/InputStream;Z)[Ljava/security/cert/Certificate;

    move-result-object v24

    .line 313
    .local v24, "signerCertChain":[Ljava/security/cert/Certificate;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/framework/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 316
    if-eqz v24, :cond_2

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/framework/util/jar/JarVerifier;->certificates:Ljava/util/Hashtable;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 326
    :cond_2
    new-instance v3, Landroid/framework/util/jar/Attributes;

    invoke-direct {v3}, Landroid/framework/util/jar/Attributes;-><init>()V

    .line 327
    .local v3, "attributes":Landroid/framework/util/jar/Attributes;
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 329
    .local v17, "entries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/framework/util/jar/Attributes;>;"
    :try_start_1
    new-instance v19, Landroid/framework/util/jar/InitManifest;

    sget-object v2, Landroid/framework/util/jar/Attributes$Name;->SIGNATURE_VERSION:Landroid/framework/util/jar/Attributes$Name;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v3, v2}, Landroid/framework/util/jar/InitManifest;-><init>([BLandroid/framework/util/jar/Attributes;Landroid/framework/util/jar/Attributes$Name;)V

    .line 330
    .local v19, "im":Landroid/framework/util/jar/InitManifest;
    const/4 v2, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/framework/util/jar/InitManifest;->initEntries(Ljava/util/Map;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 335
    const/4 v12, 0x0

    .line 336
    .local v12, "createdBySigntool":Z
    const-string v2, "Created-By"

    invoke-virtual {v3, v2}, Landroid/framework/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 337
    .local v15, "createdBy":Ljava/lang/String;
    if-eqz v15, :cond_3

    .line 338
    const-string v2, "signtool"

    invoke-virtual {v15, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_4

    const/4 v12, 0x1

    .line 345
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/framework/util/jar/JarVerifier;->mainAttributesEnd:I

    if-lez v2, :cond_5

    if-nez v12, :cond_5

    .line 346
    const-string v4, "-Digest-Manifest-Main-Attributes"

    .line 347
    .local v4, "digestAttribute":Ljava/lang/String;
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Landroid/framework/util/jar/JarVerifier;->mainAttributesEnd:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Landroid/framework/util/jar/JarVerifier;->verify(Landroid/framework/util/jar/Attributes;Ljava/lang/String;[BIIZZ)Z

    move-result v2

    if-nez v2, :cond_5

    .line 348
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/framework/util/jar/JarVerifier;->jarName:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v2, v1}, Landroid/framework/util/jar/JarVerifier;->failedVerification(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;

    move-result-object v2

    throw v2

    .line 319
    .end local v3    # "attributes":Landroid/framework/util/jar/Attributes;
    .end local v4    # "digestAttribute":Ljava/lang/String;
    .end local v12    # "createdBySigntool":Z
    .end local v15    # "createdBy":Ljava/lang/String;
    .end local v17    # "entries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/framework/util/jar/Attributes;>;"
    .end local v19    # "im":Landroid/framework/util/jar/InitManifest;
    .end local v24    # "signerCertChain":[Ljava/security/cert/Certificate;
    :catch_0
    move-exception v16

    .line 320
    .local v16, "e":Ljava/io/IOException;
    goto/16 :goto_0

    .line 321
    .end local v16    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v16

    .line 322
    .local v16, "e":Ljava/security/GeneralSecurityException;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/framework/util/jar/JarVerifier;->jarName:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v2, v1}, Landroid/framework/util/jar/JarVerifier;->failedVerification(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;

    move-result-object v2

    throw v2

    .line 331
    .end local v16    # "e":Ljava/security/GeneralSecurityException;
    .restart local v3    # "attributes":Landroid/framework/util/jar/Attributes;
    .restart local v17    # "entries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/framework/util/jar/Attributes;>;"
    .restart local v24    # "signerCertChain":[Ljava/security/cert/Certificate;
    :catch_2
    move-exception v16

    .line 332
    .local v16, "e":Ljava/io/IOException;
    goto/16 :goto_0

    .line 338
    .end local v16    # "e":Ljava/io/IOException;
    .restart local v12    # "createdBySigntool":Z
    .restart local v15    # "createdBy":Ljava/lang/String;
    .restart local v19    # "im":Landroid/framework/util/jar/InitManifest;
    :cond_4
    const/4 v12, 0x0

    goto :goto_1

    .line 353
    :cond_5
    if-eqz v12, :cond_7

    const-string v4, "-Digest"

    .line 355
    .restart local v4    # "digestAttribute":Ljava/lang/String;
    :goto_2
    const/4 v6, 0x0

    array-length v7, v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Landroid/framework/util/jar/JarVerifier;->verify(Landroid/framework/util/jar/Attributes;Ljava/lang/String;[BIIZZ)Z

    move-result v2

    if-nez v2, :cond_8

    .line 357
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 359
    .local v20, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/framework/util/jar/Attributes;>;>;"
    :cond_6
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 360
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    .line 361
    .local v18, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/framework/util/jar/Attributes;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/framework/util/jar/JarVerifier;->man:Landroid/framework/util/jar/Manifest;

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Landroid/framework/util/jar/Manifest;->getChunk(Ljava/lang/String;)Landroid/framework/util/jar/Manifest$Chunk;

    move-result-object v14

    .line 362
    .local v14, "chunk":Landroid/framework/util/jar/Manifest$Chunk;
    if-eqz v14, :cond_0

    .line 365
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/framework/util/jar/Attributes;

    const-string v8, "-Digest"

    iget v10, v14, Landroid/framework/util/jar/Manifest$Chunk;->start:I

    iget v11, v14, Landroid/framework/util/jar/Manifest$Chunk;->end:I

    const/4 v13, 0x0

    move-object/from16 v6, p0

    move-object v9, v5

    invoke-direct/range {v6 .. v13}, Landroid/framework/util/jar/JarVerifier;->verify(Landroid/framework/util/jar/Attributes;Ljava/lang/String;[BIIZZ)Z

    move-result v2

    if-nez v2, :cond_6

    .line 367
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/framework/util/jar/JarVerifier;->jarName:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v2, v6}, Landroid/framework/util/jar/JarVerifier;->invalidDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;

    move-result-object v2

    throw v2

    .line 353
    .end local v4    # "digestAttribute":Ljava/lang/String;
    .end local v14    # "chunk":Landroid/framework/util/jar/Manifest$Chunk;
    .end local v18    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/framework/util/jar/Attributes;>;"
    .end local v20    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/framework/util/jar/Attributes;>;>;"
    :cond_7
    const-string v4, "-Digest-Manifest"

    goto :goto_2

    .line 371
    .restart local v4    # "digestAttribute":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/framework/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v2, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/framework/util/jar/JarVerifier;->signatures:Ljava/util/Hashtable;

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method


# virtual methods
.method addMetaEntry(Ljava/lang/String;[B)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "buf"    # [B

    .prologue
    .line 246
    iget-object v0, p0, Landroid/framework/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    return-void
.end method

.method getCertificates(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 439
    iget-object v1, p0, Landroid/framework/util/jar/JarVerifier;->verifiedEntries:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    .line 440
    .local v0, "verifiedCerts":[Ljava/security/cert/Certificate;
    if-nez v0, :cond_0

    .line 441
    const/4 v1, 0x0

    .line 443
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/Certificate;

    goto :goto_0
.end method

.method initEntry(Ljava/lang/String;)Landroid/framework/util/jar/JarVerifier$VerifierEntry;
    .locals 17
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 181
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/framework/util/jar/JarVerifier;->man:Landroid/framework/util/jar/Manifest;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/framework/util/jar/JarVerifier;->signatures:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 182
    :cond_0
    const/4 v1, 0x0

    .line 229
    :goto_0
    return-object v1

    .line 185
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/framework/util/jar/JarVerifier;->man:Landroid/framework/util/jar/Manifest;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/framework/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Landroid/framework/util/jar/Attributes;

    move-result-object v9

    .line 187
    .local v9, "attributes":Landroid/framework/util/jar/Attributes;
    if-nez v9, :cond_2

    .line 188
    const/4 v1, 0x0

    goto :goto_0

    .line 191
    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v10, "certs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/Certificate;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/framework/util/jar/JarVerifier;->signatures:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 193
    .local v14, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Landroid/framework/util/jar/Attributes;>;>;>;"
    :cond_3
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 194
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 195
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Landroid/framework/util/jar/Attributes;>;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    .line 196
    .local v13, "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/framework/util/jar/Attributes;>;"
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 198
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 199
    .local v15, "signatureFile":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/framework/util/jar/JarVerifier;->certificates:Ljava/util/Hashtable;

    invoke-static {v15, v1}, Landroid/framework/util/jar/JarVerifier;->getSignerCertificates(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 204
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Landroid/framework/util/jar/Attributes;>;>;"
    .end local v13    # "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/framework/util/jar/Attributes;>;"
    .end local v15    # "signatureFile":Ljava/lang/String;
    :cond_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 205
    const/4 v1, 0x0

    goto :goto_0

    .line 207
    :cond_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/cert/Certificate;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/security/cert/Certificate;

    .line 209
    .local v6, "certificatesArray":[Ljava/security/cert/Certificate;
    const-string v1, "Digest-Algorithms"

    invoke-virtual {v9, v1}, Landroid/framework/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 210
    .local v8, "algorithms":Ljava/lang/String;
    if-nez v8, :cond_6

    .line 211
    const-string v8, "SHA SHA1"

    .line 213
    :cond_6
    new-instance v16, Ljava/util/StringTokenizer;

    move-object/from16 v0, v16

    invoke-direct {v0, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 214
    .local v16, "tokens":Ljava/util/StringTokenizer;
    :cond_7
    :goto_2
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 215
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 216
    .local v7, "algorithm":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-Digest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/framework/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 217
    .local v12, "hash":Ljava/lang/String;
    if-eqz v12, :cond_7

    .line 220
    sget-object v1, Lorg/apache/commons/compress/utils/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v12, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 223
    .local v5, "hashBytes":[B
    :try_start_0
    new-instance v1, Landroid/framework/util/jar/JarVerifier$VerifierEntry;

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/framework/util/jar/JarVerifier$VerifierEntry;-><init>(Landroid/framework/util/jar/JarVerifier;Ljava/lang/String;Ljava/security/MessageDigest;[B[Ljava/security/cert/Certificate;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 225
    :catch_0
    move-exception v1

    goto :goto_2

    .line 229
    .end local v5    # "hashBytes":[B
    .end local v7    # "algorithm":Ljava/lang/String;
    .end local v12    # "hash":Ljava/lang/String;
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method isSignedJar()Z
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Landroid/framework/util/jar/JarVerifier;->certificates:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized readCertificates()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 267
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/framework/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 282
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 270
    :cond_1
    :try_start_1
    iget-object v3, p0, Landroid/framework/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 271
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 272
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 273
    .local v1, "key":Ljava/lang/String;
    const-string v3, ".DSA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, ".RSA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 274
    :cond_3
    invoke-direct {p0, v1}, Landroid/framework/util/jar/JarVerifier;->verifyCertificate(Ljava/lang/String;)V

    .line 276
    iget-object v3, p0, Landroid/framework/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    .line 279
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 267
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 282
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method

.method removeMetaEntries()V
    .locals 1

    .prologue
    .line 453
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/framework/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    .line 454
    return-void
.end method

.method setManifest(Landroid/framework/util/jar/Manifest;)V
    .locals 0
    .param p1, "mf"    # Landroid/framework/util/jar/Manifest;

    .prologue
    .line 382
    iput-object p1, p0, Landroid/framework/util/jar/JarVerifier;->man:Landroid/framework/util/jar/Manifest;

    .line 383
    return-void
.end method
