.class public Lorg/tukaani/xz/index/IndexDecoder;
.super Lorg/tukaani/xz/index/IndexBase;


# static fields
.field static final $assertionsDisabled:Z

.field static class$org$tukaani$xz$index$IndexDecoder:Ljava/lang/Class;


# instance fields
.field private final info:Lorg/tukaani/xz/index/BlockInfo;

.field private largestBlockSize:J

.field private final memoryUsage:I

.field private pos:I

.field private final streamPadding:J

.field private final uncompressed:[J

.field private final unpadded:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/tukaani/xz/index/IndexDecoder;->class$org$tukaani$xz$index$IndexDecoder:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.tukaani.xz.index.IndexDecoder"

    invoke-static {v0}, Lorg/tukaani/xz/index/IndexDecoder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/tukaani/xz/index/IndexDecoder;->class$org$tukaani$xz$index$IndexDecoder:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lorg/tukaani/xz/index/IndexDecoder;->$assertionsDisabled:Z

    return-void

    :cond_0
    sget-object v0, Lorg/tukaani/xz/index/IndexDecoder;->class$org$tukaani$xz$index$IndexDecoder:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public constructor <init>(Lorg/tukaani/xz/SeekableInputStream;Lorg/tukaani/xz/common/StreamFlags;JI)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v4, Lorg/tukaani/xz/CorruptedInputException;

    const-string v5, "XZ Index is corrupt"

    invoke-direct {v4, v5}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/tukaani/xz/index/IndexBase;-><init>(Lorg/tukaani/xz/XZIOException;)V

    new-instance v4, Lorg/tukaani/xz/index/BlockInfo;

    invoke-direct {v4}, Lorg/tukaani/xz/index/BlockInfo;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/tukaani/xz/index/IndexDecoder;->info:Lorg/tukaani/xz/index/BlockInfo;

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/tukaani/xz/index/IndexDecoder;->largestBlockSize:J

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lorg/tukaani/xz/index/IndexDecoder;->pos:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/tukaani/xz/index/IndexDecoder;->info:Lorg/tukaani/xz/index/BlockInfo;

    move-object/from16 v0, p2

    iput-object v0, v4, Lorg/tukaani/xz/index/BlockInfo;->streamFlags:Lorg/tukaani/xz/common/StreamFlags;

    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/tukaani/xz/index/IndexDecoder;->streamPadding:J

    invoke-virtual/range {p1 .. p1}, Lorg/tukaani/xz/SeekableInputStream;->position()J

    move-result-wide v4

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/tukaani/xz/common/StreamFlags;->backwardSize:J

    add-long/2addr v4, v6

    const-wide/16 v6, 0x4

    sub-long v6, v4, v6

    new-instance v8, Ljava/util/zip/CRC32;

    invoke-direct {v8}, Ljava/util/zip/CRC32;-><init>()V

    new-instance v9, Ljava/util/zip/CheckedInputStream;

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v8}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    invoke-virtual {v9}, Ljava/util/zip/CheckedInputStream;->read()I

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lorg/tukaani/xz/CorruptedInputException;

    const-string v5, "XZ Index is corrupt"

    invoke-direct {v4, v5}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    :try_start_0
    invoke-static {v9}, Lorg/tukaani/xz/common/DecoderUtil;->decodeVLI(Ljava/io/InputStream;)J

    move-result-wide v10

    move-object/from16 v0, p2

    iget-wide v4, v0, Lorg/tukaani/xz/common/StreamFlags;->backwardSize:J

    const-wide/16 v12, 0x2

    div-long/2addr v4, v12

    cmp-long v4, v10, v4

    if-ltz v4, :cond_1

    new-instance v4, Lorg/tukaani/xz/CorruptedInputException;

    const-string v5, "XZ Index is corrupt"

    invoke-direct {v4, v5}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v4

    new-instance v4, Lorg/tukaani/xz/CorruptedInputException;

    const-string v5, "XZ Index is corrupt"

    invoke-direct {v4, v5}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v10, v4

    if-lez v4, :cond_2

    :try_start_1
    new-instance v4, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string v5, "XZ Index has over 2147483647 Records"

    invoke-direct {v4, v5}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    const-wide/16 v4, 0x10

    mul-long/2addr v4, v10

    const-wide/16 v12, 0x3ff

    add-long/2addr v4, v12

    const-wide/16 v12, 0x400

    div-long/2addr v4, v12

    long-to-int v4, v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lorg/tukaani/xz/index/IndexDecoder;->memoryUsage:I

    if-ltz p5, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/tukaani/xz/index/IndexDecoder;->memoryUsage:I

    move/from16 v0, p5

    if-le v4, v0, :cond_3

    new-instance v4, Lorg/tukaani/xz/MemoryLimitException;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/tukaani/xz/index/IndexDecoder;->memoryUsage:I

    move/from16 v0, p5

    invoke-direct {v4, v5, v0}, Lorg/tukaani/xz/MemoryLimitException;-><init>(II)V

    throw v4

    :cond_3
    long-to-int v4, v10

    new-array v4, v4, [J

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/tukaani/xz/index/IndexDecoder;->unpadded:[J

    long-to-int v4, v10

    new-array v4, v4, [J

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/tukaani/xz/index/IndexDecoder;->uncompressed:[J

    const/4 v5, 0x0

    long-to-int v4, v10

    :goto_0
    if-lez v4, :cond_7

    invoke-static {v9}, Lorg/tukaani/xz/common/DecoderUtil;->decodeVLI(Ljava/io/InputStream;)J

    move-result-wide v10

    invoke-static {v9}, Lorg/tukaani/xz/common/DecoderUtil;->decodeVLI(Ljava/io/InputStream;)J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lorg/tukaani/xz/SeekableInputStream;->position()J

    move-result-wide v14

    cmp-long v14, v14, v6

    if-lez v14, :cond_4

    new-instance v4, Lorg/tukaani/xz/CorruptedInputException;

    const-string v5, "XZ Index is corrupt"

    invoke-direct {v4, v5}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/tukaani/xz/index/IndexDecoder;->unpadded:[J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/tukaani/xz/index/IndexDecoder;->blocksSum:J

    move-wide/from16 v16, v0

    add-long v16, v16, v10

    aput-wide v16, v14, v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/tukaani/xz/index/IndexDecoder;->uncompressed:[J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/tukaani/xz/index/IndexDecoder;->uncompressedSum:J

    move-wide/from16 v16, v0

    add-long v16, v16, v12

    aput-wide v16, v14, v5

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    invoke-super {v0, v10, v11, v12, v13}, Lorg/tukaani/xz/index/IndexBase;->add(JJ)V

    sget-boolean v10, Lorg/tukaani/xz/index/IndexDecoder;->$assertionsDisabled:Z

    if-nez v10, :cond_5

    int-to-long v10, v5

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/tukaani/xz/index/IndexDecoder;->recordCount:J

    cmp-long v10, v10, v14

    if-eqz v10, :cond_5

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_5
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/tukaani/xz/index/IndexDecoder;->largestBlockSize:J

    cmp-long v10, v10, v12

    if-gez v10, :cond_6

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/tukaani/xz/index/IndexDecoder;->largestBlockSize:J
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/tukaani/xz/index/IndexDecoder;->getIndexPaddingSize()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lorg/tukaani/xz/SeekableInputStream;->position()J

    move-result-wide v10

    int-to-long v12, v4

    add-long/2addr v10, v12

    cmp-long v5, v10, v6

    if-eqz v5, :cond_9

    new-instance v4, Lorg/tukaani/xz/CorruptedInputException;

    const-string v5, "XZ Index is corrupt"

    invoke-direct {v4, v5}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_8
    move v4, v5

    :cond_9
    add-int/lit8 v5, v4, -0x1

    if-lez v4, :cond_a

    invoke-virtual {v9}, Ljava/util/zip/CheckedInputStream;->read()I

    move-result v4

    if-eqz v4, :cond_8

    new-instance v4, Lorg/tukaani/xz/CorruptedInputException;

    const-string v5, "XZ Index is corrupt"

    invoke-direct {v4, v5}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_a
    invoke-virtual {v8}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6

    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x4

    if-ge v4, v5, :cond_c

    mul-int/lit8 v5, v4, 0x8

    ushr-long v8, v6, v5

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    invoke-virtual/range {p1 .. p1}, Lorg/tukaani/xz/SeekableInputStream;->read()I

    move-result v5

    int-to-long v10, v5

    cmp-long v5, v8, v10

    if-eqz v5, :cond_b

    new-instance v4, Lorg/tukaani/xz/CorruptedInputException;

    const-string v5, "XZ Index is corrupt"

    invoke-direct {v4, v5}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_c
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method private getInfo()Lorg/tukaani/xz/index/BlockInfo;
    .locals 6

    const-wide/16 v2, 0x0

    iget v0, p0, Lorg/tukaani/xz/index/IndexDecoder;->pos:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/tukaani/xz/index/IndexDecoder;->info:Lorg/tukaani/xz/index/BlockInfo;

    iput-wide v2, v0, Lorg/tukaani/xz/index/BlockInfo;->compressedOffset:J

    iget-object v0, p0, Lorg/tukaani/xz/index/IndexDecoder;->info:Lorg/tukaani/xz/index/BlockInfo;

    iput-wide v2, v0, Lorg/tukaani/xz/index/BlockInfo;->uncompressedOffset:J

    :goto_0
    iget-object v0, p0, Lorg/tukaani/xz/index/IndexDecoder;->info:Lorg/tukaani/xz/index/BlockInfo;

    iget-object v1, p0, Lorg/tukaani/xz/index/IndexDecoder;->unpadded:[J

    iget v2, p0, Lorg/tukaani/xz/index/IndexDecoder;->pos:I

    aget-wide v2, v1, v2

    iget-object v1, p0, Lorg/tukaani/xz/index/IndexDecoder;->info:Lorg/tukaani/xz/index/BlockInfo;

    iget-wide v4, v1, Lorg/tukaani/xz/index/BlockInfo;->compressedOffset:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lorg/tukaani/xz/index/BlockInfo;->unpaddedSize:J

    iget-object v0, p0, Lorg/tukaani/xz/index/IndexDecoder;->info:Lorg/tukaani/xz/index/BlockInfo;

    iget-object v1, p0, Lorg/tukaani/xz/index/IndexDecoder;->uncompressed:[J

    iget v2, p0, Lorg/tukaani/xz/index/IndexDecoder;->pos:I

    aget-wide v2, v1, v2

    iget-object v1, p0, Lorg/tukaani/xz/index/IndexDecoder;->info:Lorg/tukaani/xz/index/BlockInfo;

    iget-wide v4, v1, Lorg/tukaani/xz/index/BlockInfo;->uncompressedOffset:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lorg/tukaani/xz/index/BlockInfo;->uncompressedSize:J

    iget-object v0, p0, Lorg/tukaani/xz/index/IndexDecoder;->info:Lorg/tukaani/xz/index/BlockInfo;

    iget-wide v2, v0, Lorg/tukaani/xz/index/BlockInfo;->compressedOffset:J

    const-wide/16 v4, 0xc

    add-long/2addr v2, v4

    iput-wide v2, v0, Lorg/tukaani/xz/index/BlockInfo;->compressedOffset:J

    iget-object v0, p0, Lorg/tukaani/xz/index/IndexDecoder;->info:Lorg/tukaani/xz/index/BlockInfo;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/index/IndexDecoder;->info:Lorg/tukaani/xz/index/BlockInfo;

    iget-object v1, p0, Lorg/tukaani/xz/index/IndexDecoder;->unpadded:[J

    iget v2, p0, Lorg/tukaani/xz/index/IndexDecoder;->pos:I

    add-int/lit8 v2, v2, -0x1

    aget-wide v2, v1, v2

    const-wide/16 v4, 0x3

    add-long/2addr v2, v4

    const-wide/16 v4, -0x4

    and-long/2addr v2, v4

    iput-wide v2, v0, Lorg/tukaani/xz/index/BlockInfo;->compressedOffset:J

    iget-object v0, p0, Lorg/tukaani/xz/index/IndexDecoder;->info:Lorg/tukaani/xz/index/BlockInfo;

    iget-object v1, p0, Lorg/tukaani/xz/index/IndexDecoder;->uncompressed:[J

    iget v2, p0, Lorg/tukaani/xz/index/IndexDecoder;->pos:I

    add-int/lit8 v2, v2, -0x1

    aget-wide v2, v1, v2

    iput-wide v2, v0, Lorg/tukaani/xz/index/BlockInfo;->uncompressedOffset:J

    goto :goto_0
.end method


# virtual methods
.method public getLargestBlockSize()J
    .locals 2

    iget-wide v0, p0, Lorg/tukaani/xz/index/IndexDecoder;->largestBlockSize:J

    return-wide v0
.end method

.method public getMemoryUsage()I
    .locals 1

    iget v0, p0, Lorg/tukaani/xz/index/IndexDecoder;->memoryUsage:I

    return v0
.end method

.method public getNext()Lorg/tukaani/xz/index/BlockInfo;
    .locals 1

    iget v0, p0, Lorg/tukaani/xz/index/IndexDecoder;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/tukaani/xz/index/IndexDecoder;->pos:I

    invoke-direct {p0}, Lorg/tukaani/xz/index/IndexDecoder;->getInfo()Lorg/tukaani/xz/index/BlockInfo;

    move-result-object v0

    return-object v0
.end method

.method public getStreamAndPaddingSize()J
    .locals 4

    invoke-virtual {p0}, Lorg/tukaani/xz/index/IndexDecoder;->getStreamSize()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/tukaani/xz/index/IndexDecoder;->streamPadding:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getUncompressedSize()J
    .locals 2

    iget-wide v0, p0, Lorg/tukaani/xz/index/IndexDecoder;->uncompressedSum:J

    return-wide v0
.end method

.method public hasNext()Z
    .locals 4

    iget v0, p0, Lorg/tukaani/xz/index/IndexDecoder;->pos:I

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    iget-wide v2, p0, Lorg/tukaani/xz/index/IndexDecoder;->recordCount:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public locate(J)Lorg/tukaani/xz/index/BlockInfo;
    .locals 7

    sget-boolean v0, Lorg/tukaani/xz/index/IndexDecoder;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/tukaani/xz/index/IndexDecoder;->uncompressedSum:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/4 v2, 0x0

    iget-object v0, p0, Lorg/tukaani/xz/index/IndexDecoder;->unpadded:[J

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ge v2, v0, :cond_2

    sub-int v1, v0, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    iget-object v3, p0, Lorg/tukaani/xz/index/IndexDecoder;->uncompressed:[J

    aget-wide v4, v3, v1

    cmp-long v3, v4, p1

    if-gtz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    move v1, v2

    goto :goto_1

    :cond_2
    iput v2, p0, Lorg/tukaani/xz/index/IndexDecoder;->pos:I

    invoke-direct {p0}, Lorg/tukaani/xz/index/IndexDecoder;->getInfo()Lorg/tukaani/xz/index/BlockInfo;

    move-result-object v0

    return-object v0
.end method
