.class public Landroid/framework/util/jar/JarFileHelper;
.super Ljava/lang/Object;
.source "JarFileHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSignedJarCerts(Ljava/lang/String;Z)[Ljava/security/cert/Certificate;
    .locals 10
    .param p0, "jarName"    # Ljava/lang/String;
    .param p1, "chainCheck"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 15
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    .local v3, "file":Ljava/io/File;
    const/4 v4, 0x0

    .line 18
    .local v4, "foundCerts":[Ljava/security/cert/Certificate;
    new-instance v6, Landroid/framework/util/jar/JarFile;

    invoke-direct {v6, v3, v7, v7, p1}, Landroid/framework/util/jar/JarFile;-><init>(Ljava/io/File;ZIZ)V

    .line 21
    .local v6, "jarFile":Landroid/framework/util/jar/JarFile;
    :try_start_0
    invoke-virtual {v6}, Landroid/framework/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 22
    .local v1, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Landroid/framework/util/jar/JarEntry;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 23
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/framework/util/jar/JarEntry;

    .line 24
    .local v2, "entry":Landroid/framework/util/jar/JarEntry;
    invoke-virtual {v6, v2}, Landroid/framework/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    .line 26
    .local v5, "is":Ljava/io/InputStream;
    invoke-virtual {v2}, Landroid/framework/util/jar/JarEntry;->getSize()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/io/InputStream;->skip(J)J

    .line 27
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 28
    invoke-virtual {v2}, Landroid/framework/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 29
    .local v0, "certs":[Ljava/security/cert/Certificate;
    if-eqz v0, :cond_0

    array-length v7, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v7, :cond_0

    .line 30
    move-object v4, v0

    .line 35
    .end local v0    # "certs":[Ljava/security/cert/Certificate;
    .end local v2    # "entry":Landroid/framework/util/jar/JarEntry;
    .end local v5    # "is":Ljava/io/InputStream;
    :cond_1
    invoke-virtual {v6}, Landroid/framework/util/jar/JarFile;->close()V

    .line 38
    return-object v4

    .line 35
    .end local v1    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Landroid/framework/util/jar/JarEntry;>;"
    :catchall_0
    move-exception v7

    invoke-virtual {v6}, Landroid/framework/util/jar/JarFile;->close()V

    throw v7
.end method

.method public static isExploitingBug13678484(Ljava/lang/String;)Z
    .locals 11
    .param p0, "apkName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 43
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v7, "validatedCertChain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0, v8}, Landroid/framework/util/jar/JarFileHelper;->getSignedJarCerts(Ljava/lang/String;Z)[Ljava/security/cert/Certificate;

    move-result-object v2

    .line 46
    .local v2, "certs":[Ljava/security/cert/Certificate;
    move-object v0, v2

    .local v0, "arr$":[Ljava/security/cert/Certificate;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v0, v4

    .line 47
    .local v1, "c":Ljava/security/cert/Certificate;
    check-cast v1, Ljava/security/cert/X509Certificate;

    .end local v1    # "c":Ljava/security/cert/Certificate;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v10

    invoke-interface {v10}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 49
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v6, "unvalidatedCertChain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0, v9}, Landroid/framework/util/jar/JarFileHelper;->getSignedJarCerts(Ljava/lang/String;Z)[Ljava/security/cert/Certificate;

    move-result-object v3

    .line 52
    .local v3, "certsfalse":[Ljava/security/cert/Certificate;
    move-object v0, v3

    array-length v5, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v1, v0, v4

    .line 53
    .restart local v1    # "c":Ljava/security/cert/Certificate;
    check-cast v1, Ljava/security/cert/X509Certificate;

    .end local v1    # "c":Ljava/security/cert/Certificate;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v10

    invoke-interface {v10}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 55
    :cond_1
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    :goto_2
    return v8

    :cond_2
    move v8, v9

    goto :goto_2
.end method
