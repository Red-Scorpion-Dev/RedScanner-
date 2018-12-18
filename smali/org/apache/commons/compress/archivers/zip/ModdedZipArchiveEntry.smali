.class public Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveEntry;
.super Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
.source "ModdedZipArchiveEntry.java"


# instance fields
.field private rawExtra:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;-><init>(Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveEntry;->rawExtra:[B

    .line 10
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveEntry;->rawExtra:[B

    .line 11
    return-void
.end method


# virtual methods
.method public getRawCentralDirectoryExtra()[B
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveEntry;->rawExtra:[B

    return-object v0
.end method

.method public setRawCentralDirectoryExtra([B)V
    .locals 0
    .param p1, "rawExtra"    # [B

    .prologue
    .line 18
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveEntry;->rawExtra:[B

    .line 19
    return-void
.end method
