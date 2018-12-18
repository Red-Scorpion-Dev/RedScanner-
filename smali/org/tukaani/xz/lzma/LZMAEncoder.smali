.class public abstract Lorg/tukaani/xz/lzma/LZMAEncoder;
.super Lorg/tukaani/xz/lzma/LZMACoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tukaani/xz/lzma/LZMAEncoder$1;,
        Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;,
        Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;
    }
.end annotation


# static fields
.field static final $assertionsDisabled:Z

.field private static final ALIGN_PRICE_UPDATE_INTERVAL:I = 0x10

.field private static final DIST_PRICE_UPDATE_INTERVAL:I = 0x80

.field private static final LZMA2_COMPRESSED_LIMIT:I = 0xffe6

.field private static final LZMA2_UNCOMPRESSED_LIMIT:I = 0x1ffeef

.field public static final MODE_FAST:I = 0x1

.field public static final MODE_NORMAL:I = 0x2

.field static class$org$tukaani$xz$lzma$LZMAEncoder:Ljava/lang/Class;


# instance fields
.field private alignPriceCount:I

.field private final alignPrices:[I

.field back:I

.field private distPriceCount:I

.field private final distSlotPrices:[[I

.field private final distSlotPricesSize:I

.field private final fullDistPrices:[[I

.field final literalEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;

.field final lz:Lorg/tukaani/xz/lz/LZEncoder;

.field final matchLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

.field final niceLen:I

.field private final rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

.field readAhead:I

.field final repLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

.field private uncompressedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/tukaani/xz/lzma/LZMAEncoder;->class$org$tukaani$xz$lzma$LZMAEncoder:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.tukaani.xz.lzma.LZMAEncoder"

    invoke-static {v0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/tukaani/xz/lzma/LZMAEncoder;->class$org$tukaani$xz$lzma$LZMAEncoder:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lorg/tukaani/xz/lzma/LZMAEncoder;->$assertionsDisabled:Z

    return-void

    :cond_0
    sget-object v0, Lorg/tukaani/xz/lzma/LZMAEncoder;->class$org$tukaani$xz$lzma$LZMAEncoder:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method constructor <init>(Lorg/tukaani/xz/rangecoder/RangeEncoder;Lorg/tukaani/xz/lz/LZEncoder;IIIII)V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    invoke-direct {p0, p5}, Lorg/tukaani/xz/lzma/LZMACoder;-><init>(I)V

    iput v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distPriceCount:I

    iput v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->alignPriceCount:I

    const/16 v0, 0x80

    filled-new-array {v3, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->fullDistPrices:[[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->alignPrices:[I

    iput v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->back:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    iput v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->uncompressedSize:I

    iput-object p1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iput-object p2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    iput p7, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->niceLen:I

    new-instance v0, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;

    invoke-direct {v0, p0, p3, p4}, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;-><init>(Lorg/tukaani/xz/lzma/LZMAEncoder;II)V

    iput-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->literalEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;

    new-instance v0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    invoke-direct {v0, p0, p5, p7}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;-><init>(Lorg/tukaani/xz/lzma/LZMAEncoder;II)V

    iput-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->matchLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    new-instance v0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    invoke-direct {v0, p0, p5, p7}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;-><init>(Lorg/tukaani/xz/lzma/LZMAEncoder;II)V

    iput-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->repLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    add-int/lit8 v0, p6, -0x1

    invoke-static {v0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getDistSlot(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distSlotPricesSize:I

    iget v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distSlotPricesSize:I

    filled-new-array {v3, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distSlotPrices:[[I

    invoke-virtual {p0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->reset()V

    return-void
.end method

.method static access$200(Lorg/tukaani/xz/lzma/LZMAEncoder;)Lorg/tukaani/xz/rangecoder/RangeEncoder;
    .locals 1

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    return-object v0
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

.method private encodeInit()Z
    .locals 6

    const/4 v5, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-boolean v2, Lorg/tukaani/xz/lzma/LZMAEncoder;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    if-eq v2, v5, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v2, v0}, Lorg/tukaani/xz/lz/LZEncoder;->hasEnoughData(I)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, v1}, Lorg/tukaani/xz/lzma/LZMAEncoder;->skip(I)V

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->isMatch:[[S

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v4}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3, v0, v0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->literalEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;->encodeInit()V

    iget v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    sget-boolean v0, Lorg/tukaani/xz/lzma/LZMAEncoder;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    if-eq v0, v5, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    iget v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->uncompressedSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->uncompressedSize:I

    sget-boolean v0, Lorg/tukaani/xz/lzma/LZMAEncoder;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->uncompressedSize:I

    if-eq v0, v1, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private encodeMatch(III)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/State;->updateMatch()V

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->matchLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    invoke-virtual {v0, p2, p3}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->encode(II)V

    invoke-static {p1}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getDistSlot(I)I

    move-result v0

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distSlots:[[S

    invoke-static {p2}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getDistState(I)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBitTree([SI)V

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    ushr-int/lit8 v1, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    and-int/lit8 v2, v0, 0x1

    or-int/lit8 v2, v2, 0x2

    shl-int/2addr v2, v1

    sub-int v2, p1, v2

    const/16 v3, 0xe

    if-ge v0, v3, :cond_1

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distSpecial:[[S

    add-int/lit8 v0, v0, -0x4

    aget-object v0, v3, v0

    invoke-virtual {v1, v0, v2}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeReverseBitTree([SI)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->reps:[I

    const/4 v1, 0x3

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->reps:[I

    aget v2, v2, v6

    aput v2, v0, v1

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->reps:[I

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->reps:[I

    aget v1, v1, v5

    aput v1, v0, v6

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->reps:[I

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->reps:[I

    aget v1, v1, v4

    aput v1, v0, v5

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->reps:[I

    aput p1, v0, v4

    iget v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distPriceCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distPriceCount:I

    return-void

    :cond_1
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    ushr-int/lit8 v3, v2, 0x4

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v3, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeDirectBits(II)V

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distAlign:[S

    and-int/lit8 v2, v2, 0xf

    invoke-virtual {v0, v1, v2}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeReverseBitTree([SI)V

    iget v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->alignPriceCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->alignPriceCount:I

    goto :goto_0
.end method

.method private encodeRepMatch(III)V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->isRep0:[S

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v4}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->isRep0Long:[[S

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v4}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v4

    aget-object v3, v3, v4

    if-ne p2, v1, :cond_0

    :goto_0
    invoke-virtual {v2, v3, p3, v0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    :goto_1
    if-ne p2, v1, :cond_4

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/State;->updateShortRep()V

    :goto_2
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->reps:[I

    aget v2, v2, p1

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->isRep0:[S

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v5}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v5

    invoke-virtual {v3, v4, v5, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    if-ne p1, v1, :cond_2

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->isRep1:[S

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v5}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v5

    invoke-virtual {v3, v4, v5, v0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    :goto_3
    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->reps:[I

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->reps:[I

    aget v4, v4, v0

    aput v4, v3, v1

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->reps:[I

    aput v2, v3, v0

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->isRep1:[S

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v5}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v5

    invoke-virtual {v3, v4, v5, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->isRep2:[S

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v5}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v5

    add-int/lit8 v6, p1, -0x2

    invoke-virtual {v3, v4, v5, v6}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    if-ne p1, v8, :cond_3

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->reps:[I

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->reps:[I

    aget v4, v4, v7

    aput v4, v3, v8

    :cond_3
    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->reps:[I

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->reps:[I

    aget v4, v4, v1

    aput v4, v3, v7

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->repLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    invoke-virtual {v0, p2, p3}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->encode(II)V

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/State;->updateLongRep()V

    goto :goto_2
.end method

.method private encodeSymbol()Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lorg/tukaani/xz/lz/LZEncoder;->hasEnoughData(I)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getNextSymbol()I

    move-result v2

    sget-boolean v3, Lorg/tukaani/xz/lzma/LZMAEncoder;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    if-gez v3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v3}, Lorg/tukaani/xz/lz/LZEncoder;->getPos()I

    move-result v3

    iget v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    sub-int/2addr v3, v4

    iget v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->posMask:I

    and-int/2addr v3, v4

    iget v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->back:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    sget-boolean v4, Lorg/tukaani/xz/lzma/LZMAEncoder;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    if-eq v2, v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->isMatch:[[S

    iget-object v6, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v6}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5, v3, v0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->literalEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;->encode()V

    :goto_1
    iget v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    iget v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->uncompressedSize:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->uncompressedSize:I

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->isMatch:[[S

    iget-object v6, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v6}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5, v3, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    iget v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->back:I

    const/4 v5, 0x4

    if-ge v4, v5, :cond_5

    sget-boolean v0, Lorg/tukaani/xz/lzma/LZMAEncoder;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    iget v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    neg-int v4, v4

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->reps:[I

    iget v6, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->back:I

    aget v5, v5, v6

    invoke-virtual {v0, v4, v5, v2}, Lorg/tukaani/xz/lz/LZEncoder;->getMatchLen(III)I

    move-result v0

    if-eq v0, v2, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->isRep:[S

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v5}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v5

    invoke-virtual {v0, v4, v5, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    iget v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->back:I

    invoke-direct {p0, v0, v2, v3}, Lorg/tukaani/xz/lzma/LZMAEncoder;->encodeRepMatch(III)V

    goto :goto_1

    :cond_5
    sget-boolean v4, Lorg/tukaani/xz/lzma/LZMAEncoder;->$assertionsDisabled:Z

    if-nez v4, :cond_6

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    iget v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    neg-int v5, v5

    iget v6, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->back:I

    add-int/lit8 v6, v6, -0x4

    invoke-virtual {v4, v5, v6, v2}, Lorg/tukaani/xz/lz/LZEncoder;->getMatchLen(III)I

    move-result v4

    if-eq v4, v2, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6
    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->isRep:[S

    iget-object v6, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v6}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v6

    invoke-virtual {v4, v5, v6, v0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    iget v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->back:I

    add-int/lit8 v0, v0, -0x4

    invoke-direct {p0, v0, v2, v3}, Lorg/tukaani/xz/lzma/LZMAEncoder;->encodeMatch(III)V

    goto :goto_1
.end method

.method public static getDistSlot(I)I
    .locals 3

    const/4 v0, 0x4

    if-gt p0, v0, :cond_0

    :goto_0
    return p0

    :cond_0
    const/16 v0, 0x1f

    const/high16 v1, -0x10000

    and-int/2addr v1, p0

    if-nez v1, :cond_5

    shl-int/lit8 v1, p0, 0x10

    const/16 v0, 0xf

    :goto_1
    const/high16 v2, -0x1000000

    and-int/2addr v2, v1

    if-nez v2, :cond_1

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v0, -0x8

    :cond_1
    const/high16 v2, -0x10000000

    and-int/2addr v2, v1

    if-nez v2, :cond_2

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v0, -0x4

    :cond_2
    const/high16 v2, -0x40000000    # -2.0f

    and-int/2addr v2, v1

    if-nez v2, :cond_3

    shl-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v0, -0x2

    :cond_3
    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-nez v1, :cond_4

    add-int/lit8 v0, v0, -0x1

    :cond_4
    shl-int/lit8 v1, v0, 0x1

    add-int/lit8 v0, v0, -0x1

    ushr-int v0, p0, v0

    and-int/lit8 v0, v0, 0x1

    add-int p0, v1, v0

    goto :goto_0

    :cond_5
    move v1, p0

    goto :goto_1
.end method

.method public static getInstance(Lorg/tukaani/xz/rangecoder/RangeEncoder;IIIIIIIII)Lorg/tukaani/xz/lzma/LZMAEncoder;
    .locals 10

    packed-switch p4, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    new-instance v0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lorg/tukaani/xz/lzma/LZMAEncoderFast;-><init>(Lorg/tukaani/xz/rangecoder/RangeEncoder;IIIIIIII)V

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;-><init>(Lorg/tukaani/xz/rangecoder/RangeEncoder;IIIIIIII)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getMemoryUsage(IIII)I
    .locals 2

    const/16 v0, 0x50

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    invoke-static {p1, p2, p3}, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->getMemoryUsage(III)I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0

    :pswitch_1
    invoke-static {p1, p2, p3}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getMemoryUsage(III)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateAlignPrices()V
    .locals 4

    const/16 v3, 0x10

    iput v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->alignPriceCount:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->alignPrices:[I

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distAlign:[S

    invoke-static {v2, v0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getReverseBitTreePrice([SI)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateDistPrices()V
    .locals 13

    const/16 v12, 0x80

    const/16 v2, 0xe

    const/4 v6, 0x4

    const/4 v1, 0x0

    iput v12, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distPriceCount:I

    move v3, v1

    :goto_0
    if-ge v3, v6, :cond_3

    move v0, v1

    :goto_1
    iget v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distSlotPricesSize:I

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distSlotPrices:[[I

    aget-object v4, v4, v3

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distSlots:[[S

    aget-object v5, v5, v3

    invoke-static {v5, v0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitTreePrice([SI)I

    move-result v5

    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v0, v2

    :goto_2
    iget v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distSlotPricesSize:I

    if-ge v0, v4, :cond_1

    ushr-int/lit8 v4, v0, 0x1

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v4, v4, -0x4

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distSlotPrices:[[I

    aget-object v5, v5, v3

    aget v7, v5, v0

    invoke-static {v4}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getDirectBitsPrice(I)I

    move-result v4

    add-int/2addr v4, v7

    aput v4, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    move v0, v1

    :goto_3
    if-ge v0, v6, :cond_2

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->fullDistPrices:[[I

    aget-object v4, v4, v3

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distSlotPrices:[[I

    aget-object v5, v5, v3

    aget v5, v5, v0

    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_3
    move v5, v6

    move v0, v6

    :goto_4
    if-ge v5, v2, :cond_6

    ushr-int/lit8 v3, v5, 0x1

    add-int/lit8 v3, v3, -0x1

    and-int/lit8 v4, v5, 0x1

    or-int/lit8 v4, v4, 0x2

    shl-int v7, v4, v3

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distSpecial:[[S

    add-int/lit8 v4, v5, -0x4

    aget-object v3, v3, v4

    array-length v8, v3

    move v3, v1

    move v4, v0

    :goto_5
    if-ge v3, v8, :cond_5

    sub-int v0, v4, v7

    iget-object v9, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distSpecial:[[S

    add-int/lit8 v10, v5, -0x4

    aget-object v9, v9, v10

    invoke-static {v9, v0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getReverseBitTreePrice([SI)I

    move-result v9

    move v0, v1

    :goto_6
    if-ge v0, v6, :cond_4

    iget-object v10, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->fullDistPrices:[[I

    aget-object v10, v10, v0

    iget-object v11, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distSlotPrices:[[I

    aget-object v11, v11, v0

    aget v11, v11, v5

    add-int/2addr v11, v9

    aput v11, v10, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_4
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5

    :cond_5
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v0, v4

    goto :goto_4

    :cond_6
    sget-boolean v1, Lorg/tukaani/xz/lzma/LZMAEncoder;->$assertionsDisabled:Z

    if-nez v1, :cond_7

    if-eq v0, v12, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_7
    return-void
.end method


# virtual methods
.method public encodeForLZMA2()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v1}, Lorg/tukaani/xz/lz/LZEncoder;->isStarted()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->encodeInit()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->uncompressedSize:I

    const v2, 0x1ffeef

    if-gt v1, v2, :cond_1

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    invoke-virtual {v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getPendingSize()I

    move-result v1

    const v2, 0xffe6

    if-gt v1, v2, :cond_1

    invoke-direct {p0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->encodeSymbol()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method getAnyMatchPrice(Lorg/tukaani/xz/lzma/State;I)I
    .locals 2

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->isMatch:[[S

    invoke-virtual {p1}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v1

    aget-object v0, v0, v1

    aget-short v0, v0, p2

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result v0

    return v0
.end method

.method getAnyRepPrice(ILorg/tukaani/xz/lzma/State;)I
    .locals 2

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->isRep:[S

    invoke-virtual {p2}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v1

    aget-short v0, v0, v1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public getLZEncoder()Lorg/tukaani/xz/lz/LZEncoder;
    .locals 1

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    return-object v0
.end method

.method getLongRepAndLenPrice(IILorg/tukaani/xz/lzma/State;I)I
    .locals 2

    invoke-virtual {p0, p3, p4}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getAnyMatchPrice(Lorg/tukaani/xz/lzma/State;I)I

    move-result v0

    invoke-virtual {p0, v0, p3}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getAnyRepPrice(ILorg/tukaani/xz/lzma/State;)I

    move-result v0

    invoke-virtual {p0, v0, p1, p3, p4}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getLongRepPrice(IILorg/tukaani/xz/lzma/State;I)I

    move-result v0

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->repLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    invoke-virtual {v1, p2, p4}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->getPrice(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method getLongRepPrice(IILorg/tukaani/xz/lzma/State;I)I
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-nez p2, :cond_0

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->isRep0:[S

    invoke-virtual {p3}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v1

    aget-short v0, v0, v1

    invoke-static {v0, v4}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result v0

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->isRep0Long:[[S

    invoke-virtual {p3}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v2

    aget-object v1, v1, v2

    aget-short v1, v1, p4

    invoke-static {v1, v3}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->isRep0:[S

    invoke-virtual {p3}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v1

    aget-short v0, v0, v1

    invoke-static {v0, v3}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result v0

    add-int/2addr v0, p1

    if-ne p2, v3, :cond_1

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->isRep1:[S

    invoke-virtual {p3}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v2

    aget-short v1, v1, v2

    invoke-static {v1, v4}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->isRep1:[S

    invoke-virtual {p3}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v2

    aget-short v1, v1, v2

    invoke-static {v1, v3}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result v1

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->isRep2:[S

    invoke-virtual {p3}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v3

    aget-short v2, v2, v3

    add-int/lit8 v3, p2, -0x2

    invoke-static {v2, v3}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method getMatchAndLenPrice(IIII)I
    .locals 4

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->matchLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    invoke-virtual {v0, p3, p4}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->getPrice(II)I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {p3}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getDistState(I)I

    move-result v1

    const/16 v2, 0x80

    if-ge p2, v2, :cond_0

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->fullDistPrices:[[I

    aget-object v1, v2, v1

    aget v1, v1, p2

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-static {p2}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getDistSlot(I)I

    move-result v2

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distSlotPrices:[[I

    aget-object v1, v3, v1

    aget v1, v1, v2

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->alignPrices:[I

    and-int/lit8 v3, p2, 0xf

    aget v2, v2, v3

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method getMatches()Lorg/tukaani/xz/lz/Matches;
    .locals 2

    iget v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lz/LZEncoder;->getMatches()Lorg/tukaani/xz/lz/Matches;

    move-result-object v0

    sget-boolean v1, Lorg/tukaani/xz/lzma/LZMAEncoder;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v1, v0}, Lorg/tukaani/xz/lz/LZEncoder;->verifyMatches(Lorg/tukaani/xz/lz/Matches;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    return-object v0
.end method

.method abstract getNextSymbol()I
.end method

.method getNormalMatchPrice(ILorg/tukaani/xz/lzma/State;)I
    .locals 2

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->isRep:[S

    invoke-virtual {p2}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v1

    aget-short v0, v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method getShortRepPrice(ILorg/tukaani/xz/lzma/State;I)I
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->isRep0:[S

    invoke-virtual {p2}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v1

    aget-short v0, v0, v1

    invoke-static {v0, v3}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->isRep0Long:[[S

    invoke-virtual {p2}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v2

    aget-object v1, v1, v2

    aget-short v1, v1, p3

    invoke-static {v1, v3}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getUncompressedSize()I
    .locals 1

    iget v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->uncompressedSize:I

    return v0
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lorg/tukaani/xz/lzma/LZMACoder;->reset()V

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->literalEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;->reset()V

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->matchLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->reset()V

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->repLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->reset()V

    iput v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distPriceCount:I

    iput v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->alignPriceCount:I

    iget v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->uncompressedSize:I

    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->uncompressedSize:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    return-void
.end method

.method public resetUncompressedSize()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->uncompressedSize:I

    return-void
.end method

.method skip(I)V
    .locals 1

    iget v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v0, p1}, Lorg/tukaani/xz/lz/LZEncoder;->skip(I)V

    return-void
.end method

.method updatePrices()V
    .locals 1

    iget v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distPriceCount:I

    if-gtz v0, :cond_0

    invoke-direct {p0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->updateDistPrices()V

    :cond_0
    iget v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->alignPriceCount:I

    if-gtz v0, :cond_1

    invoke-direct {p0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->updateAlignPrices()V

    :cond_1
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->matchLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->updatePrices()V

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->repLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->updatePrices()V

    return-void
.end method
