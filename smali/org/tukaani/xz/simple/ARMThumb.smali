.class public final Lorg/tukaani/xz/simple/ARMThumb;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/tukaani/xz/simple/SimpleFilter;


# instance fields
.field private final isEncoder:Z

.field private pos:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/tukaani/xz/simple/ARMThumb;->isEncoder:Z

    add-int/lit8 v0, p2, 0x4

    iput v0, p0, Lorg/tukaani/xz/simple/ARMThumb;->pos:I

    return-void
.end method


# virtual methods
.method public code([BII)I
    .locals 5

    add-int v0, p2, p3

    add-int/lit8 v2, v0, -0x4

    move v1, p2

    :goto_0
    if-gt v1, v2, :cond_1

    add-int/lit8 v0, v1, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xf8

    const/16 v3, 0xf0

    if-ne v0, v3, :cond_2

    add-int/lit8 v0, v1, 0x3

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xf8

    const/16 v3, 0xf8

    if-ne v0, v3, :cond_2

    add-int/lit8 v0, v1, 0x1

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x7

    shl-int/lit8 v0, v0, 0x13

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xb

    or-int/2addr v0, v3

    add-int/lit8 v3, v1, 0x3

    aget-byte v3, p1, v3

    and-int/lit8 v3, v3, 0x7

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0x1

    iget-boolean v3, p0, Lorg/tukaani/xz/simple/ARMThumb;->isEncoder:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lorg/tukaani/xz/simple/ARMThumb;->pos:I

    add-int/2addr v3, v1

    sub-int/2addr v3, p2

    add-int/2addr v0, v3

    :goto_1
    ushr-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v4, v0, 0x13

    and-int/lit8 v4, v4, 0x7

    or-int/lit16 v4, v4, 0xf0

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    ushr-int/lit8 v3, v0, 0xb

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    add-int/lit8 v3, v1, 0x3

    ushr-int/lit8 v4, v0, 0x8

    and-int/lit8 v4, v4, 0x7

    or-int/lit16 v4, v4, 0xf8

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    add-int/lit8 v3, v1, 0x2

    int-to-byte v0, v0

    aput-byte v0, p1, v3

    add-int/lit8 v0, v1, 0x2

    :goto_2
    add-int/lit8 v1, v0, 0x2

    goto :goto_0

    :cond_0
    iget v3, p0, Lorg/tukaani/xz/simple/ARMThumb;->pos:I

    add-int/2addr v3, v1

    sub-int/2addr v3, p2

    sub-int/2addr v0, v3

    goto :goto_1

    :cond_1
    sub-int v0, v1, p2

    iget v1, p0, Lorg/tukaani/xz/simple/ARMThumb;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/tukaani/xz/simple/ARMThumb;->pos:I

    return v0

    :cond_2
    move v0, v1

    goto :goto_2
.end method
