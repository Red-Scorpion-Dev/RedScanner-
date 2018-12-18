.class Lorg/tukaani/xz/UncompressedLZMA2OutputStream;
.super Lorg/tukaani/xz/FinishableOutputStream;


# instance fields
.field private dictResetNeeded:Z

.field private exception:Ljava/io/IOException;

.field private finished:Z

.field private out:Lorg/tukaani/xz/FinishableOutputStream;

.field private final outData:Ljava/io/DataOutputStream;

.field private final uncompBuf:[B

.field private uncompPos:I


# direct methods
.method constructor <init>(Lorg/tukaani/xz/FinishableOutputStream;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/tukaani/xz/FinishableOutputStream;-><init>()V

    const/high16 v0, 0x10000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->uncompBuf:[B

    iput v1, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->uncompPos:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->dictResetNeeded:Z

    iput-boolean v1, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->finished:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->exception:Ljava/io/IOException;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->outData:Ljava/io/DataOutputStream;

    return-void
.end method

.method static getMemoryUsage()I
    .locals 1

    const/16 v0, 0x46

    return v0
.end method

.method private writeChunk()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v1, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->outData:Ljava/io/DataOutputStream;

    iget-boolean v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->dictResetNeeded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->outData:Ljava/io/DataOutputStream;

    iget v1, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->uncompPos:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->outData:Ljava/io/DataOutputStream;

    iget-object v1, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->uncompBuf:[B

    iget v2, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->uncompPos:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/DataOutputStream;->write([BII)V

    iput v3, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->uncompPos:I

    iput-boolean v3, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->dictResetNeeded:Z

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private writeEndMarker()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->exception:Ljava/io/IOException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->exception:Ljava/io/IOException;

    throw v0

    :cond_0
    iget-boolean v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->finished:Z

    if-eqz v0, :cond_1

    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string v1, "Stream finished or closed"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_0
    iget v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->uncompPos:I

    if-lez v0, :cond_2

    invoke-direct {p0}, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->writeChunk()V

    :cond_2
    iget-object v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/tukaani/xz/FinishableOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iput-object v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->exception:Ljava/io/IOException;

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

    iget-object v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->finished:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->writeEndMarker()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/FinishableOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    :cond_2
    iget-object v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->exception:Ljava/io/IOException;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->exception:Ljava/io/IOException;

    throw v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->exception:Ljava/io/IOException;

    if-nez v1, :cond_1

    iput-object v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->exception:Ljava/io/IOException;

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

    iget-boolean v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->finished:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->writeEndMarker()V

    :try_start_0
    iget-object v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/FinishableOutputStream;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->finished:Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    iput-object v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->exception:Ljava/io/IOException;

    throw v0
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->exception:Ljava/io/IOException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->exception:Ljava/io/IOException;

    throw v0

    :cond_0
    iget-boolean v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->finished:Z

    if-eqz v0, :cond_1

    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string v1, "Stream finished or closed"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_0
    iget v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->uncompPos:I

    if-lez v0, :cond_2

    invoke-direct {p0}, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->writeChunk()V

    :cond_2
    iget-object v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/FinishableOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iput-object v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->exception:Ljava/io/IOException;

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

    invoke-virtual {p0, v0, v2, v3}, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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
    iget-object v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->exception:Ljava/io/IOException;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->exception:Ljava/io/IOException;

    throw v0

    :cond_2
    iget-boolean v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->finished:Z

    if-eqz v0, :cond_3

    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string v1, "Stream finished or closed"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    if-lez p3, :cond_4

    :try_start_0
    iget-object v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->uncompBuf:[B

    array-length v0, v0

    iget v1, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->uncompPos:I

    sub-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->uncompBuf:[B

    iget v2, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->uncompPos:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr p3, v0

    iget v1, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->uncompPos:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->uncompPos:I

    iget v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->uncompPos:I

    iget-object v1, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->uncompBuf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->writeChunk()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lorg/tukaani/xz/UncompressedLZMA2OutputStream;->exception:Ljava/io/IOException;

    throw v0

    :cond_4
    return-void
.end method
