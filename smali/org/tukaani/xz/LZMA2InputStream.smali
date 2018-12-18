.class public Lorg/tukaani/xz/LZMA2InputStream;
.super Ljava/io/InputStream;


# static fields
.field private static final COMPRESSED_SIZE_MAX:I = 0x10000

.field public static final DICT_SIZE_MAX:I = 0x7ffffff0

.field public static final DICT_SIZE_MIN:I = 0x1000


# instance fields
.field private endReached:Z

.field private exception:Ljava/io/IOException;

.field private in:Ljava/io/DataInputStream;

.field private isLZMAChunk:Z

.field private final lz:Lorg/tukaani/xz/lz/LZDecoder;

.field private lzma:Lorg/tukaani/xz/lzma/LZMADecoder;

.field private needDictReset:Z

.field private needProps:Z

.field private final rc:Lorg/tukaani/xz/rangecoder/RangeDecoder;

.field private uncompressedSize:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/tukaani/xz/LZMA2InputStream;-><init>(Ljava/io/InputStream;I[B)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I[B)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v0, Lorg/tukaani/xz/rangecoder/RangeDecoder;

    const/high16 v1, 0x10000

    invoke-direct {v0, v1}, Lorg/tukaani/xz/rangecoder/RangeDecoder;-><init>(I)V

    iput-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoder;

    iput v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    iput-boolean v3, p0, Lorg/tukaani/xz/LZMA2InputStream;->needDictReset:Z

    iput-boolean v3, p0, Lorg/tukaani/xz/LZMA2InputStream;->needProps:Z

    iput-boolean v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->endReached:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->exception:Ljava/io/IOException;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    new-instance v0, Lorg/tukaani/xz/lz/LZDecoder;

    invoke-static {p2}, Lorg/tukaani/xz/LZMA2InputStream;->getDictSize(I)I

    move-result v1

    invoke-direct {v0, v1, p3}, Lorg/tukaani/xz/lz/LZDecoder;-><init>(I[B)V

    iput-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    if-eqz p3, :cond_1

    array-length v0, p3

    if-lez v0, :cond_1

    iput-boolean v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->needDictReset:Z

    :cond_1
    return-void
.end method

.method private decodeChunkHeader()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->endReached:Z

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0xe0

    if-ge v0, v1, :cond_1

    if-ne v0, v2, :cond_4

    :cond_1
    iput-boolean v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->needProps:Z

    iput-boolean v3, p0, Lorg/tukaani/xz/LZMA2InputStream;->needDictReset:Z

    iget-object v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    invoke-virtual {v1}, Lorg/tukaani/xz/lz/LZDecoder;->reset()V

    :cond_2
    const/16 v1, 0x80

    if-lt v0, v1, :cond_7

    iput-boolean v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->isLZMAChunk:Z

    and-int/lit8 v1, v0, 0x1f

    shl-int/lit8 v1, v1, 0x10

    iput v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    iget v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    iget-object v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    iget-object v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0xc0

    if-lt v0, v2, :cond_5

    iput-boolean v3, p0, Lorg/tukaani/xz/LZMA2InputStream;->needProps:Z

    invoke-direct {p0}, Lorg/tukaani/xz/LZMA2InputStream;->decodeProps()V

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoder;

    iget-object v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0, v2, v1}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->prepareInputBuffer(Ljava/io/DataInputStream;I)V

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->needDictReset:Z

    if-eqz v1, :cond_2

    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v0

    :cond_5
    iget-boolean v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->needProps:Z

    if-eqz v2, :cond_6

    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v0

    :cond_6
    const/16 v2, 0xa0

    if-lt v0, v2, :cond_3

    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->lzma:Lorg/tukaani/xz/lzma/LZMADecoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/LZMADecoder;->reset()V

    goto :goto_1

    :cond_7
    const/4 v1, 0x2

    if-le v0, v1, :cond_8

    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v0

    :cond_8
    iput-boolean v3, p0, Lorg/tukaani/xz/LZMA2InputStream;->isLZMAChunk:Z

    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    goto :goto_0
.end method

.method private decodeProps()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    const/16 v1, 0xe0

    if-le v0, v1, :cond_0

    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v0

    :cond_0
    div-int/lit8 v5, v0, 0x2d

    mul-int/lit8 v1, v5, 0x9

    mul-int/lit8 v1, v1, 0x5

    sub-int/2addr v0, v1

    div-int/lit8 v4, v0, 0x9

    mul-int/lit8 v1, v4, 0x9

    sub-int v3, v0, v1

    add-int v0, v3, v4

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Lorg/tukaani/xz/lzma/LZMADecoder;

    iget-object v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    iget-object v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoder;

    invoke-direct/range {v0 .. v5}, Lorg/tukaani/xz/lzma/LZMADecoder;-><init>(Lorg/tukaani/xz/lz/LZDecoder;Lorg/tukaani/xz/rangecoder/RangeDecoder;III)V

    iput-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->lzma:Lorg/tukaani/xz/lzma/LZMADecoder;

    return-void
.end method

.method private static getDictSize(I)I
    .locals 3

    const/16 v0, 0x1000

    if-lt p0, v0, :cond_0

    const v0, 0x7ffffff0

    if-le p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unsupported dictionary size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/lit8 v0, p0, 0xf

    and-int/lit8 v0, v0, -0x10

    return v0
.end method

.method public static getMemoryUsage(I)I
    .locals 1

    invoke-static {p0}, Lorg/tukaani/xz/LZMA2InputStream;->getDictSize(I)I

    move-result v0

    div-int/lit16 v0, v0, 0x400

    add-int/lit8 v0, v0, 0x68

    return v0
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    if-nez v0, :cond_0

    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->exception:Ljava/io/IOException;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->exception:Ljava/io/IOException;

    throw v0

    :cond_1
    iget v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    throw v0
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

    invoke-virtual {p0, v1, v3, v2}, Lorg/tukaani/xz/LZMA2InputStream;->read([BII)I

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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, -0x1

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    add-int v2, p2, p3

    if-ltz v2, :cond_0

    add-int v2, p2, p3

    array-length v3, p1

    if-le v2, v3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    if-nez p3, :cond_3

    move v0, v1

    :cond_2
    :goto_0
    return v0

    :cond_3
    iget-object v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    if-nez v2, :cond_4

    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->exception:Ljava/io/IOException;

    if-eqz v2, :cond_5

    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->exception:Ljava/io/IOException;

    throw v0

    :cond_5
    iget-boolean v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->endReached:Z

    if-nez v2, :cond_2

    :cond_6
    if-lez p3, :cond_a

    :try_start_0
    iget v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    if-nez v2, :cond_7

    invoke-direct {p0}, Lorg/tukaani/xz/LZMA2InputStream;->decodeChunkHeader()V

    iget-boolean v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->endReached:Z

    if-eqz v2, :cond_7

    if-eqz v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_7
    iget v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-boolean v3, p0, Lorg/tukaani/xz/LZMA2InputStream;->isLZMAChunk:Z

    if-nez v3, :cond_9

    iget-object v3, p0, Lorg/tukaani/xz/LZMA2InputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    iget-object v4, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v3, v4, v2}, Lorg/tukaani/xz/lz/LZDecoder;->copyUncompressed(Ljava/io/DataInputStream;I)V

    :goto_1
    iget-object v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    invoke-virtual {v2, p1, p2}, Lorg/tukaani/xz/lz/LZDecoder;->flush([BI)I

    move-result v2

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    add-int/2addr v1, v2

    iget v3, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    sub-int v2, v3, v2

    iput v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    iget v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    if-nez v2, :cond_6

    iget-object v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoder;

    invoke-virtual {v2}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    invoke-virtual {v2}, Lorg/tukaani/xz/lz/LZDecoder;->hasPending()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_8
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->exception:Ljava/io/IOException;

    throw v0

    :cond_9
    :try_start_1
    iget-object v3, p0, Lorg/tukaani/xz/LZMA2InputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    invoke-virtual {v3, v2}, Lorg/tukaani/xz/lz/LZDecoder;->setLimit(I)V

    iget-object v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->lzma:Lorg/tukaani/xz/lzma/LZMADecoder;

    invoke-virtual {v2}, Lorg/tukaani/xz/lzma/LZMADecoder;->decode()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_a
    move v0, v1

    goto :goto_0
.end method
