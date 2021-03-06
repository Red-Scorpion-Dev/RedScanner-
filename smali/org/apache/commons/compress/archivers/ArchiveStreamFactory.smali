.class public Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;
.super Ljava/lang/Object;
.source "ArchiveStreamFactory.java"


# static fields
.field public static final AR:Ljava/lang/String; = "ar"

.field public static final CPIO:Ljava/lang/String; = "cpio"

.field public static final DUMP:Ljava/lang/String; = "dump"

.field public static final JAR:Ljava/lang/String; = "jar"

.field public static final TAR:Ljava/lang/String; = "tar"

.field public static final ZIP:Ljava/lang/String; = "zip"


# instance fields
.field private entryEncoding:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createArchiveInputStream(Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    .locals 9
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x200

    .line 241
    if-nez p1, :cond_0

    .line 242
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Stream must not be null."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 245
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v7

    if-nez v7, :cond_1

    .line 246
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Mark is not supported."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 249
    :cond_1
    const/16 v7, 0xc

    new-array v2, v7, [B

    .line 250
    .local v2, "signature":[B
    array-length v7, v2

    invoke-virtual {p1, v7}, Ljava/io/InputStream;->mark(I)V

    .line 252
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 253
    .local v3, "signatureLength":I
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 254
    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->matches([BI)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 255
    iget-object v7, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 256
    new-instance v7, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;

    iget-object v8, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    invoke-direct {v7, p1, v8}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 309
    :cond_2
    :goto_0
    return-object v7

    .line 258
    :cond_3
    new-instance v7, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;

    invoke-direct {v7, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 313
    .end local v3    # "signatureLength":I
    :catch_0
    move-exception v1

    .line 314
    .local v1, "e":Ljava/io/IOException;
    new-instance v7, Lorg/apache/commons/compress/archivers/ArchiveException;

    const-string v8, "Could not use reset and mark operations."

    invoke-direct {v7, v8, v1}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    .line 260
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "signatureLength":I
    :cond_4
    :try_start_1
    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/jar/JarArchiveInputStream;->matches([BI)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 261
    new-instance v7, Lorg/apache/commons/compress/archivers/jar/JarArchiveInputStream;

    invoke-direct {v7, p1}, Lorg/apache/commons/compress/archivers/jar/JarArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 262
    :cond_5
    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->matches([BI)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 263
    new-instance v7, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;

    invoke-direct {v7, p1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 264
    :cond_6
    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->matches([BI)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 265
    new-instance v7, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;

    invoke-direct {v7, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 269
    :cond_7
    const/16 v7, 0x20

    new-array v0, v7, [B

    .line 270
    .local v0, "dumpsig":[B
    array-length v7, v0

    invoke-virtual {p1, v7}, Ljava/io/InputStream;->mark(I)V

    .line 271
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 272
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 273
    invoke-static {v0, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->matches([BI)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 274
    new-instance v7, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;

    invoke-direct {v7, p1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 278
    :cond_8
    const/16 v7, 0x200

    new-array v6, v7, [B

    .line 279
    .local v6, "tarheader":[B
    array-length v7, v6

    invoke-virtual {p1, v7}, Ljava/io/InputStream;->mark(I)V

    .line 280
    invoke-virtual {p1, v6}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 281
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 282
    invoke-static {v6, v3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->matches([BI)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 283
    iget-object v7, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    if-eqz v7, :cond_9

    .line 284
    new-instance v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;

    iget-object v8, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    invoke-direct {v7, p1, v8}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 286
    :cond_9
    new-instance v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;

    invoke-direct {v7, p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 290
    :cond_a
    if-lt v3, v8, :cond_c

    .line 291
    const/4 v4, 0x0

    .line 293
    .local v4, "tais":Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;
    :try_start_2
    new-instance v5, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v5, v7}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 295
    .end local v4    # "tais":Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;
    .local v5, "tais":Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;
    :try_start_3
    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getNextTarEntry()Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isCheckSumOK()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 296
    new-instance v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;

    invoke-direct {v7, p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 304
    if-eqz v5, :cond_2

    .line 306
    :try_start_4
    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 307
    :catch_1
    move-exception v8

    goto/16 :goto_0

    .line 304
    :cond_b
    if-eqz v5, :cond_c

    .line 306
    :try_start_5
    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 317
    .end local v5    # "tais":Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;
    :cond_c
    :goto_1
    new-instance v7, Lorg/apache/commons/compress/archivers/ArchiveException;

    const-string v8, "No Archiver found for the stream signature"

    invoke-direct {v7, v8}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 298
    .restart local v4    # "tais":Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;
    :catch_2
    move-exception v7

    .line 304
    :goto_2
    if-eqz v4, :cond_c

    .line 306
    :try_start_6
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 307
    :catch_3
    move-exception v7

    goto :goto_1

    .line 304
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v4, :cond_d

    .line 306
    :try_start_7
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 309
    :cond_d
    :goto_4
    :try_start_8
    throw v7
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 307
    .end local v4    # "tais":Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;
    .restart local v5    # "tais":Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;
    :catch_4
    move-exception v7

    goto :goto_1

    .end local v5    # "tais":Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;
    .restart local v4    # "tais":Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;
    :catch_5
    move-exception v8

    goto :goto_4

    .line 304
    .end local v4    # "tais":Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;
    .restart local v5    # "tais":Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "tais":Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;
    .restart local v4    # "tais":Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;
    goto :goto_3

    .line 298
    .end local v4    # "tais":Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;
    .restart local v5    # "tais":Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;
    :catch_6
    move-exception v7

    move-object v4, v5

    .end local v5    # "tais":Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;
    .restart local v4    # "tais":Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;
    goto :goto_2
.end method

.method public createArchiveInputStream(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    .locals 3
    .param p1, "archiverName"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .prologue
    .line 146
    if-nez p1, :cond_0

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Archivername must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    if-nez p2, :cond_1

    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "InputStream must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_1
    const-string v0, "ar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    new-instance v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    .line 178
    :goto_0
    return-object v0

    .line 157
    :cond_2
    const-string v0, "zip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 158
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 159
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :cond_3
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 164
    :cond_4
    const-string v0, "tar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 165
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 166
    new-instance v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_5
    new-instance v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 171
    :cond_6
    const-string v0, "jar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 172
    new-instance v0, Lorg/apache/commons/compress/archivers/jar/JarArchiveInputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/archivers/jar/JarArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 174
    :cond_7
    const-string v0, "cpio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 175
    new-instance v0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 177
    :cond_8
    const-string v0, "dump"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 178
    new-instance v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 181
    :cond_9
    new-instance v0, Lorg/apache/commons/compress/archivers/ArchiveException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Archiver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createArchiveOutputStream(Ljava/lang/String;Ljava/io/OutputStream;)Lorg/apache/commons/compress/archivers/ArchiveOutputStream;
    .locals 4
    .param p1, "archiverName"    # Ljava/lang/String;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .prologue
    .line 196
    if-nez p1, :cond_0

    .line 197
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Archivername must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 199
    :cond_0
    if-nez p2, :cond_1

    .line 200
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "OutputStream must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 203
    :cond_1
    const-string v1, "ar"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 204
    new-instance v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 224
    :cond_2
    :goto_0
    return-object v0

    .line 206
    :cond_3
    const-string v1, "zip"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 207
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 208
    .local v0, "zip":Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 209
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->setEncoding(Ljava/lang/String;)V

    goto :goto_0

    .line 213
    .end local v0    # "zip":Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;
    :cond_4
    const-string v1, "tar"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 214
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 215
    new-instance v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :cond_5
    new-instance v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 220
    :cond_6
    const-string v1, "jar"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 221
    new-instance v0, Lorg/apache/commons/compress/archivers/jar/JarArchiveOutputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/archivers/jar/JarArchiveOutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 223
    :cond_7
    const-string v1, "cpio"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 224
    new-instance v0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 226
    :cond_8
    new-instance v1, Lorg/apache/commons/compress/archivers/ArchiveException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Archiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getEntryEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public setEntryEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "entryEncoding"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    .line 131
    return-void
.end method
