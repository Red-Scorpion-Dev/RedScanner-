.class public Lorg/tukaani/xz/XZOutputStream;
.super Lorg/tukaani/xz/FinishableOutputStream;


# instance fields
.field private blockEncoder:Lorg/tukaani/xz/BlockOutputStream;

.field private final check:Lorg/tukaani/xz/check/Check;

.field private exception:Ljava/io/IOException;

.field private filters:[Lorg/tukaani/xz/FilterEncoder;

.field private filtersSupportFlushing:Z

.field private finished:Z

.field private final index:Lorg/tukaani/xz/index/IndexEncoder;

.field private out:Ljava/io/OutputStream;

.field private final streamFlags:Lorg/tukaani/xz/common/StreamFlags;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lorg/tukaani/xz/FilterOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lorg/tukaani/xz/XZOutputStream;-><init>(Ljava/io/OutputStream;Lorg/tukaani/xz/FilterOptions;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lorg/tukaani/xz/FilterOptions;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/tukaani/xz/FilterOptions;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v0, p3}, Lorg/tukaani/xz/XZOutputStream;-><init>(Ljava/io/OutputStream;[Lorg/tukaani/xz/FilterOptions;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;[Lorg/tukaani/xz/FilterOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lorg/tukaani/xz/XZOutputStream;-><init>(Ljava/io/OutputStream;[Lorg/tukaani/xz/FilterOptions;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;[Lorg/tukaani/xz/FilterOptions;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/tukaani/xz/FinishableOutputStream;-><init>()V

    new-instance v0, Lorg/tukaani/xz/common/StreamFlags;

    invoke-direct {v0}, Lorg/tukaani/xz/common/StreamFlags;-><init>()V

    iput-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->streamFlags:Lorg/tukaani/xz/common/StreamFlags;

    new-instance v0, Lorg/tukaani/xz/index/IndexEncoder;

    invoke-direct {v0}, Lorg/tukaani/xz/index/IndexEncoder;-><init>()V

    iput-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->index:Lorg/tukaani/xz/index/IndexEncoder;

    iput-object v1, p0, Lorg/tukaani/xz/XZOutputStream;->blockEncoder:Lorg/tukaani/xz/BlockOutputStream;

    iput-object v1, p0, Lorg/tukaani/xz/XZOutputStream;->exception:Ljava/io/IOException;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/tukaani/xz/XZOutputStream;->finished:Z

    iput-object p1, p0, Lorg/tukaani/xz/XZOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p0, p2}, Lorg/tukaani/xz/XZOutputStream;->updateFilters([Lorg/tukaani/xz/FilterOptions;)V

    iget-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->streamFlags:Lorg/tukaani/xz/common/StreamFlags;

    iput p3, v0, Lorg/tukaani/xz/common/StreamFlags;->checkType:I

    invoke-static {p3}, Lorg/tukaani/xz/check/Check;->getInstance(I)Lorg/tukaani/xz/check/Check;

    move-result-object v0

    iput-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->check:Lorg/tukaani/xz/check/Check;

    invoke-direct {p0}, Lorg/tukaani/xz/XZOutputStream;->encodeStreamHeader()V

    return-void
.end method

.method private encodeStreamFlags([BI)V
    .locals 2

    const/4 v0, 0x0

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    iget-object v1, p0, Lorg/tukaani/xz/XZOutputStream;->streamFlags:Lorg/tukaani/xz/common/StreamFlags;

    iget v1, v1, Lorg/tukaani/xz/common/StreamFlags;->checkType:I

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    return-void
.end method

.method private encodeStreamFooter()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x4

    const/4 v0, 0x6

    new-array v1, v0, [B

    iget-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->index:Lorg/tukaani/xz/index/IndexEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/index/IndexEncoder;->getIndexSize()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    div-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_0

    mul-int/lit8 v4, v0, 0x8

    ushr-long v4, v2, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1, v6}, Lorg/tukaani/xz/XZOutputStream;->encodeStreamFlags([BI)V

    iget-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->out:Ljava/io/OutputStream;

    invoke-static {v0, v1}, Lorg/tukaani/xz/common/EncoderUtil;->writeCRC32(Ljava/io/OutputStream;[B)V

    iget-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lorg/tukaani/xz/XZ;->FOOTER_MAGIC:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method private encodeStreamHeader()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lorg/tukaani/xz/XZ;->HEADER_MAGIC:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/tukaani/xz/XZOutputStream;->encodeStreamFlags([BI)V

    iget-object v1, p0, Lorg/tukaani/xz/XZOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v1, p0, Lorg/tukaani/xz/XZOutputStream;->out:Ljava/io/OutputStream;

    invoke-static {v1, v0}, Lorg/tukaani/xz/common/EncoderUtil;->writeCRC32(Ljava/io/OutputStream;[B)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lorg/tukaani/xz/XZOutputStream;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    iget-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->out:Ljava/io/OutputStream;

    :cond_1
    iget-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->exception:Ljava/io/IOException;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->exception:Ljava/io/IOException;

    throw v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/tukaani/xz/XZOutputStream;->exception:Ljava/io/IOException;

    if-nez v1, :cond_0

    iput-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->exception:Ljava/io/IOException;

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public endBlock()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->exception:Ljava/io/IOException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->exception:Ljava/io/IOException;

    throw v0

    :cond_0
    iget-boolean v0, p0, Lorg/tukaani/xz/XZOutputStream;->finished:Z

    if-eqz v0, :cond_1

    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string v1, "Stream finished or closed"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->blockEncoder:Lorg/tukaani/xz/BlockOutputStream;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->blockEncoder:Lorg/tukaani/xz/BlockOutputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/BlockOutputStream;->finish()V

    iget-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->index:Lorg/tukaani/xz/index/IndexEncoder;

    iget-object v1, p0, Lorg/tukaani/xz/XZOutputStream;->blockEncoder:Lorg/tukaani/xz/BlockOutputStream;

    invoke-virtual {v1}, Lorg/tukaani/xz/BlockOutputStream;->getUnpaddedSize()J

    move-result-wide v2

    iget-object v1, p0, Lorg/tukaani/xz/XZOutputStream;->blockEncoder:Lorg/tukaani/xz/BlockOutputStream;

    invoke-virtual {v1}, Lorg/tukaani/xz/BlockOutputStream;->getUncompressedSize()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/tukaani/xz/index/IndexEncoder;->add(JJ)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->blockEncoder:Lorg/tukaani/xz/BlockOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    iput-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->exception:Ljava/io/IOException;

    throw v0
.end method

.method public finish()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/tukaani/xz/XZOutputStream;->finished:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/tukaani/xz/XZOutputStream;->endBlock()V

    :try_start_0
    iget-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->index:Lorg/tukaani/xz/index/IndexEncoder;

    iget-object v1, p0, Lorg/tukaani/xz/XZOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lorg/tukaani/xz/index/IndexEncoder;->encode(Ljava/io/OutputStream;)V

    invoke-direct {p0}, Lorg/tukaani/xz/XZOutputStream;->encodeStreamFooter()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/tukaani/xz/XZOutputStream;->finished:Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    iput-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->exception:Ljava/io/IOException;

    throw v0
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->exception:Ljava/io/IOException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->exception:Ljava/io/IOException;

    throw v0

    :cond_0
    iget-boolean v0, p0, Lorg/tukaani/xz/XZOutputStream;->finished:Z

    if-eqz v0, :cond_1

    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string v1, "Stream finished or closed"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->blockEncoder:Lorg/tukaani/xz/BlockOutputStream;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/tukaani/xz/XZOutputStream;->filtersSupportFlushing:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->blockEncoder:Lorg/tukaani/xz/BlockOutputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/BlockOutputStream;->flush()V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lorg/tukaani/xz/XZOutputStream;->endBlock()V

    iget-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->exception:Ljava/io/IOException;

    throw v0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public updateFilters(Lorg/tukaani/xz/FilterOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/XZIOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/tukaani/xz/FilterOptions;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lorg/tukaani/xz/XZOutputStream;->updateFilters([Lorg/tukaani/xz/FilterOptions;)V

    return-void
.end method

.method public updateFilters([Lorg/tukaani/xz/FilterOptions;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/XZIOException;
        }
    .end annotation

    const/4 v2, 0x1

    iget-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->blockEncoder:Lorg/tukaani/xz/BlockOutputStream;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string v1, "Changing filter options in the middle of a XZ Block not implemented"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    if-lt v0, v2, :cond_1

    array-length v0, p1

    const/4 v1, 0x4

    if-le v0, v1, :cond_2

    :cond_1
    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string v1, "XZ filter chain must be 1-4 filters"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-boolean v2, p0, Lorg/tukaani/xz/XZOutputStream;->filtersSupportFlushing:Z

    array-length v0, p1

    new-array v1, v0, [Lorg/tukaani/xz/FilterEncoder;

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_3

    aget-object v2, p1, v0

    invoke-virtual {v2}, Lorg/tukaani/xz/FilterOptions;->getFilterEncoder()Lorg/tukaani/xz/FilterEncoder;

    move-result-object v2

    aput-object v2, v1, v0

    iget-boolean v2, p0, Lorg/tukaani/xz/XZOutputStream;->filtersSupportFlushing:Z

    aget-object v3, v1, v0

    invoke-interface {v3}, Lorg/tukaani/xz/FilterEncoder;->supportsFlushing()Z

    move-result v3

    and-int/2addr v2, v3

    iput-boolean v2, p0, Lorg/tukaani/xz/XZOutputStream;->filtersSupportFlushing:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lorg/tukaani/xz/RawCoder;->validate([Lorg/tukaani/xz/FilterCoder;)V

    iput-object v1, p0, Lorg/tukaani/xz/XZOutputStream;->filters:[Lorg/tukaani/xz/FilterEncoder;

    return-void
.end method

.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    invoke-virtual {p0, v0, v2, v3}, Lorg/tukaani/xz/XZOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    add-int v0, p2, p3

    if-ltz v0, :cond_0

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->exception:Ljava/io/IOException;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->exception:Ljava/io/IOException;

    throw v0

    :cond_2
    iget-boolean v0, p0, Lorg/tukaani/xz/XZOutputStream;->finished:Z

    if-eqz v0, :cond_3

    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string v1, "Stream finished or closed"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :try_start_0
    iget-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->blockEncoder:Lorg/tukaani/xz/BlockOutputStream;

    if-nez v0, :cond_4

    new-instance v0, Lorg/tukaani/xz/BlockOutputStream;

    iget-object v1, p0, Lorg/tukaani/xz/XZOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/tukaani/xz/XZOutputStream;->filters:[Lorg/tukaani/xz/FilterEncoder;

    iget-object v3, p0, Lorg/tukaani/xz/XZOutputStream;->check:Lorg/tukaani/xz/check/Check;

    invoke-direct {v0, v1, v2, v3}, Lorg/tukaani/xz/BlockOutputStream;-><init>(Ljava/io/OutputStream;[Lorg/tukaani/xz/FilterEncoder;Lorg/tukaani/xz/check/Check;)V

    iput-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->blockEncoder:Lorg/tukaani/xz/BlockOutputStream;

    :cond_4
    iget-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->blockEncoder:Lorg/tukaani/xz/BlockOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/tukaani/xz/BlockOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iput-object v0, p0, Lorg/tukaani/xz/XZOutputStream;->exception:Ljava/io/IOException;

    throw v0
.end method
