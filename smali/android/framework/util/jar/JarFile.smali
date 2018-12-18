.class public Landroid/framework/util/jar/JarFile;
.super Ljava/util/zip/ZipFile;
.source "JarFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/framework/util/jar/JarFile$JarFileInputStream;
    }
.end annotation


# static fields
.field public static final MANIFEST_NAME:Ljava/lang/String; = "META-INF/MANIFEST.MF"

.field static final META_DIR:Ljava/lang/String; = "META-INF/"


# instance fields
.field private closed:Z

.field private manifest:Landroid/framework/util/jar/Manifest;

.field private manifestEntry:Ljava/util/zip/ZipEntry;

.field verifier:Landroid/framework/util/jar/JarVerifier;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/framework/util/jar/JarFile;-><init>(Ljava/io/File;Z)V

    .line 155
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "verify"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-direct {p0, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/framework/util/jar/JarFile;->closed:Z

    .line 169
    if-eqz p2, :cond_0

    .line 170
    new-instance v0, Landroid/framework/util/jar/JarVerifier;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/framework/util/jar/JarVerifier;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/framework/util/jar/JarFile;->verifier:Landroid/framework/util/jar/JarVerifier;

    .line 172
    :cond_0
    invoke-direct {p0}, Landroid/framework/util/jar/JarFile;->readMetaEntries()V

    .line 173
    return-void
.end method

.method public constructor <init>(Ljava/io/File;ZI)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "verify"    # Z
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/framework/util/jar/JarFile;-><init>(Ljava/io/File;ZIZ)V

    .line 190
    return-void
.end method

.method public constructor <init>(Ljava/io/File;ZIZ)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "verify"    # Z
    .param p3, "mode"    # I
    .param p4, "chainCheck"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    invoke-direct {p0, p1, p3}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/framework/util/jar/JarFile;->closed:Z

    .line 200
    if-eqz p2, :cond_0

    .line 201
    new-instance v0, Landroid/framework/util/jar/JarVerifier;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p4}, Landroid/framework/util/jar/JarVerifier;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Landroid/framework/util/jar/JarFile;->verifier:Landroid/framework/util/jar/JarVerifier;

    .line 203
    :cond_0
    invoke-direct {p0}, Landroid/framework/util/jar/JarFile;->readMetaEntries()V

    .line 204
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/framework/util/jar/JarFile;-><init>(Ljava/lang/String;Z)V

    .line 217
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "verify"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/framework/util/jar/JarFile;-><init>(Ljava/lang/String;ZZ)V

    .line 232
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "verify"    # Z
    .param p3, "chainCheck"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    invoke-direct {p0, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/framework/util/jar/JarFile;->closed:Z

    .line 242
    if-eqz p2, :cond_0

    .line 243
    new-instance v0, Landroid/framework/util/jar/JarVerifier;

    invoke-direct {v0, p1, p3}, Landroid/framework/util/jar/JarVerifier;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Landroid/framework/util/jar/JarFile;->verifier:Landroid/framework/util/jar/JarVerifier;

    .line 245
    :cond_0
    invoke-direct {p0}, Landroid/framework/util/jar/JarFile;->readMetaEntries()V

    .line 246
    return-void
.end method

.method private static endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;

    .prologue
    .line 377
    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, v0, v2

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private getMetaEntriesImpl()[Ljava/util/zip/ZipEntry;
    .locals 6

    .prologue
    .line 450
    new-instance v1, Ljava/util/ArrayList;

    const/16 v4, 0x8

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 451
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    invoke-virtual {p0}, Landroid/framework/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 452
    .local v0, "allEntries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 453
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    .line 454
    .local v3, "ze":Ljava/util/zip/ZipEntry;
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "META-INF/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "META-INF/"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 456
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 459
    .end local v3    # "ze":Ljava/util/zip/ZipEntry;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 460
    const/4 v2, 0x0

    .line 464
    :goto_1
    return-object v2

    .line 462
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v2, v4, [Ljava/util/zip/ZipEntry;

    .line 463
    .local v2, "result":[Ljava/util/zip/ZipEntry;
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_1
.end method

.method private readMetaEntries()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 340
    invoke-direct {p0}, Landroid/framework/util/jar/JarFile;->getMetaEntriesImpl()[Ljava/util/zip/ZipEntry;

    move-result-object v6

    .line 341
    .local v6, "metaEntries":[Ljava/util/zip/ZipEntry;
    if-nez v6, :cond_1

    .line 342
    iput-object v10, p0, Landroid/framework/util/jar/JarFile;->verifier:Landroid/framework/util/jar/JarVerifier;

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    const/4 v7, 0x0

    .line 348
    .local v7, "signed":Z
    move-object v0, v6

    .local v0, "arr$":[Ljava/util/zip/ZipEntry;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_2

    aget-object v1, v0, v3

    .line 349
    .local v1, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 351
    .local v2, "entryName":Ljava/lang/String;
    iget-object v8, p0, Landroid/framework/util/jar/JarFile;->manifestEntry:Ljava/util/zip/ZipEntry;

    if-nez v8, :cond_3

    const-string v8, "META-INF/MANIFEST.MF"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 352
    iput-object v1, p0, Landroid/framework/util/jar/JarFile;->manifestEntry:Ljava/util/zip/ZipEntry;

    .line 354
    iget-object v8, p0, Landroid/framework/util/jar/JarFile;->verifier:Landroid/framework/util/jar/JarVerifier;

    if-nez v8, :cond_5

    .line 371
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    .end local v2    # "entryName":Ljava/lang/String;
    :cond_2
    if-nez v7, :cond_0

    .line 372
    iput-object v10, p0, Landroid/framework/util/jar/JarFile;->verifier:Landroid/framework/util/jar/JarVerifier;

    goto :goto_0

    .line 359
    .restart local v1    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v2    # "entryName":Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Landroid/framework/util/jar/JarFile;->verifier:Landroid/framework/util/jar/JarVerifier;

    if-eqz v8, :cond_5

    const-string v8, ".SF"

    invoke-static {v2, v8}, Landroid/framework/util/jar/JarFile;->endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, ".DSA"

    invoke-static {v2, v8}, Landroid/framework/util/jar/JarFile;->endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, ".RSA"

    invoke-static {v2, v8}, Landroid/framework/util/jar/JarFile;->endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 363
    :cond_4
    const/4 v7, 0x1

    .line 364
    invoke-super {p0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    .line 365
    .local v4, "is":Ljava/io/InputStream;
    iget-object v8, p0, Landroid/framework/util/jar/JarFile;->verifier:Landroid/framework/util/jar/JarVerifier;

    invoke-static {v4}, Landroid/framework/libcore/io/Streams;->readFully(Ljava/io/InputStream;)[B

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Landroid/framework/util/jar/JarVerifier;->addMetaEntry(Ljava/lang/String;[B)V

    .line 348
    .end local v4    # "is":Ljava/io/InputStream;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 475
    invoke-super {p0}, Ljava/util/zip/ZipFile;->close()V

    .line 476
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/framework/util/jar/JarFile;->closed:Z

    .line 477
    return-void
.end method

.method public entries()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Landroid/framework/util/jar/JarEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    new-instance v0, Landroid/framework/util/jar/JarFile$1JarFileEnumerator;

    invoke-super {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Landroid/framework/util/jar/JarFile$1JarFileEnumerator;-><init>(Landroid/framework/util/jar/JarFile;Ljava/util/Enumeration;Landroid/framework/util/jar/JarFile;)V

    return-object v0
.end method

.method public getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 434
    invoke-super {p0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 435
    .local v1, "ze":Ljava/util/zip/ZipEntry;
    if-nez v1, :cond_0

    .line 440
    .end local v1    # "ze":Ljava/util/zip/ZipEntry;
    :goto_0
    return-object v1

    .line 438
    .restart local v1    # "ze":Ljava/util/zip/ZipEntry;
    :cond_0
    new-instance v0, Landroid/framework/util/jar/JarEntry;

    invoke-direct {v0, v1}, Landroid/framework/util/jar/JarEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    .line 439
    .local v0, "je":Landroid/framework/util/jar/JarEntry;
    iput-object p0, v0, Landroid/framework/util/jar/JarEntry;->parentJar:Landroid/framework/util/jar/JarFile;

    move-object v1, v0

    .line 440
    goto :goto_0
.end method

.method public getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    .locals 6
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 392
    iget-object v3, p0, Landroid/framework/util/jar/JarFile;->manifestEntry:Ljava/util/zip/ZipEntry;

    if-eqz v3, :cond_0

    .line 393
    invoke-virtual {p0}, Landroid/framework/util/jar/JarFile;->getManifest()Landroid/framework/util/jar/Manifest;

    .line 395
    :cond_0
    iget-object v3, p0, Landroid/framework/util/jar/JarFile;->verifier:Landroid/framework/util/jar/JarVerifier;

    if-eqz v3, :cond_3

    .line 396
    iget-object v3, p0, Landroid/framework/util/jar/JarFile;->verifier:Landroid/framework/util/jar/JarVerifier;

    invoke-virtual {p0}, Landroid/framework/util/jar/JarFile;->getManifest()Landroid/framework/util/jar/Manifest;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/framework/util/jar/JarVerifier;->setManifest(Landroid/framework/util/jar/Manifest;)V

    .line 397
    iget-object v3, p0, Landroid/framework/util/jar/JarFile;->manifest:Landroid/framework/util/jar/Manifest;

    if-eqz v3, :cond_1

    .line 398
    iget-object v3, p0, Landroid/framework/util/jar/JarFile;->verifier:Landroid/framework/util/jar/JarVerifier;

    iget-object v4, p0, Landroid/framework/util/jar/JarFile;->manifest:Landroid/framework/util/jar/Manifest;

    invoke-virtual {v4}, Landroid/framework/util/jar/Manifest;->getMainAttributesEnd()I

    move-result v4

    iput v4, v3, Landroid/framework/util/jar/JarVerifier;->mainAttributesEnd:I

    .line 400
    :cond_1
    iget-object v3, p0, Landroid/framework/util/jar/JarFile;->verifier:Landroid/framework/util/jar/JarVerifier;

    invoke-virtual {v3}, Landroid/framework/util/jar/JarVerifier;->readCertificates()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 401
    iget-object v3, p0, Landroid/framework/util/jar/JarFile;->verifier:Landroid/framework/util/jar/JarVerifier;

    invoke-virtual {v3}, Landroid/framework/util/jar/JarVerifier;->removeMetaEntries()V

    .line 402
    iget-object v3, p0, Landroid/framework/util/jar/JarFile;->manifest:Landroid/framework/util/jar/Manifest;

    if-eqz v3, :cond_2

    .line 403
    iget-object v3, p0, Landroid/framework/util/jar/JarFile;->manifest:Landroid/framework/util/jar/Manifest;

    invoke-virtual {v3}, Landroid/framework/util/jar/Manifest;->removeChunks()V

    .line 405
    :cond_2
    iget-object v3, p0, Landroid/framework/util/jar/JarFile;->verifier:Landroid/framework/util/jar/JarVerifier;

    invoke-virtual {v3}, Landroid/framework/util/jar/JarVerifier;->isSignedJar()Z

    move-result v3

    if-nez v3, :cond_3

    .line 406
    iput-object v2, p0, Landroid/framework/util/jar/JarFile;->verifier:Landroid/framework/util/jar/JarVerifier;

    .line 410
    :cond_3
    invoke-super {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 411
    .local v1, "in":Ljava/io/InputStream;
    if-nez v1, :cond_5

    move-object v1, v2

    .line 421
    .end local v1    # "in":Ljava/io/InputStream;
    :cond_4
    :goto_0
    return-object v1

    .line 414
    .restart local v1    # "in":Ljava/io/InputStream;
    :cond_5
    iget-object v2, p0, Landroid/framework/util/jar/JarFile;->verifier:Landroid/framework/util/jar/JarVerifier;

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    .line 417
    iget-object v2, p0, Landroid/framework/util/jar/JarFile;->verifier:Landroid/framework/util/jar/JarVerifier;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/framework/util/jar/JarVerifier;->initEntry(Ljava/lang/String;)Landroid/framework/util/jar/JarVerifier$VerifierEntry;

    move-result-object v0

    .line 418
    .local v0, "entry":Landroid/framework/util/jar/JarVerifier$VerifierEntry;
    if-eqz v0, :cond_4

    .line 421
    new-instance v2, Landroid/framework/util/jar/JarFile$JarFileInputStream;

    invoke-direct {v2, v1, p1, v0}, Landroid/framework/util/jar/JarFile$JarFileInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;Landroid/framework/util/jar/JarVerifier$VerifierEntry;)V

    move-object v1, v2

    goto :goto_0
.end method

.method public getJarEntry(Ljava/lang/String;)Landroid/framework/util/jar/JarEntry;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 290
    invoke-virtual {p0, p1}, Landroid/framework/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    check-cast v0, Landroid/framework/util/jar/JarEntry;

    return-object v0
.end method

.method public getManifest()Landroid/framework/util/jar/Manifest;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 305
    iget-boolean v2, p0, Landroid/framework/util/jar/JarFile;->closed:Z

    if-eqz v2, :cond_0

    .line 306
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "JarFile has been closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 308
    :cond_0
    iget-object v2, p0, Landroid/framework/util/jar/JarFile;->manifest:Landroid/framework/util/jar/Manifest;

    if-eqz v2, :cond_1

    .line 309
    iget-object v2, p0, Landroid/framework/util/jar/JarFile;->manifest:Landroid/framework/util/jar/Manifest;

    .line 326
    :goto_0
    return-object v2

    .line 312
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/framework/util/jar/JarFile;->manifestEntry:Ljava/util/zip/ZipEntry;

    invoke-super {p0, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 313
    .local v1, "is":Ljava/io/InputStream;
    iget-object v2, p0, Landroid/framework/util/jar/JarFile;->verifier:Landroid/framework/util/jar/JarVerifier;

    if-eqz v2, :cond_2

    .line 314
    iget-object v2, p0, Landroid/framework/util/jar/JarFile;->verifier:Landroid/framework/util/jar/JarVerifier;

    iget-object v3, p0, Landroid/framework/util/jar/JarFile;->manifestEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Landroid/framework/libcore/io/Streams;->readFully(Ljava/io/InputStream;)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/framework/util/jar/JarVerifier;->addMetaEntry(Ljava/lang/String;[B)V

    .line 315
    iget-object v2, p0, Landroid/framework/util/jar/JarFile;->manifestEntry:Ljava/util/zip/ZipEntry;

    invoke-super {p0, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 318
    :cond_2
    :try_start_1
    new-instance v3, Landroid/framework/util/jar/Manifest;

    iget-object v2, p0, Landroid/framework/util/jar/JarFile;->verifier:Landroid/framework/util/jar/JarVerifier;

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    invoke-direct {v3, v1, v2}, Landroid/framework/util/jar/Manifest;-><init>(Ljava/io/InputStream;Z)V

    iput-object v3, p0, Landroid/framework/util/jar/JarFile;->manifest:Landroid/framework/util/jar/Manifest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 322
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/framework/util/jar/JarFile;->manifestEntry:Ljava/util/zip/ZipEntry;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 326
    .end local v1    # "is":Ljava/io/InputStream;
    :goto_2
    iget-object v2, p0, Landroid/framework/util/jar/JarFile;->manifest:Landroid/framework/util/jar/Manifest;

    goto :goto_0

    .line 318
    .restart local v1    # "is":Ljava/io/InputStream;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 320
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v2
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0

    .line 323
    .end local v1    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/NullPointerException;
    iput-object v5, p0, Landroid/framework/util/jar/JarFile;->manifestEntry:Ljava/util/zip/ZipEntry;

    goto :goto_2
.end method
