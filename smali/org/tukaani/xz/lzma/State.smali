.class final Lorg/tukaani/xz/lzma/State;
.super Ljava/lang/Object;


# static fields
.field private static final LIT_LIT:I = 0x0

.field private static final LIT_LONGREP:I = 0x8

.field private static final LIT_MATCH:I = 0x7

.field private static final LIT_SHORTREP:I = 0x9

.field private static final LIT_STATES:I = 0x7

.field private static final MATCH_LIT:I = 0x4

.field private static final MATCH_LIT_LIT:I = 0x1

.field private static final NONLIT_MATCH:I = 0xa

.field private static final NONLIT_REP:I = 0xb

.field private static final REP_LIT:I = 0x5

.field private static final REP_LIT_LIT:I = 0x2

.field private static final SHORTREP_LIT:I = 0x6

.field private static final SHORTREP_LIT_LIT:I = 0x3

.field static final STATES:I = 0xc


# instance fields
.field private state:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lorg/tukaani/xz/lzma/State;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lorg/tukaani/xz/lzma/State;->state:I

    iput v0, p0, Lorg/tukaani/xz/lzma/State;->state:I

    return-void
.end method


# virtual methods
.method get()I
    .locals 1

    iget v0, p0, Lorg/tukaani/xz/lzma/State;->state:I

    return v0
.end method

.method isLiteral()Z
    .locals 2

    iget v0, p0, Lorg/tukaani/xz/lzma/State;->state:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/tukaani/xz/lzma/State;->state:I

    return-void
.end method

.method set(Lorg/tukaani/xz/lzma/State;)V
    .locals 1

    iget v0, p1, Lorg/tukaani/xz/lzma/State;->state:I

    iput v0, p0, Lorg/tukaani/xz/lzma/State;->state:I

    return-void
.end method

.method updateLiteral()V
    .locals 2

    iget v0, p0, Lorg/tukaani/xz/lzma/State;->state:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/tukaani/xz/lzma/State;->state:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lorg/tukaani/xz/lzma/State;->state:I

    const/16 v1, 0x9

    if-gt v0, v1, :cond_1

    iget v0, p0, Lorg/tukaani/xz/lzma/State;->state:I

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/tukaani/xz/lzma/State;->state:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/tukaani/xz/lzma/State;->state:I

    add-int/lit8 v0, v0, -0x6

    iput v0, p0, Lorg/tukaani/xz/lzma/State;->state:I

    goto :goto_0
.end method

.method updateLongRep()V
    .locals 2

    iget v0, p0, Lorg/tukaani/xz/lzma/State;->state:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    const/16 v0, 0x8

    :goto_0
    iput v0, p0, Lorg/tukaani/xz/lzma/State;->state:I

    return-void

    :cond_0
    const/16 v0, 0xb

    goto :goto_0
.end method

.method updateMatch()V
    .locals 2

    const/4 v0, 0x7

    iget v1, p0, Lorg/tukaani/xz/lzma/State;->state:I

    if-ge v1, v0, :cond_0

    :goto_0
    iput v0, p0, Lorg/tukaani/xz/lzma/State;->state:I

    return-void

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method updateShortRep()V
    .locals 2

    iget v0, p0, Lorg/tukaani/xz/lzma/State;->state:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    const/16 v0, 0x9

    :goto_0
    iput v0, p0, Lorg/tukaani/xz/lzma/State;->state:I

    return-void

    :cond_0
    const/16 v0, 0xb

    goto :goto_0
.end method
