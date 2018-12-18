.class public Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;
.super Lorg/apache/commons/compress/archivers/ArchiveOutputStream;
.source "ModdedZipArchiveOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$1;,
        Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;,
        Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$UnicodeExtraFieldPolicy;
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

.field protected cdLength:J

.field protected cdOffset:J

.field private comment:Ljava/lang/String;

.field private final crc:Ljava/util/zip/CRC32;

.field private createUnicodeExtraFields:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$UnicodeExtraFieldPolicy;

.field protected final def:Ljava/util/zip/Deflater;

.field private encoding:Ljava/lang/String;

.field protected final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

.field private fallbackToUTF8:Z

.field protected finished:Z

.field private hasCompressionLevelChanged:Z

.field private hasUsedZip64:Z

.field private level:I

.field private method:I

.field protected final offsets:Ljava/util/Map;
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

.field protected written:J

.field private zip64Mode:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

.field private zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 111
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->EMPTY:[B

    .line 168
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->ZERO:[B

    .line 173
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->LZERO:[B

    .line 902
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;->LFH_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->LFH_SIG:[B

    .line 906
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;->DD_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->DD_SIG:[B

    .line 910
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;->CFH_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->CFH_SIG:[B

    .line 914
    const-wide/32 v0, 0x6054b50

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->EOCD_SIG:[B

    .line 918
    const-wide/32 v0, 0x6064b50

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->ZIP64_EOCD_SIG:[B

    .line 922
    const-wide/32 v0, 0x7064b50

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->ZIP64_EOCD_LOC_SIG:[B

    .line 1282
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->ONE:[B

    return-void

    .line 168
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data

    .line 173
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

    .line 258
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;-><init>()V

    .line 72
    iput-boolean v6, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->finished:Z

    .line 121
    const-string v4, ""

    iput-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->comment:Ljava/lang/String;

    .line 126
    const/4 v4, -0x1

    iput v4, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->level:I

    .line 132
    iput-boolean v6, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->hasCompressionLevelChanged:Z

    .line 137
    const/16 v4, 0x8

    iput v4, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->method:I

    .line 142
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entries:Ljava/util/List;

    .line 148
    new-instance v4, Ljava/util/zip/CRC32;

    invoke-direct {v4}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->crc:Ljava/util/zip/CRC32;

    .line 153
    iput-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->written:J

    .line 158
    iput-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->cdOffset:J

    .line 163
    iput-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->cdLength:J

    .line 178
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->offsets:Ljava/util/Map;

    .line 188
    const-string v4, "UTF8"

    iput-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->encoding:Ljava/lang/String;

    .line 196
    const-string v4, "UTF8"

    invoke-static {v4}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 203
    new-instance v4, Ljava/util/zip/Deflater;

    iget v5, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->level:I

    invoke-direct {v4, v5, v7}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->def:Ljava/util/zip/Deflater;

    .line 209
    const/16 v4, 0x200

    new-array v4, v4, [B

    iput-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->buf:[B

    .line 222
    iput-boolean v7, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->useUTF8Flag:Z

    .line 227
    iput-boolean v6, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->fallbackToUTF8:Z

    .line 232
    sget-object v4, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$UnicodeExtraFieldPolicy;->NEVER:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    iput-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->createUnicodeExtraFields:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    .line 239
    iput-boolean v6, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->hasUsedZip64:Z

    .line 241
    sget-object v4, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->AsNeeded:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    iput-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    .line 259
    const/4 v3, 0x0

    .line 260
    .local v3, "o":Ljava/io/OutputStream;
    const/4 v0, 0x0

    .line 262
    .local v0, "_raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v1, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    .end local v0    # "_raf":Ljava/io/RandomAccessFile;
    .local v1, "_raf":Ljava/io/RandomAccessFile;
    const-wide/16 v4, 0x0

    :try_start_1
    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v0, v1

    .line 275
    .end local v1    # "_raf":Ljava/io/RandomAccessFile;
    .restart local v0    # "_raf":Ljava/io/RandomAccessFile;
    :goto_0
    iput-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->out:Ljava/io/OutputStream;

    .line 276
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    .line 277
    return-void

    .line 264
    :catch_0
    move-exception v2

    .line 265
    .local v2, "e":Ljava/io/IOException;
    :goto_1
    if-eqz v0, :cond_0

    .line 267
    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 271
    :goto_2
    const/4 v0, 0x0

    .line 273
    :cond_0
    new-instance v3, Ljava/io/FileOutputStream;

    .end local v3    # "o":Ljava/io/OutputStream;
    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .restart local v3    # "o":Ljava/io/OutputStream;
    goto :goto_0

    .line 268
    :catch_1
    move-exception v4

    goto :goto_2

    .line 264
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

    .line 247
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;-><init>()V

    .line 72
    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->finished:Z

    .line 121
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->comment:Ljava/lang/String;

    .line 126
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->level:I

    .line 132
    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->hasCompressionLevelChanged:Z

    .line 137
    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->method:I

    .line 142
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entries:Ljava/util/List;

    .line 148
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->crc:Ljava/util/zip/CRC32;

    .line 153
    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->written:J

    .line 158
    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->cdOffset:J

    .line 163
    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->cdLength:J

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->offsets:Ljava/util/Map;

    .line 188
    const-string v0, "UTF8"

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->encoding:Ljava/lang/String;

    .line 196
    const-string v0, "UTF8"

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 203
    new-instance v0, Ljava/util/zip/Deflater;

    iget v1, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->level:I

    invoke-direct {v0, v1, v3}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->def:Ljava/util/zip/Deflater;

    .line 209
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->buf:[B

    .line 222
    iput-boolean v3, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->useUTF8Flag:Z

    .line 227
    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->fallbackToUTF8:Z

    .line 232
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$UnicodeExtraFieldPolicy;->NEVER:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->createUnicodeExtraFields:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    .line 239
    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->hasUsedZip64:Z

    .line 241
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->AsNeeded:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    .line 248
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->out:Ljava/io/OutputStream;

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    .line 250
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
    .line 1042
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->createUnicodeExtraFields:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    sget-object v4, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$UnicodeExtraFieldPolicy;->ALWAYS:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    if-eq v3, v4, :cond_0

    if-nez p2, :cond_1

    .line 1044
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

    .line 1051
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getComment()Ljava/lang/String;

    move-result-object v0

    .line 1052
    .local v0, "comm":Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1054
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-interface {v3, v0}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->canEncode(Ljava/lang/String;)Z

    move-result v2

    .line 1056
    .local v2, "commentEncodable":Z
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->createUnicodeExtraFields:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    sget-object v4, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$UnicodeExtraFieldPolicy;->ALWAYS:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    if-eq v3, v4, :cond_2

    if-nez v2, :cond_3

    .line 1058
    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->getEntryEncoding(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1059
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

    .line 1067
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
    .line 1378
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1379
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->deflate()V

    goto :goto_0

    .line 1381
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
    .line 535
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 536
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    .line 537
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 538
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->deflate()V

    goto :goto_0

    .line 541
    :cond_0
    return-void
.end method

.method private generateRandomDummyZipEntry()Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .locals 3

    .prologue
    .line 396
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getEffectiveZip64Mode(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Lorg/apache/commons/compress/archivers/zip/Zip64Mode;
    .locals 4
    .param p1, "ze"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .prologue
    .line 1485
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->AsNeeded:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

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

    .line 1489
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    .line 1491
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
    .line 1495
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->canEncode(Ljava/lang/String;)Z

    move-result v0

    .line 1496
    .local v0, "encodable":Z
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->fallbackToUTF8:Z

    if-eqz v1, :cond_0

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->UTF8_ZIP_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

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
    .line 1501
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->getEntryEncoding(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private getVersionNeededToExtractAndGeneralPurposeBits(IZZ)[B
    .locals 5
    .param p1, "zipMethod"    # I
    .param p2, "utfFallback"    # Z
    .param p3, "zip64"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 1390
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1392
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0xa

    .line 1393
    .local v2, "versionNeededToExtract":I
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;-><init>()V

    .line 1394
    .local v0, "b":Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;
    iget-boolean v3, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->useUTF8Flag:Z

    if-nez v3, :cond_0

    if-eqz p2, :cond_3

    :cond_0
    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->useUTF8ForNames(Z)V

    .line 1395
    const/16 v3, 0x8

    if-ne p1, v3, :cond_1

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-nez v3, :cond_1

    .line 1398
    const/16 v2, 0x14

    .line 1399
    invoke-virtual {v0, v4}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->useDataDescriptor(Z)V

    .line 1401
    :cond_1
    if-eqz p3, :cond_2

    .line 1402
    const/16 v2, 0x2d

    .line 1407
    :cond_2
    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1409
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->encode()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1410
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 1394
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;
    .locals 4
    .param p1, "ze"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .prologue
    const/4 v2, 0x1

    .line 1441
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    if-eqz v1, :cond_0

    .line 1442
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->hasUsedZip64:Z

    if-nez v1, :cond_2

    move v1, v2

    :goto_0
    invoke-static {v3, v1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$502(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;Z)Z

    .line 1444
    :cond_0
    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->hasUsedZip64:Z

    .line 1445
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-virtual {p1, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;

    .line 1449
    .local v0, "z64":Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;
    if-nez v0, :cond_1

    .line 1456
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;

    .end local v0    # "z64":Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;
    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;-><init>()V

    .line 1460
    .restart local v0    # "z64":Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;
    :cond_1
    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->addAsFirstExtraField(Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V

    .line 1462
    return-object v0

    .line 1442
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

    .line 552
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 557
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$300(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setSize(J)V

    .line 558
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setCompressedSize(J)V

    .line 559
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setCrc(J)V

    .line 561
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->reset()V

    .line 584
    :cond_0
    :goto_0
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->Always:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    if-eq p5, v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-ltz v1, :cond_5

    :cond_1
    const/4 v0, 0x1

    .line 587
    .local v0, "actuallyNeedsZip64":Z
    :goto_1
    if-eqz v0, :cond_6

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->Never:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    if-ne p5, v1, :cond_6

    .line 588
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;->getEntryTooBigMessage(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 562
    .end local v0    # "actuallyNeedsZip64":Z
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-nez v1, :cond_4

    .line 563
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCrc()J

    move-result-wide v2

    cmp-long v1, v2, p3

    if-eqz v1, :cond_3

    .line 564
    new-instance v1, Ljava/util/zip/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad CRC checksum for entry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

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

    .line 571
    :cond_3
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-eqz v1, :cond_0

    .line 572
    new-instance v1, Ljava/util/zip/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad size for entry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

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

    .line 579
    :cond_4
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setSize(J)V

    .line 580
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setCompressedSize(J)V

    .line 581
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setCrc(J)V

    goto/16 :goto_0

    .line 584
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 591
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

    .line 1223
    if-eqz p4, :cond_2

    .line 1224
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->getZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;

    move-result-object v0

    .line 1225
    .local v0, "z64":Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-ltz v1, :cond_3

    .line 1227
    :cond_0
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->setCompressedSize(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    .line 1228
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->setSize(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    .line 1234
    :goto_0
    cmp-long v1, p2, v4

    if-ltz v1, :cond_1

    .line 1235
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-direct {v1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->setRelativeHeaderOffset(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    .line 1237
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtra()V

    .line 1239
    .end local v0    # "z64":Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;
    :cond_2
    return-void

    .line 1231
    .restart local v0    # "z64":Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;
    :cond_3
    invoke-virtual {v0, v6}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->setCompressedSize(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    .line 1232
    invoke-virtual {v0, v6}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->setSize(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    goto :goto_0
.end method

.method private hasZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z
    .locals 1
    .param p1, "ze"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .prologue
    .line 1472
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

    .line 601
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    .line 603
    .local v0, "save":J
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$400(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 604
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCrc()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([B)V

    .line 605
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->hasZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_2

    .line 606
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([B)V

    .line 607
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([B)V

    .line 613
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->hasZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 615
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$400(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)J

    move-result-wide v4

    const-wide/16 v6, 0xc

    add-long/2addr v4, v6

    add-long/2addr v4, v8

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->getName(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    add-long/2addr v4, v8

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 619
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([B)V

    .line 620
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([B)V

    .line 622
    if-nez p1, :cond_1

    .line 625
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$400(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)J

    move-result-wide v4

    const-wide/16 v6, 0xa

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 626
    const/16 v2, 0xa

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([B)V

    .line 630
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v2

    sget-object v3, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->removeExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)V

    .line 632
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtra()V

    .line 636
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$500(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 637
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->hasUsedZip64:Z

    .line 641
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 642
    return-void

    .line 609
    :cond_2
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ZipLong;->ZIP64_MAGIC:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([B)V

    .line 610
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ZipLong;->ZIP64_MAGIC:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([B)V

    goto/16 :goto_0
.end method

.method private setDefaults(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V
    .locals 4
    .param p1, "entry"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .prologue
    .line 702
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 703
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->method:I

    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setMethod(I)V

    .line 706
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getTime()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 707
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setTime(J)V

    .line 709
    :cond_1
    return-void
.end method

.method private shouldAddZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/Zip64Mode;)Z
    .locals 4
    .param p1, "entry"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .param p2, "mode"    # Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    .prologue
    const-wide v2, 0xffffffffL

    .line 756
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

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

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

    .line 720
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_2

    .line 721
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 722
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "uncompressed size is required for STORED method when not writing to a file"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 726
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCrc()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 727
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "crc checksum is required for STORED method when not writing to a file"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 730
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setCompressedSize(J)V

    .line 733
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_4

    :cond_3
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->Never:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    if-ne p1, v0, :cond_4

    .line 736
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;->getEntryTooBigMessage(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 739
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

    .line 845
    if-lez p3, :cond_0

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v3}, Ljava/util/zip/Deflater;->finished()Z

    move-result v3

    if-nez v3, :cond_0

    .line 846
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    int-to-long v4, p3

    invoke-static {v3, v4, v5}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$314(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;J)J

    .line 847
    if-gt p3, v6, :cond_1

    .line 848
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v3, p1, p2, p3}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 849
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->deflateUntilInputIsNeeded()V

    .line 864
    :cond_0
    :goto_0
    return-void

    .line 851
    :cond_1
    div-int/lit16 v1, p3, 0x2000

    .line 852
    .local v1, "fullblocks":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 853
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->def:Ljava/util/zip/Deflater;

    mul-int/lit16 v4, v2, 0x2000

    add-int/2addr v4, p2

    invoke-virtual {v3, p1, v4, v6}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 855
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->deflateUntilInputIsNeeded()V

    .line 852
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 857
    :cond_2
    mul-int/lit16 v0, v1, 0x2000

    .line 858
    .local v0, "done":I
    if-ge v0, p3, :cond_0

    .line 859
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->def:Ljava/util/zip/Deflater;

    add-int v4, p2, v0

    sub-int v5, p3, v0

    invoke-virtual {v3, p1, v4, v5}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 860
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->deflateUntilInputIsNeeded()V

    goto :goto_0
.end method


# virtual methods
.method public canWriteEntryData(Lorg/apache/commons/compress/archivers/ArchiveEntry;)Z
    .locals 1
    .param p1, "ae"    # Lorg/apache/commons/compress/archivers/ArchiveEntry;

    .prologue
    .line 808
    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    if-eqz v0, :cond_0

    .line 809
    check-cast p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .end local p1    # "ae":Lorg/apache/commons/compress/archivers/ArchiveEntry;
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->canHandleEntryData(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v0

    .line 811
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
    .line 877
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->finished:Z

    if-nez v0, :cond_0

    .line 878
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->finish()V

    .line 880
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->destroy()V

    .line 881
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

    .line 501
    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->finished:Z

    if-eqz v1, :cond_0

    .line 502
    new-instance v1, Ljava/io/IOException;

    const-string v7, "Stream has already been finished"

    invoke-direct {v1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 505
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    if-nez v1, :cond_1

    .line 506
    new-instance v1, Ljava/io/IOException;

    const-string v7, "No current entry to close"

    invoke-direct {v1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 509
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$000(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 510
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->EMPTY:[B

    invoke-virtual {p0, v1, v7, v7}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->write([BII)V

    .line 513
    :cond_2
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->flushDeflater()V

    .line 515
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->getEffectiveZip64Mode(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    move-result-object v6

    .line 516
    .local v6, "effectiveMode":Lorg/apache/commons/compress/archivers/zip/Zip64Mode;
    iget-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->written:J

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)J

    move-result-wide v10

    sub-long v2, v8, v10

    .line 517
    .local v2, "bytesWritten":J
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    .line 518
    .local v4, "realCrc":J
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->reset()V

    move-object v1, p0

    .line 520
    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->handleSizesAndCrc(JJLorg/apache/commons/compress/archivers/zip/Zip64Mode;)Z

    move-result v0

    .line 523
    .local v0, "actuallyNeedsZip64":Z
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_3

    .line 524
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->rewriteSizesAndCrc(Z)V

    .line 527
    :cond_3
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeDataDescriptor(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    .line 528
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    .line 529
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
    .line 1427
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->finished:Z

    if-eqz v0, :cond_0

    .line 1428
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream has already been finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1430
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

    .line 929
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->def:Ljava/util/zip/Deflater;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->buf:[B

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->buf:[B

    array-length v3, v3

    invoke-virtual {v1, v2, v4, v3}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v0

    .line 930
    .local v0, "len":I
    if-lez v0, :cond_0

    .line 931
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->buf:[B

    invoke-virtual {p0, v1, v4, v0}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([BII)V

    .line 932
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->written:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->written:J

    .line 934
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
    .line 1512
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 1513
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 1515
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 1516
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 1518
    :cond_1
    return-void
.end method

.method public finish()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 489
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entries:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->finish(Ljava/util/List;Ljava/util/List;)V

    .line 490
    return-void
.end method

.method public finish(Ljava/util/List;Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    .local p1, "normalEntries":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;>;"
    .local p2, "hiddenEntries":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;>;"
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->finished:Z

    if-eqz v13, :cond_0

    .line 401
    new-instance v13, Ljava/io/IOException;

    const-string v14, "This archive has already been finished"

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 404
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    if-eqz v13, :cond_1

    .line 405
    new-instance v13, Ljava/io/IOException;

    const-string v14, "This archive contains unclosed entries."

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 408
    :cond_1
    const/4 v2, 0x0

    .line 410
    .local v2, "PADDING_BYTE":B
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_7

    .line 411
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 413
    .local v3, "centralHeaderBytes":Ljava/io/ByteArrayOutputStream;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 414
    .local v12, "ze":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->getCentralFileHeader(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)[B

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    .line 417
    .end local v12    # "ze":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v14

    sub-int v7, v13, v14

    .line 419
    .local v7, "hiddenEntriesNeeded":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v7, :cond_3

    .line 420
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->generateRandomDummyZipEntry()Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v5

    .line 421
    .local v5, "generatedZipEntry":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    .line 424
    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->write([B)V

    .line 425
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->closeArchiveEntry()V

    .line 427
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->getCentralFileHeader(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)[B

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 419
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 430
    .end local v5    # "generatedZipEntry":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    :cond_3
    new-instance v4, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveEntry;

    const-string v13, "META-INF/garbage"

    invoke-direct {v4, v13}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveEntry;-><init>(Ljava/lang/String;)V

    .line 432
    .local v4, "dummyFile":Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveEntry;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    .line 433
    const-string v13, "garbage"

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->write([B)V

    .line 434
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->closeArchiveEntry()V

    .line 437
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v13

    rsub-int v11, v13, 0x7fff

    .line 439
    .local v11, "paddingBytesNeeded":I
    const/4 v8, 0x0

    :goto_2
    add-int/lit8 v13, v11, 0x1

    if-ge v8, v13, :cond_4

    .line 440
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 439
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 442
    :cond_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    invoke-virtual {v4, v13}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveEntry;->setRawCentralDirectoryExtra([B)V

    .line 444
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v14

    sub-int v10, v13, v14

    .line 445
    .local v10, "normalEntriesNeeded":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .local v6, "gennedEntries":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;>;"
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v10, :cond_5

    .line 447
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->generateRandomDummyZipEntry()Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v5

    .line 448
    .restart local v5    # "generatedZipEntry":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    .line 450
    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->write([B)V

    .line 451
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->closeArchiveEntry()V

    .line 452
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 455
    .end local v5    # "generatedZipEntry":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    :cond_5
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->written:J

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->cdOffset:J

    .line 457
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeCentralFileHeader(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    .line 459
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 460
    .restart local v12    # "ze":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeCentralFileHeader(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    goto :goto_4

    .line 462
    .end local v12    # "ze":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    :cond_6
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 463
    .restart local v12    # "ze":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeCentralFileHeader(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    goto :goto_5

    .line 466
    .end local v3    # "centralHeaderBytes":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "dummyFile":Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveEntry;
    .end local v6    # "gennedEntries":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;>;"
    .end local v7    # "hiddenEntriesNeeded":I
    .end local v8    # "i":I
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "normalEntriesNeeded":I
    .end local v11    # "paddingBytesNeeded":I
    .end local v12    # "ze":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    :cond_7
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->written:J

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->cdOffset:J

    .line 467
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 468
    .restart local v12    # "ze":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeCentralFileHeader(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    goto :goto_6

    .line 472
    .end local v12    # "ze":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    :cond_8
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->written:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->cdOffset:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->cdLength:J

    .line 473
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeZip64CentralDirectory()V

    .line 474
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_9

    const/4 v13, 0x1

    :goto_7
    add-int/2addr v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeCentralDirectoryEnd(I)V

    .line 475
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->offsets:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->clear()V

    .line 476
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entries:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 477
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v13}, Ljava/util/zip/Deflater;->end()V

    .line 478
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->finished:Z

    .line 479
    return-void

    .line 474
    :cond_9
    const/4 v13, 0x0

    goto :goto_7
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 891
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 894
    :cond_0
    return-void
.end method

.method protected getCentralFileHeader(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)[B
    .locals 18
    .param p1, "ze"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1108
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1110
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v13, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->CFH_SIG:[B

    invoke-virtual {v2, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1112
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->offsets:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 1113
    .local v8, "lfhOffset":J
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->hasZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v14

    const-wide v16, 0xffffffffL

    cmp-long v13, v14, v16

    if-gez v13, :cond_0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v14

    const-wide v16, 0xffffffffL

    cmp-long v13, v14, v16

    if-gez v13, :cond_0

    const-wide v14, 0xffffffffL

    cmp-long v13, v8, v14

    if-ltz v13, :cond_1

    :cond_0
    const/4 v10, 0x1

    .line 1118
    .local v10, "needsZip64Extra":Z
    :goto_0
    if-eqz v10, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    sget-object v14, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->Never:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    if-ne v13, v14, :cond_2

    .line 1122
    new-instance v13, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;

    const-string v14, "archive\'s size exceeds the limit of 4GByte."

    invoke-direct {v13, v14}, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1113
    .end local v10    # "needsZip64Extra":Z
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 1126
    .restart local v10    # "needsZip64Extra":Z
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v9, v10}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->handleZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;JZ)V

    .line 1130
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getPlatform()I

    move-result v13

    shl-int/lit8 v14, v13, 0x8

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->hasUsedZip64:Z

    if-nez v13, :cond_5

    const/16 v13, 0x14

    :goto_1
    or-int/2addr v13, v14

    invoke-static {v13}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1134
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v12

    .line 1135
    .local v12, "zipMethod":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->canEncode(Ljava/lang/String;)Z

    move-result v5

    .line 1136
    .local v5, "encodable":Z
    if-nez v5, :cond_6

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->fallbackToUTF8:Z

    if-eqz v13, :cond_6

    const/4 v13, 0x1

    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v10}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->getVersionNeededToExtractAndGeneralPurposeBits(IZZ)[B

    move-result-object v11

    .line 1140
    .local v11, "verAndShit":[B
    invoke-virtual {v2, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1143
    invoke-static {v12}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1146
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getTime()J

    move-result-wide v14

    invoke-static {v14, v15}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->toDosTime(J)[B

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1151
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCrc()J

    move-result-wide v14

    invoke-static {v14, v15}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1152
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v14

    const-wide v16, 0xffffffffL

    cmp-long v13, v14, v16

    if-gez v13, :cond_3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v14

    const-wide v16, 0xffffffffL

    cmp-long v13, v14, v16

    if-ltz v13, :cond_7

    .line 1154
    :cond_3
    sget-object v13, Lorg/apache/commons/compress/archivers/zip/ZipLong;->ZIP64_MAGIC:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v13}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1155
    sget-object v13, Lorg/apache/commons/compress/archivers/zip/ZipLong;->ZIP64_MAGIC:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v13}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1164
    :goto_3
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->getName(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 1166
    .local v7, "name":Ljava/nio/ByteBuffer;
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->limit()I

    move-result v13

    invoke-static {v13}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1169
    const/4 v6, 0x0

    .line 1170
    .local v6, "extra":[B
    move-object/from16 v0, p1

    instance-of v13, v0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveEntry;

    if-eqz v13, :cond_8

    move-object/from16 v13, p1

    .line 1171
    check-cast v13, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveEntry;

    invoke-virtual {v13}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveEntry;->getRawCentralDirectoryExtra()[B

    move-result-object v6

    .line 1176
    :goto_4
    array-length v13, v6

    invoke-static {v13}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1180
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getComment()Ljava/lang/String;

    move-result-object v3

    .line 1181
    .local v3, "comm":Ljava/lang/String;
    if-nez v3, :cond_4

    .line 1182
    const-string v3, ""

    .line 1185
    :cond_4
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->getEntryEncoding(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object v13

    invoke-interface {v13, v3}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1187
    .local v4, "commentB":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v13

    invoke-static {v13}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1190
    sget-object v13, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->ZERO:[B

    invoke-virtual {v2, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1193
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getInternalAttributes()I

    move-result v13

    invoke-static {v13}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1196
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExternalAttributes()J

    move-result-wide v14

    invoke-static {v14, v15}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1199
    const-wide v14, 0xffffffffL

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    invoke-static {v14, v15}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1202
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v13

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v14

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->limit()I

    move-result v15

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual {v2, v13, v14, v15}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1206
    invoke-virtual {v2, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1209
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v13

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v14

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v15

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual {v2, v13, v14, v15}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1212
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1214
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    return-object v13

    .line 1130
    .end local v3    # "comm":Ljava/lang/String;
    .end local v4    # "commentB":Ljava/nio/ByteBuffer;
    .end local v5    # "encodable":Z
    .end local v6    # "extra":[B
    .end local v7    # "name":Ljava/nio/ByteBuffer;
    .end local v11    # "verAndShit":[B
    .end local v12    # "zipMethod":I
    :cond_5
    const/16 v13, 0x2d

    goto/16 :goto_1

    .line 1136
    .restart local v5    # "encodable":Z
    .restart local v12    # "zipMethod":I
    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 1157
    .restart local v11    # "verAndShit":[B
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v14

    invoke-static {v14, v15}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1158
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v14

    invoke-static {v14, v15}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto/16 :goto_3

    .line 1173
    .restart local v6    # "extra":[B
    .restart local v7    # "name":Ljava/nio/ByteBuffer;
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCentralDirectoryExtra()[B

    move-result-object v6

    goto/16 :goto_4
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public isSeekable()Z
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V
    .locals 1
    .param p1, "archiveEntry"    # Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 653
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;[B)V

    .line 654
    return-void
.end method

.method public putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;[B)V
    .locals 8
    .param p1, "archiveEntry"    # Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .param p2, "originalData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 657
    iget-boolean v3, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->finished:Z

    if-eqz v3, :cond_0

    .line 658
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Stream has already been finished"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 661
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    if-eqz v3, :cond_1

    .line 662
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->closeArchiveEntry()V

    .line 665
    :cond_1
    new-instance v3, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    check-cast p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .end local p1    # "archiveEntry":Lorg/apache/commons/compress/archivers/ArchiveEntry;
    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$1;)V

    iput-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    .line 666
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entries:Ljava/util/List;

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v4}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 668
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->setDefaults(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    .line 670
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->getEffectiveZip64Mode(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    move-result-object v0

    .line 671
    .local v0, "effectiveMode":Lorg/apache/commons/compress/archivers/zip/Zip64Mode;
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->validateSizeInformation(Lorg/apache/commons/compress/archivers/zip/Zip64Mode;)V

    .line 673
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->shouldAddZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/Zip64Mode;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 675
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->getZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;

    move-result-object v2

    .line 679
    .local v2, "z64":Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->ZERO:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 680
    .local v1, "size":Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    .line 683
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .end local v1    # "size":Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>(J)V

    .line 685
    .restart local v1    # "size":Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;
    :cond_2
    invoke-virtual {v2, v1}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->setSize(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    .line 686
    invoke-virtual {v2, v1}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->setCompressedSize(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    .line 687
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtra()V

    .line 690
    .end local v1    # "size":Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;
    .end local v2    # "z64":Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;
    :cond_3
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_4

    iget-boolean v3, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->hasCompressionLevelChanged:Z

    if-eqz v3, :cond_4

    .line 691
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->def:Ljava/util/zip/Deflater;

    iget v4, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->level:I

    invoke-virtual {v3, v4}, Ljava/util/zip/Deflater;->setLevel(I)V

    .line 692
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->hasCompressionLevelChanged:Z

    .line 694
    :cond_4
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeLocalFileHeader(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;[B)V

    .line 695
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 768
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->comment:Ljava/lang/String;

    .line 769
    return-void
.end method

.method public setCreateUnicodeExtraFields(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$UnicodeExtraFieldPolicy;)V
    .locals 0
    .param p1, "b"    # Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    .prologue
    .line 334
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->createUnicodeExtraFields:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    .line 335
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 302
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->encoding:Ljava/lang/String;

    .line 303
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 304
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->useUTF8Flag:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->isUTF8(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->useUTF8Flag:Z

    .line 307
    :cond_0
    return-void
.end method

.method public setFallbackToUTF8(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 344
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->fallbackToUTF8:Z

    .line 345
    return-void
.end method

.method public setLevel(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 780
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x9

    if-le p1, v0, :cond_1

    .line 782
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

    .line 785
    :cond_1
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->level:I

    if-eq v0, p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->hasCompressionLevelChanged:Z

    .line 786
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->level:I

    .line 787
    return-void

    .line 785
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMethod(I)V
    .locals 0
    .param p1, "method"    # I

    .prologue
    .line 796
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->method:I

    .line 797
    return-void
.end method

.method public setUseLanguageEncodingFlag(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 325
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->encoding:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->isUTF8(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->useUTF8Flag:Z

    .line 326
    return-void

    .line 325
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUseZip64(Lorg/apache/commons/compress/archivers/zip/Zip64Mode;)V
    .locals 0
    .param p1, "mode"    # Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    .prologue
    .line 392
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    .line 393
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
    .line 823
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->checkRequestedFeatures(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    .line 824
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$002(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;Z)Z

    .line 825
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 826
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeDeflated([BII)V

    .line 831
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 832
    invoke-virtual {p0, p3}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->count(I)V

    .line 833
    return-void

    .line 828
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([BII)V

    .line 829
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->written:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->written:J

    goto :goto_0
.end method

.method protected writeCentralDirectoryEnd(I)V
    .locals 7
    .param p1, "numberOfEntries"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v6, 0xffff

    const-wide v4, 0xffffffffL

    .line 1249
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->EOCD_SIG:[B

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([B)V

    .line 1252
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->ZERO:[B

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([B)V

    .line 1253
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->ZERO:[B

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([B)V

    .line 1256
    if-le p1, v6, :cond_0

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    sget-object v3, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->Never:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    if-ne v2, v3, :cond_0

    .line 1258
    new-instance v2, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;

    const-string v3, "archive contains more than 65535 entries."

    invoke-direct {v2, v3}, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1261
    :cond_0
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->cdOffset:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    sget-object v3, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->Never:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    if-ne v2, v3, :cond_1

    .line 1262
    new-instance v2, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;

    const-string v3, "archive\'s size exceeds the limit of 4GByte."

    invoke-direct {v2, v3}, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1266
    :cond_1
    invoke-static {p1, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v1

    .line 1268
    .local v1, "num":[B
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([B)V

    .line 1269
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([B)V

    .line 1272
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->cdLength:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([B)V

    .line 1273
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->cdOffset:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([B)V

    .line 1276
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->comment:Ljava/lang/String;

    invoke-interface {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1277
    .local v0, "data":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([B)V

    .line 1278
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0, v2, v3, v4}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([BII)V

    .line 1280
    return-void
.end method

.method protected writeCentralFileHeader(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V
    .locals 6
    .param p1, "ze"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1101
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->getCentralFileHeader(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)[B

    move-result-object v0

    .line 1102
    .local v0, "centralHeader":[B
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([B)V

    .line 1103
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->written:J

    array-length v1, v0

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->written:J

    .line 1104
    return-void
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
    .line 1075
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_1

    .line 1090
    :cond_0
    :goto_0
    return-void

    .line 1078
    :cond_1
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->DD_SIG:[B

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([B)V

    .line 1079
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCrc()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([B)V

    .line 1080
    const/4 v0, 0x4

    .line 1081
    .local v0, "sizeFieldSize":I
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->hasZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1082
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([B)V

    .line 1083
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([B)V

    .line 1089
    :goto_1
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->written:J

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x8

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->written:J

    goto :goto_0

    .line 1085
    :cond_2
    const/16 v0, 0x8

    .line 1086
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([B)V

    .line 1087
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([B)V

    goto :goto_1
.end method

.method protected writeLocalFileHeader(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;[B)V
    .locals 12
    .param p1, "ze"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .param p2, "originalData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 943
    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->canEncode(Ljava/lang/String;)Z

    move-result v0

    .line 944
    .local v0, "encodable":Z
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->getName(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 946
    .local v3, "name":Ljava/nio/ByteBuffer;
    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->createUnicodeExtraFields:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    sget-object v8, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$UnicodeExtraFieldPolicy;->NEVER:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    if-eq v7, v8, :cond_0

    .line 947
    invoke-direct {p0, p1, v0, v3}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->addUnicodeExtraFields(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;ZLjava/nio/ByteBuffer;)V

    .line 950
    :cond_0
    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->offsets:Ljava/util/Map;

    iget-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->written:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, p1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    sget-object v7, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->LFH_SIG:[B

    invoke-virtual {p0, v7}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([B)V

    .line 953
    iget-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->written:J

    const-wide/16 v10, 0x4

    add-long/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->written:J

    .line 956
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v6

    .line 958
    .local v6, "zipMethod":I
    if-nez v0, :cond_3

    iget-boolean v7, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->fallbackToUTF8:Z

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->hasZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v8

    invoke-direct {p0, v6, v7, v8}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->getVersionNeededToExtractAndGeneralPurposeBits(IZZ)[B

    move-result-object v5

    .line 962
    .local v5, "verAndShit":[B
    invoke-virtual {p0, v5}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([B)V

    .line 963
    iget-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->written:J

    const-wide/16 v10, 0x4

    add-long/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->written:J

    .line 966
    invoke-static {v6}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([B)V

    .line 967
    iget-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->written:J

    const-wide/16 v10, 0x2

    add-long/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->written:J

    .line 970
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->toDosTime(J)[B

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([B)V

    .line 971
    iget-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->written:J

    const-wide/16 v10, 0x4

    add-long/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->written:J

    .line 976
    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    iget-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->written:J

    invoke-static {v7, v8, v9}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$402(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;J)J

    .line 977
    const/16 v7, 0x8

    if-eq v6, v7, :cond_1

    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz v7, :cond_5

    .line 978
    :cond_1
    sget-object v7, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->LZERO:[B

    invoke-virtual {p0, v7}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([B)V

    .line 979
    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    invoke-static {v7}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->hasZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 983
    sget-object v7, Lorg/apache/commons/compress/archivers/zip/ZipLong;->ZIP64_MAGIC:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v7}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([B)V

    .line 984
    sget-object v7, Lorg/apache/commons/compress/archivers/zip/ZipLong;->ZIP64_MAGIC:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v7}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([B)V

    .line 999
    :goto_1
    iget-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->written:J

    const-wide/16 v10, 0xc

    add-long/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->written:J

    .line 1003
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 1004
    .local v2, "length":I
    if-eqz p2, :cond_2

    .line 1005
    array-length v7, p2

    add-int/2addr v2, v7

    .line 1008
    :cond_2
    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([B)V

    .line 1009
    iget-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->written:J

    const-wide/16 v10, 0x2

    add-long/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->written:J

    .line 1012
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getLocalFileDataExtra()[B

    move-result-object v1

    .line 1013
    .local v1, "extra":[B
    array-length v7, v1

    invoke-static {v7}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([B)V

    .line 1014
    iget-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->written:J

    const-wide/16 v10, 0x2

    add-long/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->written:J

    .line 1017
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v8

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0, v7, v8, v9}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([BII)V

    .line 1019
    iget-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->written:J

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    int-to-long v10, v7

    add-long/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->written:J

    .line 1028
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([B)V

    .line 1029
    iget-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->written:J

    array-length v7, v1

    int-to-long v10, v7

    add-long/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->written:J

    .line 1031
    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;

    iget-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->written:J

    invoke-static {v7, v8, v9}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;->access$202(Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$CurrentEntry;J)J

    .line 1032
    return-void

    .line 958
    .end local v1    # "extra":[B
    .end local v2    # "length":I
    .end local v5    # "verAndShit":[B
    :cond_3
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 986
    .restart local v5    # "verAndShit":[B
    :cond_4
    sget-object v7, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->LZERO:[B

    invoke-virtual {p0, v7}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([B)V

    .line 987
    sget-object v7, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->LZERO:[B

    invoke-virtual {p0, v7}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([B)V

    goto :goto_1

    .line 990
    :cond_5
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCrc()J

    move-result-wide v8

    invoke-static {v8, v9}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([B)V

    .line 991
    sget-object v7, Lorg/apache/commons/compress/archivers/zip/ZipLong;->ZIP64_MAGIC:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v7}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    move-result-object v4

    .line 992
    .local v4, "size":[B
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->hasZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 993
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v8

    invoke-static {v8, v9}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v4

    .line 995
    :cond_6
    invoke-virtual {p0, v4}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([B)V

    .line 996
    invoke-virtual {p0, v4}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([B)V

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
    .line 1358
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([BII)V

    .line 1359
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
    .line 1370
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 1371
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 1375
    :goto_0
    return-void

    .line 1373
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method public writeRaw([BII)V
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
    .line 836
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([BII)V

    .line 837
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->written:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->written:J

    .line 838
    return-void
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

    .line 1291
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    sget-object v4, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->Never:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    if-ne v1, v4, :cond_1

    .line 1350
    :cond_0
    :goto_0
    return-void

    .line 1295
    :cond_1
    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->hasUsedZip64:Z

    if-nez v1, :cond_3

    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->cdOffset:J

    cmp-long v1, v4, v8

    if-gez v1, :cond_2

    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->cdLength:J

    cmp-long v1, v4, v8

    if-gez v1, :cond_2

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const v4, 0xffff

    if-lt v1, v4, :cond_3

    .line 1299
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->hasUsedZip64:Z

    .line 1302
    :cond_3
    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->hasUsedZip64:Z

    if-eqz v1, :cond_0

    .line 1306
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->written:J

    .line 1308
    .local v2, "offset":J
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->ZIP64_EOCD_SIG:[B

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([B)V

    .line 1311
    const-wide/16 v4, 0x2c

    invoke-static {v4, v5}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([B)V

    .line 1323
    invoke-static {v6}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([B)V

    .line 1324
    invoke-static {v6}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([B)V

    .line 1327
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->LZERO:[B

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([B)V

    .line 1328
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->LZERO:[B

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([B)V

    .line 1331
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v4, v1

    invoke-static {v4, v5}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object v0

    .line 1332
    .local v0, "num":[B
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([B)V

    .line 1333
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([B)V

    .line 1336
    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->cdLength:J

    invoke-static {v4, v5}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([B)V

    .line 1337
    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->cdOffset:J

    invoke-static {v4, v5}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([B)V

    .line 1342
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->ZIP64_EOCD_LOC_SIG:[B

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([B)V

    .line 1345
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->LZERO:[B

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([B)V

    .line 1347
    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([B)V

    .line 1349
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->ONE:[B

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;->writeOut([B)V

    goto/16 :goto_0
.end method
