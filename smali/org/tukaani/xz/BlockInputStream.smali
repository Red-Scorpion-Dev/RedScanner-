.class Lorg/tukaani/xz/BlockInputStream;
.super Ljava/io/InputStream;


# instance fields
.field private final check:Lorg/tukaani/xz/check/Check;

.field private compressedSizeInHeader:J

.field private compressedSizeLimit:J

.field private endReached:Z

.field private filterChain:Ljava/io/InputStream;

.field private final headerSize:I

.field private final in:Ljava/io/InputStream;

.field private final inCounted:Lorg/tukaani/xz/CountingInputStream;

.field private final inData:Ljava/io/DataInputStream;

.field private uncompressedSize:J

.field private uncompressedSizeInHeader:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/tukaani/xz/check/Check;IJJ)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/tukaani/xz/IndexIndicatorException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSize:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/tukaani/xz/BlockInputStream;->endReached:Z

    iput-object p1, p0, Lorg/tukaani/xz/BlockInputStream;->in:Ljava/io/InputStream;

    iput-object p2, p0, Lorg/tukaani/xz/BlockInputStream;->check:Lorg/tukaani/xz/check/Check;

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lorg/tukaani/xz/BlockInputStream;->inData:Ljava/io/DataInputStream;

    const/16 v2, 0x400

    new-array v2, v2, [B

    iget-object v3, p0, Lorg/tukaani/xz/BlockInputStream;->inData:Ljava/io/DataInputStream;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v4, v5}, Ljava/io/DataInputStream;->readFully([BII)V

    const/4 v3, 0x0

    aget-byte v3, v2, v3

    if-nez v3, :cond_0

    new-instance v2, Lorg/tukaani/xz/IndexIndicatorException;

    invoke-direct {v2}, Lorg/tukaani/xz/IndexIndicatorException;-><init>()V

    throw v2

    :cond_0
    const/4 v3, 0x0

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v3, v3, 0x4

    iput v3, p0, Lorg/tukaani/xz/BlockInputStream;->headerSize:I

    iget-object v3, p0, Lorg/tukaani/xz/BlockInputStream;->inData:Ljava/io/DataInputStream;

    const/4 v4, 0x1

    iget v5, p0, Lorg/tukaani/xz/BlockInputStream;->headerSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v2, v4, v5}, Ljava/io/DataInputStream;->readFully([BII)V

    const/4 v3, 0x0

    iget v4, p0, Lorg/tukaani/xz/BlockInputStream;->headerSize:I

    add-int/lit8 v4, v4, -0x4

    iget v5, p0, Lorg/tukaani/xz/BlockInputStream;->headerSize:I

    add-int/lit8 v5, v5, -0x4

    invoke-static {v2, v3, v4, v5}, Lorg/tukaani/xz/common/DecoderUtil;->isCRC32Valid([BIII)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v2, Lorg/tukaani/xz/CorruptedInputException;

    const-string v3, "XZ Block Header is corrupt"

    invoke-direct {v2, v3}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const/4 v3, 0x1

    aget-byte v3, v2, v3

    and-int/lit8 v3, v3, 0x3c

    if-eqz v3, :cond_2

    new-instance v2, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string v3, "Unsupported options in XZ Block Header"

    invoke-direct {v2, v3}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    const/4 v3, 0x1

    aget-byte v3, v2, v3

    and-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x1

    new-array v4, v3, [J

    new-array v5, v3, [[B

    new-instance v6, Ljava/io/ByteArrayInputStream;

    const/4 v7, 0x2

    iget v8, p0, Lorg/tukaani/xz/BlockInputStream;->headerSize:I

    add-int/lit8 v8, v8, -0x6

    invoke-direct {v6, v2, v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    const-wide v8, 0x7ffffffffffffffcL

    :try_start_0
    iget v7, p0, Lorg/tukaani/xz/BlockInputStream;->headerSize:I

    int-to-long v10, v7

    sub-long/2addr v8, v10

    invoke-virtual {p2}, Lorg/tukaani/xz/check/Check;->getSize()I

    move-result v7

    int-to-long v10, v7

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeLimit:J

    const/4 v7, 0x1

    aget-byte v7, v2, v7

    and-int/lit8 v7, v7, 0x40

    if-eqz v7, :cond_5

    invoke-static {v6}, Lorg/tukaani/xz/common/DecoderUtil;->decodeVLI(Ljava/io/InputStream;)J

    move-result-wide v8

    iput-wide v8, p0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J

    iget-wide v8, p0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_3

    iget-wide v8, p0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J

    iget-wide v10, p0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeLimit:J

    cmp-long v7, v8, v10

    if-lez v7, :cond_4

    :cond_3
    new-instance v2, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v2}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    new-instance v2, Lorg/tukaani/xz/CorruptedInputException;

    const-string v3, "XZ Block Header is corrupt"

    invoke-direct {v2, v3}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    :try_start_1
    iget-wide v8, p0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J

    iput-wide v8, p0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeLimit:J

    :cond_5
    const/4 v7, 0x1

    aget-byte v2, v2, v7

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_6

    invoke-static {v6}, Lorg/tukaani/xz/common/DecoderUtil;->decodeVLI(Ljava/io/InputStream;)J

    move-result-wide v8

    iput-wide v8, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    :cond_6
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_8

    invoke-static {v6}, Lorg/tukaani/xz/common/DecoderUtil;->decodeVLI(Ljava/io/InputStream;)J

    move-result-wide v8

    aput-wide v8, v4, v2

    invoke-static {v6}, Lorg/tukaani/xz/common/DecoderUtil;->decodeVLI(Ljava/io/InputStream;)J

    move-result-wide v8

    invoke-virtual {v6}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v7

    int-to-long v10, v7

    cmp-long v7, v8, v10

    if-lez v7, :cond_7

    new-instance v2, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v2}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v2

    :cond_7
    long-to-int v7, v8

    new-array v7, v7, [B

    aput-object v7, v5, v2

    aget-object v7, v5, v2

    invoke-virtual {v6, v7}, Ljava/io/ByteArrayInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    invoke-virtual {v6}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    :goto_1
    if-lez v2, :cond_a

    invoke-virtual {v6}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    if-eqz v3, :cond_9

    new-instance v2, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string v3, "Unsupported options in XZ Block Header"

    invoke-direct {v2, v3}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_a
    const-wide/16 v2, -0x1

    cmp-long v2, p4, v2

    if-eqz v2, :cond_f

    iget v2, p0, Lorg/tukaani/xz/BlockInputStream;->headerSize:I

    invoke-virtual {p2}, Lorg/tukaani/xz/check/Check;->getSize()I

    move-result v3

    add-int/2addr v2, v3

    int-to-long v6, v2

    cmp-long v3, v6, p4

    if-ltz v3, :cond_b

    new-instance v2, Lorg/tukaani/xz/CorruptedInputException;

    const-string v3, "XZ Index does not match a Block Header"

    invoke-direct {v2, v3}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    int-to-long v2, v2

    sub-long v2, p4, v2

    iget-wide v6, p0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeLimit:J

    cmp-long v6, v2, v6

    if-gtz v6, :cond_c

    iget-wide v6, p0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_d

    iget-wide v6, p0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J

    cmp-long v6, v6, v2

    if-eqz v6, :cond_d

    :cond_c
    new-instance v2, Lorg/tukaani/xz/CorruptedInputException;

    const-string v3, "XZ Index does not match a Block Header"

    invoke-direct {v2, v3}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d
    iget-wide v6, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_e

    iget-wide v6, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    cmp-long v6, v6, p6

    if-eqz v6, :cond_e

    new-instance v2, Lorg/tukaani/xz/CorruptedInputException;

    const-string v3, "XZ Index does not match a Block Header"

    invoke-direct {v2, v3}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e
    iput-wide v2, p0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeLimit:J

    iput-wide v2, p0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J

    move-wide/from16 v0, p6

    iput-wide v0, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    :cond_f
    array-length v2, v4

    new-array v6, v2, [Lorg/tukaani/xz/FilterDecoder;

    const/4 v2, 0x0

    :goto_2
    array-length v3, v6

    if-ge v2, v3, :cond_13

    aget-wide v8, v4, v2

    const-wide/16 v10, 0x21

    cmp-long v3, v8, v10

    if-nez v3, :cond_10

    new-instance v3, Lorg/tukaani/xz/LZMA2Decoder;

    aget-object v7, v5, v2

    invoke-direct {v3, v7}, Lorg/tukaani/xz/LZMA2Decoder;-><init>([B)V

    aput-object v3, v6, v2

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_10
    aget-wide v8, v4, v2

    const-wide/16 v10, 0x3

    cmp-long v3, v8, v10

    if-nez v3, :cond_11

    new-instance v3, Lorg/tukaani/xz/DeltaDecoder;

    aget-object v7, v5, v2

    invoke-direct {v3, v7}, Lorg/tukaani/xz/DeltaDecoder;-><init>([B)V

    aput-object v3, v6, v2

    goto :goto_3

    :cond_11
    aget-wide v8, v4, v2

    invoke-static {v8, v9}, Lorg/tukaani/xz/BCJDecoder;->isBCJFilterID(J)Z

    move-result v3

    if-eqz v3, :cond_12

    new-instance v3, Lorg/tukaani/xz/BCJDecoder;

    aget-wide v8, v4, v2

    aget-object v7, v5, v2

    invoke-direct {v3, v8, v9, v7}, Lorg/tukaani/xz/BCJDecoder;-><init>(J[B)V

    aput-object v3, v6, v2

    goto :goto_3

    :cond_12
    new-instance v3, Lorg/tukaani/xz/UnsupportedOptionsException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Unknown Filter ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    aget-wide v6, v4, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_13
    invoke-static {v6}, Lorg/tukaani/xz/RawCoder;->validate([Lorg/tukaani/xz/FilterCoder;)V

    if-ltz p3, :cond_15

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_4
    array-length v4, v6

    if-ge v2, v4, :cond_14

    aget-object v4, v6, v2

    invoke-interface {v4}, Lorg/tukaani/xz/FilterDecoder;->getMemoryUsage()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_14
    if-le v3, p3, :cond_15

    new-instance v2, Lorg/tukaani/xz/MemoryLimitException;

    invoke-direct {v2, v3, p3}, Lorg/tukaani/xz/MemoryLimitException;-><init>(II)V

    throw v2

    :cond_15
    new-instance v2, Lorg/tukaani/xz/CountingInputStream;

    invoke-direct {v2, p1}, Lorg/tukaani/xz/CountingInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lorg/tukaani/xz/BlockInputStream;->inCounted:Lorg/tukaani/xz/CountingInputStream;

    iget-object v2, p0, Lorg/tukaani/xz/BlockInputStream;->inCounted:Lorg/tukaani/xz/CountingInputStream;

    iput-object v2, p0, Lorg/tukaani/xz/BlockInputStream;->filterChain:Ljava/io/InputStream;

    array-length v2, v6

    add-int/lit8 v2, v2, -0x1

    :goto_5
    if-ltz v2, :cond_16

    aget-object v3, v6, v2

    iget-object v4, p0, Lorg/tukaani/xz/BlockInputStream;->filterChain:Ljava/io/InputStream;

    invoke-interface {v3, v4}, Lorg/tukaani/xz/FilterDecoder;->getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lorg/tukaani/xz/BlockInputStream;->filterChain:Ljava/io/InputStream;

    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :cond_16
    return-void
.end method

.method private validate()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, -0x1

    iget-object v0, p0, Lorg/tukaani/xz/BlockInputStream;->inCounted:Lorg/tukaani/xz/CountingInputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/CountingInputStream;->getSize()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_1

    :cond_0
    iget-wide v2, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    iget-wide v4, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSize:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    :cond_1
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v0

    :cond_2
    move-wide v0, v2

    :cond_3
    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    const-wide/16 v4, 0x3

    and-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/tukaani/xz/BlockInputStream;->inData:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v0

    :cond_4
    iget-object v0, p0, Lorg/tukaani/xz/BlockInputStream;->check:Lorg/tukaani/xz/check/Check;

    invoke-virtual {v0}, Lorg/tukaani/xz/check/Check;->getSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/tukaani/xz/BlockInputStream;->inData:Ljava/io/DataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    iget-object v1, p0, Lorg/tukaani/xz/BlockInputStream;->check:Lorg/tukaani/xz/check/Check;

    invoke-virtual {v1}, Lorg/tukaani/xz/check/Check;->finish()[B

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Integrity check ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/tukaani/xz/BlockInputStream;->check:Lorg/tukaani/xz/check/Check;

    invoke-virtual {v2}, Lorg/tukaani/xz/check/Check;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ") does not match"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/tukaani/xz/BlockInputStream;->filterChain:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public getUncompressedSize()J
    .locals 2

    iget-wide v0, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSize:J

    return-wide v0
.end method

.method public getUnpaddedSize()J
    .locals 4

    iget v0, p0, Lorg/tukaani/xz/BlockInputStream;->headerSize:I

    int-to-long v0, v0

    iget-object v2, p0, Lorg/tukaani/xz/BlockInputStream;->inCounted:Lorg/tukaani/xz/CountingInputStream;

    invoke-virtual {v2}, Lorg/tukaani/xz/CountingInputStream;->getSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lorg/tukaani/xz/BlockInputStream;->check:Lorg/tukaani/xz/check/Check;

    invoke-virtual {v2}, Lorg/tukaani/xz/check/Check;->getSize()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, -0x1

    new-array v1, v2, [B

    invoke-virtual {p0, v1, v3, v2}, Lorg/tukaani/xz/BlockInputStream;->read([BII)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    aget-byte v0, v1, v3

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v8, 0x0

    const/4 v6, 0x1

    const/4 v0, -0x1

    iget-boolean v1, p0, Lorg/tukaani/xz/BlockInputStream;->endReached:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lorg/tukaani/xz/BlockInputStream;->filterChain:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-lez v1, :cond_6

    iget-object v2, p0, Lorg/tukaani/xz/BlockInputStream;->check:Lorg/tukaani/xz/check/Check;

    invoke-virtual {v2, p1, p2, v1}, Lorg/tukaani/xz/check/Check;->update([BII)V

    iget-wide v2, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSize:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSize:J

    iget-object v2, p0, Lorg/tukaani/xz/BlockInputStream;->inCounted:Lorg/tukaani/xz/CountingInputStream;

    invoke-virtual {v2}, Lorg/tukaani/xz/CountingInputStream;->getSize()J

    move-result-wide v2

    cmp-long v4, v2, v8

    if-ltz v4, :cond_1

    iget-wide v4, p0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeLimit:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    iget-wide v2, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSize:J

    cmp-long v2, v2, v8

    if-ltz v2, :cond_1

    iget-wide v2, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSize:J

    iget-wide v4, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    :cond_1
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v0

    :cond_2
    if-lt v1, p3, :cond_3

    iget-wide v2, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSize:J

    iget-wide v4, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    :cond_3
    iget-object v2, p0, Lorg/tukaani/xz/BlockInputStream;->filterChain:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    if-eq v2, v0, :cond_4

    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v0

    :cond_4
    invoke-direct {p0}, Lorg/tukaani/xz/BlockInputStream;->validate()V

    iput-boolean v6, p0, Lorg/tukaani/xz/BlockInputStream;->endReached:Z

    :cond_5
    :goto_1
    move v0, v1

    goto :goto_0

    :cond_6
    if-ne v1, v0, :cond_5

    invoke-direct {p0}, Lorg/tukaani/xz/BlockInputStream;->validate()V

    iput-boolean v6, p0, Lorg/tukaani/xz/BlockInputStream;->endReached:Z

    goto :goto_1
.end method
