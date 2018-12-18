.class public Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;
.super Lorg/apache/commons/compress/archivers/ArchiveOutputStream;
.source "ZipArchiveOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$1;,
        Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;,
        Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;
    }
.end annotation


# static fields
.field static final BUFFER_SIZE:I = 0x200

.field static final CFH_SIG:[B

.field static final DD_SIG:[B

.field public static final DEFAULT_COMPRESSION:I = -0x1

.field static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF8"

.field public static final DEFLATED:I = 0x8

.field private static final DEFLATER_BLOCK_SIZE:I = 0x2000

.field public static final EFS_FLAG:I = 0x800
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final EMPTY:[B

.field static final EOCD_SIG:[B

.field static final LFH_SIG:[B

.field private static final LZERO:[B

.field private static final ONE:[B

.field public static final STORED:I

.field private static final ZERO:[B

.field static final ZIP64_EOCD_LOC_SIG:[B

.field static final ZIP64_EOCD_SIG:[B


# instance fields
.field private final buf:[B

.field private cdLength:J

.field private cdOffset:J

.field private comment:Ljava/lang/String;

.field private final crc:Ljava/util/zip/CRC32;

.field private createUnicodeExtraFields:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;

.field protected final def:Ljava/util/zip/Deflater;

.field private encoding:Ljava/lang/String;

.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            ">;"
        }
    .end annotation
.end field

.field private entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

.field private fallbackToUTF8:Z

.field protected finished:Z

.field private hasCompressionLevelChanged:Z

.field private hasUsedZip64:Z

.field private level:I

.field private method:I

.field private final offsets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final out:Ljava/io/OutputStream;

.field private final raf:Ljava/io/RandomAccessFile;

.field private useUTF8Flag:Z

.field private written:J

.field private zip64Mode:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

.field private zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 118
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->EMPTY:[B

    .line 175
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->ZERO:[B

    .line 180
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->LZERO:[B

    .line 832
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;->LFH_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->LFH_SIG:[B

    .line 836
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;->DD_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->DD_SIG:[B

    .line 840
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;->CFH_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->CFH_SIG:[B

    .line 844
    const-wide/32 v0, 0x6054b50

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->EOCD_SIG:[B

    .line 848
    const-wide/32 v0, 0x6064b50

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->ZIP64_EOCD_SIG:[B

    .line 852
    const-wide/32 v0, 0x7064b50

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->ZIP64_EOCD_LOC_SIG:[B

    .line 1195
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->ONE:[B

    return-void

    .line 175
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data

    .line 180
    nop

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 10
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 265
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;-><init>()V

    .line 79
    iput-boolean v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->finished:Z

    .line 128
    const-string v4, ""

    iput-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->comment:Ljava/lang/String;

    .line 133
    const/4 v4, -0x1

    iput v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->level:I

    .line 139
    iput-boolean v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasCompressionLevelChanged:Z

    .line 144
    const/16 v4, 0x8

    iput v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->method:I

    .line 149
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entries:Ljava/util/List;

    .line 155
    new-instance v4, Ljava/util/zip/CRC32;

    invoke-direct {v4}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->crc:Ljava/util/zip/CRC32;

    .line 160
    iput-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 165
    iput-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdOffset:J

    .line 170
    iput-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdLength:J

    .line 185
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->offsets:Ljava/util/Map;

    .line 195
    const-string v4, "UTF8"

    iput-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->encoding:Ljava/lang/String;

    .line 203
    const-string v4, "UTF8"

    invoke-static {v4}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 210
    new-instance v4, Ljava/util/zip/Deflater;

    iget v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->level:I

    invoke-direct {v4, v5, v7}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->def:Ljava/util/zip/Deflater;

    .line 216
    const/16 v4, 0x200

    new-array v4, v4, [B

    iput-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->buf:[B

    .line 229
    iput-boolean v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->useUTF8Flag:Z

    .line 234
    iput-boolean v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->fallbackToUTF8:Z

    .line 239
    sget-object v4, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;->NEVER:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    iput-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->createUnicodeExtraFields:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    .line 246
    iput-boolean v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasUsedZip64:Z

    .line 248
    sget-object v4, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->AsNeeded:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    iput-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    .line 266
    const/4 v3, 0x0

    .line 267
    .local v3, "o":Ljava/io/OutputStream;
    const/4 v0, 0x0

    .line 269
    .local v0, "_raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v1, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .end local v0    # "_raf":Ljava/io/RandomAccessFile;
    .local v1, "_raf":Ljava/io/RandomAccessFile;
    const-wide/16 v4, 0x0

    :try_start_1
    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v0, v1

    .line 282
    .end local v1    # "_raf":Ljava/io/RandomAccessFile;
    .restart local v0    # "_raf":Ljava/io/RandomAccessFile;
    :goto_0
    iput-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->out:Ljava/io/OutputStream;

    .line 283
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    .line 284
    return-void

    .line 271
    :catch_0
    move-exception v2

    .line 272
    .local v2, "e":Ljava/io/IOException;
    :goto_1
    if-eqz v0, :cond_0

    .line 274
    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 278
    :goto_2
    const/4 v0, 0x0

    .line 280
    :cond_0
    new-instance v3, Ljava/io/FileOutputStream;

    .end local v3    # "o":Ljava/io/OutputStream;
    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .restart local v3    # "o":Ljava/io/OutputStream;
    goto :goto_0

    .line 275
    :catch_1
    move-exception v4

    goto :goto_2

    .line 271
    .end local v0    # "_raf":Ljava/io/RandomAccessFile;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "_raf":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v2

    move-object v0, v1

    .end local v1    # "_raf":Ljava/io/RandomAccessFile;
    .restart local v0    # "_raf":Ljava/io/RandomAccessFile;
    goto :goto_1
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 254
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;-><init>()V

    .line 79
    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->finished:Z

    .line 128
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->comment:Ljava/lang/String;

    .line 133
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->level:I

    .line 139
    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasCompressionLevelChanged:Z

    .line 144
    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->method:I

    .line 149
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entries:Ljava/util/List;

    .line 155
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->crc:Ljava/util/zip/CRC32;

    .line 160
    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 165
    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdOffset:J

    .line 170
    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdLength:J

    .line 185
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->offsets:Ljava/util/Map;

    .line 195
    const-string v0, "UTF8"

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->encoding:Ljava/lang/String;

    .line 203
    const-string v0, "UTF8"

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 210
    new-instance v0, Ljava/util/zip/Deflater;

    iget v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->level:I

    invoke-direct {v0, v1, v3}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->def:Ljava/util/zip/Deflater;

    .line 216
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->buf:[B

    .line 229
    iput-boolean v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->useUTF8Flag:Z

    .line 234
    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->fallbackToUTF8:Z

    .line 239
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;->NEVER:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->createUnicodeExtraFields:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    .line 246
    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasUsedZip64:Z

    .line 248
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->AsNeeded:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    .line 255
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->out:Ljava/io/OutputStream;

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    .line 257
    return-void
.end method

.method private addUnicodeExtraFields(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;ZLjava/nio/ByteBuffer;)V
    .locals 9
    .param p1, "ze"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .param p2, "encodable"    # Z
    .param p3, "name"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 960
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->createUnicodeExtraFields:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    sget-object v4, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;->ALWAYS:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    if-eq v3, v4, :cond_0

    if-nez p2, :cond_1

    .line 962
    :cond_0
    new-instance v3, Lorg/apache/commons/compress/archivers/zip/UnicodePathExtraField;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v6

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/apache/commons/compress/archivers/zip/UnicodePathExtraField;-><init>(Ljava/lang/String;[BII)V

    invoke-virtual {p1, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->addExtraField(Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V

    .line 969
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getComment()Ljava/lang/String;

    move-result-object v0

    .line 970
    .local v0, "comm":Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 972
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-interface {v3, v0}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->canEncode(Ljava/lang/String;)Z

    move-result v2

    .line 974
    .local v2, "commentEncodable":Z
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->createUnicodeExtraFields:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    sget-object v4, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;->ALWAYS:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    if-eq v3, v4, :cond_2

    if-nez v2, :cond_3

    .line 976
    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->getEntryEncoding(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 977
    .local v1, "commentB":Ljava/nio/ByteBuffer;
    new-instance v3, Lorg/apache/commons/compress/archivers/zip/UnicodeCommentExtraField;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-direct {v3, v0, v4, v5, v6}, Lorg/apache/commons/compress/archivers/zip/UnicodeCommentExtraField;-><init>(Ljava/lang/String;[BII)V

    invoke-virtual {p1, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->addExtraField(Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V

    .line 985
    .end local v1    # "commentB":Ljava/nio/ByteBuffer;
    .end local v2    # "commentEncodable":Z
    :cond_3
    return-void
.end method

.method private deflateUntilInputIsNeeded()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1291
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1292
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->deflate()V

    goto :goto_0

    .line 1294
    :cond_0
    return-void
.end method

.method private flushDeflater()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 474
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 475
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    .line 476
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 477
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->deflate()V

    goto :goto_0

    .line 480
    :cond_0
    return-void
.end method

.method private getEffectiveZip64Mode(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Lorg/apache/commons/compress/archivers/zip/Zip64Mode;
    .locals 4
    .param p1, "ze"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .prologue
    .line 1397
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->AsNeeded:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1401
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    .line 1403
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->Never:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    goto :goto_0
.end method

.method private getEntryEncoding(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;
    .locals 3
    .param p1, "ze"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .prologue
    .line 1407
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->canEncode(Ljava/lang/String;)Z

    move-result v0

    .line 1408
    .local v0, "encodable":Z
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->fallbackToUTF8:Z

    if-eqz v1, :cond_0

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->UTF8_ZIP_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    goto :goto_0
.end method

.method private getName(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "ze"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1413
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->getEntryEncoding(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private getZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;
    .locals 4
    .param p1, "ze"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .prologue
    const/4 v2, 0x1

    .line 1353
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    if-eqz v1, :cond_0

    .line 1354
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasUsedZip64:Z

    if-nez v1, :cond_2

    move v1, v2

    :goto_0
    invoke-static {v3, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$502(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;Z)Z

    .line 1356
    :cond_0
    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasUsedZip64:Z

    .line 1357
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-virtual {p1, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;

    .line 1361
    .local v0, "z64":Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;
    if-nez v0, :cond_1

    .line 1368
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;

    .end local v0    # "z64":Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;
    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;-><init>()V

    .line 1372
    .restart local v0    # "z64":Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;
    :cond_1
    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->addAsFirstExtraField(Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V

    .line 1374
    return-object v0

    .line 1354
    .end local v0    # "z64":Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleSizesAndCrc(JJLorg/apache/commons/compress/archivers/zip/Zip64Mode;)Z
    .locals 7
    .param p1, "bytesWritten"    # J
    .param p3, "crc"    # J
    .param p5, "effectiveMode"    # Lorg/apache/commons/compress/archivers/zip/Zip64Mode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    const-wide v4, 0xffffffffL

    .line 491
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 496
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$300(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setSize(J)V

    .line 497
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setCompressedSize(J)V

    .line 498
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setCrc(J)V

    .line 500
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->reset()V

    .line 523
    :cond_0
    :goto_0
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->Always:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    if-eq p5, v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-ltz v1, :cond_5

    :cond_1
    const/4 v0, 0x1

    .line 526
    .local v0, "actuallyNeedsZip64":Z
    :goto_1
    if-eqz v0, :cond_6

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->Never:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    if-ne p5, v1, :cond_6

    .line 527
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;->getEntryTooBigMessage(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 501
    .end local v0    # "actuallyNeedsZip64":Z
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-nez v1, :cond_4

    .line 502
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCrc()J

    move-result-wide v2

    cmp-long v1, v2, p3

    if-eqz v1, :cond_3

    .line 503
    new-instance v1, Ljava/util/zip/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad CRC checksum for entry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCrc()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " instead of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 510
    :cond_3
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-eqz v1, :cond_0

    .line 511
    new-instance v1, Ljava/util/zip/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad size for entry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " instead of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 518
    :cond_4
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setSize(J)V

    .line 519
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setCompressedSize(J)V

    .line 520
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setCrc(J)V

    goto/16 :goto_0

    .line 523
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 530
    .restart local v0    # "actuallyNeedsZip64":Z
    :cond_6
    return v0
.end method

.method private handleZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;JZ)V
    .locals 8
    .param p1, "ze"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .param p2, "lfhOffset"    # J
    .param p4, "needsZip64Extra"    # Z

    .prologue
    const/4 v6, 0x0

    const-wide v4, 0xffffffffL

    .line 1135
    if-eqz p4, :cond_2

    .line 1136
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->getZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;

    move-result-object v0

    .line 1137
    .local v0, "z64":Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-ltz v1, :cond_3

    .line 1139
    :cond_0
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->setCompressedSize(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    .line 1140
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->setSize(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    .line 1146
    :goto_0
    cmp-long v1, p2, v4

    if-ltz v1, :cond_1

    .line 1147
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-direct {v1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->setRelativeHeaderOffset(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    .line 1149
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtra()V

    .line 1151
    .end local v0    # "z64":Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;
    :cond_2
    return-void

    .line 1143
    .restart local v0    # "z64":Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;
    :cond_3
    invoke-virtual {v0, v6}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->setCompressedSize(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    .line 1144
    invoke-virtual {v0, v6}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->setSize(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    goto :goto_0
.end method

.method private hasZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z
    .locals 1
    .param p1, "ze"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .prologue
    .line 1384
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private rewriteSizesAndCrc(Z)V
    .locals 10
    .param p1, "actuallyNeedsZip64"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x4

    .line 540
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    .line 542
    .local v0, "save":J
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$400(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 543
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCrc()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 544
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_2

    .line 545
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 546
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 552
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 554
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$400(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)J

    move-result-wide v4

    const-wide/16 v6, 0xc

    add-long/2addr v4, v6

    add-long/2addr v4, v8

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->getName(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    add-long/2addr v4, v8

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 558
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 559
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 561
    if-nez p1, :cond_1

    .line 564
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$400(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)J

    move-result-wide v4

    const-wide/16 v6, 0xa

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 565
    const/16 v2, 0xa

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 569
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v2

    sget-object v3, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->removeExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)V

    .line 571
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtra()V

    .line 575
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$500(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 576
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasUsedZip64:Z

    .line 580
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 581
    return-void

    .line 548
    :cond_2
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ZipLong;->ZIP64_MAGIC:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 549
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ZipLong;->ZIP64_MAGIC:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    goto/16 :goto_0
.end method

.method private setDefaults(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V
    .locals 4
    .param p1, "entry"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .prologue
    .line 637
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 638
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->method:I

    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setMethod(I)V

    .line 641
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getTime()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 642
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setTime(J)V

    .line 644
    :cond_1
    return-void
.end method

.method private shouldAddZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/Zip64Mode;)Z
    .locals 4
    .param p1, "entry"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .param p2, "mode"    # Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    .prologue
    const-wide v2, 0xffffffffL

    .line 691
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->Always:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    if-eq p2, v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->Never:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    if-eq p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private validateSizeInformation(Lorg/apache/commons/compress/archivers/zip/Zip64Mode;)V
    .locals 6
    .param p1, "effectiveMode"    # Lorg/apache/commons/compress/archivers/zip/Zip64Mode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    const-wide v4, 0xffffffffL

    const-wide/16 v2, -0x1

    .line 655
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_2

    .line 656
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 657
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "uncompressed size is required for STORED method when not writing to a file"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 661
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCrc()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 662
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "crc checksum is required for STORED method when not writing to a file"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 665
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setCompressedSize(J)V

    .line 668
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_4

    :cond_3
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->Never:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    if-ne p1, v0, :cond_4

    .line 671
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;->getEntryTooBigMessage(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 674
    :cond_4
    return-void
.end method

.method private writeDeflated([BII)V
    .locals 7
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x2000

    .line 775
    if-lez p3, :cond_0

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v3}, Ljava/util/zip/Deflater;->finished()Z

    move-result v3

    if-nez v3, :cond_0

    .line 776
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    int-to-long v4, p3

    invoke-static {v3, v4, v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$314(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;J)J

    .line 777
    if-gt p3, v6, :cond_1

    .line 778
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v3, p1, p2, p3}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 779
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->deflateUntilInputIsNeeded()V

    .line 794
    :cond_0
    :goto_0
    return-void

    .line 781
    :cond_1
    div-int/lit16 v1, p3, 0x2000

    .line 782
    .local v1, "fullblocks":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 783
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->def:Ljava/util/zip/Deflater;

    mul-int/lit16 v4, v2, 0x2000

    add-int/2addr v4, p2

    invoke-virtual {v3, p1, v4, v6}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 785
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->deflateUntilInputIsNeeded()V

    .line 782
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 787
    :cond_2
    mul-int/lit16 v0, v1, 0x2000

    .line 788
    .local v0, "done":I
    if-ge v0, p3, :cond_0

    .line 789
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->def:Ljava/util/zip/Deflater;

    add-int v4, p2, v0

    sub-int v5, p3, v0

    invoke-virtual {v3, p1, v4, v5}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 790
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->deflateUntilInputIsNeeded()V

    goto :goto_0
.end method

.method private writeVersionNeededToExtractAndGeneralPurposeBits(IZZ)V
    .locals 4
    .param p1, "zipMethod"    # I
    .param p2, "utfFallback"    # Z
    .param p3, "zip64"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1305
    const/16 v1, 0xa

    .line 1306
    .local v1, "versionNeededToExtract":I
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;-><init>()V

    .line 1307
    .local v0, "b":Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;
    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->useUTF8Flag:Z

    if-nez v2, :cond_0

    if-eqz p2, :cond_3

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->useUTF8ForNames(Z)V

    .line 1308
    const/16 v2, 0x8

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-nez v2, :cond_1

    .line 1311
    const/16 v1, 0x14

    .line 1312
    invoke-virtual {v0, v3}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->useDataDescriptor(Z)V

    .line 1314
    :cond_1
    if-eqz p3, :cond_2

    .line 1315
    const/16 v1, 0x2d

    .line 1320
    :cond_2
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 1322
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->encode()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 1323
    return-void

    .line 1307
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public canWriteEntryData(Lorg/apache/commons/compress/archivers/ArchiveEntry;)Z
    .locals 1
    .param p1, "ae"    # Lorg/apache/commons/compress/archivers/ArchiveEntry;

    .prologue
    .line 743
    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    if-eqz v0, :cond_0

    .line 744
    check-cast p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .end local p1    # "ae":Lorg/apache/commons/compress/archivers/ArchiveEntry;
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->canHandleEntryData(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v0

    .line 746
    :goto_0
    return v0

    .restart local p1    # "ae":Lorg/apache/commons/compress/archivers/ArchiveEntry;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 807
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->finished:Z

    if-nez v0, :cond_0

    .line 808
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->finish()V

    .line 810
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->destroy()V

    .line 811
    return-void
.end method

.method public closeArchiveEntry()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 440
    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->finished:Z

    if-eqz v1, :cond_0

    .line 441
    new-instance v1, Ljava/io/IOException;

    const-string v7, "Stream has already been finished"

    invoke-direct {v1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 444
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    if-nez v1, :cond_1

    .line 445
    new-instance v1, Ljava/io/IOException;

    const-string v7, "No current entry to close"

    invoke-direct {v1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 448
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$000(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 449
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->EMPTY:[B

    invoke-virtual {p0, v1, v7, v7}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->write([BII)V

    .line 452
    :cond_2
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->flushDeflater()V

    .line 454
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->getEffectiveZip64Mode(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    move-result-object v6

    .line 455
    .local v6, "effectiveMode":Lorg/apache/commons/compress/archivers/zip/Zip64Mode;
    iget-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)J

    move-result-wide v10

    sub-long v2, v8, v10

    .line 456
    .local v2, "bytesWritten":J
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    .line 457
    .local v4, "realCrc":J
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->reset()V

    move-object v1, p0

    .line 459
    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->handleSizesAndCrc(JJLorg/apache/commons/compress/archivers/zip/Zip64Mode;)Z

    move-result v0

    .line 462
    .local v0, "actuallyNeedsZip64":Z
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_3

    .line 463
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->rewriteSizesAndCrc(Z)V

    .line 466
    :cond_3
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeDataDescriptor(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    .line 467
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 468
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
    .line 1339
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->finished:Z

    if-eqz v0, :cond_0

    .line 1340
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream has already been finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1342
    :cond_0
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method protected final deflate()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 859
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->def:Ljava/util/zip/Deflater;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->buf:[B

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->buf:[B

    array-length v3, v3

    invoke-virtual {v1, v2, v4, v3}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v0

    .line 860
    .local v0, "len":I
    if-lez v0, :cond_0

    .line 861
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->buf:[B

    invoke-virtual {p0, v1, v4, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([BII)V

    .line 862
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 864
    :cond_0
    return-void
.end method

.method destroy()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1424
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 1425
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 1427
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 1428
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 1430
    :cond_1
    return-void
.end method

.method public finish()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 410
    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->finished:Z

    if-eqz v2, :cond_0

    .line 411
    new-instance v2, Ljava/io/IOException;

    const-string v3, "This archive has already been finished"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 414
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    if-eqz v2, :cond_1

    .line 415
    new-instance v2, Ljava/io/IOException;

    const-string v3, "This archive contains unclosed entries."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 418
    :cond_1
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdOffset:J

    .line 419
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 420
    .local v1, "ze":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeCentralFileHeader(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    goto :goto_0

    .line 422
    .end local v1    # "ze":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    :cond_2
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdOffset:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdLength:J

    .line 423
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeZip64CentralDirectory()V

    .line 424
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeCentralDirectoryEnd()V

    .line 425
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->offsets:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 426
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 427
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->end()V

    .line 428
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->finished:Z

    .line 429
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
    .line 821
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 822
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 824
    :cond_0
    return-void
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public isSeekable()Z
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V
    .locals 8
    .param p1, "archiveEntry"    # Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 592
    iget-boolean v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->finished:Z

    if-eqz v3, :cond_0

    .line 593
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Stream has already been finished"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 596
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    if-eqz v3, :cond_1

    .line 597
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->closeArchiveEntry()V

    .line 600
    :cond_1
    new-instance v3, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    check-cast p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .end local p1    # "archiveEntry":Lorg/apache/commons/compress/archivers/ArchiveEntry;
    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$1;)V

    iput-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 601
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entries:Ljava/util/List;

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->setDefaults(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    .line 605
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->getEffectiveZip64Mode(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    move-result-object v0

    .line 606
    .local v0, "effectiveMode":Lorg/apache/commons/compress/archivers/zip/Zip64Mode;
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->validateSizeInformation(Lorg/apache/commons/compress/archivers/zip/Zip64Mode;)V

    .line 608
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->shouldAddZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/Zip64Mode;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 610
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->getZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;

    move-result-object v2

    .line 614
    .local v2, "z64":Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->ZERO:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 615
    .local v1, "size":Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    .line 618
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .end local v1    # "size":Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>(J)V

    .line 620
    .restart local v1    # "size":Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;
    :cond_2
    invoke-virtual {v2, v1}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->setSize(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    .line 621
    invoke-virtual {v2, v1}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->setCompressedSize(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    .line 622
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtra()V

    .line 625
    .end local v1    # "size":Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;
    .end local v2    # "z64":Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;
    :cond_3
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_4

    iget-boolean v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasCompressionLevelChanged:Z

    if-eqz v3, :cond_4

    .line 626
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->def:Ljava/util/zip/Deflater;

    iget v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->level:I

    invoke-virtual {v3, v4}, Ljava/util/zip/Deflater;->setLevel(I)V

    .line 627
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasCompressionLevelChanged:Z

    .line 629
    :cond_4
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeLocalFileHeader(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    .line 630
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 703
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->comment:Ljava/lang/String;

    .line 704
    return-void
.end method

.method public setCreateUnicodeExtraFields(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;)V
    .locals 0
    .param p1, "b"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    .prologue
    .line 341
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->createUnicodeExtraFields:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    .line 342
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 309
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->encoding:Ljava/lang/String;

    .line 310
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 311
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->useUTF8Flag:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->isUTF8(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->useUTF8Flag:Z

    .line 314
    :cond_0
    return-void
.end method

.method public setFallbackToUTF8(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 351
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->fallbackToUTF8:Z

    .line 352
    return-void
.end method

.method public setLevel(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 715
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x9

    if-le p1, v0, :cond_1

    .line 717
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid compression level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 720
    :cond_1
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->level:I

    if-eq v0, p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasCompressionLevelChanged:Z

    .line 721
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->level:I

    .line 722
    return-void

    .line 720
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMethod(I)V
    .locals 0
    .param p1, "method"    # I

    .prologue
    .line 731
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->method:I

    .line 732
    return-void
.end method

.method public setUseLanguageEncodingFlag(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 332
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->encoding:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->isUTF8(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->useUTF8Flag:Z

    .line 333
    return-void

    .line 332
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUseZip64(Lorg/apache/commons/compress/archivers/zip/Zip64Mode;)V
    .locals 0
    .param p1, "mode"    # Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    .prologue
    .line 399
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    .line 400
    return-void
.end method

.method public write([BII)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 758
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->checkRequestedFeatures(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    .line 759
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$002(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;Z)Z

    .line 760
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 761
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeDeflated([BII)V

    .line 766
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 767
    invoke-virtual {p0, p3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->count(I)V

    .line 768
    return-void

    .line 763
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([BII)V

    .line 764
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    goto :goto_0
.end method

.method protected writeCentralDirectoryEnd()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v8, 0xffff

    const-wide v6, 0xffffffffL

    .line 1161
    sget-object v3, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->EOCD_SIG:[B

    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 1164
    sget-object v3, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->ZERO:[B

    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 1165
    sget-object v3, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->ZERO:[B

    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 1168
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 1169
    .local v2, "numberOfEntries":I
    if-le v2, v8, :cond_0

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    sget-object v4, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->Never:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    if-ne v3, v4, :cond_0

    .line 1171
    new-instance v3, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;

    const-string v4, "archive contains more than 65535 entries."

    invoke-direct {v3, v4}, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1174
    :cond_0
    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdOffset:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    sget-object v4, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->Never:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    if-ne v3, v4, :cond_1

    .line 1175
    new-instance v3, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;

    const-string v4, "archive\'s size exceeds the limit of 4GByte."

    invoke-direct {v3, v4}, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1179
    :cond_1
    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v1

    .line 1181
    .local v1, "num":[B
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 1182
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 1185
    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdLength:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 1186
    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdOffset:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 1189
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->comment:Ljava/lang/String;

    invoke-interface {v3, v4}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1190
    .local v0, "data":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 1191
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0, v3, v4, v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([BII)V

    .line 1193
    return-void
.end method

.method protected writeCentralFileHeader(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V
    .locals 14
    .param p1, "ze"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1019
    sget-object v9, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->CFH_SIG:[B

    invoke-virtual {p0, v9}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 1020
    iget-wide v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    const-wide/16 v12, 0x4

    add-long/2addr v10, v12

    iput-wide v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 1022
    iget-object v9, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->offsets:Ljava/util/Map;

    invoke-interface {v9, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1023
    .local v4, "lfhOffset":J
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v10

    const-wide v12, 0xffffffffL

    cmp-long v9, v10, v12

    if-gez v9, :cond_0

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v10

    const-wide v12, 0xffffffffL

    cmp-long v9, v10, v12

    if-gez v9, :cond_0

    const-wide v10, 0xffffffffL

    cmp-long v9, v4, v10

    if-ltz v9, :cond_1

    :cond_0
    const/4 v7, 0x1

    .line 1028
    .local v7, "needsZip64Extra":Z
    :goto_0
    if-eqz v7, :cond_2

    iget-object v9, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    sget-object v10, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->Never:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    if-ne v9, v10, :cond_2

    .line 1032
    new-instance v9, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;

    const-string v10, "archive\'s size exceeds the limit of 4GByte."

    invoke-direct {v9, v10}, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1023
    .end local v7    # "needsZip64Extra":Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 1036
    .restart local v7    # "needsZip64Extra":Z
    :cond_2
    invoke-direct {p0, p1, v4, v5, v7}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->handleZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;JZ)V

    .line 1040
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getPlatform()I

    move-result v9

    shl-int/lit8 v10, v9, 0x8

    iget-boolean v9, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasUsedZip64:Z

    if-nez v9, :cond_5

    const/16 v9, 0x14

    :goto_1
    or-int/2addr v9, v10

    invoke-static {v9}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 1043
    iget-wide v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    const-wide/16 v12, 0x2

    add-long/2addr v10, v12

    iput-wide v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 1045
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v8

    .line 1046
    .local v8, "zipMethod":I
    iget-object v9, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->canEncode(Ljava/lang/String;)Z

    move-result v2

    .line 1047
    .local v2, "encodable":Z
    if-nez v2, :cond_6

    iget-boolean v9, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->fallbackToUTF8:Z

    if-eqz v9, :cond_6

    const/4 v9, 0x1

    :goto_2
    invoke-direct {p0, v8, v9, v7}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeVersionNeededToExtractAndGeneralPurposeBits(IZZ)V

    .line 1051
    iget-wide v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    const-wide/16 v12, 0x4

    add-long/2addr v10, v12

    iput-wide v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 1054
    invoke-static {v8}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 1055
    iget-wide v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    const-wide/16 v12, 0x2

    add-long/2addr v10, v12

    iput-wide v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 1058
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->toDosTime(J)[B

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 1059
    iget-wide v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    const-wide/16 v12, 0x4

    add-long/2addr v10, v12

    iput-wide v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 1064
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCrc()J

    move-result-wide v10

    invoke-static {v10, v11}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 1065
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v10

    const-wide v12, 0xffffffffL

    cmp-long v9, v10, v12

    if-gez v9, :cond_3

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v10

    const-wide v12, 0xffffffffL

    cmp-long v9, v10, v12

    if-ltz v9, :cond_7

    .line 1067
    :cond_3
    sget-object v9, Lorg/apache/commons/compress/archivers/zip/ZipLong;->ZIP64_MAGIC:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v9}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 1068
    sget-object v9, Lorg/apache/commons/compress/archivers/zip/ZipLong;->ZIP64_MAGIC:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v9}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 1074
    :goto_3
    iget-wide v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    const-wide/16 v12, 0xc

    add-long/2addr v10, v12

    iput-wide v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 1077
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->getName(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 1079
    .local v6, "name":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    invoke-static {v9}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 1080
    iget-wide v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    const-wide/16 v12, 0x2

    add-long/2addr v10, v12

    iput-wide v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 1083
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCentralDirectoryExtra()[B

    move-result-object v3

    .line 1084
    .local v3, "extra":[B
    array-length v9, v3

    invoke-static {v9}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 1085
    iget-wide v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    const-wide/16 v12, 0x2

    add-long/2addr v10, v12

    iput-wide v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 1088
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getComment()Ljava/lang/String;

    move-result-object v0

    .line 1089
    .local v0, "comm":Ljava/lang/String;
    if-nez v0, :cond_4

    .line 1090
    const-string v0, ""

    .line 1093
    :cond_4
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->getEntryEncoding(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object v9

    invoke-interface {v9, v0}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1095
    .local v1, "commentB":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    invoke-static {v9}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 1096
    iget-wide v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    const-wide/16 v12, 0x2

    add-long/2addr v10, v12

    iput-wide v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 1099
    sget-object v9, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->ZERO:[B

    invoke-virtual {p0, v9}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 1100
    iget-wide v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    const-wide/16 v12, 0x2

    add-long/2addr v10, v12

    iput-wide v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 1103
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getInternalAttributes()I

    move-result v9

    invoke-static {v9}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 1104
    iget-wide v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    const-wide/16 v12, 0x2

    add-long/2addr v10, v12

    iput-wide v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 1107
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExternalAttributes()J

    move-result-wide v10

    invoke-static {v10, v11}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 1108
    iget-wide v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    const-wide/16 v12, 0x4

    add-long/2addr v10, v12

    iput-wide v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 1111
    const-wide v10, 0xffffffffL

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    invoke-static {v10, v11}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 1112
    iget-wide v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    const-wide/16 v12, 0x4

    add-long/2addr v10, v12

    iput-wide v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 1115
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v10

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v11

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0, v9, v10, v11}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([BII)V

    .line 1117
    iget-wide v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    int-to-long v12, v9

    add-long/2addr v10, v12

    iput-wide v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 1120
    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 1121
    iget-wide v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    array-length v9, v3

    int-to-long v12, v9

    add-long/2addr v10, v12

    iput-wide v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 1124
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v10

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v11

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0, v9, v10, v11}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([BII)V

    .line 1126
    iget-wide v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    int-to-long v12, v9

    add-long/2addr v10, v12

    iput-wide v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 1127
    return-void

    .line 1040
    .end local v0    # "comm":Ljava/lang/String;
    .end local v1    # "commentB":Ljava/nio/ByteBuffer;
    .end local v2    # "encodable":Z
    .end local v3    # "extra":[B
    .end local v6    # "name":Ljava/nio/ByteBuffer;
    .end local v8    # "zipMethod":I
    :cond_5
    const/16 v9, 0x2d

    goto/16 :goto_1

    .line 1047
    .restart local v2    # "encodable":Z
    .restart local v8    # "zipMethod":I
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 1070
    :cond_7
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v10

    invoke-static {v10, v11}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 1071
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v10

    invoke-static {v10, v11}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    goto/16 :goto_3
.end method

.method protected writeDataDescriptor(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V
    .locals 6
    .param p1, "ze"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 993
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_1

    .line 1008
    :cond_0
    :goto_0
    return-void

    .line 996
    :cond_1
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->DD_SIG:[B

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 997
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCrc()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 998
    const/4 v0, 0x4

    .line 999
    .local v0, "sizeFieldSize":I
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1000
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 1001
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 1007
    :goto_1
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x8

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    goto :goto_0

    .line 1003
    :cond_2
    const/16 v0, 0x8

    .line 1004
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 1005
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    goto :goto_1
.end method

.method protected writeLocalFileHeader(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V
    .locals 12
    .param p1, "ze"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x4

    const-wide/16 v10, 0x2

    .line 873
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->canEncode(Ljava/lang/String;)Z

    move-result v0

    .line 874
    .local v0, "encodable":Z
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->getName(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 876
    .local v2, "name":Ljava/nio/ByteBuffer;
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->createUnicodeExtraFields:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    sget-object v6, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;->NEVER:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    if-eq v5, v6, :cond_0

    .line 877
    invoke-direct {p0, p1, v0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->addUnicodeExtraFields(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;ZLjava/nio/ByteBuffer;)V

    .line 880
    :cond_0
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->offsets:Ljava/util/Map;

    iget-wide v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    sget-object v5, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->LFH_SIG:[B

    invoke-virtual {p0, v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 883
    iget-wide v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    add-long/2addr v6, v8

    iput-wide v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 886
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v4

    .line 888
    .local v4, "zipMethod":I
    if-nez v0, :cond_2

    iget-boolean v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->fallbackToUTF8:Z

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeVersionNeededToExtractAndGeneralPurposeBits(IZZ)V

    .line 892
    iget-wide v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    add-long/2addr v6, v8

    iput-wide v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 895
    invoke-static {v4}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 896
    iget-wide v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    add-long/2addr v6, v10

    iput-wide v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 899
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->toDosTime(J)[B

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 900
    iget-wide v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    add-long/2addr v6, v8

    iput-wide v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 905
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    iget-wide v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    invoke-static {v5, v6, v7}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$402(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;J)J

    .line 906
    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz v5, :cond_4

    .line 907
    :cond_1
    sget-object v5, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->LZERO:[B

    invoke-virtual {p0, v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 908
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 912
    sget-object v5, Lorg/apache/commons/compress/archivers/zip/ZipLong;->ZIP64_MAGIC:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 913
    sget-object v5, Lorg/apache/commons/compress/archivers/zip/ZipLong;->ZIP64_MAGIC:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 928
    :goto_1
    iget-wide v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    const-wide/16 v8, 0xc

    add-long/2addr v6, v8

    iput-wide v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 932
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-static {v5}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 933
    iget-wide v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    add-long/2addr v6, v10

    iput-wide v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 936
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getLocalFileDataExtra()[B

    move-result-object v1

    .line 937
    .local v1, "extra":[B
    array-length v5, v1

    invoke-static {v5}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 938
    iget-wide v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    add-long/2addr v6, v10

    iput-wide v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 941
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v6

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0, v5, v6, v7}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([BII)V

    .line 943
    iget-wide v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 946
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 947
    iget-wide v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    array-length v5, v1

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 949
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    iget-wide v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    invoke-static {v5, v6, v7}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$202(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;J)J

    .line 950
    return-void

    .line 888
    .end local v1    # "extra":[B
    :cond_2
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 915
    :cond_3
    sget-object v5, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->LZERO:[B

    invoke-virtual {p0, v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 916
    sget-object v5, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->LZERO:[B

    invoke-virtual {p0, v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    goto :goto_1

    .line 919
    :cond_4
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCrc()J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 920
    sget-object v5, Lorg/apache/commons/compress/archivers/zip/ZipLong;->ZIP64_MAGIC:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    move-result-object v3

    .line 921
    .local v3, "size":[B
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 922
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v3

    .line 924
    :cond_5
    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 925
    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    goto/16 :goto_1
.end method

.method protected final writeOut([B)V
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1271
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([BII)V

    .line 1272
    return-void
.end method

.method protected final writeOut([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1283
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 1284
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 1288
    :goto_0
    return-void

    .line 1286
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method protected writeZip64CentralDirectory()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide v8, 0xffffffffL

    const/16 v6, 0x2d

    .line 1204
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    sget-object v4, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->Never:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    if-ne v1, v4, :cond_1

    .line 1263
    :cond_0
    :goto_0
    return-void

    .line 1208
    :cond_1
    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasUsedZip64:Z

    if-nez v1, :cond_3

    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdOffset:J

    cmp-long v1, v4, v8

    if-gez v1, :cond_2

    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdLength:J

    cmp-long v1, v4, v8

    if-gez v1, :cond_2

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const v4, 0xffff

    if-lt v1, v4, :cond_3

    .line 1212
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasUsedZip64:Z

    .line 1215
    :cond_3
    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasUsedZip64:Z

    if-eqz v1, :cond_0

    .line 1219
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 1221
    .local v2, "offset":J
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->ZIP64_EOCD_SIG:[B

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 1224
    const-wide/16 v4, 0x2c

    invoke-static {v4, v5}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 1236
    invoke-static {v6}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 1237
    invoke-static {v6}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 1240
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->LZERO:[B

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 1241
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->LZERO:[B

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 1244
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v4, v1

    invoke-static {v4, v5}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object v0

    .line 1245
    .local v0, "num":[B
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 1246
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 1249
    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdLength:J

    invoke-static {v4, v5}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 1250
    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdOffset:J

    invoke-static {v4, v5}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 1255
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->ZIP64_EOCD_LOC_SIG:[B

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 1258
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->LZERO:[B

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 1260
    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 1262
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->ONE:[B

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    goto/16 :goto_0
.end method
