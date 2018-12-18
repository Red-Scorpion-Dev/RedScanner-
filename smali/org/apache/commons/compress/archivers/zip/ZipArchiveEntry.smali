.class public Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
.super Ljava/util/zip/ZipEntry;
.source "ZipArchiveEntry.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/ArchiveEntry;


# static fields
.field private static final EMPTY:[B

.field public static final PLATFORM_FAT:I = 0x0

.field public static final PLATFORM_UNIX:I = 0x3

.field private static final SHORT_MASK:I = 0xffff

.field private static final SHORT_SHIFT:I = 0x10


# instance fields
.field private externalAttributes:J

.field private extraFields:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lorg/apache/commons/compress/archivers/zip/ZipShort;",
            "Lorg/apache/commons/compress/archivers/zip/ZipExtraField;",
            ">;"
        }
    .end annotation
.end field

.field private gpb:Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

.field private internalAttributes:I

.field private method:I

.field private name:Ljava/lang/String;

.field private platform:I

.field private rawName:[B

.field private size:J

.field private unparseableExtra:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->EMPTY:[B

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 147
    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;-><init>(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p1, "inputFile"    # Ljava/io/File;
    .param p2, "entryName"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .end local p2    # "entryName":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setSize(J)V

    .line 165
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setTime(J)V

    .line 167
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 99
    invoke-direct {p0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->method:I

    .line 79
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->size:J

    .line 81
    iput v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->internalAttributes:I

    .line 82
    iput v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->platform:I

    .line 83
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->externalAttributes:J

    .line 84
    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:Ljava/util/LinkedHashMap;

    .line 85
    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    .line 86
    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->name:Ljava/lang/String;

    .line 87
    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->rawName:[B

    .line 88
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->gpb:Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    .line 100
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setName(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/util/zip/ZipEntry;)V
    .locals 6
    .param p1, "entry"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 113
    invoke-direct {p0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    .line 71
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->method:I

    .line 79
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->size:J

    .line 81
    iput v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->internalAttributes:I

    .line 82
    iput v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->platform:I

    .line 83
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->externalAttributes:J

    .line 84
    iput-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:Ljava/util/LinkedHashMap;

    .line 85
    iput-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    .line 86
    iput-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->name:Ljava/lang/String;

    .line 87
    iput-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->rawName:[B

    .line 88
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    invoke-direct {v1}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->gpb:Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    .line 114
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setName(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getExtra()[B

    move-result-object v0

    .line 116
    .local v0, "extra":[B
    if-eqz v0, :cond_0

    .line 117
    const/4 v1, 0x1

    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;->READ:Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;

    invoke-static {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->parse([BZLorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtraFields([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V

    .line 124
    :goto_0
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setMethod(I)V

    .line 125
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->size:J

    .line 126
    return-void

    .line 122
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtra()V

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V
    .locals 2
    .param p1, "entry"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    .line 139
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getInternalAttributes()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setInternalAttributes(I)V

    .line 140
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExternalAttributes()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExternalAttributes(J)V

    .line 141
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExtraFields(Z)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtraFields([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V

    .line 142
    return-void
.end method

.method private mergeExtraFields([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;Z)V
    .locals 8
    .param p1, "f"    # [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .param p2, "local"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 628
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:Ljava/util/LinkedHashMap;

    if-nez v6, :cond_0

    .line 629
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtraFields([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V

    .line 652
    :goto_0
    return-void

    .line 631
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_4

    aget-object v2, v0, v4

    .line 633
    .local v2, "element":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    instance-of v6, v2, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    if-eqz v6, :cond_1

    .line 634
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    .line 638
    .local v3, "existing":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    :goto_2
    if-nez v3, :cond_2

    .line 639
    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->addExtraField(Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V

    .line 631
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 636
    .end local v3    # "existing":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    :cond_1
    invoke-interface {v2}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v3

    .restart local v3    # "existing":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    goto :goto_2

    .line 641
    :cond_2
    if-eqz p2, :cond_3

    .line 642
    invoke-interface {v2}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getLocalFileDataData()[B

    move-result-object v1

    .line 643
    .local v1, "b":[B
    array-length v6, v1

    invoke-interface {v3, v1, v7, v6}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->parseFromLocalFileData([BII)V

    goto :goto_3

    .line 645
    .end local v1    # "b":[B
    :cond_3
    invoke-interface {v2}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getCentralDirectoryData()[B

    move-result-object v1

    .line 646
    .restart local v1    # "b":[B
    array-length v6, v1

    invoke-interface {v3, v1, v7, v6}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->parseFromCentralDirectoryData([BII)V

    goto :goto_3

    .line 650
    .end local v1    # "b":[B
    .end local v2    # "element":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .end local v3    # "existing":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    :cond_4
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtra()V

    goto :goto_0
.end method


# virtual methods
.method public addAsFirstExtraField(Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V
    .locals 3
    .param p1, "ze"    # Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .prologue
    .line 376
    instance-of v1, p1, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    if-eqz v1, :cond_1

    .line 377
    check-cast p1, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    .end local p1    # "ze":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    .line 387
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtra()V

    .line 388
    return-void

    .line 379
    .restart local p1    # "ze":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:Ljava/util/LinkedHashMap;

    .line 380
    .local v0, "copy":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lorg/apache/commons/compress/archivers/zip/ZipShort;Lorg/apache/commons/compress/archivers/zip/ZipExtraField;>;"
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:Ljava/util/LinkedHashMap;

    .line 381
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    if-eqz v0, :cond_0

    .line 383
    invoke-interface {p1}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public addExtraField(Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V
    .locals 2
    .param p1, "ze"    # Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .prologue
    .line 357
    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    if-eqz v0, :cond_0

    .line 358
    check-cast p1, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    .end local p1    # "ze":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    .line 365
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtra()V

    .line 366
    return-void

    .line 360
    .restart local p1    # "ze":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_1

    .line 361
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:Ljava/util/LinkedHashMap;

    .line 363
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 175
    invoke-super {p0}, Ljava/util/zip/ZipEntry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 177
    .local v0, "e":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getInternalAttributes()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setInternalAttributes(I)V

    .line 178
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExternalAttributes()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExternalAttributes(J)V

    .line 179
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExtraFields(Z)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtraFields([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V

    .line 180
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 12
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 664
    if-ne p0, p1, :cond_1

    move v6, v5

    .line 688
    :cond_0
    :goto_0
    return v6

    .line 667
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    if-ne v7, v8, :cond_0

    move-object v2, p1

    .line 670
    check-cast v2, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 671
    .local v2, "other":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 672
    .local v1, "myName":Ljava/lang/String;
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 673
    .local v4, "otherName":Ljava/lang/String;
    if-nez v1, :cond_5

    .line 674
    if-nez v4, :cond_0

    .line 680
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getComment()Ljava/lang/String;

    move-result-object v0

    .line 681
    .local v0, "myComment":Ljava/lang/String;
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getComment()Ljava/lang/String;

    move-result-object v3

    .line 682
    .local v3, "otherComment":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 683
    const-string v0, ""

    .line 685
    :cond_3
    if-nez v3, :cond_4

    .line 686
    const-string v3, ""

    .line 688
    :cond_4
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getTime()J

    move-result-wide v8

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getTime()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-nez v7, :cond_6

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getInternalAttributes()I

    move-result v7

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getInternalAttributes()I

    move-result v8

    if-ne v7, v8, :cond_6

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getPlatform()I

    move-result v7

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getPlatform()I

    move-result v8

    if-ne v7, v8, :cond_6

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExternalAttributes()J

    move-result-wide v8

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExternalAttributes()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-nez v7, :cond_6

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v7

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v8

    if-ne v7, v8, :cond_6

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v8

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-nez v7, :cond_6

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCrc()J

    move-result-wide v8

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCrc()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-nez v7, :cond_6

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v8

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-nez v7, :cond_6

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCentralDirectoryExtra()[B

    move-result-object v7

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCentralDirectoryExtra()[B

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getLocalFileDataExtra()[B

    move-result-object v7

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getLocalFileDataExtra()[B

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->gpb:Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    iget-object v8, v2, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->gpb:Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    invoke-virtual {v7, v8}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    :goto_1
    move v6, v5

    goto/16 :goto_0

    .line 677
    .end local v0    # "myComment":Ljava/lang/String;
    .end local v3    # "otherComment":Ljava/lang/String;
    :cond_5
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto/16 :goto_0

    .restart local v0    # "myComment":Ljava/lang/String;
    .restart local v3    # "otherComment":Ljava/lang/String;
    :cond_6
    move v5, v6

    .line 688
    goto :goto_1
.end method

.method public getCentralDirectoryExtra()[B
    .locals 1

    .prologue
    .line 500
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExtraFields(Z)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->mergeCentralDirectoryData([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)[B

    move-result-object v0

    return-object v0
.end method

.method public getExternalAttributes()J
    .locals 2

    .prologue
    .line 234
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->externalAttributes:J

    return-wide v0
.end method

.method public getExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .locals 1
    .param p1, "type"    # Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .prologue
    .line 423
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 426
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExtraFields()[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExtraFields(Z)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    return-object v0
.end method

.method public getExtraFields(Z)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .locals 4
    .param p1, "includeUnparseable"    # Z

    .prologue
    const/4 v3, 0x0

    .line 335
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:Ljava/util/LinkedHashMap;

    if-nez v1, :cond_2

    .line 336
    if-eqz p1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    if-nez v1, :cond_1

    :cond_0
    new-array v1, v3, [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 345
    :goto_0
    return-object v1

    .line 336
    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    aput-object v2, v1, v3

    goto :goto_0

    .line 340
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 342
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/zip/ZipExtraField;>;"
    if-eqz p1, :cond_3

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    if-eqz v1, :cond_3

    .line 343
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    :cond_3
    new-array v1, v3, [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    goto :goto_0
.end method

.method public getGeneralPurposeBit()Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->gpb:Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    return-object v0
.end method

.method public getInternalAttributes()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->internalAttributes:I

    return v0
.end method

.method public getLastModifiedDate()Ljava/util/Date;
    .locals 4

    .prologue
    .line 656
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getLocalFileDataExtra()[B
    .locals 1

    .prologue
    .line 491
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExtra()[B

    move-result-object v0

    .line 492
    .local v0, "extra":[B
    if-eqz v0, :cond_0

    .end local v0    # "extra":[B
    :goto_0
    return-object v0

    .restart local v0    # "extra":[B
    :cond_0
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->EMPTY:[B

    goto :goto_0
.end method

.method public getMethod()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->method:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPlatform()I
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->platform:I

    return v0
.end method

.method public getRawName()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 580
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->rawName:[B

    if-eqz v1, :cond_0

    .line 581
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->rawName:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 582
    .local v0, "b":[B
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->rawName:[B

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->rawName:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 585
    .end local v0    # "b":[B
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 539
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->size:J

    return-wide v0
.end method

.method public getUnixMode()I
    .locals 4

    .prologue
    .line 266
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->platform:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExternalAttributes()J

    move-result-wide v0

    const/16 v2, 0x10

    shr-long/2addr v0, v2

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public getUnparseableExtraFieldData()Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 599
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDirectory()Z
    .locals 2

    .prologue
    .line 518
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isUnixSymlink()Z
    .locals 2

    .prologue
    const v1, 0xa000

    .line 279
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getUnixMode()I

    move-result v0

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)V
    .locals 1
    .param p1, "type"    # Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .prologue
    .line 395
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    .line 396
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 398
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 399
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 401
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtra()V

    .line 402
    return-void
.end method

.method public removeUnparseableExtraFieldData()V
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    if-nez v0, :cond_0

    .line 411
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 413
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    .line 414
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtra()V

    .line 415
    return-void
.end method

.method public setCentralDirectoryExtra([B)V
    .locals 4
    .param p1, "b"    # [B

    .prologue
    .line 477
    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;->READ:Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;

    invoke-static {p1, v2, v3}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->parse([BZLorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    .line 480
    .local v0, "central":[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->mergeExtraFields([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;Z)V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    return-void

    .line 481
    .end local v0    # "central":[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    :catch_0
    move-exception v1

    .line 482
    .local v1, "e":Ljava/util/zip/ZipException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/util/zip/ZipException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setExternalAttributes(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 242
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->externalAttributes:J

    .line 243
    return-void
.end method

.method protected setExtra()V
    .locals 1

    .prologue
    .line 469
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExtraFields(Z)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->mergeLocalFileDataData([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)[B

    move-result-object v0

    invoke-super {p0, v0}, Ljava/util/zip/ZipEntry;->setExtra([B)V

    .line 470
    return-void
.end method

.method public setExtra([B)V
    .locals 5
    .param p1, "extra"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 451
    const/4 v2, 0x1

    :try_start_0
    sget-object v3, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;->READ:Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;

    invoke-static {p1, v2, v3}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->parse([BZLorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v1

    .line 454
    .local v1, "local":[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->mergeExtraFields([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;Z)V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    return-void

    .line 455
    .end local v1    # "local":[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    :catch_0
    move-exception v0

    .line 457
    .local v0, "e":Ljava/util/zip/ZipException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing extra fields for entry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/zip/ZipException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setExtraFields([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V
    .locals 6
    .param p1, "fields"    # [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .prologue
    .line 306
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:Ljava/util/LinkedHashMap;

    .line 307
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 308
    .local v1, "field":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    instance-of v4, v1, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    if-eqz v4, :cond_0

    .line 309
    check-cast v1, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    .end local v1    # "field":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    .line 307
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 311
    .restart local v1    # "field":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    :cond_0
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 314
    .end local v1    # "field":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtra()V

    .line 315
    return-void
.end method

.method public setGeneralPurposeBit(Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;)V
    .locals 0
    .param p1, "b"    # Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    .prologue
    .line 615
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->gpb:Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    .line 616
    return-void
.end method

.method public setInternalAttributes(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 226
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->internalAttributes:I

    .line 227
    return-void
.end method

.method public setMethod(I)V
    .locals 3
    .param p1, "method"    # I

    .prologue
    .line 205
    if-gez p1, :cond_0

    .line 206
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ZIP compression method can not be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->method:I

    .line 210
    return-void
.end method

.method protected setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 526
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getPlatform()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 528
    const/16 v0, 0x5c

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 530
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->name:Ljava/lang/String;

    .line 531
    return-void
.end method

.method protected setName(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "rawName"    # [B

    .prologue
    .line 566
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setName(Ljava/lang/String;)V

    .line 567
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->rawName:[B

    .line 568
    return-void
.end method

.method protected setPlatform(I)V
    .locals 0
    .param p1, "platform"    # I

    .prologue
    .line 298
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->platform:I

    .line 299
    return-void
.end method

.method public setSize(J)V
    .locals 3
    .param p1, "size"    # J

    .prologue
    .line 550
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 551
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid entry size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 553
    :cond_0
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->size:J

    .line 554
    return-void
.end method

.method public setUnixMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    .line 252
    shl-int/lit8 v2, p1, 0x10

    and-int/lit16 v0, p1, 0x80

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v2

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x10

    :cond_0
    or-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExternalAttributes(J)V

    .line 258
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->platform:I

    .line 259
    return-void

    :cond_1
    move v0, v1

    .line 252
    goto :goto_0
.end method
