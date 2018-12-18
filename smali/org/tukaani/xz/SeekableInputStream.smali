.class public abstract Lorg/tukaani/xz/SeekableInputStream;
.super Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract length()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract position()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract seek(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public skip(J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    move-wide p1, v0

    :goto_0
    return-wide p1

    :cond_0
    invoke-virtual {p0}, Lorg/tukaani/xz/SeekableInputStream;->length()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/tukaani/xz/SeekableInputStream;->position()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-ltz v6, :cond_1

    move-wide p1, v0

    goto :goto_0

    :cond_1
    sub-long v0, v2, v4

    cmp-long v0, v0, p1

    if-gez v0, :cond_2

    sub-long p1, v2, v4

    :cond_2
    add-long v0, v4, p1

    invoke-virtual {p0, v0, v1}, Lorg/tukaani/xz/SeekableInputStream;->seek(J)V

    goto :goto_0
.end method
