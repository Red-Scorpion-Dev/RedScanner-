.class public Lorg/apache/commons/compress/archivers/zip/ZipFile;
.super Ljava/lang/Object;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;,
        Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;,
        Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;
    }
.end annotation


# static fields
.field static final BYTE_SHIFT:I = 0x8

.field private static final CFD_LOCATOR_OFFSET:I = 0x10

.field private static final CFH_LEN:I = 0x2a

.field private static final CFH_SIG:J

.field private static final HASH_SIZE:I = 0x1fd

.field private static final LFH_OFFSET_FOR_FILENAME_LENGTH:J = 0x1aL

.field private static final MAX_EOCD_SIZE:I = 0x10015

.field static final MIN_EOCD_SIZE:I = 0x16

.field static final NIBLET_MASK:I = 0xf

.field private static final POS_0:I = 0x0

.field private static final POS_1:I = 0x1

.field private static final POS_2:I = 0x2

.field private static final POS_3:I = 0x3

.field private static final ZIP64_EOCDL_LENGTH:I = 0x14

.field private static final ZIP64_EOCDL_LOCATOR_OFFSET:I = 0x8

.field private static final ZIP64_EOCD_CFD_LOCATOR_OFFSET:I = 0x30


# instance fields
.field private final CFH_BUF:[B

.field private final DWORD_BUF:[B

.field private final OFFSET_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final SHORT_BUF:[B

.field private final WORD_BUF:[B

.field private final archive:Ljava/io/RandomAccessFile;

.field private final archiveName:Ljava/lang/String;

.field private closed:Z

.field private final encoding:Ljava/lang/String;

.field private final entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            "Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final nameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final useUnicodeExtraFields:Z

.field private final zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 426
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->CFH_SIG:[B

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([B)J

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_SIG:J

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    const-string v0, "UTF8"

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p1, "f"    # Ljava/io/File;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    .line 191
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "f"    # Ljava/io/File;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "useUnicodeExtraFields"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x1fd

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->entries:Ljava/util/Map;

    .line 95
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->nameMap:Ljava/util/Map;

    .line 138
    const/16 v2, 0x8

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->DWORD_BUF:[B

    .line 139
    const/4 v2, 0x4

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->WORD_BUF:[B

    .line 140
    const/16 v2, 0x2a

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    .line 141
    const/4 v2, 0x2

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->SHORT_BUF:[B

    .line 997
    new-instance v2, Lorg/apache/commons/compress/archivers/zip/ZipFile$2;

    invoke-direct {v2, p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile$2;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipFile;)V

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->OFFSET_COMPARATOR:Ljava/util/Comparator;

    .line 207
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archiveName:Ljava/lang/String;

    .line 208
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->encoding:Ljava/lang/String;

    .line 209
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 210
    iput-boolean p3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->useUnicodeExtraFields:Z

    .line 211
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    .line 212
    const/4 v1, 0x0

    .line 214
    .local v1, "success":Z
    :try_start_0
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->populateFromCentralDirectory()Ljava/util/Map;

    move-result-object v0

    .line 216
    .local v0, "entriesWithoutUTF8Flag":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;>;"
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->resolveLocalFileHeaderData(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    const/4 v1, 0x1

    .line 219
    if-nez v1, :cond_0

    .line 221
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->closed:Z

    .line 222
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 219
    .end local v0    # "entriesWithoutUTF8Flag":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;>;"
    :catchall_0
    move-exception v2

    if-nez v1, :cond_1

    .line 221
    const/4 v3, 0x1

    :try_start_2
    iput-boolean v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->closed:Z

    .line 222
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 225
    :cond_1
    :goto_1
    throw v2

    .line 223
    :catch_0
    move-exception v3

    goto :goto_1

    .restart local v0    # "entriesWithoutUTF8Flag":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;>;"
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "UTF8"

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    .line 177
    return-void
.end method

.method static synthetic access$600(Lorg/apache/commons/compress/archivers/zip/ZipFile;)Ljava/io/RandomAccessFile;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/compress/archivers/zip/ZipFile;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/commons/compress/archivers/zip/ZipFile;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/compress/archivers/zip/ZipFile;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->entries:Ljava/util/Map;

    return-object v0
.end method

.method public static closeQuietly(Lorg/apache/commons/compress/archivers/zip/ZipFile;)V
    .locals 1
    .param p0, "zipfile"    # Lorg/apache/commons/compress/archivers/zip/ZipFile;

    .prologue
    .line 258
    if-eqz p0, :cond_0

    .line 260
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 261
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private populateFromCentralDirectory()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            "Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 442
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 445
    .local v0, "noUTF8Flag":Ljava/util/HashMap;, "Ljava/util/HashMap<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;>;"
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->positionAtCentralDirectory()V

    .line 447
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->WORD_BUF:[B

    invoke-virtual {v1, v4}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 448
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->WORD_BUF:[B

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([B)J

    move-result-wide v2

    .line 450
    .local v2, "sig":J
    sget-wide v4, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_SIG:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->startsWithLocalFileHeader()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 451
    new-instance v1, Ljava/io/IOException;

    const-string v4, "central directory is empty, can\'t expand corrupt archive."

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 455
    :cond_0
    :goto_0
    sget-wide v4, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_SIG:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 456
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->readCentralDirectoryEntry(Ljava/util/Map;)V

    .line 457
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->WORD_BUF:[B

    invoke-virtual {v1, v4}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 458
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->WORD_BUF:[B

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([B)J

    move-result-wide v2

    goto :goto_0

    .line 460
    :cond_1
    return-object v0
.end method

.method private positionAtCentralDirectory()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x14

    .line 702
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->positionAtEndOfCentralDirectoryRecord()V

    .line 703
    const/4 v0, 0x0

    .line 704
    .local v0, "found":Z
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-lez v2, :cond_2

    const/4 v1, 0x1

    .line 706
    .local v1, "searchedForZip64EOCD":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 707
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 708
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->WORD_BUF:[B

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 709
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->ZIP64_EOCD_LOC_SIG:[B

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->WORD_BUF:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    .line 712
    :cond_0
    if-nez v0, :cond_3

    .line 714
    if-eqz v1, :cond_1

    .line 715
    const/16 v2, 0x10

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->skipBytes(I)V

    .line 717
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->positionAtCentralDirectory32()V

    .line 721
    :goto_1
    return-void

    .line 704
    .end local v1    # "searchedForZip64EOCD":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 719
    .restart local v1    # "searchedForZip64EOCD":Z
    :cond_3
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->positionAtCentralDirectory64()V

    goto :goto_1
.end method

.method private positionAtCentralDirectory32()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 758
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->skipBytes(I)V

    .line 759
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->WORD_BUF:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 760
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->WORD_BUF:[B

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([B)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 761
    return-void
.end method

.method private positionAtCentralDirectory64()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 734
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->skipBytes(I)V

    .line 736
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->DWORD_BUF:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 737
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->DWORD_BUF:[B

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getLongValue([B)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 738
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->WORD_BUF:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 739
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->WORD_BUF:[B

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->ZIP64_EOCD_SIG:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 740
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "archive\'s ZIP64 end of central directory locator is corrupt."

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 743
    :cond_0
    const/16 v0, 0x2c

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->skipBytes(I)V

    .line 745
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->DWORD_BUF:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 746
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->DWORD_BUF:[B

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getLongValue([B)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 747
    return-void
.end method

.method private positionAtEndOfCentralDirectoryRecord()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 769
    const-wide/16 v2, 0x16

    const-wide/32 v4, 0x10015

    sget-object v6, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->EOCD_SIG:[B

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->tryToLocateSignature(JJ[B)Z

    move-result v0

    .line 771
    .local v0, "found":Z
    if-nez v0, :cond_0

    .line 772
    new-instance v1, Ljava/util/zip/ZipException;

    const-string v2, "archive is not a ZIP archive"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 774
    :cond_0
    return-void
.end method

.method private readCentralDirectoryEntry(Ljava/util/Map;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            "Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 475
    .local p1, "noUTF8Flag":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 476
    const/4 v14, 0x0

    .line 477
    .local v14, "off":I
    new-instance v19, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-direct/range {v19 .. v19}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;-><init>()V

    .line 479
    .local v19, "ze":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v14}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v18

    .line 480
    .local v18, "versionMadeBy":I
    add-int/lit8 v14, v14, 0x2

    .line 481
    shr-int/lit8 v20, v18, 0x8

    and-int/lit8 v20, v20, 0xf

    invoke-virtual/range {v19 .. v20}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setPlatform(I)V

    .line 483
    add-int/lit8 v14, v14, 0x2

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v14}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->parse([BI)Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    move-result-object v12

    .line 486
    .local v12, "gpFlag":Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;
    invoke-virtual {v12}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->usesUTF8ForNames()Z

    move-result v13

    .line 487
    .local v13, "hasUTF8Flag":Z
    if-eqz v13, :cond_1

    sget-object v8, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->UTF8_ZIP_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 489
    .local v8, "entryEncoding":Lorg/apache/commons/compress/archivers/zip/ZipEncoding;
    :goto_0
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setGeneralPurposeBit(Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;)V

    .line 491
    add-int/lit8 v14, v14, 0x2

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v14}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setMethod(I)V

    .line 494
    add-int/lit8 v14, v14, 0x2

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v14}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->dosToJavaTime(J)J

    move-result-wide v16

    .line 497
    .local v16, "time":J
    move-object/from16 v0, v19

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setTime(J)V

    .line 498
    add-int/lit8 v14, v14, 0x4

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v14}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setCrc(J)V

    .line 501
    add-int/lit8 v14, v14, 0x4

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v14}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setCompressedSize(J)V

    .line 504
    add-int/lit8 v14, v14, 0x4

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v14}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setSize(J)V

    .line 507
    add-int/lit8 v14, v14, 0x4

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v14}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v11

    .line 510
    .local v11, "fileNameLen":I
    add-int/lit8 v14, v14, 0x2

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v14}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v9

    .line 513
    .local v9, "extraLen":I
    add-int/lit8 v14, v14, 0x2

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v14}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v6

    .line 516
    .local v6, "commentLen":I
    add-int/lit8 v14, v14, 0x2

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v14}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v7

    .line 519
    .local v7, "diskStart":I
    add-int/lit8 v14, v14, 0x2

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v14}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setInternalAttributes(I)V

    .line 522
    add-int/lit8 v14, v14, 0x2

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v14}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExternalAttributes(J)V

    .line 525
    add-int/lit8 v14, v14, 0x4

    .line 527
    new-array v10, v11, [B

    .line 528
    .local v10, "fileName":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 529
    invoke-interface {v8, v10}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setName(Ljava/lang/String;[B)V

    .line 532
    new-instance v15, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipFile$1;)V

    .line 533
    .local v15, "offset":Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_BUF:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v14}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-static {v15, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->access$202(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;J)J

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->entries:Ljava/util/Map;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->nameMap:Ljava/util/Map;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    new-array v4, v9, [B

    .line 540
    .local v4, "cdExtraData":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 541
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setCentralDirectoryExtra([B)V

    .line 543
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v15, v7}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->setSizesAndOffsetFromZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;I)V

    .line 545
    new-array v5, v6, [B

    .line 546
    .local v5, "comment":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 547
    invoke-interface {v8, v5}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setComment(Ljava/lang/String;)V

    .line 549
    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->useUnicodeExtraFields:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 550
    new-instance v20, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v10, v5, v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;-><init>([B[BLorg/apache/commons/compress/archivers/zip/ZipFile$1;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    :cond_0
    return-void

    .line 487
    .end local v4    # "cdExtraData":[B
    .end local v5    # "comment":[B
    .end local v6    # "commentLen":I
    .end local v7    # "diskStart":I
    .end local v8    # "entryEncoding":Lorg/apache/commons/compress/archivers/zip/ZipEncoding;
    .end local v9    # "extraLen":I
    .end local v10    # "fileName":[B
    .end local v11    # "fileNameLen":I
    .end local v15    # "offset":Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;
    .end local v16    # "time":J
    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    goto/16 :goto_0
.end method

.method private resolveLocalFileHeaderData(Ljava/util/Map;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            "Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 860
    .local p1, "entriesWithoutUTF8Flag":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;>;"
    new-instance v15, Ljava/util/LinkedHashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->entries:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 862
    .local v15, "origMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->entries:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->clear()V

    .line 863
    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 864
    .local v4, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 865
    .local v17, "ze":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;

    .line 866
    .local v11, "offsetEntry":Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;
    invoke-static {v11}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;)J

    move-result-wide v12

    .line 867
    .local v12, "offset":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    move-object/from16 v18, v0

    const-wide/16 v20, 0x1a

    add-long v20, v20, v12

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->SHORT_BUF:[B

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 869
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->SHORT_BUF:[B

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([B)I

    move-result v6

    .line 870
    .local v6, "fileNameLen":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->SHORT_BUF:[B

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->SHORT_BUF:[B

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([B)I

    move-result v5

    .line 872
    .local v5, "extraFieldLen":I
    move v8, v6

    .line 873
    .local v8, "lenToSkip":I
    :goto_1
    if-lez v8, :cond_1

    .line 874
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v16

    .line 875
    .local v16, "skipped":I
    if-gtz v16, :cond_0

    .line 876
    new-instance v18, Ljava/io/IOException;

    const-string v19, "failed to skip file name in local file header"

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 879
    :cond_0
    sub-int v8, v8, v16

    .line 880
    goto :goto_1

    .line 881
    .end local v16    # "skipped":I
    :cond_1
    new-array v9, v5, [B

    .line 882
    .local v9, "localExtraData":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 883
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtra([B)V

    .line 884
    const-wide/16 v18, 0x1a

    add-long v18, v18, v12

    const-wide/16 v20, 0x2

    add-long v18, v18, v20

    const-wide/16 v20, 0x2

    add-long v18, v18, v20

    int-to-long v0, v6

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    int-to-long v0, v5

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    invoke-static {v11, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->access$002(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;J)J

    .line 887
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 888
    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v14

    .line 889
    .local v14, "orig":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;

    .line 890
    .local v10, "nc":Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;
    invoke-static {v10}, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;->access$400(Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;)[B

    move-result-object v18

    invoke-static {v10}, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;->access$500(Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;)[B

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->setNameAndCommentFromExtraFields(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;[B[B)V

    .line 892
    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 893
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->nameMap:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->nameMap:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    .end local v10    # "nc":Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;
    .end local v14    # "orig":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->entries:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 899
    .end local v4    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;>;"
    .end local v5    # "extraFieldLen":I
    .end local v6    # "fileNameLen":I
    .end local v8    # "lenToSkip":I
    .end local v9    # "localExtraData":[B
    .end local v11    # "offsetEntry":Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;
    .end local v12    # "offset":J
    .end local v17    # "ze":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    :cond_3
    return-void
.end method

.method private setSizesAndOffsetFromZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;I)V
    .locals 10
    .param p1, "ze"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .param p2, "offset"    # Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;
    .param p3, "diskStart"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide v8, 0xffffffffL

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 570
    sget-object v6, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-virtual {p1, v6}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;

    .line 573
    .local v3, "z64":Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;
    if-eqz v3, :cond_2

    .line 574
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    move v2, v4

    .line 575
    .local v2, "hasUncompressedSize":Z
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    move v0, v4

    .line 576
    .local v0, "hasCompressedSize":Z
    :goto_1
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;)J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    move v1, v4

    .line 578
    .local v1, "hasRelativeHeaderOffset":Z
    :goto_2
    const v6, 0xffff

    if-ne p3, v6, :cond_6

    :goto_3
    invoke-virtual {v3, v2, v0, v1, v4}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->reparseCentralDirectoryData(ZZZZ)V

    .line 583
    if-eqz v2, :cond_7

    .line 584
    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->getSize()Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getLongValue()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setSize(J)V

    .line 589
    :cond_0
    :goto_4
    if-eqz v0, :cond_8

    .line 590
    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->getCompressedSize()Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getLongValue()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setCompressedSize(J)V

    .line 595
    :cond_1
    :goto_5
    if-eqz v1, :cond_2

    .line 596
    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->getRelativeHeaderOffset()Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getLongValue()J

    move-result-wide v4

    invoke-static {p2, v4, v5}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->access$202(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;J)J

    .line 600
    .end local v0    # "hasCompressedSize":Z
    .end local v1    # "hasRelativeHeaderOffset":Z
    .end local v2    # "hasUncompressedSize":Z
    :cond_2
    return-void

    :cond_3
    move v2, v5

    .line 574
    goto :goto_0

    .restart local v2    # "hasUncompressedSize":Z
    :cond_4
    move v0, v5

    .line 575
    goto :goto_1

    .restart local v0    # "hasCompressedSize":Z
    :cond_5
    move v1, v5

    .line 576
    goto :goto_2

    .restart local v1    # "hasRelativeHeaderOffset":Z
    :cond_6
    move v4, v5

    .line 578
    goto :goto_3

    .line 585
    :cond_7
    if-eqz v0, :cond_0

    .line 586
    new-instance v4, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>(J)V

    invoke-virtual {v3, v4}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->setSize(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    goto :goto_4

    .line 591
    :cond_8
    if-eqz v2, :cond_1

    .line 592
    new-instance v4, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>(J)V

    invoke-virtual {v3, v4}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->setCompressedSize(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    goto :goto_5
.end method

.method private skipBytes(I)V
    .locals 4
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 821
    const/4 v1, 0x0

    .line 822
    .local v1, "totalSkipped":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 823
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    sub-int v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v0

    .line 824
    .local v0, "skippedNow":I
    if-gtz v0, :cond_0

    .line 825
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 827
    :cond_0
    add-int/2addr v1, v0

    .line 828
    goto :goto_0

    .line 829
    .end local v0    # "skippedNow":I
    :cond_1
    return-void
.end method

.method private startsWithLocalFileHeader()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 906
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 907
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->WORD_BUF:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 908
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->WORD_BUF:[B

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->LFH_SIG:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method private tryToLocateSignature(JJ[B)Z
    .locals 11
    .param p1, "minDistanceFromEnd"    # J
    .param p3, "maxDistanceFromEnd"    # J
    .param p5, "sig"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    .line 784
    const/4 v1, 0x0

    .line 785
    .local v1, "found":Z
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    sub-long v2, v6, p1

    .line 786
    .local v2, "off":J
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    sub-long/2addr v6, p3

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 788
    .local v4, "stopSearching":J
    cmp-long v6, v2, v8

    if-ltz v6, :cond_0

    .line 789
    :goto_0
    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    .line 790
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v6, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 791
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 792
    .local v0, "curr":I
    const/4 v6, -0x1

    if-ne v0, v6, :cond_2

    .line 810
    .end local v0    # "curr":I
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 811
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v6, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 813
    :cond_1
    return v1

    .line 795
    .restart local v0    # "curr":I
    :cond_2
    const/4 v6, 0x0

    aget-byte v6, p5, v6

    if-ne v0, v6, :cond_3

    .line 796
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 797
    const/4 v6, 0x1

    aget-byte v6, p5, v6

    if-ne v0, v6, :cond_3

    .line 798
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 799
    const/4 v6, 0x2

    aget-byte v6, p5, v6

    if-ne v0, v6, :cond_3

    .line 800
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 801
    const/4 v6, 0x3

    aget-byte v6, p5, v6

    if-ne v0, v6, :cond_3

    .line 802
    const/4 v1, 0x1

    .line 803
    goto :goto_1

    .line 789
    :cond_3
    const-wide/16 v6, 0x1

    sub-long/2addr v2, v6

    goto :goto_0
.end method


# virtual methods
.method public canReadEntryData(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z
    .locals 1
    .param p1, "ze"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .prologue
    .line 315
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->canHandleEntryData(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->closed:Z

    .line 249
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 250
    return-void
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 394
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->closed:Z

    if-nez v0, :cond_0

    .line 395
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cleaning up unclosed ZipFile for archive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archiveName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 402
    return-void

    .line 400
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getEntries()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->entries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getEntriesInPhysicalOrder()Ljava/util/Enumeration;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 290
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->entries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 292
    .local v0, "allEntries":[Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->OFFSET_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 293
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public getEntry(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 304
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->nameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    return-object v0
.end method

.method public getInputStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/io/InputStream;
    .locals 8
    .param p1, "ze"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    .line 328
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->entries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;

    .line 329
    .local v7, "offsetEntry":Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;
    if-nez v7, :cond_0

    .line 330
    const/4 v0, 0x0

    .line 342
    :goto_0
    :sswitch_0
    return-object v0

    .line 332
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->checkRequestedFeatures(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    .line 333
    invoke-static {v7}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->access$000(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;)J

    move-result-wide v2

    .line 334
    .local v2, "start":J
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipFile;JJ)V

    .line 336
    .local v0, "bis":Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 350
    new-instance v1, Ljava/util/zip/ZipException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found unsupported compression method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 340
    :sswitch_1
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->addDummy()V

    .line 341
    new-instance v6, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v6, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 342
    .local v6, "inflater":Ljava/util/zip/Inflater;
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipFile$1;

    invoke-direct {v1, p0, v0, v6, v6}, Lorg/apache/commons/compress/archivers/zip/ZipFile$1;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipFile;Ljava/io/InputStream;Ljava/util/zip/Inflater;Ljava/util/zip/Inflater;)V

    move-object v0, v1

    goto :goto_0

    .line 336
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public getUnixSymlink(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/lang/String;
    .locals 3
    .param p1, "entry"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 370
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->isUnixSymlink()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 371
    const/4 v0, 0x0

    .line 373
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->getInputStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 374
    invoke-static {v0}, Lorg/apache/commons/compress/utils/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 375
    .local v1, "symlinkBytes":[B
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-interface {v2, v1}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->decode([B)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 377
    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 382
    .end local v0    # "in":Ljava/io/InputStream;
    .end local v1    # "symlinkBytes":[B
    :cond_0
    :goto_0
    return-object v2

    .line 377
    .restart local v0    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_1

    .line 378
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v2

    .line 382
    .end local v0    # "in":Ljava/io/InputStream;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
