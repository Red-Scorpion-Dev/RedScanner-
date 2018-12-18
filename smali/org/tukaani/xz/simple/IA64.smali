.class public final Lorg/tukaani/xz/simple/IA64;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/tukaani/xz/simple/SimpleFilter;


# static fields
.field private static final BRANCH_TABLE:[I


# instance fields
.field private final isEncoder:Z

.field private pos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x20

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/tukaani/xz/simple/IA64;->BRANCH_TABLE:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4
        0x4
        0x6
        0x6
        0x0
        0x0
        0x7
        0x7
        0x4
        0x4
        0x0
        0x0
        0x4
        0x4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/tukaani/xz/simple/IA64;->isEncoder:Z

    iput p2, p0, Lorg/tukaani/xz/simple/IA64;->pos:I

    return-void
.end method


# virtual methods
.method public code([BII)I
    .locals 18

    add-int v2, p2, p3

    add-int/lit8 v8, v2, -0x10

    move/from16 v7, p2

    :goto_0
    if-gt v7, v8, :cond_5

    aget-byte v2, p1, v7

    and-int/lit8 v2, v2, 0x1f

    sget-object v3, Lorg/tukaani/xz/simple/IA64;->BRANCH_TABLE:[I

    aget v9, v3, v2

    const/4 v3, 0x0

    const/4 v2, 0x5

    move v6, v3

    move v3, v2

    :goto_1
    const/4 v2, 0x3

    if-ge v6, v2, :cond_4

    ushr-int v2, v9, v6

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    :cond_0
    add-int/lit8 v4, v6, 0x1

    add-int/lit8 v2, v3, 0x29

    move v3, v2

    move v6, v4

    goto :goto_1

    :cond_1
    ushr-int/lit8 v10, v3, 0x3

    and-int/lit8 v11, v3, 0x7

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    :goto_2
    const/4 v12, 0x6

    if-ge v2, v12, :cond_2

    add-int v12, v7, v10

    add-int/2addr v12, v2

    aget-byte v12, p1, v12

    int-to-long v12, v12

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    mul-int/lit8 v14, v2, 0x8

    shl-long/2addr v12, v14

    or-long/2addr v4, v12

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    ushr-long v12, v4, v11

    const/16 v2, 0x25

    ushr-long v14, v12, v2

    const-wide/16 v16, 0xf

    and-long v14, v14, v16

    const-wide/16 v16, 0x5

    cmp-long v2, v14, v16

    if-nez v2, :cond_0

    const/16 v2, 0x9

    ushr-long v14, v12, v2

    const-wide/16 v16, 0x7

    and-long v14, v14, v16

    const-wide/16 v16, 0x0

    cmp-long v2, v14, v16

    if-nez v2, :cond_0

    const/16 v2, 0xd

    ushr-long v14, v12, v2

    const-wide/32 v16, 0xfffff

    and-long v14, v14, v16

    long-to-int v2, v14

    const/16 v14, 0x24

    ushr-long v14, v12, v14

    long-to-int v14, v14

    and-int/lit8 v14, v14, 0x1

    shl-int/lit8 v14, v14, 0x14

    or-int/2addr v2, v14

    shl-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/tukaani/xz/simple/IA64;->isEncoder:Z

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget v14, v0, Lorg/tukaani/xz/simple/IA64;->pos:I

    add-int/2addr v14, v7

    sub-int v14, v14, p2

    add-int/2addr v2, v14

    :goto_3
    ushr-int/lit8 v2, v2, 0x4

    const-wide v14, -0x11ffffe001L

    and-long/2addr v12, v14

    int-to-long v14, v2

    const-wide/32 v16, 0xfffff

    and-long v14, v14, v16

    const/16 v16, 0xd

    shl-long v14, v14, v16

    or-long/2addr v12, v14

    int-to-long v14, v2

    const-wide/32 v16, 0x100000

    and-long v14, v14, v16

    const/16 v2, 0x10

    shl-long/2addr v14, v2

    or-long/2addr v12, v14

    const/4 v2, 0x1

    shl-int/2addr v2, v11

    add-int/lit8 v2, v2, -0x1

    int-to-long v14, v2

    and-long/2addr v4, v14

    shl-long/2addr v12, v11

    or-long/2addr v4, v12

    const/4 v2, 0x0

    :goto_4
    const/4 v11, 0x6

    if-ge v2, v11, :cond_0

    add-int v11, v7, v10

    add-int/2addr v11, v2

    mul-int/lit8 v12, v2, 0x8

    ushr-long v12, v4, v12

    long-to-int v12, v12

    int-to-byte v12, v12

    aput-byte v12, p1, v11

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_3
    move-object/from16 v0, p0

    iget v14, v0, Lorg/tukaani/xz/simple/IA64;->pos:I

    add-int/2addr v14, v7

    sub-int v14, v14, p2

    sub-int/2addr v2, v14

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v7, 0x10

    move v7, v2

    goto/16 :goto_0

    :cond_5
    sub-int v2, v7, p2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/tukaani/xz/simple/IA64;->pos:I

    add-int/2addr v3, v2

    move-object/from16 v0, p0

    iput v3, v0, Lorg/tukaani/xz/simple/IA64;->pos:I

    return v2
.end method
