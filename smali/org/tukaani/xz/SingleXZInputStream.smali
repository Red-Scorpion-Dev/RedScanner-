.class public Lorg/tukaani/xz/SingleXZInputStream;
.super Ljava/io/InputStream;


# instance fields
.field private blockDecoder:Lorg/tukaani/xz/BlockInputStream;

.field private check:Lorg/tukaani/xz/check/Check;

.field private endReached:Z

.field private exception:Ljava/io/IOException;

.field private in:Ljava/io/InputStream;

.field private final indexHash:Lorg/tukaani/xz/index/IndexHash;

.field private memoryLimit:I

.field private streamHeaderFlags:Lorg/tukaani/xz/common/StreamFlags;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object v1, p0, Lorg/tukaani/xz/SingleXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    new-instance v0, Lorg/tukaani/xz/index/IndexHash;

    invoke-direct {v0}, Lorg/tukaani/xz/index/IndexHash;-><init>()V

    iput-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->indexHash:Lorg/tukaani/xz/index/IndexHash;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->endReached:Z

    iput-object v1, p0, Lorg/tukaani/xz/SingleXZInputStream;->exception:Ljava/io/IOException;

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/tukaani/xz/SingleXZInputStream;->initialize(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object v1, p0, Lorg/tukaani/xz/SingleXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    new-instance v0, Lorg/tukaani/xz/index/IndexHash;

    invoke-direct {v0}, Lorg/tukaani/xz/index/IndexHash;-><init>()V

    iput-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->indexHash:Lorg/tukaani/xz/index/IndexHash;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->endReached:Z

    iput-object v1, p0, Lorg/tukaani/xz/SingleXZInputStream;->exception:Ljava/io/IOException;

    invoke-direct {p0, p1, p2}, Lorg/tukaani/xz/SingleXZInputStream;->initialize(Ljava/io/InputStream;I)V

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;I[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object v1, p0, Lorg/tukaani/xz/SingleXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    new-instance v0, Lorg/tukaani/xz/index/IndexHash;

    invoke-direct {v0}, Lorg/tukaani/xz/index/IndexHash;-><init>()V

    iput-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->indexHash:Lorg/tukaani/xz/index/IndexHash;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->endReached:Z

    iput-object v1, p0, Lorg/tukaani/xz/SingleXZInputStream;->exception:Ljava/io/IOException;

    invoke-direct {p0, p1, p2, p3}, Lorg/tukaani/xz/SingleXZInputStream;->initialize(Ljava/io/InputStream;I[B)V

    return-void
.end method

.method private initialize(Ljava/io/InputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xc

    new-array v0, v0, [B

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-direct {p0, p1, p2, v0}, Lorg/tukaani/xz/SingleXZInputStream;->initialize(Ljava/io/InputStream;I[B)V

    return-void
.end method

.method private initialize(Ljava/io/InputStream;I[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lorg/tukaani/xz/SingleXZInputStream;->in:Ljava/io/InputStream;

    iput p2, p0, Lorg/tukaani/xz/SingleXZInputStream;->memoryLimit:I

    invoke-static {p3}, Lorg/tukaani/xz/common/DecoderUtil;->decodeStreamHeader([B)Lorg/tukaani/xz/common/StreamFlags;

    move-result-object v0

    iput-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->streamHeaderFlags:Lorg/tukaani/xz/common/StreamFlags;

    iget-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->streamHeaderFlags:Lorg/tukaani/xz/common/StreamFlags;

    iget v0, v0, Lorg/tukaani/xz/common/StreamFlags;->checkType:I

    invoke-static {v0}, Lorg/tukaani/xz/check/Check;->getInstance(I)Lorg/tukaani/xz/check/Check;

    move-result-object v0

    iput-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->check:Lorg/tukaani/xz/check/Check;

    return-void
.end method

.method private validateStreamFooter()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xc

    new-array v0, v0, [B

    new-instance v1, Ljava/io/DataInputStream;

    iget-object v2, p0, Lorg/tukaani/xz/SingleXZInputStream;->in:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-static {v0}, Lorg/tukaani/xz/common/DecoderUtil;->decodeStreamFooter([B)Lorg/tukaani/xz/common/StreamFlags;

    move-result-object v0

    iget-object v1, p0, Lorg/tukaani/xz/SingleXZInputStream;->streamHeaderFlags:Lorg/tukaani/xz/common/StreamFlags;

    invoke-static {v1, v0}, Lorg/tukaani/xz/common/DecoderUtil;->areStreamFlagsEqual(Lorg/tukaani/xz/common/StreamFlags;Lorg/tukaani/xz/common/StreamFlags;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/tukaani/xz/SingleXZInputStream;->indexHash:Lorg/tukaani/xz/index/IndexHash;

    invoke-virtual {v1}, Lorg/tukaani/xz/index/IndexHash;->getIndexSize()J

    move-result-wide v2

    iget-wide v0, v0, Lorg/tukaani/xz/common/StreamFlags;->backwardSize:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    const-string v1, "XZ Stream Footer does not match Stream Header"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_0

    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->exception:Ljava/io/IOException;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->exception:Ljava/io/IOException;

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

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

    iget-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lorg/tukaani/xz/SingleXZInputStream;->in:Ljava/io/InputStream;

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lorg/tukaani/xz/SingleXZInputStream;->in:Ljava/io/InputStream;

    throw v0
.end method

.method public getCheckName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->check:Lorg/tukaani/xz/check/Check;

    invoke-virtual {v0}, Lorg/tukaani/xz/check/Check;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCheckType()I
    .locals 1

    iget-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->streamHeaderFlags:Lorg/tukaani/xz/common/StreamFlags;

    iget v0, v0, Lorg/tukaani/xz/common/StreamFlags;->checkType:I

    return v0
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

    invoke-virtual {p0, v1, v3, v2}, Lorg/tukaani/xz/SingleXZInputStream;->read([BII)I

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
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v9, -0x1

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

    move v9, v0

    :cond_2
    :goto_0
    return v9

    :cond_3
    iget-object v1, p0, Lorg/tukaani/xz/SingleXZInputStream;->in:Ljava/io/InputStream;

    if-nez v1, :cond_4

    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v1, p0, Lorg/tukaani/xz/SingleXZInputStream;->exception:Ljava/io/IOException;

    if-eqz v1, :cond_5

    iget-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->exception:Ljava/io/IOException;

    throw v0

    :cond_5
    iget-boolean v1, p0, Lorg/tukaani/xz/SingleXZInputStream;->endReached:Z

    if-nez v1, :cond_2

    move v8, v0

    move v10, p3

    move v11, p2

    :goto_1
    if-lez v10, :cond_a

    :try_start_0
    iget-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_6

    :try_start_1
    new-instance v0, Lorg/tukaani/xz/BlockInputStream;

    iget-object v1, p0, Lorg/tukaani/xz/SingleXZInputStream;->in:Ljava/io/InputStream;

    iget-object v2, p0, Lorg/tukaani/xz/SingleXZInputStream;->check:Lorg/tukaani/xz/check/Check;

    iget v3, p0, Lorg/tukaani/xz/SingleXZInputStream;->memoryLimit:I

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    invoke-direct/range {v0 .. v7}, Lorg/tukaani/xz/BlockInputStream;-><init>(Ljava/io/InputStream;Lorg/tukaani/xz/check/Check;IJJ)V

    iput-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;
    :try_end_1
    .catch Lorg/tukaani/xz/IndexIndicatorException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_6
    :try_start_2
    iget-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    invoke-virtual {v0, p1, v11, v10}, Lorg/tukaani/xz/BlockInputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_8

    add-int/2addr v8, v0

    add-int v1, v11, v0

    sub-int v0, v10, v0

    :goto_2
    move v10, v0

    move v11, v1

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->indexHash:Lorg/tukaani/xz/index/IndexHash;

    iget-object v1, p0, Lorg/tukaani/xz/SingleXZInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Lorg/tukaani/xz/index/IndexHash;->validate(Ljava/io/InputStream;)V

    invoke-direct {p0}, Lorg/tukaani/xz/SingleXZInputStream;->validateStreamFooter()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->endReached:Z

    if-lez v8, :cond_7

    move v0, v8

    :goto_3
    move v9, v0

    goto :goto_0

    :cond_7
    move v0, v9

    goto :goto_3

    :cond_8
    if-ne v0, v9, :cond_9

    iget-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->indexHash:Lorg/tukaani/xz/index/IndexHash;

    iget-object v1, p0, Lorg/tukaani/xz/SingleXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    invoke-virtual {v1}, Lorg/tukaani/xz/BlockInputStream;->getUnpaddedSize()J

    move-result-wide v2

    iget-object v1, p0, Lorg/tukaani/xz/SingleXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    invoke-virtual {v1}, Lorg/tukaani/xz/BlockInputStream;->getUncompressedSize()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/tukaani/xz/index/IndexHash;->add(JJ)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_9
    move v0, v10

    move v1, v11

    goto :goto_2

    :catch_1
    move-exception v0

    iput-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->exception:Ljava/io/IOException;

    if-nez v8, :cond_a

    throw v0

    :cond_a
    move v9, v8

    goto :goto_0
.end method
