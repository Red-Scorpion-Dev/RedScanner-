.class Lorg/tukaani/xz/DeltaOutputStream;
.super Lorg/tukaani/xz/FinishableOutputStream;


# static fields
.field private static final TMPBUF_SIZE:I = 0x1000


# instance fields
.field private final delta:Lorg/tukaani/xz/delta/DeltaEncoder;

.field private exception:Ljava/io/IOException;

.field private finished:Z

.field private out:Lorg/tukaani/xz/FinishableOutputStream;

.field private final tmpbuf:[B


# direct methods
.method constructor <init>(Lorg/tukaani/xz/FinishableOutputStream;Lorg/tukaani/xz/DeltaOptions;)V
    .locals 2

    invoke-direct {p0}, Lorg/tukaani/xz/FinishableOutputStream;-><init>()V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/tukaani/xz/DeltaOutputStream;->tmpbuf:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/tukaani/xz/DeltaOutputStream;->finished:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tukaani/xz/DeltaOutputStream;->exception:Ljava/io/IOException;

    iput-object p1, p0, Lorg/tukaani/xz/DeltaOutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    new-instance v0, Lorg/tukaani/xz/delta/DeltaEncoder;

    invoke-virtual {p2}, Lorg/tukaani/xz/DeltaOptions;->getDistance()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/tukaani/xz/delta/DeltaEncoder;-><init>(I)V

    iput-object v0, p0, Lorg/tukaani/xz/DeltaOutputStream;->delta:Lorg/tukaani/xz/delta/DeltaEncoder;

    return-void
.end method

.method static getMemoryUsage()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/tukaani/xz/DeltaOutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lorg/tukaani/xz/DeltaOutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/FinishableOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tukaani/xz/DeltaOutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    :cond_1
    iget-object v0, p0, Lorg/tukaani/xz/DeltaOutputStream;->exception:Ljava/io/IOException;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/tukaani/xz/DeltaOutputStream;->exception:Ljava/io/IOException;

    throw v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/tukaani/xz/DeltaOutputStream;->exception:Ljava/io/IOException;

    if-nez v1, :cond_0

    iput-object v0, p0, Lorg/tukaani/xz/DeltaOutputStream;->exception:Ljava/io/IOException;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public finish()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/tukaani/xz/DeltaOutputStream;->finished:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/tukaani/xz/DeltaOutputStream;->exception:Ljava/io/IOException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/tukaani/xz/DeltaOutputStream;->exception:Ljava/io/IOException;

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/tukaani/xz/DeltaOutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/FinishableOutputStream;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/tukaani/xz/DeltaOutputStream;->finished:Z

    :cond_1
    return-void

    :catch_0
    move-exception v0

    iput-object v0, p0, Lorg/tukaani/xz/DeltaOutputStream;->exception:Ljava/io/IOException;

    throw v0
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/tukaani/xz/DeltaOutputStream;->exception:Ljava/io/IOException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/tukaani/xz/DeltaOutputStream;->exception:Ljava/io/IOException;

    throw v0

    :cond_0
    iget-boolean v0, p0, Lorg/tukaani/xz/DeltaOutputStream;->finished:Z

    if-eqz v0, :cond_1

    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string v1, "Stream finished or closed"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/tukaani/xz/DeltaOutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/FinishableOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iput-object v0, p0, Lorg/tukaani/xz/DeltaOutputStream;->exception:Ljava/io/IOException;

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

    invoke-virtual {p0, v0, v2, v3}, Lorg/tukaani/xz/DeltaOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x1000

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
    iget-object v0, p0, Lorg/tukaani/xz/DeltaOutputStream;->exception:Ljava/io/IOException;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/tukaani/xz/DeltaOutputStream;->exception:Ljava/io/IOException;

    throw v0

    :cond_2
    iget-boolean v0, p0, Lorg/tukaani/xz/DeltaOutputStream;->finished:Z

    if-eqz v0, :cond_3

    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string v1, "Stream finished"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    if-le p3, v3, :cond_4

    :try_start_0
    iget-object v0, p0, Lorg/tukaani/xz/DeltaOutputStream;->delta:Lorg/tukaani/xz/delta/DeltaEncoder;

    const/16 v1, 0x1000

    iget-object v2, p0, Lorg/tukaani/xz/DeltaOutputStream;->tmpbuf:[B

    invoke-virtual {v0, p1, p2, v1, v2}, Lorg/tukaani/xz/delta/DeltaEncoder;->encode([BII[B)V

    iget-object v0, p0, Lorg/tukaani/xz/DeltaOutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    iget-object v1, p0, Lorg/tukaani/xz/DeltaOutputStream;->tmpbuf:[B

    invoke-virtual {v0, v1}, Lorg/tukaani/xz/FinishableOutputStream;->write([B)V

    add-int/lit16 p2, p2, 0x1000

    add-int/lit16 p3, p3, -0x1000

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/tukaani/xz/DeltaOutputStream;->delta:Lorg/tukaani/xz/delta/DeltaEncoder;

    iget-object v1, p0, Lorg/tukaani/xz/DeltaOutputStream;->tmpbuf:[B

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/tukaani/xz/delta/DeltaEncoder;->encode([BII[B)V

    iget-object v0, p0, Lorg/tukaani/xz/DeltaOutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    iget-object v1, p0, Lorg/tukaani/xz/DeltaOutputStream;->tmpbuf:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p3}, Lorg/tukaani/xz/FinishableOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iput-object v0, p0, Lorg/tukaani/xz/DeltaOutputStream;->exception:Ljava/io/IOException;

    throw v0
.end method
