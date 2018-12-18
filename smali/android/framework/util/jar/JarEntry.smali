.class public Landroid/framework/util/jar/JarEntry;
.super Ljava/util/zip/ZipEntry;
.source "JarEntry.java"


# instance fields
.field private attributes:Landroid/framework/util/jar/Attributes;

.field private factory:Ljava/security/cert/CertificateFactory;

.field private isFactoryChecked:Z

.field parentJar:Landroid/framework/util/jar/JarFile;

.field signers:[Ljava/security/CodeSigner;


# direct methods
.method public constructor <init>(Landroid/framework/util/jar/JarEntry;)V
    .locals 1
    .param p1, "je"    # Landroid/framework/util/jar/JarEntry;

    .prologue
    .line 123
    invoke-direct {p0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/framework/util/jar/JarEntry;->isFactoryChecked:Z

    .line 124
    iget-object v0, p1, Landroid/framework/util/jar/JarEntry;->parentJar:Landroid/framework/util/jar/JarFile;

    iput-object v0, p0, Landroid/framework/util/jar/JarEntry;->parentJar:Landroid/framework/util/jar/JarFile;

    .line 125
    iget-object v0, p1, Landroid/framework/util/jar/JarEntry;->attributes:Landroid/framework/util/jar/Attributes;

    iput-object v0, p0, Landroid/framework/util/jar/JarEntry;->attributes:Landroid/framework/util/jar/Attributes;

    .line 126
    iget-object v0, p1, Landroid/framework/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    iput-object v0, p0, Landroid/framework/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    .line 127
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/framework/util/jar/JarEntry;->isFactoryChecked:Z

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/util/zip/ZipEntry;)V
    .locals 1
    .param p1, "entry"    # Ljava/util/zip/ZipEntry;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/framework/util/jar/JarEntry;->isFactoryChecked:Z

    .line 69
    return-void
.end method

.method private addCodeSigner(Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/security/CodeSigner;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "asigners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/CodeSigner;>;"
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    const/4 v2, 0x1

    .line 196
    const/4 v0, 0x0

    .line 197
    .local v0, "certPath":Ljava/security/cert/CertPath;
    iget-boolean v1, p0, Landroid/framework/util/jar/JarEntry;->isFactoryChecked:Z

    if-nez v1, :cond_0

    .line 199
    :try_start_0
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    iput-object v1, p0, Landroid/framework/util/jar/JarEntry;->factory:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    iput-boolean v2, p0, Landroid/framework/util/jar/JarEntry;->isFactoryChecked:Z

    .line 206
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/framework/util/jar/JarEntry;->factory:Ljava/security/cert/CertificateFactory;

    if-nez v1, :cond_2

    .line 217
    :cond_1
    :goto_1
    return-void

    .line 200
    :catch_0
    move-exception v1

    .line 203
    iput-boolean v2, p0, Landroid/framework/util/jar/JarEntry;->isFactoryChecked:Z

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-boolean v2, p0, Landroid/framework/util/jar/JarEntry;->isFactoryChecked:Z

    throw v1

    .line 210
    :cond_2
    :try_start_1
    iget-object v1, p0, Landroid/framework/util/jar/JarEntry;->factory:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v1, p2}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 214
    :goto_2
    if-eqz v0, :cond_1

    .line 215
    new-instance v1, Ljava/security/CodeSigner;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/security/CodeSigner;-><init>(Ljava/security/cert/CertPath;Ljava/security/Timestamp;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 211
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private getCodeSigners([Ljava/security/cert/Certificate;)[Ljava/security/CodeSigner;
    .locals 11
    .param p1, "certs"    # [Ljava/security/cert/Certificate;

    .prologue
    const/4 v8, 0x0

    .line 152
    if-nez p1, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-object v8

    .line 156
    :cond_1
    const/4 v6, 0x0

    .line 157
    .local v6, "prevIssuer":Ljavax/security/auth/x500/X500Principal;
    new-instance v5, Ljava/util/ArrayList;

    array-length v10, p1

    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 158
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/Certificate;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v1, "asigners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/CodeSigner;>;"
    move-object v0, p1

    .local v0, "arr$":[Ljava/security/cert/Certificate;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v2, v0, v3

    .line 161
    .local v2, "element":Ljava/security/cert/Certificate;
    instance-of v10, v2, Ljava/security/cert/X509Certificate;

    if-nez v10, :cond_2

    .line 160
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move-object v9, v2

    .line 165
    check-cast v9, Ljava/security/cert/X509Certificate;

    .line 166
    .local v9, "x509":Ljava/security/cert/X509Certificate;
    if-eqz v6, :cond_3

    .line 167
    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    .line 168
    .local v7, "subj":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v6, v7}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 171
    invoke-direct {p0, v1, v5}, Landroid/framework/util/jar/JarEntry;->addCodeSigner(Ljava/util/ArrayList;Ljava/util/List;)V

    .line 173
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 177
    .end local v7    # "subj":Ljavax/security/auth/x500/X500Principal;
    :cond_3
    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    .line 178
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 180
    .end local v2    # "element":Ljava/security/cert/Certificate;
    .end local v9    # "x509":Ljava/security/cert/X509Certificate;
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    .line 181
    invoke-direct {p0, v1, v5}, Landroid/framework/util/jar/JarEntry;->addCodeSigner(Ljava/util/ArrayList;Ljava/util/List;)V

    .line 183
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 188
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v8, v10, [Ljava/security/CodeSigner;

    .line 189
    .local v8, "tmp":[Ljava/security/CodeSigner;
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public getAttributes()Landroid/framework/util/jar/Attributes;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v1, p0, Landroid/framework/util/jar/JarEntry;->attributes:Landroid/framework/util/jar/Attributes;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/framework/util/jar/JarEntry;->parentJar:Landroid/framework/util/jar/JarFile;

    if-nez v1, :cond_1

    .line 82
    :cond_0
    iget-object v1, p0, Landroid/framework/util/jar/JarEntry;->attributes:Landroid/framework/util/jar/Attributes;

    .line 88
    :goto_0
    return-object v1

    .line 84
    :cond_1
    iget-object v1, p0, Landroid/framework/util/jar/JarEntry;->parentJar:Landroid/framework/util/jar/JarFile;

    invoke-virtual {v1}, Landroid/framework/util/jar/JarFile;->getManifest()Landroid/framework/util/jar/Manifest;

    move-result-object v0

    .line 85
    .local v0, "manifest":Landroid/framework/util/jar/Manifest;
    if-nez v0, :cond_2

    .line 86
    const/4 v1, 0x0

    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {p0}, Landroid/framework/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/framework/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Landroid/framework/util/jar/Attributes;

    move-result-object v1

    iput-object v1, p0, Landroid/framework/util/jar/JarEntry;->attributes:Landroid/framework/util/jar/Attributes;

    goto :goto_0
.end method

.method public getCertificates()[Ljava/security/cert/Certificate;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 101
    iget-object v2, p0, Landroid/framework/util/jar/JarEntry;->parentJar:Landroid/framework/util/jar/JarFile;

    if-nez v2, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-object v1

    .line 104
    :cond_1
    iget-object v2, p0, Landroid/framework/util/jar/JarEntry;->parentJar:Landroid/framework/util/jar/JarFile;

    iget-object v0, v2, Landroid/framework/util/jar/JarFile;->verifier:Landroid/framework/util/jar/JarVerifier;

    .line 105
    .local v0, "jarVerifier":Landroid/framework/util/jar/JarVerifier;
    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Landroid/framework/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/framework/util/jar/JarVerifier;->getCertificates(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v1

    goto :goto_0
.end method

.method public getCodeSigners()[Ljava/security/CodeSigner;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 139
    iget-object v1, p0, Landroid/framework/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    if-nez v1, :cond_0

    .line 140
    invoke-virtual {p0}, Landroid/framework/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/framework/util/jar/JarEntry;->getCodeSigners([Ljava/security/cert/Certificate;)[Ljava/security/CodeSigner;

    move-result-object v1

    iput-object v1, p0, Landroid/framework/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    .line 142
    :cond_0
    iget-object v1, p0, Landroid/framework/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    if-nez v1, :cond_1

    .line 143
    const/4 v0, 0x0

    .line 148
    :goto_0
    return-object v0

    .line 146
    :cond_1
    iget-object v1, p0, Landroid/framework/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    array-length v1, v1

    new-array v0, v1, [Ljava/security/CodeSigner;

    .line 147
    .local v0, "tmp":[Ljava/security/CodeSigner;
    iget-object v1, p0, Landroid/framework/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method setAttributes(Landroid/framework/util/jar/Attributes;)V
    .locals 0
    .param p1, "attrib"    # Landroid/framework/util/jar/Attributes;

    .prologue
    .line 112
    iput-object p1, p0, Landroid/framework/util/jar/JarEntry;->attributes:Landroid/framework/util/jar/Attributes;

    .line 113
    return-void
.end method
