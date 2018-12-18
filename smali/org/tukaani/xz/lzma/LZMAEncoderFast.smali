.class final Lorg/tukaani/xz/lzma/LZMAEncoderFast;
.super Lorg/tukaani/xz/lzma/LZMAEncoder;


# static fields
.field private static EXTRA_SIZE_AFTER:I

.field private static EXTRA_SIZE_BEFORE:I


# instance fields
.field private matches:Lorg/tukaani/xz/lz/Matches;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->EXTRA_SIZE_BEFORE:I

    const/16 v0, 0x110

    sput v0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->EXTRA_SIZE_AFTER:I

    return-void
.end method

.method constructor <init>(Lorg/tukaani/xz/rangecoder/RangeEncoder;IIIIIIII)V
    .locals 8

    sget v0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->EXTRA_SIZE_BEFORE:I

    invoke-static {p6, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    sget v2, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->EXTRA_SIZE_AFTER:I

    const/16 v4, 0x111

    move v0, p5

    move v3, p7

    move/from16 v5, p8

    move/from16 v6, p9

    invoke-static/range {v0 .. v6}, Lorg/tukaani/xz/lz/LZEncoder;->getInstance(IIIIIII)Lorg/tukaani/xz/lz/LZEncoder;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/tukaani/xz/lzma/LZMAEncoder;-><init>(Lorg/tukaani/xz/rangecoder/RangeEncoder;Lorg/tukaani/xz/lz/LZEncoder;IIIII)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->matches:Lorg/tukaani/xz/lz/Matches;

    return-void
.end method

.method private changePair(II)Z
    .locals 1

    ushr-int/lit8 v0, p2, 0x7

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getMemoryUsage(III)I
    .locals 3

    sget v0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->EXTRA_SIZE_BEFORE:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget v1, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->EXTRA_SIZE_AFTER:I

    const/16 v2, 0x111

    invoke-static {p0, v0, v1, v2, p2}, Lorg/tukaani/xz/lz/LZEncoder;->getMemoryUsage(IIIII)I

    move-result v0

    return v0
.end method


# virtual methods
.method getNextSymbol()I
    .locals 11

    const/4 v10, 0x4

    const/4 v1, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x2

    iget v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->readAhead:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->getMatches()Lorg/tukaani/xz/lz/Matches;

    move-result-object v0

    iput-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->matches:Lorg/tukaani/xz/lz/Matches;

    :cond_0
    iput v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->back:I

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lz/LZEncoder;->getAvail()I

    move-result v0

    const/16 v1, 0x111

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v6, v9, :cond_1

    move v3, v4

    :goto_0
    return v3

    :cond_1
    move v1, v5

    move v0, v5

    move v2, v5

    :goto_1
    if-ge v1, v10, :cond_5

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    iget-object v7, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->reps:[I

    aget v7, v7, v1

    invoke-virtual {v3, v7, v6}, Lorg/tukaani/xz/lz/LZEncoder;->getMatchLen(II)I

    move-result v3

    if-ge v3, v9, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget v7, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->niceLen:I

    if-lt v3, v7, :cond_4

    iput v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->back:I

    add-int/lit8 v0, v3, -0x1

    invoke-virtual {p0, v0}, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->skip(I)V

    goto :goto_0

    :cond_4
    if-le v3, v2, :cond_2

    move v0, v1

    move v2, v3

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v1, v1, Lorg/tukaani/xz/lz/Matches;->count:I

    if-lez v1, :cond_15

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v1, v1, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v3, v3, Lorg/tukaani/xz/lz/Matches;->count:I

    add-int/lit8 v3, v3, -0x1

    aget v3, v1, v3

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v1, v1, Lorg/tukaani/xz/lz/Matches;->dist:[I

    iget-object v7, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v7, v7, Lorg/tukaani/xz/lz/Matches;->count:I

    add-int/lit8 v7, v7, -0x1

    aget v1, v1, v7

    iget v7, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->niceLen:I

    if-lt v3, v7, :cond_7

    add-int/lit8 v0, v1, 0x4

    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->back:I

    add-int/lit8 v0, v3, -0x1

    invoke-virtual {p0, v0}, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->skip(I)V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v3, v1, Lorg/tukaani/xz/lz/Matches;->count:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v1, Lorg/tukaani/xz/lz/Matches;->count:I

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v1, v1, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v3, v3, Lorg/tukaani/xz/lz/Matches;->count:I

    add-int/lit8 v3, v3, -0x1

    aget v3, v1, v3

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v1, v1, Lorg/tukaani/xz/lz/Matches;->dist:[I

    iget-object v7, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v7, v7, Lorg/tukaani/xz/lz/Matches;->count:I

    add-int/lit8 v7, v7, -0x1

    aget v1, v1, v7

    :cond_7
    iget-object v7, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v7, v7, Lorg/tukaani/xz/lz/Matches;->count:I

    if-le v7, v4, :cond_8

    iget-object v7, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v7, v7, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget-object v8, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v8, v8, Lorg/tukaani/xz/lz/Matches;->count:I

    add-int/lit8 v8, v8, -0x2

    aget v7, v7, v8

    add-int/lit8 v7, v7, 0x1

    if-ne v3, v7, :cond_8

    iget-object v7, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v7, v7, Lorg/tukaani/xz/lz/Matches;->dist:[I

    iget-object v8, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v8, v8, Lorg/tukaani/xz/lz/Matches;->count:I

    add-int/lit8 v8, v8, -0x2

    aget v7, v7, v8

    invoke-direct {p0, v7, v1}, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->changePair(II)Z

    move-result v7

    if-nez v7, :cond_6

    :cond_8
    if-ne v3, v9, :cond_9

    const/16 v7, 0x80

    if-lt v1, v7, :cond_9

    move v3, v4

    :cond_9
    :goto_3
    if-lt v2, v9, :cond_c

    add-int/lit8 v7, v2, 0x1

    if-ge v7, v3, :cond_b

    add-int/lit8 v7, v2, 0x2

    if-lt v7, v3, :cond_a

    const/16 v7, 0x200

    if-ge v1, v7, :cond_b

    :cond_a
    add-int/lit8 v7, v2, 0x3

    if-lt v7, v3, :cond_c

    const v7, 0x8000

    if-lt v1, v7, :cond_c

    :cond_b
    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->back:I

    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0, v0}, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->skip(I)V

    move v3, v2

    goto/16 :goto_0

    :cond_c
    if-lt v3, v9, :cond_d

    if-gt v6, v9, :cond_e

    :cond_d
    move v3, v4

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p0}, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->getMatches()Lorg/tukaani/xz/lz/Matches;

    move-result-object v0

    iput-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v0, v0, Lorg/tukaani/xz/lz/Matches;->count:I

    if-lez v0, :cond_12

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v0, v0, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v2, v2, Lorg/tukaani/xz/lz/Matches;->count:I

    add-int/lit8 v2, v2, -0x1

    aget v0, v0, v2

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v2, v2, Lorg/tukaani/xz/lz/Matches;->dist:[I

    iget-object v6, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v6, v6, Lorg/tukaani/xz/lz/Matches;->count:I

    add-int/lit8 v6, v6, -0x1

    aget v2, v2, v6

    if-lt v0, v3, :cond_f

    if-lt v2, v1, :cond_11

    :cond_f
    add-int/lit8 v6, v3, 0x1

    if-ne v0, v6, :cond_10

    invoke-direct {p0, v1, v2}, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->changePair(II)Z

    move-result v6

    if-eqz v6, :cond_11

    :cond_10
    add-int/lit8 v6, v3, 0x1

    if-gt v0, v6, :cond_11

    add-int/lit8 v0, v0, 0x1

    if-lt v0, v3, :cond_12

    const/4 v0, 0x3

    if-lt v3, v0, :cond_12

    invoke-direct {p0, v2, v1}, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->changePair(II)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_11
    move v3, v4

    goto/16 :goto_0

    :cond_12
    add-int/lit8 v0, v3, -0x1

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v0, v5

    :goto_4
    if-ge v0, v10, :cond_14

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    iget-object v6, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->reps:[I

    aget v6, v6, v0

    invoke-virtual {v5, v6, v2}, Lorg/tukaani/xz/lz/LZEncoder;->getMatchLen(II)I

    move-result v5

    if-ne v5, v2, :cond_13

    move v3, v4

    goto/16 :goto_0

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_14
    add-int/lit8 v0, v1, 0x4

    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->back:I

    add-int/lit8 v0, v3, -0x2

    invoke-virtual {p0, v0}, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->skip(I)V

    goto/16 :goto_0

    :cond_15
    move v1, v5

    move v3, v5

    goto/16 :goto_3
.end method
