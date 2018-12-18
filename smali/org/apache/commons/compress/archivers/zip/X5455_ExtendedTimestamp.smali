.class public Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;
.super Ljava/lang/Object;
.source "X5455_ExtendedTimestamp.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field static final ACCESS_TIME_BIT:B = 0x2t

.field static final CREATE_TIME_BIT:B = 0x4t

.field private static final HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

.field static final MODIFY_TIME_BIT:B = 0x1t

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private accessTime:Lorg/apache/commons/compress/archivers/zip/ZipLong;

.field private bit0_modifyTimePresent:Z

.field private bit1_accessTimePresent:Z

.field private bit2_createTimePresent:Z

.field private createTime:Lorg/apache/commons/compress/archivers/zip/ZipLong;

.field private flags:B

.field private modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipLong;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 85
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const/16 v1, 0x5455

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dateToZipLong(Ljava/util/Date;)Lorg/apache/commons/compress/archivers/zip/ZipLong;
    .locals 8
    .param p0, "d"    # Ljava/util/Date;

    .prologue
    .line 486
    if-nez p0, :cond_0

    const/4 v4, 0x0

    .line 493
    :goto_0
    return-object v4

    .line 488
    :cond_0
    const-wide v0, 0x100000000L

    .line 489
    .local v0, "TWO_TO_32":J
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    .line 490
    .local v2, "l":J
    const-wide v4, 0x100000000L

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1

    .line 491
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot set an X5455 timestamp larger than 2^32: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 493
    :cond_1
    new-instance v4, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-direct {v4, v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>(J)V

    goto :goto_0
.end method

.method private reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 243
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->setFlags(B)V

    .line 244
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 245
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 246
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 247
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 525
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 530
    instance-of v2, p1, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;

    if-eqz v2, :cond_3

    move-object v0, p1

    .line 531
    check-cast v0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;

    .line 535
    .local v0, "xf":Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;
    iget-byte v2, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->flags:B

    and-int/lit8 v2, v2, 0x7

    iget-byte v3, v0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->flags:B

    and-int/lit8 v3, v3, 0x7

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    iget-object v3, v0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    iget-object v3, v0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    iget-object v3, v0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    iget-object v3, v0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    iget-object v3, v0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    iget-object v3, v0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    .line 540
    .end local v0    # "xf":Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;
    :cond_3
    return v1
.end method

.method public getAccessJavaTime()Ljava/util/Date;
    .locals 6

    .prologue
    .line 367
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAccessTime()Lorg/apache/commons/compress/archivers/zip/ZipLong;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    return-object v0
.end method

.method public getCentralDirectoryData()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 187
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->getCentralDirectoryLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue()I

    move-result v2

    new-array v0, v2, [B

    .line 188
    .local v0, "centralData":[B
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->getLocalFileDataData()[B

    move-result-object v1

    .line 192
    .local v1, "localData":[B
    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    return-object v0
.end method

.method public getCentralDirectoryLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 2

    .prologue
    .line 147
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->bit0_modifyTimePresent:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    add-int/lit8 v0, v0, 0x1

    invoke-direct {v1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCreateJavaTime()Ljava/util/Date;
    .locals 6

    .prologue
    .line 385
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCreateTime()Lorg/apache/commons/compress/archivers/zip/ZipLong;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    return-object v0
.end method

.method public getFlags()B
    .locals 1

    .prologue
    .line 284
    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->flags:B

    return v0
.end method

.method public getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-object v0
.end method

.method public getLocalFileDataData()[B
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 159
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue()I

    move-result v3

    new-array v0, v3, [B

    .line 160
    .local v0, "data":[B
    const/4 v1, 0x0

    .line 161
    .local v1, "pos":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "pos":I
    .local v2, "pos":I
    aput-byte v4, v0, v1

    .line 162
    iget-boolean v3, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->bit0_modifyTimePresent:Z

    if-eqz v3, :cond_2

    .line 163
    aget-byte v3, v0, v4

    or-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, v0, v4

    .line 164
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v4, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    add-int/lit8 v1, v2, 0x4

    .line 167
    .end local v2    # "pos":I
    .restart local v1    # "pos":I
    :goto_0
    iget-boolean v3, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->bit1_accessTimePresent:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    if-eqz v3, :cond_0

    .line 168
    aget-byte v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    aput-byte v3, v0, v4

    .line 169
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v4, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    add-int/lit8 v1, v1, 0x4

    .line 172
    :cond_0
    iget-boolean v3, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->bit2_createTimePresent:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    if-eqz v3, :cond_1

    .line 173
    aget-byte v3, v0, v4

    or-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    aput-byte v3, v0, v4

    .line 174
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v4, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    add-int/lit8 v1, v1, 0x4

    .line 177
    :cond_1
    return-object v0

    .end local v1    # "pos":I
    .restart local v2    # "pos":I
    :cond_2
    move v1, v2

    .end local v2    # "pos":I
    .restart local v1    # "pos":I
    goto :goto_0
.end method

.method public getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 5

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 129
    new-instance v3, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->bit0_modifyTimePresent:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v4, v0, 0x1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->bit1_accessTimePresent:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v4

    iget-boolean v4, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->bit2_createTimePresent:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    if-eqz v4, :cond_2

    :goto_2
    add-int/2addr v0, v1

    invoke-direct {v3, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    return-object v3

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public getModifyJavaTime()Ljava/util/Date;
    .locals 6

    .prologue
    .line 355
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getModifyTime()Lorg/apache/commons/compress/archivers/zip/ZipLong;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 546
    iget-byte v1, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->flags:B

    and-int/lit8 v1, v1, 0x7

    mul-int/lit8 v0, v1, -0x7b

    .line 547
    .local v0, "hc":I
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    if-eqz v1, :cond_0

    .line 548
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 550
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    if-eqz v1, :cond_1

    .line 553
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->hashCode()I

    move-result v1

    const/16 v2, 0xb

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    .line 555
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    if-eqz v1, :cond_2

    .line 556
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->hashCode()I

    move-result v1

    const/16 v2, 0x16

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    .line 558
    :cond_2
    return v0
.end method

.method public isBit0_modifyTimePresent()Z
    .locals 1

    .prologue
    .line 293
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->bit0_modifyTimePresent:Z

    return v0
.end method

.method public isBit1_accessTimePresent()Z
    .locals 1

    .prologue
    .line 302
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->bit1_accessTimePresent:Z

    return v0
.end method

.method public isBit2_createTimePresent()Z
    .locals 1

    .prologue
    .line 311
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->bit2_createTimePresent:Z

    return v0
.end method

.method public parseFromCentralDirectoryData([BII)V
    .locals 0
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    .line 234
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->reset()V

    .line 235
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->parseFromLocalFileData([BII)V

    .line 236
    return-void
.end method

.method public parseFromLocalFileData([BII)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->reset()V

    .line 208
    add-int v0, p2, p3

    .line 209
    .local v0, "len":I
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "offset":I
    .local v1, "offset":I
    aget-byte v2, p1, p2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->setFlags(B)V

    .line 210
    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->bit0_modifyTimePresent:Z

    if-eqz v2, :cond_2

    .line 211
    new-instance v2, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-direct {v2, p1, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>([BI)V

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 212
    add-int/lit8 p2, v1, 0x4

    .line 217
    .end local v1    # "offset":I
    .restart local p2    # "offset":I
    :goto_0
    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->bit1_accessTimePresent:Z

    if-eqz v2, :cond_0

    add-int/lit8 v2, p2, 0x4

    if-gt v2, v0, :cond_0

    .line 218
    new-instance v2, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-direct {v2, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>([BI)V

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 219
    add-int/lit8 p2, p2, 0x4

    .line 221
    :cond_0
    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->bit2_createTimePresent:Z

    if-eqz v2, :cond_1

    add-int/lit8 v2, p2, 0x4

    if-gt v2, v0, :cond_1

    .line 222
    new-instance v2, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-direct {v2, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>([BI)V

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 223
    add-int/lit8 p2, p2, 0x4

    .line 225
    :cond_1
    return-void

    .end local p2    # "offset":I
    .restart local v1    # "offset":I
    :cond_2
    move p2, v1

    .end local v1    # "offset":I
    .restart local p2    # "offset":I
    goto :goto_0
.end method

.method public setAccessJavaTime(Ljava/util/Date;)V
    .locals 1
    .param p1, "d"    # Ljava/util/Date;

    .prologue
    .line 458
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->dateToZipLong(Ljava/util/Date;)Lorg/apache/commons/compress/archivers/zip/ZipLong;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->setAccessTime(Lorg/apache/commons/compress/archivers/zip/ZipLong;)V

    return-void
.end method

.method public setAccessTime(Lorg/apache/commons/compress/archivers/zip/ZipLong;)V
    .locals 0
    .param p1, "l"    # Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .prologue
    .line 414
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    return-void
.end method

.method public setCreateJavaTime(Ljava/util/Date;)V
    .locals 1
    .param p1, "d"    # Ljava/util/Date;

    .prologue
    .line 473
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->dateToZipLong(Ljava/util/Date;)Lorg/apache/commons/compress/archivers/zip/ZipLong;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->setCreateTime(Lorg/apache/commons/compress/archivers/zip/ZipLong;)V

    return-void
.end method

.method public setCreateTime(Lorg/apache/commons/compress/archivers/zip/ZipLong;)V
    .locals 0
    .param p1, "l"    # Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .prologue
    .line 428
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    return-void
.end method

.method public setFlags(B)V
    .locals 4
    .param p1, "flags"    # B

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 264
    iput-byte p1, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->flags:B

    .line 265
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->bit0_modifyTimePresent:Z

    .line 266
    and-int/lit8 v0, p1, 0x2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->bit1_accessTimePresent:Z

    .line 267
    and-int/lit8 v0, p1, 0x4

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    :goto_2
    iput-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->bit2_createTimePresent:Z

    .line 268
    return-void

    :cond_0
    move v0, v2

    .line 265
    goto :goto_0

    :cond_1
    move v0, v2

    .line 266
    goto :goto_1

    :cond_2
    move v1, v2

    .line 267
    goto :goto_2
.end method

.method public setModifyJavaTime(Ljava/util/Date;)V
    .locals 1
    .param p1, "d"    # Ljava/util/Date;

    .prologue
    .line 443
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->dateToZipLong(Ljava/util/Date;)Lorg/apache/commons/compress/archivers/zip/ZipLong;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->setModifyTime(Lorg/apache/commons/compress/archivers/zip/ZipLong;)V

    return-void
.end method

.method public setModifyTime(Lorg/apache/commons/compress/archivers/zip/ZipLong;)V
    .locals 0
    .param p1, "l"    # Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .prologue
    .line 400
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 505
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 506
    .local v1, "buf":Ljava/lang/StringBuilder;
    const-string v4, "0x5455 Zip Extra Field: Flags="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    iget-byte v4, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->flags:B

    invoke-static {v4}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->unsignedIntToSignedByte(I)B

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    iget-boolean v4, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->bit0_modifyTimePresent:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->modifyTime:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    if-eqz v4, :cond_0

    .line 509
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->getModifyJavaTime()Ljava/util/Date;

    move-result-object v3

    .line 510
    .local v3, "m":Ljava/util/Date;
    const-string v4, " Modify:["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .end local v3    # "m":Ljava/util/Date;
    :cond_0
    iget-boolean v4, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->bit1_accessTimePresent:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->accessTime:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    if-eqz v4, :cond_1

    .line 513
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->getAccessJavaTime()Ljava/util/Date;

    move-result-object v0

    .line 514
    .local v0, "a":Ljava/util/Date;
    const-string v4, " Access:["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    .end local v0    # "a":Ljava/util/Date;
    :cond_1
    iget-boolean v4, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->bit2_createTimePresent:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->createTime:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    if-eqz v4, :cond_2

    .line 517
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->getCreateJavaTime()Ljava/util/Date;

    move-result-object v2

    .line 518
    .local v2, "c":Ljava/util/Date;
    const-string v4, " Create:["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .end local v2    # "c":Ljava/util/Date;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
