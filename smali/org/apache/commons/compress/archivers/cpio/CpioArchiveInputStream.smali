.class public Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;
.super Lorg/apache/commons/compress/archivers/ArchiveInputStream;
.source "CpioArchiveInputStream.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/cpio/CpioConstants;


# instance fields
.field private final FOUR_BYTES_BUF:[B

.field private final SIX_BYTES_BUF:[B

.field private final TWO_BYTES_BUF:[B

.field private final blockSize:I

.field private closed:Z

.field private crc:J

.field private entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

.field private entryBytesRead:J

.field private entryEOF:Z

.field private final in:Ljava/io/InputStream;

.field private final tmpbuf:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 95
    const/16 v0, 0x200

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "blockSize"    # I

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;-><init>()V

    .line 66
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->closed:Z

    .line 70
    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entryBytesRead:J

    .line 72
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entryEOF:Z

    .line 74
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->tmpbuf:[B

    .line 76
    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->crc:J

    .line 81
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->TWO_BYTES_BUF:[B

    .line 82
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->FOUR_BYTES_BUF:[B

    .line 83
    const/4 v0, 0x6

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->SIX_BYTES_BUF:[B

    .line 109
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->in:Ljava/io/InputStream;

    .line 110
    iput p2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->blockSize:I

    .line 111
    return-void
.end method

.method private closeEntry()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->ensureOpen()V

    .line 158
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->tmpbuf:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->tmpbuf:[B

    array-length v2, v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entryEOF:Z

    .line 163
    return-void
.end method

.method private ensureOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 173
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_0
    return-void
.end method

.method public static matches([BI)Z
    .locals 7
    .param p0, "signature"    # [B
    .param p1, "length"    # I

    .prologue
    const/16 v6, 0x37

    const/16 v5, 0x30

    const/4 v4, 0x5

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 484
    const/4 v2, 0x6

    if-ge p1, v2, :cond_1

    .line 524
    :cond_0
    :goto_0
    return v0

    .line 489
    :cond_1
    aget-byte v2, p0, v0

    const/16 v3, 0x71

    if-ne v2, v3, :cond_2

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xc7

    if-ne v2, v3, :cond_2

    move v0, v1

    .line 490
    goto :goto_0

    .line 492
    :cond_2
    aget-byte v2, p0, v1

    const/16 v3, 0x71

    if-ne v2, v3, :cond_3

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xc7

    if-ne v2, v3, :cond_3

    move v0, v1

    .line 493
    goto :goto_0

    .line 498
    :cond_3
    aget-byte v2, p0, v0

    if-ne v2, v5, :cond_0

    .line 501
    aget-byte v2, p0, v1

    if-ne v2, v6, :cond_0

    .line 504
    const/4 v2, 0x2

    aget-byte v2, p0, v2

    if-ne v2, v5, :cond_0

    .line 507
    const/4 v2, 0x3

    aget-byte v2, p0, v2

    if-ne v2, v6, :cond_0

    .line 510
    const/4 v2, 0x4

    aget-byte v2, p0, v2

    if-ne v2, v5, :cond_0

    .line 514
    aget-byte v2, p0, v4

    const/16 v3, 0x31

    if-ne v2, v3, :cond_4

    move v0, v1

    .line 515
    goto :goto_0

    .line 517
    :cond_4
    aget-byte v2, p0, v4

    const/16 v3, 0x32

    if-ne v2, v3, :cond_5

    move v0, v1

    .line 518
    goto :goto_0

    .line 520
    :cond_5
    aget-byte v2, p0, v4

    if-ne v2, v6, :cond_0

    move v0, v1

    .line 521
    goto :goto_0
.end method

.method private readAsciiLong(II)J
    .locals 4
    .param p1, "length"    # I
    .param p2, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 315
    new-array v0, p1, [B

    .line 316
    .local v0, "tmpBuffer":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readFully([BII)I

    .line 317
    invoke-static {v0}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiString([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    return-wide v2
.end method

.method private readBinaryLong(IZ)J
    .locals 4
    .param p1, "length"    # I
    .param p2, "swapHalfWord"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 308
    new-array v0, p1, [B

    .line 309
    .local v0, "tmp":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readFully([BII)I

    .line 310
    invoke-static {v0, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioUtil;->byteArray2long([BZ)J

    move-result-wide v2

    return-wide v2
.end method

.method private readCString(I)Ljava/lang/String;
    .locals 4
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 408
    new-array v0, p1, [B

    .line 409
    .local v0, "tmpBuffer":[B
    array-length v1, v0

    invoke-direct {p0, v0, v3, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readFully([BII)I

    .line 410
    new-instance v1, Ljava/lang/String;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, v0, v3, v2}, Ljava/lang/String;-><init>([BII)V

    return-object v1
.end method

.method private final readFully([BII)I
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    if-gez p3, :cond_0

    .line 292
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 294
    :cond_0
    const/4 v1, 0x0

    .line 295
    .local v1, "n":I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 296
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->in:Ljava/io/InputStream;

    add-int v3, p2, v1

    sub-int v4, p3, v1

    invoke-virtual {v2, p1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 297
    .local v0, "count":I
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->count(I)V

    .line 298
    if-gez v0, :cond_1

    .line 299
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 301
    :cond_1
    add-int/2addr v1, v0

    .line 302
    goto :goto_0

    .line 303
    .end local v0    # "count":I
    :cond_2
    return v1
.end method

.method private readNewEntry(Z)Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;
    .locals 12
    .param p1, "hasCrc"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    const/16 v9, 0x10

    const/16 v8, 0x8

    .line 323
    if-eqz p1, :cond_1

    .line 324
    new-instance v3, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    const/4 v6, 0x2

    invoke-direct {v3, v6}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;-><init>(S)V

    .line 329
    .local v3, "ret":Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;
    :goto_0
    invoke-direct {p0, v8, v9}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setInode(J)V

    .line 330
    invoke-direct {p0, v8, v9}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v0

    .line 331
    .local v0, "mode":J
    cmp-long v6, v0, v10

    if-eqz v6, :cond_0

    .line 332
    invoke-virtual {v3, v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setMode(J)V

    .line 334
    :cond_0
    invoke-direct {p0, v8, v9}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setUID(J)V

    .line 335
    invoke-direct {p0, v8, v9}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setGID(J)V

    .line 336
    invoke-direct {p0, v8, v9}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setNumberOfLinks(J)V

    .line 337
    invoke-direct {p0, v8, v9}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setTime(J)V

    .line 338
    invoke-direct {p0, v8, v9}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setSize(J)V

    .line 339
    invoke-direct {p0, v8, v9}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setDeviceMaj(J)V

    .line 340
    invoke-direct {p0, v8, v9}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setDeviceMin(J)V

    .line 341
    invoke-direct {p0, v8, v9}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setRemoteDeviceMaj(J)V

    .line 342
    invoke-direct {p0, v8, v9}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setRemoteDeviceMin(J)V

    .line 343
    invoke-direct {p0, v8, v9}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v4

    .line 344
    .local v4, "namesize":J
    invoke-direct {p0, v8, v9}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setChksum(J)V

    .line 345
    long-to-int v6, v4

    invoke-direct {p0, v6}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readCString(I)Ljava/lang/String;

    move-result-object v2

    .line 346
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v3, v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setName(Ljava/lang/String;)V

    .line 347
    cmp-long v6, v0, v10

    if-nez v6, :cond_2

    const-string v6, "TRAILER!!!"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 348
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Mode 0 only allowed in the trailer. Found entry name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Occured at byte: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->getBytesRead()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 326
    .end local v0    # "mode":J
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "ret":Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;
    .end local v4    # "namesize":J
    :cond_1
    new-instance v3, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    const/4 v6, 0x1

    invoke-direct {v3, v6}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;-><init>(S)V

    .restart local v3    # "ret":Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;
    goto/16 :goto_0

    .line 350
    .restart local v0    # "mode":J
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v4    # "namesize":J
    :cond_2
    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getHeaderPadCount()I

    move-result v6

    invoke-direct {p0, v6}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->skip(I)V

    .line 352
    return-object v3
.end method

.method private readOldAsciiEntry()Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x0

    const/16 v10, 0xb

    const/4 v9, 0x6

    const/16 v8, 0x8

    .line 356
    new-instance v3, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    const/4 v6, 0x4

    invoke-direct {v3, v6}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;-><init>(S)V

    .line 358
    .local v3, "ret":Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;
    invoke-direct {p0, v9, v8}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setDevice(J)V

    .line 359
    invoke-direct {p0, v9, v8}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setInode(J)V

    .line 360
    invoke-direct {p0, v9, v8}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v0

    .line 361
    .local v0, "mode":J
    cmp-long v6, v0, v12

    if-eqz v6, :cond_0

    .line 362
    invoke-virtual {v3, v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setMode(J)V

    .line 364
    :cond_0
    invoke-direct {p0, v9, v8}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setUID(J)V

    .line 365
    invoke-direct {p0, v9, v8}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setGID(J)V

    .line 366
    invoke-direct {p0, v9, v8}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setNumberOfLinks(J)V

    .line 367
    invoke-direct {p0, v9, v8}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setRemoteDevice(J)V

    .line 368
    invoke-direct {p0, v10, v8}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setTime(J)V

    .line 369
    invoke-direct {p0, v9, v8}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v4

    .line 370
    .local v4, "namesize":J
    invoke-direct {p0, v10, v8}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readAsciiLong(II)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setSize(J)V

    .line 371
    long-to-int v6, v4

    invoke-direct {p0, v6}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readCString(I)Ljava/lang/String;

    move-result-object v2

    .line 372
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v3, v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setName(Ljava/lang/String;)V

    .line 373
    cmp-long v6, v0, v12

    if-nez v6, :cond_1

    const-string v6, "TRAILER!!!"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 374
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Mode 0 only allowed in the trailer. Found entry: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Occured at byte: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->getBytesRead()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 377
    :cond_1
    return-object v3
.end method

.method private readOldBinaryEntry(Z)Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;
    .locals 12
    .param p1, "swapHalfWord"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x4

    const/4 v8, 0x2

    .line 382
    new-instance v3, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    const/16 v6, 0x8

    invoke-direct {v3, v6}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;-><init>(S)V

    .line 384
    .local v3, "ret":Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;
    invoke-direct {p0, v8, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readBinaryLong(IZ)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setDevice(J)V

    .line 385
    invoke-direct {p0, v8, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readBinaryLong(IZ)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setInode(J)V

    .line 386
    invoke-direct {p0, v8, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readBinaryLong(IZ)J

    move-result-wide v0

    .line 387
    .local v0, "mode":J
    cmp-long v6, v0, v10

    if-eqz v6, :cond_0

    .line 388
    invoke-virtual {v3, v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setMode(J)V

    .line 390
    :cond_0
    invoke-direct {p0, v8, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readBinaryLong(IZ)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setUID(J)V

    .line 391
    invoke-direct {p0, v8, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readBinaryLong(IZ)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setGID(J)V

    .line 392
    invoke-direct {p0, v8, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readBinaryLong(IZ)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setNumberOfLinks(J)V

    .line 393
    invoke-direct {p0, v8, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readBinaryLong(IZ)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setRemoteDevice(J)V

    .line 394
    invoke-direct {p0, v9, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readBinaryLong(IZ)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setTime(J)V

    .line 395
    invoke-direct {p0, v8, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readBinaryLong(IZ)J

    move-result-wide v4

    .line 396
    .local v4, "namesize":J
    invoke-direct {p0, v9, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readBinaryLong(IZ)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setSize(J)V

    .line 397
    long-to-int v6, v4

    invoke-direct {p0, v6}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readCString(I)Ljava/lang/String;

    move-result-object v2

    .line 398
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v3, v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setName(Ljava/lang/String;)V

    .line 399
    cmp-long v6, v0, v10

    if-nez v6, :cond_1

    const-string v6, "TRAILER!!!"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 400
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Mode 0 only allowed in the trailer. Found entry: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Occured at byte: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->getBytesRead()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 402
    :cond_1
    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getHeaderPadCount()I

    move-result v6

    invoke-direct {p0, v6}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->skip(I)V

    .line 404
    return-object v3
.end method

.method private skip(I)V
    .locals 2
    .param p1, "bytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    if-lez p1, :cond_0

    .line 229
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->FOUR_BYTES_BUF:[B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readFully([BII)I

    .line 231
    :cond_0
    return-void
.end method

.method private skipRemainderOfLastBlock()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 458
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->getBytesRead()J

    move-result-wide v8

    iget v10, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->blockSize:I

    int-to-long v10, v10

    rem-long v0, v8, v10

    .line 459
    .local v0, "readFromLastBlock":J
    cmp-long v8, v0, v6

    if-nez v8, :cond_1

    move-wide v2, v6

    .line 461
    .local v2, "remainingBytes":J
    :goto_0
    cmp-long v8, v2, v6

    if-lez v8, :cond_0

    .line 462
    iget v8, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->blockSize:I

    int-to-long v8, v8

    sub-long/2addr v8, v0

    invoke-virtual {p0, v8, v9}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->skip(J)J

    move-result-wide v4

    .line 463
    .local v4, "skipped":J
    cmp-long v8, v4, v6

    if-gtz v8, :cond_2

    .line 468
    .end local v4    # "skipped":J
    :cond_0
    return-void

    .line 459
    .end local v2    # "remainingBytes":J
    :cond_1
    iget v8, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->blockSize:I

    int-to-long v8, v8

    sub-long v2, v8, v0

    goto :goto_0

    .line 466
    .restart local v2    # "remainingBytes":J
    .restart local v4    # "skipped":J
    :cond_2
    sub-long/2addr v2, v4

    .line 467
    goto :goto_0
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->ensureOpen()V

    .line 128
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entryEOF:Z

    if-eqz v0, :cond_0

    .line 129
    const/4 v0, 0x0

    .line 131
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->closed:Z

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->closed:Z

    .line 146
    :cond_0
    return-void
.end method

.method public getNextCPIOEntry()Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x71c7

    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 187
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->ensureOpen()V

    .line 188
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    if-eqz v1, :cond_0

    .line 189
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->closeEntry()V

    .line 191
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->TWO_BYTES_BUF:[B

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->TWO_BYTES_BUF:[B

    array-length v2, v2

    invoke-direct {p0, v1, v4, v2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readFully([BII)I

    .line 192
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->TWO_BYTES_BUF:[B

    invoke-static {v1, v4}, Lorg/apache/commons/compress/archivers/cpio/CpioUtil;->byteArray2long([BZ)J

    move-result-wide v2

    cmp-long v1, v2, v8

    if-nez v1, :cond_1

    .line 193
    invoke-direct {p0, v4}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readOldBinaryEntry(Z)Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    .line 214
    :goto_0
    iput-wide v6, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entryBytesRead:J

    .line 215
    iput-boolean v4, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entryEOF:Z

    .line 216
    iput-wide v6, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->crc:J

    .line 218
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TRAILER!!!"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 219
    iput-boolean v5, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entryEOF:Z

    .line 220
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->skipRemainderOfLastBlock()V

    .line 221
    const/4 v1, 0x0

    .line 223
    :goto_1
    return-object v1

    .line 194
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->TWO_BYTES_BUF:[B

    invoke-static {v1, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioUtil;->byteArray2long([BZ)J

    move-result-wide v2

    cmp-long v1, v2, v8

    if-nez v1, :cond_2

    .line 196
    invoke-direct {p0, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readOldBinaryEntry(Z)Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    goto :goto_0

    .line 198
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->TWO_BYTES_BUF:[B

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->SIX_BYTES_BUF:[B

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->TWO_BYTES_BUF:[B

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->SIX_BYTES_BUF:[B

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->TWO_BYTES_BUF:[B

    array-length v2, v2

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->FOUR_BYTES_BUF:[B

    array-length v3, v3

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readFully([BII)I

    .line 202
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->SIX_BYTES_BUF:[B

    invoke-static {v1}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiString([B)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "magicString":Ljava/lang/String;
    const-string v1, "070701"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 204
    invoke-direct {p0, v4}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readNewEntry(Z)Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    goto :goto_0

    .line 205
    :cond_3
    const-string v1, "070702"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 206
    invoke-direct {p0, v5}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readNewEntry(Z)Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    goto :goto_0

    .line 207
    :cond_4
    const-string v1, "070707"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 208
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readOldAsciiEntry()Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    goto :goto_0

    .line 210
    :cond_5
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown magic ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]. Occured at byte: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->getBytesRead()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 223
    .end local v0    # "magicString":Ljava/lang/String;
    :cond_6
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    goto/16 :goto_1
.end method

.method public getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 451
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->getNextCPIOEntry()Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    move-result-object v0

    return-object v0
.end method

.method public read([BII)I
    .locals 11
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v2, -0x1

    .line 252
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->ensureOpen()V

    .line 253
    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    array-length v3, p1

    sub-int/2addr v3, p3

    if-le p2, v3, :cond_1

    .line 254
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 255
    :cond_1
    if-nez p3, :cond_3

    .line 256
    const/4 v2, 0x0

    .line 286
    :cond_2
    :goto_0
    return v2

    .line 259
    :cond_3
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entryEOF:Z

    if-nez v3, :cond_2

    .line 262
    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entryBytesRead:J

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getSize()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    .line 263
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getDataPadCount()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->skip(I)V

    .line 264
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entryEOF:Z

    .line 265
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getFormat()S

    move-result v3

    if-ne v3, v10, :cond_2

    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->crc:J

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getChksum()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    .line 267
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CRC Error. Occured at byte: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->getBytesRead()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 272
    :cond_4
    int-to-long v4, p3

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getSize()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entryBytesRead:J

    sub-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    .line 274
    .local v1, "tmplength":I
    if-ltz v1, :cond_2

    .line 278
    invoke-direct {p0, p1, p2, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->readFully([BII)I

    move-result v2

    .line 279
    .local v2, "tmpread":I
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entry:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getFormat()S

    move-result v3

    if-ne v3, v10, :cond_5

    .line 280
    const/4 v0, 0x0

    .local v0, "pos":I
    :goto_1
    if-ge v0, v2, :cond_5

    .line 281
    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->crc:J

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->crc:J

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 284
    .end local v0    # "pos":I
    :cond_5
    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entryBytesRead:J

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entryBytesRead:J

    goto/16 :goto_0
.end method

.method public skip(J)J
    .locals 7
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 426
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-gez v3, :cond_0

    .line 427
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "negative skip length"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 429
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->ensureOpen()V

    .line 430
    const-wide/32 v4, 0x7fffffff

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    .line 431
    .local v1, "max":I
    const/4 v2, 0x0

    .line 433
    .local v2, "total":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 434
    sub-int v0, v1, v2

    .line 435
    .local v0, "len":I
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->tmpbuf:[B

    array-length v3, v3

    if-le v0, v3, :cond_1

    .line 436
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->tmpbuf:[B

    array-length v0, v3

    .line 438
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->tmpbuf:[B

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->read([BII)I

    move-result v0

    .line 439
    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    .line 440
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->entryEOF:Z

    .line 445
    .end local v0    # "len":I
    :cond_2
    int-to-long v4, v2

    return-wide v4

    .line 443
    .restart local v0    # "len":I
    :cond_3
    add-int/2addr v2, v0

    .line 444
    goto :goto_0
.end method
