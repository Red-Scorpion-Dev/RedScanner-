.class public final Lorg/tukaani/xz/rangecoder/RangeDecoder;
.super Lorg/tukaani/xz/rangecoder/RangeCoder;


# static fields
.field private static final INIT_SIZE:I = 0x5


# instance fields
.field private final buf:[B

.field private code:I

.field private end:I

.field private pos:I

.field private range:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/tukaani/xz/rangecoder/RangeCoder;-><init>()V

    iput v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->pos:I

    iput v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->end:I

    iput v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    iput v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->code:I

    add-int/lit8 v0, p1, -0x5

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->buf:[B

    return-void
.end method


# virtual methods
.method public decodeBit([SI)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v3, -0x80000000

    invoke-virtual {p0}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->normalize()V

    aget-short v0, p1, p2

    iget v1, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    ushr-int/lit8 v1, v1, 0xb

    mul-int/2addr v1, v0

    iget v2, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->code:I

    xor-int/2addr v2, v3

    xor-int/2addr v3, v1

    if-ge v2, v3, :cond_0

    iput v1, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    rsub-int v1, v0, 0x800

    ushr-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    int-to-short v0, v0

    aput-short v0, p1, p2

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v2, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    iget v2, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->code:I

    sub-int v1, v2, v1

    iput v1, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->code:I

    ushr-int/lit8 v1, v0, 0x5

    sub-int/2addr v0, v1

    int-to-short v0, v0

    aput-short v0, p1, p2

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public decodeBitTree([S)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    :cond_0
    shl-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->decodeBit([SI)I

    move-result v0

    or-int/2addr v0, v1

    array-length v1, p1

    if-lt v0, v1, :cond_0

    array-length v1, p1

    sub-int/2addr v0, v1

    return v0
.end method

.method public decodeDirectBits(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->normalize()V

    iget v1, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    ushr-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    iget v1, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->code:I

    iget v2, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    sub-int/2addr v1, v2

    ushr-int/lit8 v1, v1, 0x1f

    iget v2, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->code:I

    iget v3, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    add-int/lit8 v4, v1, -0x1

    and-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->code:I

    shl-int/lit8 v0, v0, 0x1

    rsub-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, -0x1

    if-nez p1, :cond_0

    return v0
.end method

.method public decodeReverseBitTree([S)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v1

    move v1, v0

    :goto_0
    invoke-virtual {p0, p1, v2}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->decodeBit([SI)I

    move-result v4

    shl-int/lit8 v2, v2, 0x1

    or-int v3, v2, v4

    add-int/lit8 v2, v1, 0x1

    shl-int v1, v4, v1

    or-int/2addr v0, v1

    array-length v1, p1

    if-lt v3, v1, :cond_0

    return v0

    :cond_0
    move v1, v2

    move v2, v3

    goto :goto_0
.end method

.method public isFinished()Z
    .locals 2

    iget v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->pos:I

    iget v1, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->end:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInBufferOK()Z
    .locals 2

    iget v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->pos:I

    iget v1, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->end:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public normalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    :try_start_0
    iget v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->code:I

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->buf:[B

    iget v2, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->pos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->code:I

    iget v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v0
.end method

.method public prepareInputBuffer(Ljava/io/DataInputStream;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x5

    if-ge p2, v0, :cond_0

    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->code:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    iput v2, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->pos:I

    add-int/lit8 v0, p2, -0x5

    iput v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->end:I

    iget-object v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->buf:[B

    iget v1, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->end:I

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    return-void
.end method
