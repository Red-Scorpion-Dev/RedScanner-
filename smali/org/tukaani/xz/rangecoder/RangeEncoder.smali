.class public final Lorg/tukaani/xz/rangecoder/RangeEncoder;
.super Lorg/tukaani/xz/rangecoder/RangeCoder;


# static fields
.field static final $assertionsDisabled:Z

.field private static final BIT_PRICE_SHIFT_BITS:I = 0x4

.field private static final MOVE_REDUCING_BITS:I = 0x4

.field static class$org$tukaani$xz$rangecoder$RangeEncoder:Ljava/lang/Class;

.field private static final prices:[I


# instance fields
.field private final buf:[B

.field private bufPos:I

.field private cache:B

.field private cacheSize:I

.field private low:J

.field private range:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v1, 0x0

    sget-object v0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->class$org$tukaani$xz$rangecoder$RangeEncoder:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.tukaani.xz.rangecoder.RangeEncoder"

    invoke-static {v0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->class$org$tukaani$xz$rangecoder$RangeEncoder:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->$assertionsDisabled:Z

    const/16 v0, 0x80

    new-array v0, v0, [I

    sput-object v0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->prices:[I

    const/16 v4, 0x8

    :goto_2
    const/16 v0, 0x800

    if-ge v4, v0, :cond_4

    move v3, v1

    move v0, v1

    move v2, v4

    :goto_3
    const/4 v5, 0x4

    if-ge v3, v5, :cond_3

    mul-int/2addr v2, v2

    shl-int/lit8 v0, v0, 0x1

    :goto_4
    const/high16 v5, -0x10000

    and-int/2addr v5, v2

    if-eqz v5, :cond_2

    ushr-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_0
    sget-object v0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->class$org$tukaani$xz$rangecoder$RangeEncoder:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    sget-object v2, Lorg/tukaani/xz/rangecoder/RangeEncoder;->prices:[I

    shr-int/lit8 v3, v4, 0x4

    rsub-int v0, v0, 0xa1

    aput v0, v2, v3

    add-int/lit8 v4, v4, 0x10

    goto :goto_2

    :cond_4
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lorg/tukaani/xz/rangecoder/RangeCoder;-><init>()V

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->buf:[B

    invoke-virtual {p0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->reset()V

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

.method public static getBitPrice(II)I
    .locals 2

    sget-boolean v0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->prices:[I

    neg-int v1, p1

    and-int/lit16 v1, v1, 0x7ff

    xor-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    return v0
.end method

.method public static getBitTreePrice([SI)I
    .locals 4

    const/4 v0, 0x0

    array-length v1, p0

    or-int/2addr v1, p1

    :cond_0
    and-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v1, v1, 0x1

    aget-short v3, p0, v1

    invoke-static {v3, v2}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result v2

    add-int/2addr v0, v2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return v0
.end method

.method public static getDirectBitsPrice(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x4

    return v0
.end method

.method public static getReverseBitTreePrice([SI)I
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    array-length v2, p0

    or-int/2addr v2, p1

    move v3, v2

    move v2, v0

    move v0, v1

    :cond_0
    and-int/lit8 v4, v3, 0x1

    ushr-int/lit8 v3, v3, 0x1

    aget-short v5, p0, v0

    invoke-static {v5, v4}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result v5

    add-int/2addr v2, v5

    shl-int/lit8 v0, v0, 0x1

    or-int/2addr v0, v4

    if-ne v3, v1, :cond_0

    return v2
.end method

.method private shiftLow()V
    .locals 6

    iget-wide v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->low:J

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v1, v0

    if-nez v1, :cond_0

    iget-wide v2, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->low:J

    const-wide v4, 0xff000000L

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    :cond_0
    iget-byte v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->cache:B

    :cond_1
    iget-object v2, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->buf:[B

    iget v3, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->bufPos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->bufPos:I

    add-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    const/16 v0, 0xff

    iget v2, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->cacheSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->cacheSize:I

    if-nez v2, :cond_1

    iget-wide v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->low:J

    const/16 v2, 0x18

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->cache:B

    :cond_2
    iget v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->cacheSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->cacheSize:I

    iget-wide v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->low:J

    const-wide/32 v2, 0xffffff

    and-long/2addr v0, v2

    const/16 v2, 0x8

    shl-long/2addr v0, v2

    iput-wide v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->low:J

    return-void
.end method


# virtual methods
.method public encodeBit([SII)V
    .locals 8

    aget-short v0, p1, p2

    iget v1, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->range:I

    ushr-int/lit8 v1, v1, 0xb

    mul-int/2addr v1, v0

    if-nez p3, :cond_1

    iput v1, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->range:I

    rsub-int v1, v0, 0x800

    ushr-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    int-to-short v0, v0

    aput-short v0, p1, p2

    :goto_0
    iget v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->range:I

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->range:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->range:I

    invoke-direct {p0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->shiftLow()V

    :cond_0
    return-void

    :cond_1
    iget-wide v2, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->low:J

    int-to-long v4, v1

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->low:J

    iget v2, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->range:I

    sub-int v1, v2, v1

    iput v1, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->range:I

    ushr-int/lit8 v1, v0, 0x5

    sub-int/2addr v0, v1

    int-to-short v0, v0

    aput-short v0, p1, p2

    goto :goto_0
.end method

.method public encodeBitTree([SI)V
    .locals 4

    const/4 v2, 0x1

    array-length v0, p1

    move v1, v2

    :cond_0
    ushr-int/lit8 v0, v0, 0x1

    and-int v3, p2, v0

    invoke-virtual {p0, p1, v1, v3}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    shl-int/lit8 v1, v1, 0x1

    if-eqz v3, :cond_1

    or-int/lit8 v1, v1, 0x1

    :cond_1
    if-ne v0, v2, :cond_0

    return-void
.end method

.method public encodeDirectBits(II)V
    .locals 4

    :cond_0
    iget v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->range:I

    ushr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->range:I

    iget-wide v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->low:J

    iget v2, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->range:I

    add-int/lit8 p2, p2, -0x1

    ushr-int v3, p1, p2

    and-int/lit8 v3, v3, 0x1

    rsub-int/lit8 v3, v3, 0x0

    and-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->low:J

    iget v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->range:I

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->range:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->range:I

    invoke-direct {p0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->shiftLow()V

    :cond_1
    if-nez p2, :cond_0

    return-void
.end method

.method public encodeReverseBitTree([SI)V
    .locals 4

    const/4 v1, 0x1

    array-length v0, p1

    or-int/2addr v0, p2

    move v2, v0

    move v0, v1

    :cond_0
    and-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, p1, v0, v3}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    shl-int/lit8 v0, v0, 0x1

    or-int/2addr v0, v3

    if-ne v2, v1, :cond_0

    return-void
.end method

.method public finish()I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->shiftLow()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->bufPos:I

    return v0
.end method

.method public getPendingSize()I
    .locals 2

    iget v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->bufPos:I

    iget v1, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->cacheSize:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->low:J

    const/4 v0, -0x1

    iput v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->range:I

    iput-byte v2, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->cache:B

    const/4 v0, 0x1

    iput v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->cacheSize:I

    iput v2, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->bufPos:I

    return-void
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->buf:[B

    const/4 v1, 0x0

    iget v2, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->bufPos:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
