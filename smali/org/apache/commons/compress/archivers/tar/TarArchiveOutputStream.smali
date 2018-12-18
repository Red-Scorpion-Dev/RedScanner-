.class public Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;
.super Lorg/apache/commons/compress/archivers/ArchiveOutputStream;
.source "TarArchiveOutputStream.java"


# static fields
.field private static final ASCII:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

.field public static final BIGNUMBER_ERROR:I = 0x0

.field public static final BIGNUMBER_POSIX:I = 0x2

.field public static final BIGNUMBER_STAR:I = 0x1

.field public static final LONGFILE_ERROR:I = 0x0

.field public static final LONGFILE_GNU:I = 0x2

.field public static final LONGFILE_POSIX:I = 0x3

.field public static final LONGFILE_TRUNCATE:I = 0x1


# instance fields
.field private addPaxHeadersForNonAsciiNames:Z

.field private final assemBuf:[B

.field private assemLen:I

.field private bigNumberMode:I

.field protected final buffer:Lorg/apache/commons/compress/archivers/tar/TarBuffer;

.field private closed:Z

.field private currBytes:J

.field private currName:Ljava/lang/String;

.field private currSize:J

.field private final encoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

.field private finished:Z

.field private haveUnclosedEntry:Z

.field private longFileMode:I

.field private final out:Ljava/io/OutputStream;

.field private final recordBuf:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const-string v0, "ASCII"

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->ASCII:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 95
    const/16 v0, 0x2800

    const/16 v1, 0x200

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;-><init>(Ljava/io/OutputStream;II)V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "blockSize"    # I

    .prologue
    .line 114
    const/16 v0, 0x200

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;-><init>(Ljava/io/OutputStream;II)V

    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;II)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "blockSize"    # I
    .param p3, "recordSize"    # I

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;-><init>(Ljava/io/OutputStream;IILjava/lang/String;)V

    .line 137
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IILjava/lang/String;)V
    .locals 3
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "blockSize"    # I
    .param p3, "recordSize"    # I
    .param p4, "encoding"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 148
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;-><init>()V

    .line 71
    iput v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->longFileMode:I

    .line 72
    iput v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->bigNumberMode:I

    .line 74
    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->closed:Z

    .line 77
    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->haveUnclosedEntry:Z

    .line 80
    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->finished:Z

    .line 86
    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->addPaxHeadersForNonAsciiNames:Z

    .line 149
    new-instance v0, Lorg/apache/commons/compress/utils/CountingOutputStream;

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/utils/CountingOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->out:Ljava/io/OutputStream;

    .line 150
    invoke-static {p4}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->encoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 152
    new-instance v0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->out:Ljava/io/OutputStream;

    invoke-direct {v0, v1, p2, p3}, Lorg/apache/commons/compress/archivers/tar/TarBuffer;-><init>(Ljava/io/OutputStream;II)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->buffer:Lorg/apache/commons/compress/archivers/tar/TarBuffer;

    .line 153
    iput v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->assemLen:I

    .line 154
    new-array v0, p3, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->assemBuf:[B

    .line 155
    new-array v0, p3, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordBuf:[B

    .line 156
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;ILjava/lang/String;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "blockSize"    # I
    .param p3, "encoding"    # Ljava/lang/String;

    .prologue
    .line 126
    const/16 v0, 0x200

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;-><init>(Ljava/io/OutputStream;IILjava/lang/String;)V

    .line 127
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "encoding"    # Ljava/lang/String;

    .prologue
    .line 105
    const/16 v0, 0x2800

    const/16 v1, 0x200

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;-><init>(Ljava/io/OutputStream;IILjava/lang/String;)V

    .line 106
    return-void
.end method

.method private addPaxHeaderForBigNumber(Ljava/util/Map;Ljava/lang/String;JJ)V
    .locals 3
    .param p2, "header"    # Ljava/lang/String;
    .param p3, "value"    # J
    .param p5, "maxValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "JJ)V"
        }
    .end annotation

    .prologue
    .line 556
    .local p1, "paxHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    cmp-long v0, p3, p5

    if-lez v0, :cond_1

    .line 557
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    :cond_1
    return-void
.end method

.method private addPaxHeadersForBigNumbers(Ljava/util/Map;Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;)V
    .locals 8
    .param p2, "entry"    # Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;",
            ")V"
        }
    .end annotation

    .prologue
    .line 535
    .local p1, "paxHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "size"

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getSize()J

    move-result-wide v4

    const-wide v6, 0x1ffffffffL

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->addPaxHeaderForBigNumber(Ljava/util/Map;Ljava/lang/String;JJ)V

    .line 537
    const-string v3, "gid"

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getGroupId()I

    move-result v0

    int-to-long v4, v0

    const-wide/32 v6, 0x1fffff

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->addPaxHeaderForBigNumber(Ljava/util/Map;Ljava/lang/String;JJ)V

    .line 539
    const-string v3, "mtime"

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getModTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    const-wide v6, 0x1ffffffffL

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->addPaxHeaderForBigNumber(Ljava/util/Map;Ljava/lang/String;JJ)V

    .line 542
    const-string v3, "uid"

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getUserId()I

    move-result v0

    int-to-long v4, v0

    const-wide/32 v6, 0x1fffff

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->addPaxHeaderForBigNumber(Ljava/util/Map;Ljava/lang/String;JJ)V

    .line 545
    const-string v3, "SCHILY.devmajor"

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getDevMajor()I

    move-result v0

    int-to-long v4, v0

    const-wide/32 v6, 0x1fffff

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->addPaxHeaderForBigNumber(Ljava/util/Map;Ljava/lang/String;JJ)V

    .line 547
    const-string v3, "SCHILY.devminor"

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getDevMinor()I

    move-result v0

    int-to-long v4, v0

    const-wide/32 v6, 0x1fffff

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->addPaxHeaderForBigNumber(Ljava/util/Map;Ljava/lang/String;JJ)V

    .line 550
    const-string v1, "mode"

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getMode()I

    move-result v0

    int-to-long v2, v0

    const-wide/32 v4, 0x1fffff

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->failForBigNumber(Ljava/lang/String;JJ)V

    .line 551
    return-void
.end method

.method private failForBigNumber(Ljava/lang/String;JJ)V
    .locals 4
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "maxValue"    # J

    .prologue
    .line 576
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    cmp-long v0, p2, p4

    if-lez v0, :cond_1

    .line 577
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is too big ( > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 581
    :cond_1
    return-void
.end method

.method private failForBigNumbers(Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;)V
    .locals 12
    .param p1, "entry"    # Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .prologue
    const-wide v4, 0x1ffffffffL

    const-wide/32 v10, 0x1fffff

    .line 562
    const-string v1, "entry size"

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getSize()J

    move-result-wide v2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->failForBigNumber(Ljava/lang/String;JJ)V

    .line 563
    const-string v7, "group id"

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getGroupId()I

    move-result v0

    int-to-long v8, v0

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->failForBigNumber(Ljava/lang/String;JJ)V

    .line 564
    const-string v1, "last modification time"

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getModTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->failForBigNumber(Ljava/lang/String;JJ)V

    .line 567
    const-string v7, "user id"

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getUserId()I

    move-result v0

    int-to-long v8, v0

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->failForBigNumber(Ljava/lang/String;JJ)V

    .line 568
    const-string v7, "mode"

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getMode()I

    move-result v0

    int-to-long v8, v0

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->failForBigNumber(Ljava/lang/String;JJ)V

    .line 569
    const-string v7, "major device number"

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getDevMajor()I

    move-result v0

    int-to-long v8, v0

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->failForBigNumber(Ljava/lang/String;JJ)V

    .line 571
    const-string v7, "minor device number"

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getDevMinor()I

    move-result v0

    int-to-long v8, v0

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->failForBigNumber(Ljava/lang/String;JJ)V

    .line 573
    return-void
.end method

.method private stripTo7Bits(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 498
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 499
    .local v1, "length":I
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 500
    .local v2, "result":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 501
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    and-int/lit8 v4, v4, 0x7f

    int-to-char v3, v4

    .line 502
    .local v3, "stripped":C
    if-eqz v3, :cond_0

    .line 503
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 500
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 506
    .end local v3    # "stripped":C
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private writeEOFRecord()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 514
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordBuf:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 515
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->buffer:Lorg/apache/commons/compress/archivers/tar/TarBuffer;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordBuf:[B

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->writeRecord([B)V

    .line 516
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->finished:Z

    if-nez v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->finish()V

    .line 234
    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->closed:Z

    if-nez v0, :cond_1

    .line 235
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->buffer:Lorg/apache/commons/compress/archivers/tar/TarBuffer;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->close()V

    .line 236
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->closed:Z

    .line 239
    :cond_1
    return-void
.end method

.method public closeArchiveEntry()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 345
    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->finished:Z

    if-eqz v1, :cond_0

    .line 346
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Stream has already been finished"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 348
    :cond_0
    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->haveUnclosedEntry:Z

    if-nez v1, :cond_1

    .line 349
    new-instance v1, Ljava/io/IOException;

    const-string v2, "No current entry to close"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 351
    :cond_1
    iget v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->assemLen:I

    if-lez v1, :cond_3

    .line 352
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->assemLen:I

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->assemBuf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 353
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->assemBuf:[B

    aput-byte v6, v1, v0

    .line 352
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 356
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->buffer:Lorg/apache/commons/compress/archivers/tar/TarBuffer;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->assemBuf:[B

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->writeRecord([B)V

    .line 358
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currBytes:J

    iget v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->assemLen:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currBytes:J

    .line 359
    iput v6, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->assemLen:I

    .line 362
    .end local v0    # "i":I
    :cond_3
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currBytes:J

    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currSize:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_4

    .line 363
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "entry \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' closed at \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currBytes:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' before the \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currSize:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' bytes specified in the header were written"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 368
    :cond_4
    iput-boolean v6, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->haveUnclosedEntry:Z

    .line 369
    return-void
.end method

.method public createArchiveEntry(Ljava/io/File;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .locals 2
    .param p1, "inputFile"    # Ljava/io/File;
    .param p2, "entryName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 527
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->finished:Z

    if-eqz v0, :cond_0

    .line 528
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream has already been finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 530
    :cond_0
    new-instance v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public finish()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->finished:Z

    if-eqz v0, :cond_0

    .line 212
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This archive has already been finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->haveUnclosedEntry:Z

    if-eqz v0, :cond_1

    .line 216
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This archives contains unclosed entries."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->writeEOFRecord()V

    .line 219
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->writeEOFRecord()V

    .line 220
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->buffer:Lorg/apache/commons/compress/archivers/tar/TarBuffer;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->flushBlock()V

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->finished:Z

    .line 222
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 520
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 521
    return-void
.end method

.method public getBytesWritten()J
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->out:Ljava/io/OutputStream;

    check-cast v0, Lorg/apache/commons/compress/utils/CountingOutputStream;

    invoke-virtual {v0}, Lorg/apache/commons/compress/utils/CountingOutputStream;->getBytesWritten()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCount()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 192
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->getBytesWritten()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getRecordSize()I
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->buffer:Lorg/apache/commons/compress/archivers/tar/TarBuffer;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->getRecordSize()I

    move-result v0

    return v0
.end method

.method public putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V
    .locals 11
    .param p1, "archiveEntry"    # Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    iget-boolean v7, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->finished:Z

    if-eqz v7, :cond_0

    .line 266
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Stream has already been finished"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    move-object v1, p1

    .line 268
    check-cast v1, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 269
    .local v1, "entry":Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 270
    .local v6, "paxHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, "entryName":Ljava/lang/String;
    iget-object v7, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->encoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-interface {v7, v2}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 272
    .local v0, "encodedName":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    sub-int v4, v7, v8

    .line 273
    .local v4, "nameLen":I
    const/4 v5, 0x0

    .line 274
    .local v5, "paxHeaderContainsPath":Z
    const/16 v7, 0x64

    if-lt v4, v7, :cond_1

    .line 276
    iget v7, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->longFileMode:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_7

    .line 277
    const-string v7, "path"

    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const/4 v5, 0x1

    .line 297
    :cond_1
    :goto_0
    iget v7, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->bigNumberMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_9

    .line 298
    invoke-direct {p0, v6, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->addPaxHeadersForBigNumbers(Ljava/util/Map;Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;)V

    .line 303
    :cond_2
    :goto_1
    iget-boolean v7, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->addPaxHeadersForNonAsciiNames:Z

    if-eqz v7, :cond_3

    if-nez v5, :cond_3

    sget-object v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->ASCII:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-interface {v7, v2}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->canEncode(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 305
    const-string v7, "path"

    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    :cond_3
    iget-boolean v7, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->addPaxHeadersForNonAsciiNames:Z

    if-eqz v7, :cond_5

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isLink()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isSymbolicLink()Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    sget-object v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->ASCII:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getLinkName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->canEncode(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 311
    const-string v7, "linkpath"

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getLinkName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    :cond_5
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 315
    invoke-virtual {p0, v2, v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->writePaxHeaders(Ljava/lang/String;Ljava/util/Map;)V

    .line 318
    :cond_6
    iget-object v8, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordBuf:[B

    iget-object v9, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->encoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    iget v7, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->bigNumberMode:I

    const/4 v10, 0x1

    if-ne v7, v10, :cond_a

    const/4 v7, 0x1

    :goto_2
    invoke-virtual {v1, v8, v9, v7}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->writeEntryHeader([BLorg/apache/commons/compress/archivers/zip/ZipEncoding;Z)V

    .line 320
    iget-object v7, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->buffer:Lorg/apache/commons/compress/archivers/tar/TarBuffer;

    iget-object v8, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordBuf:[B

    invoke-virtual {v7, v8}, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->writeRecord([B)V

    .line 322
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currBytes:J

    .line 324
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 325
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currSize:J

    .line 329
    :goto_3
    iput-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currName:Ljava/lang/String;

    .line 330
    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->haveUnclosedEntry:Z

    .line 331
    return-void

    .line 279
    :cond_7
    iget v7, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->longFileMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_8

    .line 282
    new-instance v3, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    const-string v7, "././@LongLink"

    const/16 v8, 0x4c

    invoke-direct {v3, v7, v8}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>(Ljava/lang/String;B)V

    .line 285
    .local v3, "longLinkEntry":Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    add-int/lit8 v7, v4, 0x1

    int-to-long v8, v7

    invoke-virtual {v3, v8, v9}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setSize(J)V

    .line 286
    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    .line 287
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v8

    invoke-virtual {p0, v7, v8, v4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->write([BII)V

    .line 288
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->write(I)V

    .line 289
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->closeArchiveEntry()V

    goto/16 :goto_0

    .line 290
    .end local v3    # "longLinkEntry":Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    :cond_8
    iget v7, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->longFileMode:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1

    .line 291
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file name \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' is too long ( > "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x64

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bytes)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 299
    :cond_9
    iget v7, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->bigNumberMode:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    .line 300
    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->failForBigNumbers(Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;)V

    goto/16 :goto_1

    .line 318
    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 327
    :cond_b
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getSize()J

    move-result-wide v8

    iput-wide v8, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currSize:J

    goto :goto_3
.end method

.method public setAddPaxHeadersForNonAsciiNames(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 186
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->addPaxHeadersForNonAsciiNames:Z

    .line 187
    return-void
.end method

.method public setBigNumberMode(I)V
    .locals 0
    .param p1, "bigNumberMode"    # I

    .prologue
    .line 178
    iput p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->bigNumberMode:I

    .line 179
    return-void
.end method

.method public setLongFileMode(I)V
    .locals 0
    .param p1, "longFileMode"    # I

    .prologue
    .line 166
    iput p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->longFileMode:I

    .line 167
    return-void
.end method

.method public write([BII)V
    .locals 7
    .param p1, "wBuf"    # [B
    .param p2, "wOffset"    # I
    .param p3, "numToWrite"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 387
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currBytes:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currSize:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 388
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request to write \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' bytes exceeds size in header of \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currSize:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' bytes for entry \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 402
    :cond_0
    iget v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->assemLen:I

    if-lez v2, :cond_1

    .line 403
    iget v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->assemLen:I

    add-int/2addr v2, p3

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordBuf:[B

    array-length v3, v3

    if-lt v2, v3, :cond_3

    .line 404
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordBuf:[B

    array-length v2, v2

    iget v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->assemLen:I

    sub-int v0, v2, v3

    .line 406
    .local v0, "aLen":I
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->assemBuf:[B

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordBuf:[B

    iget v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->assemLen:I

    invoke-static {v2, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 408
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordBuf:[B

    iget v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->assemLen:I

    invoke-static {p1, p2, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 410
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->buffer:Lorg/apache/commons/compress/archivers/tar/TarBuffer;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordBuf:[B

    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->writeRecord([B)V

    .line 412
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currBytes:J

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordBuf:[B

    array-length v4, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currBytes:J

    .line 413
    add-int/2addr p2, v0

    .line 414
    sub-int/2addr p3, v0

    .line 415
    iput v6, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->assemLen:I

    .line 431
    .end local v0    # "aLen":I
    :cond_1
    :goto_0
    if-lez p3, :cond_2

    .line 432
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordBuf:[B

    array-length v2, v2

    if-ge p3, v2, :cond_4

    .line 433
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->assemBuf:[B

    iget v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->assemLen:I

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 436
    iget v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->assemLen:I

    add-int/2addr v2, p3

    iput v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->assemLen:I

    .line 449
    :cond_2
    return-void

    .line 417
    :cond_3
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->assemBuf:[B

    iget v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->assemLen:I

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 420
    add-int/2addr p2, p3

    .line 421
    iget v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->assemLen:I

    add-int/2addr v2, p3

    iput v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->assemLen:I

    .line 422
    const/4 p3, 0x0

    goto :goto_0

    .line 441
    :cond_4
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->buffer:Lorg/apache/commons/compress/archivers/tar/TarBuffer;

    invoke-virtual {v2, p1, p2}, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->writeRecord([BI)V

    .line 443
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->recordBuf:[B

    array-length v1, v2

    .line 445
    .local v1, "num":I
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currBytes:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->currBytes:J

    .line 446
    sub-int/2addr p3, v1

    .line 447
    add-int/2addr p2, v1

    .line 448
    goto :goto_0
.end method

.method writePaxHeaders(Ljava/lang/String;Ljava/util/Map;)V
    .locals 14
    .param p1, "entryName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 457
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "./PaxHeaders.X/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->stripTo7Bits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 458
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x64

    if-lt v11, v12, :cond_0

    .line 459
    const/4 v11, 0x0

    const/16 v12, 0x63

    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 461
    :cond_0
    :goto_0
    const-string v11, "/"

    invoke-virtual {v7, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 464
    const/4 v11, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 466
    :cond_1
    new-instance v8, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    const/16 v11, 0x78

    invoke-direct {v8, v7, v11}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>(Ljava/lang/String;B)V

    .line 469
    .local v8, "pex":Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    new-instance v10, Ljava/io/StringWriter;

    invoke-direct {v10}, Ljava/io/StringWriter;-><init>()V

    .line 470
    .local v10, "w":Ljava/io/StringWriter;
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 471
    .local v2, "h":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 472
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 473
    .local v9, "value":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    add-int/lit8 v11, v11, 0x3

    add-int/lit8 v5, v11, 0x2

    .line 476
    .local v5, "len":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 477
    .local v6, "line":Ljava/lang/String;
    const-string v11, "UTF-8"

    invoke-virtual {v6, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    array-length v0, v11

    .line 478
    .local v0, "actualLength":I
    :goto_2
    if-eq v5, v0, :cond_2

    .line 484
    move v5, v0

    .line 485
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 486
    const-string v11, "UTF-8"

    invoke-virtual {v6, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    array-length v0, v11

    goto :goto_2

    .line 488
    :cond_2
    invoke-virtual {v10, v6}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 490
    .end local v0    # "actualLength":I
    .end local v2    # "h":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "len":I
    .end local v6    # "line":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_3
    invoke-virtual {v10}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "UTF-8"

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 491
    .local v1, "data":[B
    array-length v11, v1

    int-to-long v12, v11

    invoke-virtual {v8, v12, v13}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setSize(J)V

    .line 492
    invoke-virtual {p0, v8}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    .line 493
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->write([B)V

    .line 494
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;->closeArchiveEntry()V

    .line 495
    return-void
.end method
