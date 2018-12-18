.class public Landroid/framework/util/jar/JarInputStream;
.super Ljava/util/zip/ZipInputStream;
.source "JarInputStream.java"


# instance fields
.field private eos:Z

.field private isMeta:Z

.field private jarEntry:Landroid/framework/util/jar/JarEntry;

.field private mEntry:Landroid/framework/util/jar/JarEntry;

.field private manifest:Landroid/framework/util/jar/Manifest;

.field private verStream:Ljava/io/OutputStream;

.field private verifier:Landroid/framework/util/jar/JarVerifier;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/framework/util/jar/JarInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 4
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "verify"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 62
    invoke-direct {p0, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 38
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/framework/util/jar/JarInputStream;->eos:Z

    .line 63
    if-eqz p2, :cond_0

    .line 64
    new-instance v1, Landroid/framework/util/jar/JarVerifier;

    const-string v2, "JarInputStream"

    invoke-direct {v1, v2}, Landroid/framework/util/jar/JarVerifier;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/framework/util/jar/JarInputStream;->verifier:Landroid/framework/util/jar/JarVerifier;

    .line 66
    :cond_0
    invoke-virtual {p0}, Landroid/framework/util/jar/JarInputStream;->getNextJarEntry()Landroid/framework/util/jar/JarEntry;

    move-result-object v1

    iput-object v1, p0, Landroid/framework/util/jar/JarInputStream;->mEntry:Landroid/framework/util/jar/JarEntry;

    if-nez v1, :cond_2

    .line 95
    :cond_1
    :goto_0
    return-void

    .line 69
    :cond_2
    iget-object v1, p0, Landroid/framework/util/jar/JarInputStream;->mEntry:Landroid/framework/util/jar/JarEntry;

    invoke-virtual {v1}, Landroid/framework/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "META-INF/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 70
    iput-object v3, p0, Landroid/framework/util/jar/JarInputStream;->mEntry:Landroid/framework/util/jar/JarEntry;

    .line 71
    invoke-virtual {p0}, Landroid/framework/util/jar/JarInputStream;->closeEntry()V

    .line 72
    invoke-virtual {p0}, Landroid/framework/util/jar/JarInputStream;->getNextJarEntry()Landroid/framework/util/jar/JarEntry;

    move-result-object v1

    iput-object v1, p0, Landroid/framework/util/jar/JarInputStream;->mEntry:Landroid/framework/util/jar/JarEntry;

    .line 74
    :cond_3
    iget-object v1, p0, Landroid/framework/util/jar/JarInputStream;->mEntry:Landroid/framework/util/jar/JarEntry;

    invoke-virtual {v1}, Landroid/framework/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "META-INF/MANIFEST.MF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 75
    iput-object v3, p0, Landroid/framework/util/jar/JarInputStream;->mEntry:Landroid/framework/util/jar/JarEntry;

    .line 76
    new-instance v1, Landroid/framework/util/jar/Manifest;

    invoke-direct {v1, p0, p2}, Landroid/framework/util/jar/Manifest;-><init>(Ljava/io/InputStream;Z)V

    iput-object v1, p0, Landroid/framework/util/jar/JarInputStream;->manifest:Landroid/framework/util/jar/Manifest;

    .line 77
    invoke-virtual {p0}, Landroid/framework/util/jar/JarInputStream;->closeEntry()V

    .line 78
    if-eqz p2, :cond_1

    .line 79
    iget-object v1, p0, Landroid/framework/util/jar/JarInputStream;->verifier:Landroid/framework/util/jar/JarVerifier;

    iget-object v2, p0, Landroid/framework/util/jar/JarInputStream;->manifest:Landroid/framework/util/jar/Manifest;

    invoke-virtual {v1, v2}, Landroid/framework/util/jar/JarVerifier;->setManifest(Landroid/framework/util/jar/Manifest;)V

    .line 80
    iget-object v1, p0, Landroid/framework/util/jar/JarInputStream;->manifest:Landroid/framework/util/jar/Manifest;

    if-eqz v1, :cond_1

    .line 81
    iget-object v1, p0, Landroid/framework/util/jar/JarInputStream;->verifier:Landroid/framework/util/jar/JarVerifier;

    iget-object v2, p0, Landroid/framework/util/jar/JarInputStream;->manifest:Landroid/framework/util/jar/Manifest;

    invoke-virtual {v2}, Landroid/framework/util/jar/Manifest;->getMainAttributesEnd()I

    move-result v2

    iput v2, v1, Landroid/framework/util/jar/JarVerifier;->mainAttributesEnd:I

    goto :goto_0

    .line 86
    :cond_4
    new-instance v0, Landroid/framework/util/jar/Attributes;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/framework/util/jar/Attributes;-><init>(I)V

    .line 87
    .local v0, "temp":Landroid/framework/util/jar/Attributes;
    iget-object v1, v0, Landroid/framework/util/jar/Attributes;->map:Ljava/util/Map;

    const-string v2, "hidden"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v1, p0, Landroid/framework/util/jar/JarInputStream;->mEntry:Landroid/framework/util/jar/JarEntry;

    invoke-virtual {v1, v0}, Landroid/framework/util/jar/JarEntry;->setAttributes(Landroid/framework/util/jar/Attributes;)V

    .line 93
    iput-object v3, p0, Landroid/framework/util/jar/JarInputStream;->verifier:Landroid/framework/util/jar/JarVerifier;

    goto :goto_0
.end method


# virtual methods
.method protected createZipEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 211
    new-instance v0, Landroid/framework/util/jar/JarEntry;

    invoke-direct {v0, p1}, Landroid/framework/util/jar/JarEntry;-><init>(Ljava/lang/String;)V

    .line 212
    .local v0, "entry":Landroid/framework/util/jar/JarEntry;
    iget-object v1, p0, Landroid/framework/util/jar/JarInputStream;->manifest:Landroid/framework/util/jar/Manifest;

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Landroid/framework/util/jar/JarInputStream;->manifest:Landroid/framework/util/jar/Manifest;

    invoke-virtual {v1, p1}, Landroid/framework/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Landroid/framework/util/jar/Attributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/framework/util/jar/JarEntry;->setAttributes(Landroid/framework/util/jar/Attributes;)V

    .line 215
    :cond_0
    return-object v0
.end method

.method public getManifest()Landroid/framework/util/jar/Manifest;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Landroid/framework/util/jar/JarInputStream;->manifest:Landroid/framework/util/jar/Manifest;

    return-object v0
.end method

.method public getNextEntry()Ljava/util/zip/ZipEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 187
    iget-object v0, p0, Landroid/framework/util/jar/JarInputStream;->mEntry:Landroid/framework/util/jar/JarEntry;

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Landroid/framework/util/jar/JarInputStream;->mEntry:Landroid/framework/util/jar/JarEntry;

    iput-object v0, p0, Landroid/framework/util/jar/JarInputStream;->jarEntry:Landroid/framework/util/jar/JarEntry;

    .line 189
    iput-object v1, p0, Landroid/framework/util/jar/JarInputStream;->mEntry:Landroid/framework/util/jar/JarEntry;

    .line 190
    iget-object v0, p0, Landroid/framework/util/jar/JarInputStream;->jarEntry:Landroid/framework/util/jar/JarEntry;

    invoke-virtual {v0, v1}, Landroid/framework/util/jar/JarEntry;->setAttributes(Landroid/framework/util/jar/Attributes;)V

    .line 205
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/framework/util/jar/JarInputStream;->eos:Z

    .line 206
    iget-object v0, p0, Landroid/framework/util/jar/JarInputStream;->jarEntry:Landroid/framework/util/jar/JarEntry;

    :goto_1
    return-object v0

    .line 192
    :cond_1
    invoke-super {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    check-cast v0, Landroid/framework/util/jar/JarEntry;

    iput-object v0, p0, Landroid/framework/util/jar/JarInputStream;->jarEntry:Landroid/framework/util/jar/JarEntry;

    .line 193
    iget-object v0, p0, Landroid/framework/util/jar/JarInputStream;->jarEntry:Landroid/framework/util/jar/JarEntry;

    if-nez v0, :cond_2

    move-object v0, v1

    .line 194
    goto :goto_1

    .line 196
    :cond_2
    iget-object v0, p0, Landroid/framework/util/jar/JarInputStream;->verifier:Landroid/framework/util/jar/JarVerifier;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Landroid/framework/util/jar/JarInputStream;->jarEntry:Landroid/framework/util/jar/JarEntry;

    invoke-virtual {v0}, Landroid/framework/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "META-INF/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/framework/util/jar/JarInputStream;->isMeta:Z

    .line 198
    iget-boolean v0, p0, Landroid/framework/util/jar/JarInputStream;->isMeta:Z

    if-eqz v0, :cond_3

    .line 199
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Landroid/framework/util/jar/JarInputStream;->verStream:Ljava/io/OutputStream;

    goto :goto_0

    .line 201
    :cond_3
    iget-object v0, p0, Landroid/framework/util/jar/JarInputStream;->verifier:Landroid/framework/util/jar/JarVerifier;

    iget-object v1, p0, Landroid/framework/util/jar/JarInputStream;->jarEntry:Landroid/framework/util/jar/JarEntry;

    invoke-virtual {v1}, Landroid/framework/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/framework/util/jar/JarVerifier;->initEntry(Ljava/lang/String;)Landroid/framework/util/jar/JarVerifier$VerifierEntry;

    move-result-object v0

    iput-object v0, p0, Landroid/framework/util/jar/JarInputStream;->verStream:Ljava/io/OutputStream;

    goto :goto_0
.end method

.method public getNextJarEntry()Landroid/framework/util/jar/JarEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-virtual {p0}, Landroid/framework/util/jar/JarInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    check-cast v0, Landroid/framework/util/jar/JarEntry;

    return-object v0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 148
    iget-object v3, p0, Landroid/framework/util/jar/JarInputStream;->mEntry:Landroid/framework/util/jar/JarEntry;

    if-eqz v3, :cond_1

    move v1, v2

    .line 174
    :cond_0
    :goto_0
    return v1

    .line 151
    :cond_1
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v1

    .line 152
    .local v1, "r":I
    iget-object v3, p0, Landroid/framework/util/jar/JarInputStream;->verStream:Ljava/io/OutputStream;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroid/framework/util/jar/JarInputStream;->eos:Z

    if-nez v3, :cond_0

    .line 153
    if-ne v1, v2, :cond_3

    .line 154
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/framework/util/jar/JarInputStream;->eos:Z

    .line 155
    iget-object v2, p0, Landroid/framework/util/jar/JarInputStream;->verifier:Landroid/framework/util/jar/JarVerifier;

    if-eqz v2, :cond_0

    .line 156
    iget-boolean v2, p0, Landroid/framework/util/jar/JarInputStream;->isMeta:Z

    if-eqz v2, :cond_2

    .line 157
    iget-object v3, p0, Landroid/framework/util/jar/JarInputStream;->verifier:Landroid/framework/util/jar/JarVerifier;

    iget-object v2, p0, Landroid/framework/util/jar/JarInputStream;->jarEntry:Landroid/framework/util/jar/JarEntry;

    invoke-virtual {v2}, Landroid/framework/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Landroid/framework/util/jar/JarInputStream;->verStream:Ljava/io/OutputStream;

    check-cast v2, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/framework/util/jar/JarVerifier;->addMetaEntry(Ljava/lang/String;[B)V

    .line 161
    :try_start_0
    iget-object v2, p0, Landroid/framework/util/jar/JarInputStream;->verifier:Landroid/framework/util/jar/JarVerifier;

    invoke-virtual {v2}, Landroid/framework/util/jar/JarVerifier;->readCertificates()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/framework/util/jar/JarInputStream;->verifier:Landroid/framework/util/jar/JarVerifier;

    .line 164
    throw v0

    .line 167
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_2
    iget-object v2, p0, Landroid/framework/util/jar/JarInputStream;->verStream:Ljava/io/OutputStream;

    check-cast v2, Landroid/framework/util/jar/JarVerifier$VerifierEntry;

    invoke-virtual {v2}, Landroid/framework/util/jar/JarVerifier$VerifierEntry;->verify()V

    goto :goto_0

    .line 171
    :cond_3
    iget-object v2, p0, Landroid/framework/util/jar/JarInputStream;->verStream:Ljava/io/OutputStream;

    invoke-virtual {v2, p1, p2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method
