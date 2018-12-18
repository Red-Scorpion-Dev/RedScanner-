.class public Lorg/tukaani/xz/SeekableXZInputStream;
.super Lorg/tukaani/xz/SeekableInputStream;


# static fields
.field static final $assertionsDisabled:Z

.field static class$org$tukaani$xz$SeekableXZInputStream:Ljava/lang/Class;


# instance fields
.field private blockDecoder:Lorg/tukaani/xz/BlockInputStream;

.field private check:Lorg/tukaani/xz/check/Check;

.field private checkTypes:I

.field private curPos:J

.field private endReached:Z

.field private exception:Ljava/io/IOException;

.field private in:Lorg/tukaani/xz/SeekableInputStream;

.field private index:Lorg/tukaani/xz/index/IndexDecoder;

.field private indexMemoryUsage:I

.field private largestBlockSize:J

.field private final memoryLimit:I

.field private seekNeeded:Z

.field private seekPos:J

.field private final streams:Ljava/util/ArrayList;

.field private uncompressedSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/tukaani/xz/SeekableXZInputStream;->class$org$tukaani$xz$SeekableXZInputStream:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.tukaani.xz.SeekableXZInputStream"

    invoke-static {v0}, Lorg/tukaani/xz/SeekableXZInputStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/tukaani/xz/SeekableXZInputStream;->class$org$tukaani$xz$SeekableXZInputStream:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lorg/tukaani/xz/SeekableXZInputStream;->$assertionsDisabled:Z

    return-void

    :cond_0
    sget-object v0, Lorg/tukaani/xz/SeekableXZInputStream;->class$org$tukaani$xz$SeekableXZInputStream:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public constructor <init>(Lorg/tukaani/xz/SeekableInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/tukaani/xz/SeekableXZInputStream;-><init>(Lorg/tukaani/xz/SeekableInputStream;I)V

    return-void
.end method

.method public constructor <init>(Lorg/tukaani/xz/SeekableInputStream;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/tukaani/xz/SeekableInputStream;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->indexMemoryUsage:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->streams:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->checkTypes:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->uncompressedSize:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->largestBlockSize:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curPos:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekNeeded:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->endReached:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->exception:Ljava/io/IOException;

    iput-object p1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->in:Lorg/tukaani/xz/SeekableInputStream;

    new-instance v7, Ljava/io/DataInputStream;

    invoke-direct {v7, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/tukaani/xz/SeekableInputStream;->seek(J)V

    sget-object v0, Lorg/tukaani/xz/XZ;->HEADER_MAGIC:[B

    array-length v0, v0

    new-array v0, v0, [B

    invoke-virtual {v7, v0}, Ljava/io/DataInputStream;->readFully([B)V

    sget-object v1, Lorg/tukaani/xz/XZ;->HEADER_MAGIC:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/tukaani/xz/XZFormatException;

    invoke-direct {v0}, Lorg/tukaani/xz/XZFormatException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lorg/tukaani/xz/SeekableInputStream;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    const-string v1, "XZ file size is not a multiple of 4 bytes"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v2, 0xc

    new-array v8, v2, [B

    const-wide/16 v4, 0x0

    move v6, p2

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_b

    const-wide/16 v2, 0xc

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v0

    :cond_2
    const-wide/16 v2, 0xc

    sub-long v2, v0, v2

    invoke-virtual {p1, v2, v3}, Lorg/tukaani/xz/SeekableInputStream;->seek(J)V

    invoke-virtual {v7, v8}, Ljava/io/DataInputStream;->readFully([B)V

    const/16 v2, 0x8

    aget-byte v2, v8, v2

    if-nez v2, :cond_3

    const/16 v2, 0x9

    aget-byte v2, v8, v2

    if-nez v2, :cond_3

    const/16 v2, 0xa

    aget-byte v2, v8, v2

    if-nez v2, :cond_3

    const/16 v2, 0xb

    aget-byte v2, v8, v2

    if-nez v2, :cond_3

    const-wide/16 v2, 0x4

    add-long/2addr v4, v2

    const-wide/16 v2, 0x4

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_3
    const-wide/16 v2, 0xc

    sub-long v10, v0, v2

    invoke-static {v8}, Lorg/tukaani/xz/common/DecoderUtil;->decodeStreamFooter([B)Lorg/tukaani/xz/common/StreamFlags;

    move-result-object v3

    iget-wide v0, v3, Lorg/tukaani/xz/common/StreamFlags;->backwardSize:J

    cmp-long v0, v0, v10

    if-ltz v0, :cond_4

    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    const-string v1, "Backward Size in XZ Stream Footer is too big"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget v0, v3, Lorg/tukaani/xz/common/StreamFlags;->checkType:I

    invoke-static {v0}, Lorg/tukaani/xz/check/Check;->getInstance(I)Lorg/tukaani/xz/check/Check;

    move-result-object v0

    iput-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->check:Lorg/tukaani/xz/check/Check;

    iget v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->checkTypes:I

    const/4 v1, 0x1

    iget v2, v3, Lorg/tukaani/xz/common/StreamFlags;->checkType:I

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->checkTypes:I

    iget-wide v0, v3, Lorg/tukaani/xz/common/StreamFlags;->backwardSize:J

    sub-long v0, v10, v0

    invoke-virtual {p1, v0, v1}, Lorg/tukaani/xz/SeekableInputStream;->seek(J)V

    :try_start_0
    new-instance v1, Lorg/tukaani/xz/index/IndexDecoder;

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/tukaani/xz/index/IndexDecoder;-><init>(Lorg/tukaani/xz/SeekableInputStream;Lorg/tukaani/xz/common/StreamFlags;JI)V

    iput-object v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->index:Lorg/tukaani/xz/index/IndexDecoder;
    :try_end_0
    .catch Lorg/tukaani/xz/MemoryLimitException; {:try_start_0 .. :try_end_0} :catch_0

    iget v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->indexMemoryUsage:I

    iget-object v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->index:Lorg/tukaani/xz/index/IndexDecoder;

    invoke-virtual {v1}, Lorg/tukaani/xz/index/IndexDecoder;->getMemoryUsage()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->indexMemoryUsage:I

    if-ltz v6, :cond_6

    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->index:Lorg/tukaani/xz/index/IndexDecoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/index/IndexDecoder;->getMemoryUsage()I

    move-result v0

    sub-int/2addr v6, v0

    sget-boolean v0, Lorg/tukaani/xz/SeekableXZInputStream;->$assertionsDisabled:Z

    if-nez v0, :cond_6

    if-gez v6, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lorg/tukaani/xz/SeekableXZInputStream;->$assertionsDisabled:Z

    if-nez v1, :cond_5

    if-gez v6, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    new-instance v1, Lorg/tukaani/xz/MemoryLimitException;

    invoke-virtual {v0}, Lorg/tukaani/xz/MemoryLimitException;->getMemoryNeeded()I

    move-result v0

    iget v2, p0, Lorg/tukaani/xz/SeekableXZInputStream;->indexMemoryUsage:I

    add-int/2addr v0, v2

    iget v2, p0, Lorg/tukaani/xz/SeekableXZInputStream;->indexMemoryUsage:I

    add-int/2addr v2, v6

    invoke-direct {v1, v0, v2}, Lorg/tukaani/xz/MemoryLimitException;-><init>(II)V

    throw v1

    :cond_6
    iget-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->largestBlockSize:J

    iget-object v2, p0, Lorg/tukaani/xz/SeekableXZInputStream;->index:Lorg/tukaani/xz/index/IndexDecoder;

    invoke-virtual {v2}, Lorg/tukaani/xz/index/IndexDecoder;->getLargestBlockSize()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-gez v0, :cond_7

    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->index:Lorg/tukaani/xz/index/IndexDecoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/index/IndexDecoder;->getLargestBlockSize()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->largestBlockSize:J

    :cond_7
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->index:Lorg/tukaani/xz/index/IndexDecoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/index/IndexDecoder;->getStreamSize()J

    move-result-wide v0

    const-wide/16 v4, 0xc

    sub-long/2addr v0, v4

    cmp-long v2, v10, v0

    if-gez v2, :cond_8

    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    const-string v1, "XZ Index indicates too big compressed size for the XZ Stream"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    sub-long v0, v10, v0

    invoke-virtual {p1, v0, v1}, Lorg/tukaani/xz/SeekableInputStream;->seek(J)V

    invoke-virtual {v7, v8}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-static {v8}, Lorg/tukaani/xz/common/DecoderUtil;->decodeStreamHeader([B)Lorg/tukaani/xz/common/StreamFlags;

    move-result-object v2

    invoke-static {v2, v3}, Lorg/tukaani/xz/common/DecoderUtil;->areStreamFlagsEqual(Lorg/tukaani/xz/common/StreamFlags;Lorg/tukaani/xz/common/StreamFlags;)Z

    move-result v2

    if-nez v2, :cond_9

    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    const-string v1, "XZ Stream Footer does not match Stream Header"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    iget-wide v2, p0, Lorg/tukaani/xz/SeekableXZInputStream;->uncompressedSize:J

    iget-object v4, p0, Lorg/tukaani/xz/SeekableXZInputStream;->index:Lorg/tukaani/xz/index/IndexDecoder;

    invoke-virtual {v4}, Lorg/tukaani/xz/index/IndexDecoder;->getUncompressedSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/tukaani/xz/SeekableXZInputStream;->uncompressedSize:J

    iget-wide v2, p0, Lorg/tukaani/xz/SeekableXZInputStream;->uncompressedSize:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_a

    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string v1, "XZ file is too big"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v2, p0, Lorg/tukaani/xz/SeekableXZInputStream;->streams:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/tukaani/xz/SeekableXZInputStream;->index:Lorg/tukaani/xz/index/IndexDecoder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v4, 0x0

    goto/16 :goto_0

    :cond_b
    sget-boolean v2, Lorg/tukaani/xz/SeekableXZInputStream;->$assertionsDisabled:Z

    if-nez v2, :cond_c

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_c
    iput v6, p0, Lorg/tukaani/xz/SeekableXZInputStream;->memoryLimit:I

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

.method private initBlockDecoder(Lorg/tukaani/xz/index/BlockInfo;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    new-instance v0, Lorg/tukaani/xz/BlockInputStream;

    iget-object v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->in:Lorg/tukaani/xz/SeekableInputStream;

    iget-object v2, p0, Lorg/tukaani/xz/SeekableXZInputStream;->check:Lorg/tukaani/xz/check/Check;

    iget v3, p0, Lorg/tukaani/xz/SeekableXZInputStream;->memoryLimit:I

    iget-wide v4, p1, Lorg/tukaani/xz/index/BlockInfo;->unpaddedSize:J

    iget-wide v6, p1, Lorg/tukaani/xz/index/BlockInfo;->uncompressedSize:J

    invoke-direct/range {v0 .. v7}, Lorg/tukaani/xz/BlockInputStream;-><init>(Ljava/io/InputStream;Lorg/tukaani/xz/check/Check;IJJ)V

    iput-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;
    :try_end_0
    .catch Lorg/tukaani/xz/MemoryLimitException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/tukaani/xz/IndexIndicatorException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lorg/tukaani/xz/SeekableXZInputStream;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->memoryLimit:I

    if-gez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    new-instance v1, Lorg/tukaani/xz/MemoryLimitException;

    invoke-virtual {v0}, Lorg/tukaani/xz/MemoryLimitException;->getMemoryNeeded()I

    move-result v0

    iget v2, p0, Lorg/tukaani/xz/SeekableXZInputStream;->indexMemoryUsage:I

    add-int/2addr v0, v2

    iget v2, p0, Lorg/tukaani/xz/SeekableXZInputStream;->memoryLimit:I

    iget v3, p0, Lorg/tukaani/xz/SeekableXZInputStream;->indexMemoryUsage:I

    add-int/2addr v2, v3

    invoke-direct {v1, v0, v2}, Lorg/tukaani/xz/MemoryLimitException;-><init>(II)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v0
.end method

.method private seek()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v12, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    iget-boolean v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekNeeded:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->index:Lorg/tukaani/xz/index/IndexDecoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/index/IndexDecoder;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->index:Lorg/tukaani/xz/index/IndexDecoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/index/IndexDecoder;->getNext()Lorg/tukaani/xz/index/BlockInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/tukaani/xz/SeekableXZInputStream;->initBlockDecoder(Lorg/tukaani/xz/index/BlockInfo;)V

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curPos:J

    iput-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekPos:J

    :cond_1
    iput-boolean v6, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekNeeded:Z

    iget-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekPos:J

    iget-wide v2, p0, Lorg/tukaani/xz/SeekableXZInputStream;->uncompressedSize:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekPos:J

    iput-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curPos:J

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    iput-boolean v7, p0, Lorg/tukaani/xz/SeekableXZInputStream;->endReached:Z

    goto :goto_0

    :cond_2
    iput-boolean v6, p0, Lorg/tukaani/xz/SeekableXZInputStream;->endReached:Z

    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->streams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget-boolean v1, Lorg/tukaani/xz/SeekableXZInputStream;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    if-ge v0, v7, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    move-wide v2, v4

    move-wide v6, v4

    :goto_1
    iget-object v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->streams:Ljava/util/ArrayList;

    add-int/lit8 v8, v0, -0x1

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/tukaani/xz/index/IndexDecoder;

    iput-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->index:Lorg/tukaani/xz/index/IndexDecoder;

    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->index:Lorg/tukaani/xz/index/IndexDecoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/index/IndexDecoder;->getUncompressedSize()J

    move-result-wide v0

    add-long/2addr v0, v6

    iget-wide v10, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekPos:J

    cmp-long v0, v0, v10

    if-lez v0, :cond_4

    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->index:Lorg/tukaani/xz/index/IndexDecoder;

    iget-wide v8, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekPos:J

    sub-long/2addr v8, v6

    invoke-virtual {v0, v8, v9}, Lorg/tukaani/xz/index/IndexDecoder;->locate(J)Lorg/tukaani/xz/index/BlockInfo;

    move-result-object v0

    sget-boolean v1, Lorg/tukaani/xz/SeekableXZInputStream;->$assertionsDisabled:Z

    if-nez v1, :cond_5

    iget-wide v8, v0, Lorg/tukaani/xz/index/BlockInfo;->compressedOffset:J

    and-long/2addr v8, v12

    cmp-long v1, v8, v4

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/AssertionError;

    iget-wide v2, v0, Lorg/tukaani/xz/index/BlockInfo;->compressedOffset:J

    invoke-direct {v1, v2, v3}, Ljava/lang/AssertionError;-><init>(J)V

    throw v1

    :cond_4
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->index:Lorg/tukaani/xz/index/IndexDecoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/index/IndexDecoder;->getUncompressedSize()J

    move-result-wide v0

    add-long/2addr v6, v0

    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->index:Lorg/tukaani/xz/index/IndexDecoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/index/IndexDecoder;->getStreamAndPaddingSize()J

    move-result-wide v0

    add-long/2addr v0, v2

    sget-boolean v2, Lorg/tukaani/xz/SeekableXZInputStream;->$assertionsDisabled:Z

    if-nez v2, :cond_b

    and-long v2, v0, v12

    cmp-long v2, v2, v4

    if-eqz v2, :cond_b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    iget-wide v4, v0, Lorg/tukaani/xz/index/BlockInfo;->compressedOffset:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lorg/tukaani/xz/index/BlockInfo;->compressedOffset:J

    iget-wide v2, v0, Lorg/tukaani/xz/index/BlockInfo;->uncompressedOffset:J

    add-long/2addr v2, v6

    iput-wide v2, v0, Lorg/tukaani/xz/index/BlockInfo;->uncompressedOffset:J

    sget-boolean v1, Lorg/tukaani/xz/SeekableXZInputStream;->$assertionsDisabled:Z

    if-nez v1, :cond_6

    iget-wide v2, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekPos:J

    iget-wide v4, v0, Lorg/tukaani/xz/index/BlockInfo;->uncompressedOffset:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6
    sget-boolean v1, Lorg/tukaani/xz/SeekableXZInputStream;->$assertionsDisabled:Z

    if-nez v1, :cond_7

    iget-wide v2, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekPos:J

    iget-wide v4, v0, Lorg/tukaani/xz/index/BlockInfo;->uncompressedOffset:J

    iget-wide v6, v0, Lorg/tukaani/xz/index/BlockInfo;->uncompressedSize:J

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-ltz v1, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_7
    iget-wide v2, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curPos:J

    iget-wide v4, v0, Lorg/tukaani/xz/index/BlockInfo;->uncompressedOffset:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_8

    iget-wide v2, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curPos:J

    iget-wide v4, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekPos:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_9

    :cond_8
    iget-object v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->in:Lorg/tukaani/xz/SeekableInputStream;

    iget-wide v2, v0, Lorg/tukaani/xz/index/BlockInfo;->compressedOffset:J

    invoke-virtual {v1, v2, v3}, Lorg/tukaani/xz/SeekableInputStream;->seek(J)V

    iget-object v1, v0, Lorg/tukaani/xz/index/BlockInfo;->streamFlags:Lorg/tukaani/xz/common/StreamFlags;

    iget v1, v1, Lorg/tukaani/xz/common/StreamFlags;->checkType:I

    invoke-static {v1}, Lorg/tukaani/xz/check/Check;->getInstance(I)Lorg/tukaani/xz/check/Check;

    move-result-object v1

    iput-object v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->check:Lorg/tukaani/xz/check/Check;

    invoke-direct {p0, v0}, Lorg/tukaani/xz/SeekableXZInputStream;->initBlockDecoder(Lorg/tukaani/xz/index/BlockInfo;)V

    iget-wide v0, v0, Lorg/tukaani/xz/index/BlockInfo;->uncompressedOffset:J

    iput-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curPos:J

    :cond_9
    iget-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekPos:J

    iget-wide v2, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curPos:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    iget-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekPos:J

    iget-wide v2, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curPos:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    invoke-virtual {v2, v0, v1}, Lorg/tukaani/xz/BlockInputStream;->skip(J)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-eqz v0, :cond_a

    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v0

    :cond_a
    iget-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekPos:J

    iput-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curPos:J

    goto/16 :goto_0

    :cond_b
    move-wide v2, v0

    move v0, v8

    goto/16 :goto_1
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->in:Lorg/tukaani/xz/SeekableInputStream;

    if-nez v0, :cond_0

    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->exception:Ljava/io/IOException;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->exception:Ljava/io/IOException;

    throw v0

    :cond_1
    iget-boolean v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->endReached:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekNeeded:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/BlockInputStream;->available()I

    move-result v0

    goto :goto_0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->in:Lorg/tukaani/xz/SeekableInputStream;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->in:Lorg/tukaani/xz/SeekableInputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/SeekableInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->in:Lorg/tukaani/xz/SeekableInputStream;

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->in:Lorg/tukaani/xz/SeekableInputStream;

    throw v0
.end method

.method public getCheckTypes()I
    .locals 1

    iget v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->checkTypes:I

    return v0
.end method

.method public getIndexMemoryUsage()I
    .locals 1

    iget v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->indexMemoryUsage:I

    return v0
.end method

.method public getLargestBlockSize()J
    .locals 2

    iget-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->largestBlockSize:J

    return-wide v0
.end method

.method public length()J
    .locals 2

    iget-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->uncompressedSize:J

    return-wide v0
.end method

.method public position()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->in:Lorg/tukaani/xz/SeekableInputStream;

    if-nez v0, :cond_0

    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekNeeded:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekPos:J

    :goto_0
    return-wide v0

    :cond_1
    iget-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curPos:J

    goto :goto_0
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

    invoke-virtual {p0, v1, v3, v2}, Lorg/tukaani/xz/SeekableXZInputStream;->read([BII)I

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
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v3, -0x1

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    add-int v1, p2, p3

    if-ltz v1, :cond_0

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    if-nez p3, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    iget-object v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->in:Lorg/tukaani/xz/SeekableInputStream;

    if-nez v1, :cond_4

    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->exception:Ljava/io/IOException;

    if-eqz v1, :cond_5

    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->exception:Ljava/io/IOException;

    throw v0

    :cond_5
    :try_start_0
    iget-boolean v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekNeeded:Z

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lorg/tukaani/xz/SeekableXZInputStream;->seek()V

    :cond_6
    iget-boolean v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->endReached:Z

    if-eqz v1, :cond_c

    move v0, v3

    goto :goto_0

    :cond_7
    iget-object v4, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    invoke-virtual {v4, p1, v2, v1}, Lorg/tukaani/xz/BlockInputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_9

    iget-wide v6, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curPos:J

    int-to-long v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curPos:J

    add-int/2addr v0, v4

    add-int/2addr v2, v4

    sub-int/2addr v1, v4

    :cond_8
    :goto_1
    if-lez v1, :cond_2

    iget-object v4, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    if-nez v4, :cond_7

    invoke-direct {p0}, Lorg/tukaani/xz/SeekableXZInputStream;->seek()V

    iget-boolean v4, p0, Lorg/tukaani/xz/SeekableXZInputStream;->endReached:Z

    if-eqz v4, :cond_7

    goto :goto_0

    :cond_9
    if-ne v4, v3, :cond_8

    const/4 v4, 0x0

    iput-object v4, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v10, v1

    move v1, v0

    move-object v0, v10

    instance-of v2, v0, Ljava/io/EOFException;

    if-eqz v2, :cond_a

    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    :cond_a
    iput-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->exception:Ljava/io/IOException;

    if-nez v1, :cond_b

    throw v0

    :cond_b
    move v0, v1

    goto :goto_0

    :cond_c
    move v1, p3

    move v2, p2

    goto :goto_1
.end method

.method public seek(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->in:Lorg/tukaani/xz/SeekableInputStream;

    if-nez v0, :cond_0

    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    new-instance v0, Lorg/tukaani/xz/XZIOException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Negative seek position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-wide p1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekPos:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekNeeded:Z

    return-void
.end method
