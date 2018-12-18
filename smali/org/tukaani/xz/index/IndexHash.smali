.class public Lorg/tukaani/xz/index/IndexHash;
.super Lorg/tukaani/xz/index/IndexBase;


# instance fields
.field private hash:Lorg/tukaani/xz/check/Check;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    invoke-direct {p0, v0}, Lorg/tukaani/xz/index/IndexBase;-><init>(Lorg/tukaani/xz/XZIOException;)V

    :try_start_0
    new-instance v0, Lorg/tukaani/xz/check/SHA256;

    invoke-direct {v0}, Lorg/tukaani/xz/check/SHA256;-><init>()V

    iput-object v0, p0, Lorg/tukaani/xz/index/IndexHash;->hash:Lorg/tukaani/xz/check/Check;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Lorg/tukaani/xz/check/CRC32;

    invoke-direct {v0}, Lorg/tukaani/xz/check/CRC32;-><init>()V

    iput-object v0, p0, Lorg/tukaani/xz/index/IndexHash;->hash:Lorg/tukaani/xz/check/Check;

    goto :goto_0
.end method


# virtual methods
.method public add(JJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/XZIOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lorg/tukaani/xz/index/IndexBase;->add(JJ)V

    const/16 v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p3, p4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/tukaani/xz/index/IndexHash;->hash:Lorg/tukaani/xz/check/Check;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/tukaani/xz/check/Check;->update([B)V

    return-void
.end method

.method public validate(Ljava/io/InputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v3, Ljava/util/zip/CRC32;

    invoke-direct {v3}, Ljava/util/zip/CRC32;-><init>()V

    invoke-virtual {v3, v2}, Ljava/util/zip/CRC32;->update(I)V

    new-instance v4, Ljava/util/zip/CheckedInputStream;

    invoke-direct {v4, p1, v3}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    invoke-static {v4}, Lorg/tukaani/xz/common/DecoderUtil;->decodeVLI(Ljava/io/InputStream;)J

    move-result-wide v0

    iget-wide v6, p0, Lorg/tukaani/xz/index/IndexHash;->recordCount:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    const-string v1, "XZ Index is corrupt"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v5, Lorg/tukaani/xz/index/IndexHash;

    invoke-direct {v5}, Lorg/tukaani/xz/index/IndexHash;-><init>()V

    const-wide/16 v0, 0x0

    :goto_0
    iget-wide v6, p0, Lorg/tukaani/xz/index/IndexHash;->recordCount:J

    cmp-long v6, v0, v6

    if-gez v6, :cond_3

    invoke-static {v4}, Lorg/tukaani/xz/common/DecoderUtil;->decodeVLI(Ljava/io/InputStream;)J

    move-result-wide v6

    invoke-static {v4}, Lorg/tukaani/xz/common/DecoderUtil;->decodeVLI(Ljava/io/InputStream;)J

    move-result-wide v8

    :try_start_0
    invoke-virtual {v5, v6, v7, v8, v9}, Lorg/tukaani/xz/index/IndexHash;->add(JJ)V
    :try_end_0
    .catch Lorg/tukaani/xz/XZIOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-wide v6, v5, Lorg/tukaani/xz/index/IndexHash;->blocksSum:J

    iget-wide v8, p0, Lorg/tukaani/xz/index/IndexHash;->blocksSum:J

    cmp-long v6, v6, v8

    if-gtz v6, :cond_1

    iget-wide v6, v5, Lorg/tukaani/xz/index/IndexHash;->uncompressedSum:J

    iget-wide v8, p0, Lorg/tukaani/xz/index/IndexHash;->uncompressedSum:J

    cmp-long v6, v6, v8

    if-gtz v6, :cond_1

    iget-wide v6, v5, Lorg/tukaani/xz/index/IndexHash;->indexListSize:J

    iget-wide v8, p0, Lorg/tukaani/xz/index/IndexHash;->indexListSize:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    :cond_1
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    const-string v1, "XZ Index is corrupt"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    const-string v1, "XZ Index is corrupt"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    goto :goto_0

    :cond_3
    iget-wide v0, v5, Lorg/tukaani/xz/index/IndexHash;->blocksSum:J

    iget-wide v6, p0, Lorg/tukaani/xz/index/IndexHash;->blocksSum:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_4

    iget-wide v0, v5, Lorg/tukaani/xz/index/IndexHash;->uncompressedSum:J

    iget-wide v6, p0, Lorg/tukaani/xz/index/IndexHash;->uncompressedSum:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_4

    iget-wide v0, v5, Lorg/tukaani/xz/index/IndexHash;->indexListSize:J

    iget-wide v6, p0, Lorg/tukaani/xz/index/IndexHash;->indexListSize:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_4

    iget-object v0, v5, Lorg/tukaani/xz/index/IndexHash;->hash:Lorg/tukaani/xz/check/Check;

    invoke-virtual {v0}, Lorg/tukaani/xz/check/Check;->finish()[B

    move-result-object v0

    iget-object v1, p0, Lorg/tukaani/xz/index/IndexHash;->hash:Lorg/tukaani/xz/check/Check;

    invoke-virtual {v1}, Lorg/tukaani/xz/check/Check;->finish()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    const-string v1, "XZ Index is corrupt"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Lorg/tukaani/xz/index/IndexHash;->getIndexPaddingSize()I

    move-result v0

    :goto_1
    if-lez v0, :cond_7

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    if-eqz v4, :cond_6

    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    const-string v1, "XZ Index is corrupt"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_7
    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    move v0, v2

    :goto_2
    const/4 v2, 0x4

    if-ge v0, v2, :cond_9

    mul-int/lit8 v2, v0, 0x8

    ushr-long v2, v4, v2

    const-wide/16 v6, 0xff

    and-long/2addr v2, v6

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    int-to-long v6, v6

    cmp-long v2, v2, v6

    if-eqz v2, :cond_8

    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    const-string v1, "XZ Index is corrupt"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    return-void
.end method
