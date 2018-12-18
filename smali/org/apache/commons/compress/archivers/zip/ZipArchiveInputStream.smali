.class public Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;
.super Lorg/apache/commons/compress/archivers/ArchiveInputStream;
.source "ZipArchiveInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$1;,
        Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;,
        Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;
    }
.end annotation


# static fields
.field private static final CFH:[B

.field private static final CFH_LEN:I = 0x2e

.field private static final DD:[B

.field private static final LFH:[B

.field private static final LFH_LEN:I = 0x1e

.field private static final TWO_EXP_32:J = 0x100000000L


# instance fields
.field private final LFH_BUF:[B

.field private final SHORT_BUF:[B

.field private final SKIP_BUF:[B

.field private final TWO_DWORD_BUF:[B

.field private final WORD_BUF:[B

.field private allowStoredEntriesWithDataDescriptor:Z

.field private final buf:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;

.field private closed:Z

.field private final crc:Ljava/util/zip/CRC32;

.field private current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

.field private entriesRead:I

.field private hitCentralDirectory:Z

.field private final in:Ljava/io/InputStream;

.field private final inf:Ljava/util/zip/Inflater;

.field private lastStoredEntry:Ljava/io/ByteArrayInputStream;

.field private final useUnicodeExtraFields:Z

.field private final zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 786
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;->LFH_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->LFH:[B

    .line 787
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;->CFH_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->CFH:[B

    .line 788
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;->DD_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->DD:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 162
    const-string v0, "UTF8"

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;

    .prologue
    .line 171
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;Z)V

    .line 172
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "useUnicodeExtraFields"    # Z

    .prologue
    .line 183
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;ZZ)V

    .line 184
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;ZZ)V
    .locals 4
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "useUnicodeExtraFields"    # Z
    .param p4, "allowStoredEntriesWithDataDescriptor"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 198
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;-><init>()V

    .line 77
    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->inf:Ljava/util/zip/Inflater;

    .line 82
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->crc:Ljava/util/zip/CRC32;

    .line 87
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;

    invoke-direct {v0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$1;)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;

    .line 91
    iput-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    .line 95
    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->closed:Z

    .line 100
    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->hitCentralDirectory:Z

    .line 106
    iput-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->lastStoredEntry:Ljava/io/ByteArrayInputStream;

    .line 112
    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->allowStoredEntriesWithDataDescriptor:Z

    .line 153
    const/16 v0, 0x1e

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->LFH_BUF:[B

    .line 154
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->SKIP_BUF:[B

    .line 155
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->SHORT_BUF:[B

    .line 156
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->WORD_BUF:[B

    .line 157
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->TWO_DWORD_BUF:[B

    .line 159
    iput v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->entriesRead:I

    .line 199
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 200
    iput-boolean p3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->useUnicodeExtraFields:Z

    .line 201
    new-instance v0, Ljava/io/PushbackInputStream;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;)[B

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->in:Ljava/io/InputStream;

    .line 202
    iput-boolean p4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->allowStoredEntriesWithDataDescriptor:Z

    .line 204
    return-void
.end method

.method private bufferContainsSignature(Ljava/io/ByteArrayOutputStream;III)Z
    .locals 9
    .param p1, "bos"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "offset"    # I
    .param p3, "lastRead"    # I
    .param p4, "expectedDDLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x2

    .line 802
    const/4 v0, 0x0

    .line 803
    .local v0, "done":Z
    const/4 v2, 0x0

    .line 804
    .local v2, "readTooMuch":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-nez v0, :cond_5

    add-int/lit8 v3, p3, -0x4

    if-ge v1, v3, :cond_5

    .line 805
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;)[B

    move-result-object v3

    aget-byte v3, v3, v1

    sget-object v4, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->LFH:[B

    aget-byte v4, v4, v8

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;)[B

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    sget-object v4, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->LFH:[B

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_3

    .line 806
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;)[B

    move-result-object v3

    add-int/lit8 v4, v1, 0x2

    aget-byte v3, v3, v4

    sget-object v4, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->LFH:[B

    aget-byte v4, v4, v6

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;)[B

    move-result-object v3

    add-int/lit8 v4, v1, 0x3

    aget-byte v3, v3, v4

    sget-object v4, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->LFH:[B

    aget-byte v4, v4, v7

    if-eq v3, v4, :cond_1

    :cond_0
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;)[B

    move-result-object v3

    aget-byte v3, v3, v1

    sget-object v4, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->CFH:[B

    aget-byte v4, v4, v6

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;)[B

    move-result-object v3

    add-int/lit8 v4, v1, 0x3

    aget-byte v3, v3, v4

    sget-object v4, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->CFH:[B

    aget-byte v4, v4, v7

    if-ne v3, v4, :cond_4

    .line 809
    :cond_1
    add-int v3, p2, p3

    sub-int/2addr v3, v1

    sub-int v2, v3, p4

    .line 810
    const/4 v0, 0x1

    .line 817
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 822
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;)[B

    move-result-object v3

    add-int v4, p2, p3

    sub-int/2addr v4, v2

    invoke-direct {p0, v3, v4, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->pushback([BII)V

    .line 824
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;)[B

    move-result-object v3

    invoke-virtual {p1, v3, v8, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 825
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readDataDescriptor()V

    .line 804
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 812
    :cond_4
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;)[B

    move-result-object v3

    add-int/lit8 v4, v1, 0x2

    aget-byte v3, v3, v4

    sget-object v4, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->DD:[B

    aget-byte v4, v4, v6

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;)[B

    move-result-object v3

    add-int/lit8 v4, v1, 0x3

    aget-byte v3, v3, v4

    sget-object v4, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->DD:[B

    aget-byte v4, v4, v7

    if-ne v3, v4, :cond_2

    .line 814
    add-int v3, p2, p3

    sub-int v2, v3, v1

    .line 815
    const/4 v0, 0x1

    goto :goto_1

    .line 829
    :cond_5
    return v0
.end method

.method private cacheBytesRead(Ljava/io/ByteArrayOutputStream;III)I
    .locals 5
    .param p1, "bos"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "offset"    # I
    .param p3, "lastRead"    # I
    .param p4, "expecteDDLen"    # I

    .prologue
    const/4 v4, 0x0

    .line 843
    add-int v1, p2, p3

    sub-int/2addr v1, p4

    add-int/lit8 v0, v1, -0x3

    .line 844
    .local v0, "cacheable":I
    if-lez v0, :cond_0

    .line 845
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;)[B

    move-result-object v1

    invoke-virtual {p1, v1, v4, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 846
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;)[B

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;)[B

    move-result-object v2

    add-int/lit8 v3, p4, 0x3

    invoke-static {v1, v0, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 848
    add-int/lit8 p2, p4, 0x3

    .line 852
    :goto_0
    return p2

    .line 850
    :cond_0
    add-int/2addr p2, p3

    goto :goto_0
.end method

.method private static checksig([B[B)Z
    .locals 3
    .param p0, "signature"    # [B
    .param p1, "expected"    # [B

    .prologue
    .line 555
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 556
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    if-eq v1, v2, :cond_0

    .line 557
    const/4 v1, 0x0

    .line 560
    :goto_1
    return v1

    .line 555
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 560
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private closeEntry()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 582
    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->closed:Z

    if-eqz v1, :cond_0

    .line 583
    new-instance v1, Ljava/io/IOException;

    const-string v4, "The stream is closed"

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 585
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    if-nez v1, :cond_1

    .line 619
    :goto_0
    return-void

    .line 590
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$900(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)J

    move-result-wide v4

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$300(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-gtz v1, :cond_4

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$400(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 592
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->drainCurrentEntryData()V

    .line 610
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->lastStoredEntry:Ljava/io/ByteArrayInputStream;

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$400(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 611
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readDataDescriptor()V

    .line 614
    :cond_3
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->reset()V

    .line 615
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;->access$1000(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;)V

    .line 616
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->reset()V

    .line 617
    iput-object v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    .line 618
    iput-object v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->lastStoredEntry:Ljava/io/ByteArrayInputStream;

    goto :goto_0

    .line 594
    :cond_4
    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->skip(J)J

    .line 596
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$300(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v1

    const/16 v4, 0x8

    if-ne v1, v4, :cond_5

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->getBytesInflated()J

    move-result-wide v2

    .line 602
    .local v2, "inB":J
    :goto_2
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$900(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)J

    move-result-wide v4

    sub-long/2addr v4, v2

    long-to-int v0, v4

    .line 605
    .local v0, "diff":I
    if-lez v0, :cond_2

    .line 606
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;)[B

    move-result-object v1

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;

    invoke-static {v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;->access$800(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;)I

    move-result v4

    sub-int/2addr v4, v0

    invoke-direct {p0, v1, v4, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->pushback([BII)V

    goto :goto_1

    .line 596
    .end local v0    # "diff":I
    .end local v2    # "inB":J
    :cond_5
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$600(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)J

    move-result-wide v2

    goto :goto_2
.end method

.method private drainCurrentEntryData()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    .line 626
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$300(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v4

    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v6}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$900(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 628
    .local v2, "remaining":J
    :goto_0
    cmp-long v4, v2, v10

    if-lez v4, :cond_1

    .line 629
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->in:Ljava/io/InputStream;

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;

    invoke-static {v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;)[B

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;

    invoke-static {v7}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;)[B

    move-result-object v7

    array-length v7, v7

    int-to-long v8, v7

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v7, v8

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    int-to-long v0, v4

    .line 631
    .local v0, "n":J
    cmp-long v4, v0, v10

    if-gez v4, :cond_0

    .line 632
    new-instance v4, Ljava/io/EOFException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Truncated ZIP entry: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v6}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$300(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 635
    :cond_0
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->count(J)V

    .line 636
    sub-long/2addr v2, v0

    .line 638
    goto :goto_0

    .line 639
    .end local v0    # "n":J
    :cond_1
    return-void
.end method

.method private fill()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 667
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 668
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 670
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->in:Ljava/io/InputStream;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;->access$802(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;I)I

    move-result v0

    if-lez v0, :cond_1

    .line 671
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;->access$800(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->count(I)V

    .line 672
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->inf:Ljava/util/zip/Inflater;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;)[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;->access$800(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 674
    :cond_1
    return-void
.end method

.method private findEocdRecord()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 900
    const/4 v0, -0x1

    .line 901
    .local v0, "currentByte":I
    const/4 v1, 0x0

    .line 902
    .local v1, "skipReadCall":Z
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readOneByte()I

    move-result v0

    if-le v0, v4, :cond_2

    .line 903
    :cond_1
    const/4 v1, 0x0

    .line 904
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->isFirstByteOfEocdSig(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 907
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readOneByte()I

    move-result v0

    .line 908
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->EOCD_SIG:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    if-eq v0, v2, :cond_4

    .line 909
    if-ne v0, v4, :cond_3

    .line 930
    :cond_2
    return-void

    .line 912
    :cond_3
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->isFirstByteOfEocdSig(I)Z

    move-result v1

    .line 913
    goto :goto_0

    .line 915
    :cond_4
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readOneByte()I

    move-result v0

    .line 916
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->EOCD_SIG:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    if-eq v0, v2, :cond_5

    .line 917
    if-eq v0, v4, :cond_2

    .line 920
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->isFirstByteOfEocdSig(I)Z

    move-result v1

    .line 921
    goto :goto_0

    .line 923
    :cond_5
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readOneByte()I

    move-result v0

    .line 924
    if-eq v0, v4, :cond_2

    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->EOCD_SIG:[B

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    if-eq v0, v2, :cond_2

    .line 928
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->isFirstByteOfEocdSig(I)Z

    move-result v1

    goto :goto_0
.end method

.method private getBytesInflated()J
    .locals 8

    .prologue
    const-wide v6, 0x100000000L

    .line 657
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->getBytesRead()J

    move-result-wide v0

    .line 658
    .local v0, "inB":J
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$900(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-ltz v2, :cond_0

    .line 659
    :goto_0
    add-long v2, v0, v6

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$900(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 660
    add-long/2addr v0, v6

    goto :goto_0

    .line 663
    :cond_0
    return-wide v0
.end method

.method private isFirstByteOfEocdSig(I)Z
    .locals 2
    .param p1, "b"    # I

    .prologue
    const/4 v0, 0x0

    .line 974
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->EOCD_SIG:[B

    aget-byte v1, v1, v0

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static matches([BI)Z
    .locals 2
    .param p0, "signature"    # [B
    .param p1, "length"    # I

    .prologue
    const/4 v0, 0x0

    .line 543
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->LFH_SIG:[B

    array-length v1, v1

    if-ge p1, v1, :cond_1

    .line 547
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->LFH_SIG:[B

    invoke-static {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->checksig([B[B)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->EOCD_SIG:[B

    invoke-static {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->checksig([B[B)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->DD_SIG:[B

    invoke-static {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->checksig([B[B)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipLong;->SINGLE_SEGMENT_SPLIT_MARKER:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    move-result-object v1

    invoke-static {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->checksig([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private processZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipLong;Lorg/apache/commons/compress/archivers/zip/ZipLong;)V
    .locals 4
    .param p1, "size"    # Lorg/apache/commons/compress/archivers/zip/ZipLong;
    .param p2, "cSize"    # Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .prologue
    .line 331
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$300(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;

    .line 335
    .local v0, "z64":Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$502(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;Z)Z

    .line 336
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$400(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 337
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$500(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipLong;->ZIP64_MAGIC:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {p2, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipLong;->ZIP64_MAGIC:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {p1, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 340
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$300(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->getCompressedSize()Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getLongValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setCompressedSize(J)V

    .line 342
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$300(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->getSize()Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getLongValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setSize(J)V

    .line 348
    :cond_1
    :goto_1
    return-void

    .line 335
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 344
    :cond_3
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$300(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setCompressedSize(J)V

    .line 345
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$300(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setSize(J)V

    goto :goto_1
.end method

.method private pushback([BII)V
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 857
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->in:Ljava/io/InputStream;

    check-cast v0, Ljava/io/PushbackInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 858
    int-to-long v0, p3

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->pushedBackBytes(J)V

    .line 859
    return-void
.end method

.method private readDataDescriptor()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    .line 688
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->WORD_BUF:[B

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readFully([B)V

    .line 689
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->WORD_BUF:[B

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>([B)V

    .line 690
    .local v1, "val":Lorg/apache/commons/compress/archivers/zip/ZipLong;
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ZipLong;->DD_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v2, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 692
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->WORD_BUF:[B

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readFully([B)V

    .line 693
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .end local v1    # "val":Lorg/apache/commons/compress/archivers/zip/ZipLong;
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->WORD_BUF:[B

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>([B)V

    .line 695
    .restart local v1    # "val":Lorg/apache/commons/compress/archivers/zip/ZipLong;
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$300(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setCrc(J)V

    .line 708
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->TWO_DWORD_BUF:[B

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readFully([B)V

    .line 709
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->TWO_DWORD_BUF:[B

    invoke-direct {v0, v2, v6}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>([BI)V

    .line 710
    .local v0, "potentialSig":Lorg/apache/commons/compress/archivers/zip/ZipLong;
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ZipLong;->CFH_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ZipLong;->LFH_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 712
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->TWO_DWORD_BUF:[B

    invoke-direct {p0, v2, v6, v6}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->pushback([BII)V

    .line 713
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$300(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->TWO_DWORD_BUF:[B

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([B)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setCompressedSize(J)V

    .line 714
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$300(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->TWO_DWORD_BUF:[B

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setSize(J)V

    .line 722
    :goto_0
    return-void

    .line 716
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$300(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->TWO_DWORD_BUF:[B

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getLongValue([B)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setCompressedSize(J)V

    .line 719
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$300(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->TWO_DWORD_BUF:[B

    invoke-static {v3, v6}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getLongValue([BI)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setSize(J)V

    goto :goto_0
.end method

.method private readDeflated([BII)I
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 447
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readFromInflater([BII)I

    move-result v0

    .line 448
    .local v0, "read":I
    if-nez v0, :cond_2

    .line 449
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->finished()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 460
    .end local v0    # "read":I
    :goto_0
    return v0

    .line 451
    .restart local v0    # "read":I
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 452
    new-instance v1, Ljava/util/zip/ZipException;

    const-string v2, "This archive needs a preset dictionary which is not supported by Commons Compress."

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 455
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;->access$800(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;)I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 456
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Truncated ZIP file"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 459
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1, p1, p2, v0}, Ljava/util/zip/CRC32;->update([BII)V

    goto :goto_0
.end method

.method private readFirstLocalFileHeader([B)V
    .locals 6
    .param p1, "lfh"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x1a

    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 308
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readFully([B)V

    .line 309
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-direct {v1, p1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>([B)V

    .line 310
    .local v1, "sig":Lorg/apache/commons/compress/archivers/zip/ZipLong;
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ZipLong;->DD_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    new-instance v2, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;

    sget-object v3, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;->SPLITTING:Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;

    invoke-direct {v2, v3}, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;-><init>(Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;)V

    throw v2

    .line 315
    :cond_0
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ZipLong;->SINGLE_SEGMENT_SPLIT_MARKER:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 318
    new-array v0, v3, [B

    .line 319
    .local v0, "missedLfhBytes":[B
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readFully([B)V

    .line 320
    invoke-static {p1, v3, p1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 321
    invoke-static {v0, v4, p1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 323
    .end local v0    # "missedLfhBytes":[B
    :cond_1
    return-void
.end method

.method private readFromInflater([BII)I
    .locals 6
    .param p1, "buffer"    # [B
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 469
    const/4 v1, 0x0

    .line 471
    .local v1, "read":I
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 472
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->fill()V

    .line 473
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;->access$800(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;)I

    move-result v2

    if-lez v2, :cond_2

    .line 474
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;->access$800(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;)I

    move-result v3

    int-to-long v4, v3

    invoke-static {v2, v4, v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$914(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;J)J

    .line 480
    :cond_1
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v2, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 484
    if-nez v1, :cond_2

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v2

    if-nez v2, :cond_0

    .line 485
    :cond_2
    return v1

    .line 481
    :catch_0
    move-exception v0

    .line 482
    .local v0, "e":Ljava/util/zip/DataFormatException;
    new-instance v2, Ljava/util/zip/ZipException;

    invoke-virtual {v0}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private readFully([B)V
    .locals 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 677
    const/4 v0, 0x0

    .local v0, "count":I
    const/4 v1, 0x0

    .line 678
    .local v1, "x":I
    :goto_0
    array-length v2, p1

    if-eq v0, v2, :cond_1

    .line 679
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->in:Ljava/io/InputStream;

    array-length v3, p1

    sub-int/2addr v3, v0

    invoke-virtual {v2, p1, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    add-int/2addr v0, v1

    .line 680
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 681
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 683
    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->count(I)V

    goto :goto_0

    .line 685
    :cond_1
    return-void
.end method

.method private readOneByte()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 966
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 967
    .local v0, "b":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 968
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->count(I)V

    .line 970
    :cond_0
    return v0
.end method

.method private readStored([BII)I
    .locals 8
    .param p1, "buffer"    # [B
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 408
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$400(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 409
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->lastStoredEntry:Ljava/io/ByteArrayInputStream;

    if-nez v4, :cond_0

    .line 410
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readStoredEntry()V

    .line 412
    :cond_0
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->lastStoredEntry:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v4, p1, p2, p3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v1

    .line 439
    :cond_1
    :goto_0
    return v1

    .line 415
    :cond_2
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$300(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v2

    .line 416
    .local v2, "csize":J
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$600(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-gez v4, :cond_1

    .line 420
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;

    invoke-static {v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;->access$700(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;)I

    move-result v4

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;

    invoke-static {v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;->access$800(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;)I

    move-result v5

    if-lt v4, v5, :cond_3

    .line 421
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;->access$702(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;I)I

    .line 422
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->in:Ljava/io/InputStream;

    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;

    invoke-static {v6}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/InputStream;->read([B)I

    move-result v5

    invoke-static {v4, v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;->access$802(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;I)I

    move-result v4

    if-eq v4, v1, :cond_1

    .line 425
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;

    invoke-static {v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;->access$800(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;)I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->count(I)V

    .line 426
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;

    invoke-static {v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;->access$800(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;)I

    move-result v5

    int-to-long v6, v5

    invoke-static {v4, v6, v7}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$914(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;J)J

    .line 429
    :cond_3
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;

    invoke-static {v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;->access$800(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;)I

    move-result v4

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;

    invoke-static {v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;->access$700(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;)I

    move-result v5

    sub-int v0, v4, v5

    .line 430
    .local v0, "availableBytesInBuffer":I
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 431
    .local v1, "toRead":I
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$600(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)J

    move-result-wide v4

    sub-long v4, v2, v4

    int-to-long v6, v1

    cmp-long v4, v4, v6

    if-gez v4, :cond_4

    .line 433
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$600(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)J

    move-result-wide v4

    sub-long v4, v2, v4

    long-to-int v1, v4

    .line 435
    :cond_4
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;

    invoke-static {v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;)[B

    move-result-object v4

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;

    invoke-static {v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;->access$700(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;)I

    move-result v5

    invoke-static {v4, v5, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 436
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;

    invoke-static {v4, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;->access$712(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;I)I

    .line 437
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    int-to-long v6, v1

    invoke-static {v4, v6, v7}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$614(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;J)J

    .line 438
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v4, p1, p2, v1}, Ljava/util/zip/CRC32;->update([BII)V

    goto/16 :goto_0
.end method

.method private readStoredEntry()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 755
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 756
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 757
    .local v4, "off":I
    const/4 v3, 0x0

    .line 760
    .local v3, "done":Z
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v6}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$500(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v2, 0x14

    .line 762
    .local v2, "ddLen":I
    :cond_0
    :goto_0
    if-nez v3, :cond_4

    .line 763
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->in:Ljava/io/InputStream;

    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;

    invoke-static {v7}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$Buffer;)[B

    move-result-object v7

    rsub-int v8, v4, 0x200

    invoke-virtual {v6, v7, v4, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 765
    .local v5, "r":I
    if-gtz v5, :cond_2

    .line 768
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Truncated ZIP file"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 760
    .end local v2    # "ddLen":I
    .end local v5    # "r":I
    :cond_1
    const/16 v2, 0xc

    goto :goto_0

    .line 770
    .restart local v2    # "ddLen":I
    .restart local v5    # "r":I
    :cond_2
    add-int v6, v5, v4

    const/4 v7, 0x4

    if-ge v6, v7, :cond_3

    .line 772
    add-int/2addr v4, v5

    .line 773
    goto :goto_0

    .line 776
    :cond_3
    invoke-direct {p0, v1, v4, v5, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->bufferContainsSignature(Ljava/io/ByteArrayOutputStream;III)Z

    move-result v3

    .line 777
    if-nez v3, :cond_0

    .line 778
    invoke-direct {p0, v1, v4, v5, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->cacheBytesRead(Ljava/io/ByteArrayOutputStream;III)I

    move-result v4

    goto :goto_0

    .line 782
    .end local v5    # "r":I
    :cond_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 783
    .local v0, "b":[B
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->lastStoredEntry:Ljava/io/ByteArrayInputStream;

    .line 784
    return-void
.end method

.method private realSkip(J)V
    .locals 11
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 940
    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-ltz v5, :cond_3

    .line 941
    const-wide/16 v2, 0x0

    .line 942
    .local v2, "skipped":J
    :goto_0
    cmp-long v5, v2, p1

    if-gez v5, :cond_0

    .line 943
    sub-long v0, p1, v2

    .line 944
    .local v0, "rem":J
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->in:Ljava/io/InputStream;

    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->SKIP_BUF:[B

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->SKIP_BUF:[B

    array-length v8, v8

    int-to-long v8, v8

    cmp-long v8, v8, v0

    if-lez v8, :cond_1

    .end local v0    # "rem":J
    :goto_1
    long-to-int v8, v0

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 947
    .local v4, "x":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 953
    .end local v4    # "x":I
    :cond_0
    return-void

    .line 944
    .restart local v0    # "rem":J
    :cond_1
    iget-object v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->SKIP_BUF:[B

    array-length v8, v8

    int-to-long v0, v8

    goto :goto_1

    .line 950
    .end local v0    # "rem":J
    .restart local v4    # "x":I
    :cond_2
    invoke-virtual {p0, v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->count(I)V

    .line 951
    int-to-long v6, v4

    add-long/2addr v2, v6

    .line 952
    goto :goto_0

    .line 955
    .end local v2    # "skipped":J
    .end local v4    # "x":I
    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5
.end method

.method private skipRemainderOfArchive()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 886
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->entriesRead:I

    mul-int/lit8 v0, v0, 0x2e

    add-int/lit8 v0, v0, -0x1e

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->realSkip(J)V

    .line 887
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->findEocdRecord()V

    .line 888
    const-wide/16 v0, 0x10

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->realSkip(J)V

    .line 890
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->SHORT_BUF:[B

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readFully([B)V

    .line 892
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->SHORT_BUF:[B

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([B)I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->realSkip(J)V

    .line 893
    return-void
.end method

.method private supportsDataDescriptorFor(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z
    .locals 2
    .param p1, "entry"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .prologue
    .line 732
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->allowStoredEntriesWithDataDescriptor:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getGeneralPurposeBit()Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->usesDataDescriptor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public canReadEntryData(Lorg/apache/commons/compress/archivers/ArchiveEntry;)Z
    .locals 3
    .param p1, "ae"    # Lorg/apache/commons/compress/archivers/ArchiveEntry;

    .prologue
    const/4 v1, 0x0

    .line 365
    instance-of v2, p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 366
    check-cast v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 367
    .local v0, "ze":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->canHandleEntryData(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->supportsDataDescriptorFor(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 371
    .end local v0    # "ze":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    :cond_0
    return v1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 490
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->closed:Z

    if-nez v0, :cond_0

    .line 491
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->closed:Z

    .line 492
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 493
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 495
    :cond_0
    return-void
.end method

.method public getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->getNextZipEntry()Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    return-object v0
.end method

.method public getNextZipEntry()Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    const/4 v11, 0x1

    .line 208
    .local v11, "firstEntry":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->closed:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->hitCentralDirectory:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 209
    :cond_0
    const/16 v20, 0x0

    .line 299
    :goto_0
    return-object v20

    .line 211
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    .line 212
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->closeEntry()V

    .line 213
    const/4 v11, 0x0

    .line 217
    :cond_2
    if-eqz v11, :cond_5

    .line 222
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->LFH_BUF:[B

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readFirstLocalFileHeader([B)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_1
    new-instance v15, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->LFH_BUF:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>([B)V

    .line 231
    .local v15, "sig":Lorg/apache/commons/compress/archivers/zip/ZipLong;
    sget-object v20, Lorg/apache/commons/compress/archivers/zip/ZipLong;->CFH_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_3

    sget-object v20, Lorg/apache/commons/compress/archivers/zip/ZipLong;->AED_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 232
    :cond_3
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->hitCentralDirectory:Z

    .line 233
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->skipRemainderOfArchive()V

    .line 235
    :cond_4
    sget-object v20, Lorg/apache/commons/compress/archivers/zip/ZipLong;->LFH_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_6

    .line 236
    const/16 v20, 0x0

    goto :goto_0

    .line 224
    .end local v15    # "sig":Lorg/apache/commons/compress/archivers/zip/ZipLong;
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->LFH_BUF:[B

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readFully([B)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 226
    :catch_0
    move-exception v5

    .line 227
    .local v5, "e":Ljava/io/EOFException;
    const/16 v20, 0x0

    goto :goto_0

    .line 239
    .end local v5    # "e":Ljava/io/EOFException;
    .restart local v15    # "sig":Lorg/apache/commons/compress/archivers/zip/ZipLong;
    :cond_6
    const/4 v14, 0x4

    .line 240
    .local v14, "off":I
    new-instance v20, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    const/16 v21, 0x0

    invoke-direct/range {v20 .. v21}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$1;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->LFH_BUF:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v14}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v17

    .line 243
    .local v17, "versionMadeBy":I
    add-int/lit8 v14, v14, 0x2

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$300(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v20

    shr-int/lit8 v21, v17, 0x8

    and-int/lit8 v21, v21, 0xf

    invoke-virtual/range {v20 .. v21}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setPlatform(I)V

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->LFH_BUF:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v14}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->parse([BI)Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    move-result-object v12

    .line 248
    .local v12, "gpFlag":Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;
    invoke-virtual {v12}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->usesUTF8ForNames()Z

    move-result v13

    .line 249
    .local v13, "hasUTF8Flag":Z
    if-eqz v13, :cond_8

    sget-object v6, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->UTF8_ZIP_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 251
    .local v6, "entryEncoding":Lorg/apache/commons/compress/archivers/zip/ZipEncoding;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    move-object/from16 v20, v0

    invoke-virtual {v12}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->usesDataDescriptor()Z

    move-result v21

    invoke-static/range {v20 .. v21}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$402(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;Z)Z

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$300(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setGeneralPurposeBit(Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;)V

    .line 254
    add-int/lit8 v14, v14, 0x2

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$300(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->LFH_BUF:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v14}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setMethod(I)V

    .line 257
    add-int/lit8 v14, v14, 0x2

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->LFH_BUF:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v14}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->dosToJavaTime(J)J

    move-result-wide v18

    .line 260
    .local v18, "time":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$300(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setTime(J)V

    .line 261
    add-int/lit8 v14, v14, 0x4

    .line 263
    const/16 v16, 0x0

    .local v16, "size":Lorg/apache/commons/compress/archivers/zip/ZipLong;
    const/4 v4, 0x0

    .line 264
    .local v4, "cSize":Lorg/apache/commons/compress/archivers/zip/ZipLong;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$400(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Z

    move-result v20

    if-nez v20, :cond_9

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$300(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->LFH_BUF:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v14}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setCrc(J)V

    .line 266
    add-int/lit8 v14, v14, 0x4

    .line 268
    new-instance v4, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .end local v4    # "cSize":Lorg/apache/commons/compress/archivers/zip/ZipLong;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->LFH_BUF:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v4, v0, v14}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>([BI)V

    .line 269
    .restart local v4    # "cSize":Lorg/apache/commons/compress/archivers/zip/ZipLong;
    add-int/lit8 v14, v14, 0x4

    .line 271
    new-instance v16, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .end local v16    # "size":Lorg/apache/commons/compress/archivers/zip/ZipLong;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->LFH_BUF:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v14}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>([BI)V

    .line 272
    .restart local v16    # "size":Lorg/apache/commons/compress/archivers/zip/ZipLong;
    add-int/lit8 v14, v14, 0x4

    .line 277
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->LFH_BUF:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v14}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v10

    .line 279
    .local v10, "fileNameLen":I
    add-int/lit8 v14, v14, 0x2

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->LFH_BUF:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v14}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v8

    .line 282
    .local v8, "extraLen":I
    add-int/lit8 v14, v14, 0x2

    .line 284
    new-array v9, v10, [B

    .line 285
    .local v9, "fileName":[B
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readFully([B)V

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$300(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v20

    invoke-interface {v6, v9}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v9}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setName(Ljava/lang/String;[B)V

    .line 288
    new-array v7, v8, [B

    .line 289
    .local v7, "extraData":[B
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readFully([B)V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$300(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtra([B)V

    .line 292
    if-nez v13, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->useUnicodeExtraFields:Z

    move/from16 v20, v0

    if-eqz v20, :cond_7

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$300(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v9, v1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->setNameAndCommentFromExtraFields(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;[B[B)V

    .line 297
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->processZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipLong;Lorg/apache/commons/compress/archivers/zip/ZipLong;)V

    .line 298
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->entriesRead:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->entriesRead:I

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$300(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v20

    goto/16 :goto_0

    .line 249
    .end local v4    # "cSize":Lorg/apache/commons/compress/archivers/zip/ZipLong;
    .end local v6    # "entryEncoding":Lorg/apache/commons/compress/archivers/zip/ZipEncoding;
    .end local v7    # "extraData":[B
    .end local v8    # "extraLen":I
    .end local v9    # "fileName":[B
    .end local v10    # "fileNameLen":I
    .end local v16    # "size":Lorg/apache/commons/compress/archivers/zip/ZipLong;
    .end local v18    # "time":J
    :cond_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    goto/16 :goto_2

    .line 274
    .restart local v4    # "cSize":Lorg/apache/commons/compress/archivers/zip/ZipLong;
    .restart local v6    # "entryEncoding":Lorg/apache/commons/compress/archivers/zip/ZipEncoding;
    .restart local v16    # "size":Lorg/apache/commons/compress/archivers/zip/ZipLong;
    .restart local v18    # "time":J
    :cond_9
    add-int/lit8 v14, v14, 0xc

    goto/16 :goto_3
.end method

.method public read([BII)I
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 376
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 377
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    if-nez v0, :cond_2

    .line 380
    :cond_1
    const/4 v0, -0x1

    .line 397
    :goto_0
    return v0

    .line 384
    :cond_2
    array-length v0, p1

    if-gt p2, v0, :cond_5

    if-ltz p3, :cond_5

    if-ltz p2, :cond_5

    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_5

    .line 386
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$300(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->checkRequestedFeatures(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    .line 387
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$300(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->supportsDataDescriptorFor(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 388
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;->DATA_DESCRIPTOR:Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$300(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;-><init>(Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    throw v0

    .line 394
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->access$300(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    if-nez v0, :cond_4

    .line 395
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readStored([BII)I

    move-result v0

    goto :goto_0

    .line 397
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readDeflated([BII)I

    move-result v0

    goto :goto_0

    .line 399
    :cond_5
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public skip(J)J
    .locals 11
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 514
    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-ltz v5, :cond_3

    .line 515
    const-wide/16 v2, 0x0

    .line 516
    .local v2, "skipped":J
    :goto_0
    cmp-long v5, v2, p1

    if-gez v5, :cond_0

    .line 517
    sub-long v0, p1, v2

    .line 518
    .local v0, "rem":J
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->SKIP_BUF:[B

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->SKIP_BUF:[B

    array-length v7, v7

    int-to-long v8, v7

    cmp-long v7, v8, v0

    if-lez v7, :cond_1

    .end local v0    # "rem":J
    :goto_1
    long-to-int v7, v0

    invoke-virtual {p0, v5, v6, v7}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->read([BII)I

    move-result v4

    .line 521
    .local v4, "x":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 526
    .end local v4    # "x":I
    :cond_0
    return-wide v2

    .line 518
    .restart local v0    # "rem":J
    :cond_1
    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->SKIP_BUF:[B

    array-length v7, v7

    int-to-long v0, v7

    goto :goto_1

    .line 524
    .end local v0    # "rem":J
    .restart local v4    # "x":I
    :cond_2
    int-to-long v6, v4

    add-long/2addr v2, v6

    .line 525
    goto :goto_0

    .line 528
    .end local v2    # "skipped":J
    .end local v4    # "x":I
    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5
.end method
