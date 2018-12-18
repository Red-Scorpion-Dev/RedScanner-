.class Lorg/tukaani/xz/SimpleInputStream;
.super Ljava/io/InputStream;


# static fields
.field static final $assertionsDisabled:Z

.field private static final TMPBUF_SIZE:I = 0x1000

.field static class$org$tukaani$xz$SimpleInputStream:Ljava/lang/Class;


# instance fields
.field private endReached:Z

.field private exception:Ljava/io/IOException;

.field private filtered:I

.field private in:Ljava/io/InputStream;

.field private pos:I

.field private final simpleFilter:Lorg/tukaani/xz/simple/SimpleFilter;

.field private final tmpbuf:[B

.field private unfiltered:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/tukaani/xz/SimpleInputStream;->class$org$tukaani$xz$SimpleInputStream:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.tukaani.xz.SimpleInputStream"

    invoke-static {v0}, Lorg/tukaani/xz/SimpleInputStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/tukaani/xz/SimpleInputStream;->class$org$tukaani$xz$SimpleInputStream:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lorg/tukaani/xz/SimpleInputStream;->$assertionsDisabled:Z

    return-void

    :cond_0
    sget-object v0, Lorg/tukaani/xz/SimpleInputStream;->class$org$tukaani$xz$SimpleInputStream:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method constructor <init>(Ljava/io/InputStream;Lorg/tukaani/xz/simple/SimpleFilter;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/tukaani/xz/SimpleInputStream;->tmpbuf:[B

    iput v1, p0, Lorg/tukaani/xz/SimpleInputStream;->pos:I

    iput v1, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    iput v1, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    iput-boolean v1, p0, Lorg/tukaani/xz/SimpleInputStream;->endReached:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tukaani/xz/SimpleInputStream;->exception:Ljava/io/IOException;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    sget-boolean v0, Lorg/tukaani/xz/SimpleInputStream;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    iput-object p1, p0, Lorg/tukaani/xz/SimpleInputStream;->in:Ljava/io/InputStream;

    iput-object p2, p0, Lorg/tukaani/xz/SimpleInputStream;->simpleFilter:Lorg/tukaani/xz/simple/SimpleFilter;

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

.method static getMemoryUsage()I
    .locals 1

    const/4 v0, 0x5

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

    iget-object v0, p0, Lorg/tukaani/xz/SimpleInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_0

    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/SimpleInputStream;->exception:Ljava/io/IOException;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/tukaani/xz/SimpleInputStream;->exception:Ljava/io/IOException;

    throw v0

    :cond_1
    iget v0, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

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

    iget-object v0, p0, Lorg/tukaani/xz/SimpleInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/tukaani/xz/SimpleInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lorg/tukaani/xz/SimpleInputStream;->in:Ljava/io/InputStream;

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lorg/tukaani/xz/SimpleInputStream;->in:Ljava/io/InputStream;

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

    invoke-virtual {p0, v1, v3, v2}, Lorg/tukaani/xz/SimpleInputStream;->read([BII)I

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
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, -0x1

    const/4 v0, 0x0

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

    :cond_2
    :goto_0
    return v0

    :cond_3
    iget-object v2, p0, Lorg/tukaani/xz/SimpleInputStream;->in:Ljava/io/InputStream;

    if-nez v2, :cond_4

    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v2, p0, Lorg/tukaani/xz/SimpleInputStream;->exception:Ljava/io/IOException;

    if-eqz v2, :cond_6

    iget-object v0, p0, Lorg/tukaani/xz/SimpleInputStream;->exception:Ljava/io/IOException;

    throw v0

    :cond_5
    :try_start_0
    iget v2, p0, Lorg/tukaani/xz/SimpleInputStream;->pos:I

    iget v3, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    add-int/2addr v2, v3

    iget v3, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    add-int/2addr v2, v3

    rsub-int v2, v2, 0x1000

    iget-object v3, p0, Lorg/tukaani/xz/SimpleInputStream;->in:Ljava/io/InputStream;

    iget-object v4, p0, Lorg/tukaani/xz/SimpleInputStream;->tmpbuf:[B

    iget v5, p0, Lorg/tukaani/xz/SimpleInputStream;->pos:I

    iget v6, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    add-int/2addr v5, v6

    iget v6, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    add-int/2addr v5, v6

    invoke-virtual {v3, v4, v5, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ne v2, v1, :cond_a

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/tukaani/xz/SimpleInputStream;->endReached:Z

    iget v2, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    iput v2, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    const/4 v2, 0x0

    iput v2, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    :cond_6
    :goto_1
    iget v2, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lorg/tukaani/xz/SimpleInputStream;->tmpbuf:[B

    iget v4, p0, Lorg/tukaani/xz/SimpleInputStream;->pos:I

    invoke-static {v3, v4, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lorg/tukaani/xz/SimpleInputStream;->pos:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/tukaani/xz/SimpleInputStream;->pos:I

    iget v3, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    sub-int/2addr v3, v2

    iput v3, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    add-int/2addr v0, v2

    iget v2, p0, Lorg/tukaani/xz/SimpleInputStream;->pos:I

    iget v3, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    add-int/2addr v2, v3

    iget v3, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    add-int/2addr v2, v3

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lorg/tukaani/xz/SimpleInputStream;->tmpbuf:[B

    iget v3, p0, Lorg/tukaani/xz/SimpleInputStream;->pos:I

    iget-object v4, p0, Lorg/tukaani/xz/SimpleInputStream;->tmpbuf:[B

    const/4 v5, 0x0

    iget v6, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    iget v7, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    add-int/2addr v6, v7

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x0

    iput v2, p0, Lorg/tukaani/xz/SimpleInputStream;->pos:I

    :cond_7
    if-eqz p3, :cond_8

    iget-boolean v2, p0, Lorg/tukaani/xz/SimpleInputStream;->endReached:Z

    if-eqz v2, :cond_9

    :cond_8
    if-gtz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_9
    sget-boolean v2, Lorg/tukaani/xz/SimpleInputStream;->$assertionsDisabled:Z

    if-nez v2, :cond_5

    iget v2, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    if-eqz v2, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lorg/tukaani/xz/SimpleInputStream;->exception:Ljava/io/IOException;

    throw v0

    :cond_a
    :try_start_1
    iget v3, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    iget-object v2, p0, Lorg/tukaani/xz/SimpleInputStream;->simpleFilter:Lorg/tukaani/xz/simple/SimpleFilter;

    iget-object v3, p0, Lorg/tukaani/xz/SimpleInputStream;->tmpbuf:[B

    iget v4, p0, Lorg/tukaani/xz/SimpleInputStream;->pos:I

    iget v5, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    invoke-interface {v2, v3, v4, v5}, Lorg/tukaani/xz/simple/SimpleFilter;->code([BII)I

    move-result v2

    iput v2, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    sget-boolean v2, Lorg/tukaani/xz/SimpleInputStream;->$assertionsDisabled:Z

    if-nez v2, :cond_b

    iget v2, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    iget v3, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    if-le v2, v3, :cond_b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_b
    iget v2, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    iget v3, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
