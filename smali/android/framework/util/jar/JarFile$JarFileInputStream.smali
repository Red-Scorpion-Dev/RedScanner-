.class final Landroid/framework/util/jar/JarFile$JarFileInputStream;
.super Ljava/io/FilterInputStream;
.source "JarFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/framework/util/jar/JarFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "JarFileInputStream"
.end annotation


# instance fields
.field private count:J

.field private done:Z

.field private entry:Landroid/framework/util/jar/JarVerifier$VerifierEntry;

.field private zipEntry:Ljava/util/zip/ZipEntry;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;Landroid/framework/util/jar/JarVerifier$VerifierEntry;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "ze"    # Ljava/util/zip/ZipEntry;
    .param p3, "e"    # Landroid/framework/util/jar/JarVerifier$VerifierEntry;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/framework/util/jar/JarFile$JarFileInputStream;->done:Z

    .line 72
    iput-object p2, p0, Landroid/framework/util/jar/JarFile$JarFileInputStream;->zipEntry:Ljava/util/zip/ZipEntry;

    .line 73
    iget-object v0, p0, Landroid/framework/util/jar/JarFile$JarFileInputStream;->zipEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/framework/util/jar/JarFile$JarFileInputStream;->count:J

    .line 74
    iput-object p3, p0, Landroid/framework/util/jar/JarFile$JarFileInputStream;->entry:Landroid/framework/util/jar/JarVerifier$VerifierEntry;

    .line 75
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    iget-boolean v0, p0, Landroid/framework/util/jar/JarFile$JarFileInputStream;->done:Z

    if-eqz v0, :cond_0

    .line 134
    const/4 v0, 0x0

    .line 136
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v0

    goto :goto_0
.end method

.method public read()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const-wide/16 v6, 0x0

    const/4 v1, -0x1

    .line 79
    iget-boolean v2, p0, Landroid/framework/util/jar/JarFile$JarFileInputStream;->done:Z

    if-eqz v2, :cond_1

    move v0, v1

    .line 98
    :cond_0
    :goto_0
    return v0

    .line 82
    :cond_1
    iget-wide v2, p0, Landroid/framework/util/jar/JarFile$JarFileInputStream;->count:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_3

    .line 83
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 84
    .local v0, "r":I
    if-eq v0, v1, :cond_2

    .line 85
    iget-object v1, p0, Landroid/framework/util/jar/JarFile$JarFileInputStream;->entry:Landroid/framework/util/jar/JarVerifier$VerifierEntry;

    invoke-virtual {v1, v0}, Landroid/framework/util/jar/JarVerifier$VerifierEntry;->write(I)V

    .line 86
    iget-wide v2, p0, Landroid/framework/util/jar/JarFile$JarFileInputStream;->count:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Landroid/framework/util/jar/JarFile$JarFileInputStream;->count:J

    .line 90
    :goto_1
    iget-wide v2, p0, Landroid/framework/util/jar/JarFile$JarFileInputStream;->count:J

    cmp-long v1, v2, v6

    if-nez v1, :cond_0

    .line 91
    iput-boolean v8, p0, Landroid/framework/util/jar/JarFile$JarFileInputStream;->done:Z

    .line 92
    iget-object v1, p0, Landroid/framework/util/jar/JarFile$JarFileInputStream;->entry:Landroid/framework/util/jar/JarVerifier$VerifierEntry;

    invoke-virtual {v1}, Landroid/framework/util/jar/JarVerifier$VerifierEntry;->verify()V

    goto :goto_0

    .line 88
    :cond_2
    iput-wide v6, p0, Landroid/framework/util/jar/JarFile$JarFileInputStream;->count:J

    goto :goto_1

    .line 96
    .end local v0    # "r":I
    :cond_3
    iput-boolean v8, p0, Landroid/framework/util/jar/JarFile$JarFileInputStream;->done:Z

    .line 97
    iget-object v2, p0, Landroid/framework/util/jar/JarFile$JarFileInputStream;->entry:Landroid/framework/util/jar/JarVerifier$VerifierEntry;

    invoke-virtual {v2}, Landroid/framework/util/jar/JarVerifier$VerifierEntry;->verify()V

    move v0, v1

    .line 98
    goto :goto_0
.end method

.method public read([BII)I
    .locals 9
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "nbytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const-wide/16 v6, 0x0

    const/4 v2, -0x1

    .line 104
    iget-boolean v3, p0, Landroid/framework/util/jar/JarFile$JarFileInputStream;->done:Z

    if-eqz v3, :cond_1

    move v0, v2

    .line 127
    :cond_0
    :goto_0
    return v0

    .line 107
    :cond_1
    iget-wide v4, p0, Landroid/framework/util/jar/JarFile$JarFileInputStream;->count:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_4

    .line 108
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 109
    .local v0, "r":I
    if-eq v0, v2, :cond_3

    .line 110
    move v1, v0

    .line 111
    .local v1, "size":I
    iget-wide v2, p0, Landroid/framework/util/jar/JarFile$JarFileInputStream;->count:J

    int-to-long v4, v1

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 112
    iget-wide v2, p0, Landroid/framework/util/jar/JarFile$JarFileInputStream;->count:J

    long-to-int v1, v2

    .line 114
    :cond_2
    iget-object v2, p0, Landroid/framework/util/jar/JarFile$JarFileInputStream;->entry:Landroid/framework/util/jar/JarVerifier$VerifierEntry;

    invoke-virtual {v2, p1, p2, v1}, Landroid/framework/util/jar/JarVerifier$VerifierEntry;->write([BII)V

    .line 115
    iget-wide v2, p0, Landroid/framework/util/jar/JarFile$JarFileInputStream;->count:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Landroid/framework/util/jar/JarFile$JarFileInputStream;->count:J

    .line 119
    .end local v1    # "size":I
    :goto_1
    iget-wide v2, p0, Landroid/framework/util/jar/JarFile$JarFileInputStream;->count:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_0

    .line 120
    iput-boolean v8, p0, Landroid/framework/util/jar/JarFile$JarFileInputStream;->done:Z

    .line 121
    iget-object v2, p0, Landroid/framework/util/jar/JarFile$JarFileInputStream;->entry:Landroid/framework/util/jar/JarVerifier$VerifierEntry;

    invoke-virtual {v2}, Landroid/framework/util/jar/JarVerifier$VerifierEntry;->verify()V

    goto :goto_0

    .line 117
    :cond_3
    iput-wide v6, p0, Landroid/framework/util/jar/JarFile$JarFileInputStream;->count:J

    goto :goto_1

    .line 125
    .end local v0    # "r":I
    :cond_4
    iput-boolean v8, p0, Landroid/framework/util/jar/JarFile$JarFileInputStream;->done:Z

    .line 126
    iget-object v3, p0, Landroid/framework/util/jar/JarFile$JarFileInputStream;->entry:Landroid/framework/util/jar/JarVerifier$VerifierEntry;

    invoke-virtual {v3}, Landroid/framework/util/jar/JarVerifier$VerifierEntry;->verify()V

    move v0, v2

    .line 127
    goto :goto_0
.end method

.method public skip(J)J
    .locals 3
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-static {p0, p1, p2}, Landroid/framework/libcore/io/Streams;->skipByReading(Ljava/io/InputStream;J)J

    move-result-wide v0

    return-wide v0
.end method
