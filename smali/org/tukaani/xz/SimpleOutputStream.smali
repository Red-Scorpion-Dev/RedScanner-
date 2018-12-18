.class Lorg/tukaani/xz/SimpleOutputStream;
.super Lorg/tukaani/xz/FinishableOutputStream;


# static fields
.field static final $assertionsDisabled:Z

.field private static final TMPBUF_SIZE:I = 0x1000

.field static class$org$tukaani$xz$SimpleOutputStream:Ljava/lang/Class;


# instance fields
.field private exception:Ljava/io/IOException;

.field private finished:Z

.field private out:Lorg/tukaani/xz/FinishableOutputStream;

.field private pos:I

.field private final simpleFilter:Lorg/tukaani/xz/simple/SimpleFilter;

.field private final tmpbuf:[B

.field private unfiltered:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/tukaani/xz/SimpleOutputStream;->class$org$tukaani$xz$SimpleOutputStream:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.tukaani.xz.SimpleOutputStream"

    invoke-static {v0}, Lorg/tukaani/xz/SimpleOutputStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/tukaani/xz/SimpleOutputStream;->class$org$tukaani$xz$SimpleOutputStream:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lorg/tukaani/xz/SimpleOutputStream;->$assertionsDisabled:Z

    return-void

    :cond_0
    sget-object v0, Lorg/tukaani/xz/SimpleOutputStream;->class$org$tukaani$xz$SimpleOutputStream:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method constructor <init>(Lorg/tukaani/xz/FinishableOutputStream;Lorg/tukaani/xz/simple/SimpleFilter;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/tukaani/xz/FinishableOutputStream;-><init>()V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->tmpbuf:[B

    iput v1, p0, Lorg/tukaani/xz/SimpleOutputStream;->pos:I

    iput v1, p0, Lorg/tukaani/xz/SimpleOutputStream;->unfiltered:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->exception:Ljava/io/IOException;

    iput-boolean v1, p0, Lorg/tukaani/xz/SimpleOutputStream;->finished:Z

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/tukaani/xz/SimpleOutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    iput-object p2, p0, Lorg/tukaani/xz/SimpleOutputStream;->simpleFilter:Lorg/tukaani/xz/simple/SimpleFilter;

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

.method private writePending()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lorg/tukaani/xz/SimpleOutputStream;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->finished:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->exception:Ljava/io/IOException;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->exception:Ljava/io/IOException;

    throw v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    iget-object v1, p0, Lorg/tukaani/xz/SimpleOutputStream;->tmpbuf:[B

    iget v2, p0, Lorg/tukaani/xz/SimpleOutputStream;->pos:I

    iget v3, p0, Lorg/tukaani/xz/SimpleOutputStream;->unfiltered:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/tukaani/xz/FinishableOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->finished:Z

    return-void

    :catch_0
    move-exception v0

    iput-object v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->exception:Ljava/io/IOException;

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->finished:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lorg/tukaani/xz/SimpleOutputStream;->writePending()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/FinishableOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    :cond_2
    iget-object v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->exception:Ljava/io/IOException;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->exception:Ljava/io/IOException;

    throw v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/tukaani/xz/SimpleOutputStream;->exception:Ljava/io/IOException;

    if-nez v1, :cond_1

    iput-object v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->exception:Ljava/io/IOException;

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_3
    return-void
.end method

.method public finish()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->finished:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/tukaani/xz/SimpleOutputStream;->writePending()V

    :try_start_0
    iget-object v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/FinishableOutputStream;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    iput-object v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->exception:Ljava/io/IOException;

    throw v0
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string v1, "Flushing is not supported"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0
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

    invoke-virtual {p0, v0, v2, v3}, Lorg/tukaani/xz/SimpleOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

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
    iget-object v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->exception:Ljava/io/IOException;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->exception:Ljava/io/IOException;

    throw v0

    :cond_2
    iget-boolean v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->finished:Z

    if-eqz v0, :cond_4

    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string v1, "Stream finished or closed"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget v1, p0, Lorg/tukaani/xz/SimpleOutputStream;->unfiltered:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/tukaani/xz/SimpleOutputStream;->unfiltered:I

    :try_start_0
    iget-object v1, p0, Lorg/tukaani/xz/SimpleOutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    iget-object v2, p0, Lorg/tukaani/xz/SimpleOutputStream;->tmpbuf:[B

    iget v3, p0, Lorg/tukaani/xz/SimpleOutputStream;->pos:I

    invoke-virtual {v1, v2, v3, v0}, Lorg/tukaani/xz/FinishableOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget v1, p0, Lorg/tukaani/xz/SimpleOutputStream;->pos:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->pos:I

    iget v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->pos:I

    iget v1, p0, Lorg/tukaani/xz/SimpleOutputStream;->unfiltered:I

    add-int/2addr v0, v1

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->tmpbuf:[B

    iget v1, p0, Lorg/tukaani/xz/SimpleOutputStream;->pos:I

    iget-object v2, p0, Lorg/tukaani/xz/SimpleOutputStream;->tmpbuf:[B

    iget v3, p0, Lorg/tukaani/xz/SimpleOutputStream;->unfiltered:I

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v4, p0, Lorg/tukaani/xz/SimpleOutputStream;->pos:I

    :cond_4
    if-lez p3, :cond_5

    iget v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->pos:I

    iget v1, p0, Lorg/tukaani/xz/SimpleOutputStream;->unfiltered:I

    add-int/2addr v0, v1

    rsub-int v0, v0, 0x1000

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/tukaani/xz/SimpleOutputStream;->tmpbuf:[B

    iget v2, p0, Lorg/tukaani/xz/SimpleOutputStream;->pos:I

    iget v3, p0, Lorg/tukaani/xz/SimpleOutputStream;->unfiltered:I

    add-int/2addr v2, v3

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    iget v1, p0, Lorg/tukaani/xz/SimpleOutputStream;->unfiltered:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->unfiltered:I

    iget-object v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->simpleFilter:Lorg/tukaani/xz/simple/SimpleFilter;

    iget-object v1, p0, Lorg/tukaani/xz/SimpleOutputStream;->tmpbuf:[B

    iget v2, p0, Lorg/tukaani/xz/SimpleOutputStream;->pos:I

    iget v3, p0, Lorg/tukaani/xz/SimpleOutputStream;->unfiltered:I

    invoke-interface {v0, v1, v2, v3}, Lorg/tukaani/xz/simple/SimpleFilter;->code([BII)I

    move-result v0

    sget-boolean v1, Lorg/tukaani/xz/SimpleOutputStream;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    iget v1, p0, Lorg/tukaani/xz/SimpleOutputStream;->unfiltered:I

    if-le v0, v1, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->exception:Ljava/io/IOException;

    throw v0

    :cond_5
    return-void
.end method
