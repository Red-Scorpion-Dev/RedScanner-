.class Landroid/framework/util/jar/InitManifest;
.super Ljava/lang/Object;
.source "InitManifest.java"


# instance fields
.field private final buf:[B

.field private consecutiveLineBreaks:I

.field private name:Landroid/framework/util/jar/Attributes$Name;

.field private pos:I

.field private value:Ljava/lang/String;

.field private final valueBuffer:Landroid/framework/langlang/UnsafeByteSequence;


# direct methods
.method constructor <init>([BLandroid/framework/util/jar/Attributes;Landroid/framework/util/jar/Attributes$Name;)V
    .locals 3
    .param p1, "buf"    # [B
    .param p2, "main"    # Landroid/framework/util/jar/Attributes;
    .param p3, "ver"    # Landroid/framework/util/jar/Attributes$Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/framework/langlang/UnsafeByteSequence;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Landroid/framework/langlang/UnsafeByteSequence;-><init>(I)V

    iput-object v0, p0, Landroid/framework/util/jar/InitManifest;->valueBuffer:Landroid/framework/langlang/UnsafeByteSequence;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Landroid/framework/util/jar/InitManifest;->consecutiveLineBreaks:I

    .line 43
    iput-object p1, p0, Landroid/framework/util/jar/InitManifest;->buf:[B

    .line 46
    invoke-direct {p0}, Landroid/framework/util/jar/InitManifest;->readHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_1

    iget-object v0, p0, Landroid/framework/util/jar/InitManifest;->name:Landroid/framework/util/jar/Attributes$Name;

    invoke-virtual {v0, p3}, Landroid/framework/util/jar/Attributes$Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing version attribute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_1
    iget-object v0, p0, Landroid/framework/util/jar/InitManifest;->name:Landroid/framework/util/jar/Attributes$Name;

    iget-object v1, p0, Landroid/framework/util/jar/InitManifest;->value:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/framework/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :goto_0
    invoke-direct {p0}, Landroid/framework/util/jar/InitManifest;->readHeader()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    iget-object v0, p0, Landroid/framework/util/jar/InitManifest;->name:Landroid/framework/util/jar/Attributes$Name;

    iget-object v1, p0, Landroid/framework/util/jar/InitManifest;->value:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/framework/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 54
    :cond_2
    return-void
.end method

.method private readHeader()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 101
    iget v2, p0, Landroid/framework/util/jar/InitManifest;->consecutiveLineBreaks:I

    if-le v2, v0, :cond_0

    .line 103
    iput v1, p0, Landroid/framework/util/jar/InitManifest;->consecutiveLineBreaks:I

    .line 111
    :goto_0
    return v1

    .line 106
    :cond_0
    invoke-direct {p0}, Landroid/framework/util/jar/InitManifest;->readName()V

    .line 107
    iput v1, p0, Landroid/framework/util/jar/InitManifest;->consecutiveLineBreaks:I

    .line 108
    invoke-direct {p0}, Landroid/framework/util/jar/InitManifest;->readValue()V

    .line 111
    iget v2, p0, Landroid/framework/util/jar/InitManifest;->consecutiveLineBreaks:I

    if-lez v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private readName()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    iget v1, p0, Landroid/framework/util/jar/InitManifest;->pos:I

    .line 117
    .local v1, "mark":I
    :cond_0
    iget v3, p0, Landroid/framework/util/jar/InitManifest;->pos:I

    iget-object v4, p0, Landroid/framework/util/jar/InitManifest;->buf:[B

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 118
    iget-object v3, p0, Landroid/framework/util/jar/InitManifest;->buf:[B

    iget v4, p0, Landroid/framework/util/jar/InitManifest;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Landroid/framework/util/jar/InitManifest;->pos:I

    aget-byte v3, v3, v4

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_0

    .line 122
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Landroid/framework/util/jar/InitManifest;->buf:[B

    iget v4, p0, Landroid/framework/util/jar/InitManifest;->pos:I

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    sget-object v5, Lorg/apache/commons/compress/utils/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v1, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 124
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Landroid/framework/util/jar/InitManifest;->buf:[B

    iget v4, p0, Landroid/framework/util/jar/InitManifest;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Landroid/framework/util/jar/InitManifest;->pos:I

    aget-byte v3, v3, v4

    const/16 v4, 0x20

    if-eq v3, v4, :cond_1

    .line 125
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Invalid value for attribute \'%s\'"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 129
    :cond_1
    :try_start_0
    new-instance v3, Landroid/framework/util/jar/Attributes$Name;

    invoke-direct {v3, v2}, Landroid/framework/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Landroid/framework/util/jar/InitManifest;->name:Landroid/framework/util/jar/Attributes$Name;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    return-void

    .line 130
    .restart local v2    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private readValue()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 139
    const/4 v1, 0x0

    .line 140
    .local v1, "lastCr":Z
    iget v2, p0, Landroid/framework/util/jar/InitManifest;->pos:I

    .line 141
    .local v2, "mark":I
    iget v0, p0, Landroid/framework/util/jar/InitManifest;->pos:I

    .line 142
    .local v0, "last":I
    iget-object v4, p0, Landroid/framework/util/jar/InitManifest;->valueBuffer:Landroid/framework/langlang/UnsafeByteSequence;

    invoke-virtual {v4}, Landroid/framework/langlang/UnsafeByteSequence;->rewind()V

    .line 143
    :goto_0
    iget v4, p0, Landroid/framework/util/jar/InitManifest;->pos:I

    iget-object v5, p0, Landroid/framework/util/jar/InitManifest;->buf:[B

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 144
    iget-object v4, p0, Landroid/framework/util/jar/InitManifest;->buf:[B

    iget v5, p0, Landroid/framework/util/jar/InitManifest;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroid/framework/util/jar/InitManifest;->pos:I

    aget-byte v3, v4, v5

    .line 145
    .local v3, "next":B
    sparse-switch v3, :sswitch_data_0

    .line 168
    :cond_0
    iget v4, p0, Landroid/framework/util/jar/InitManifest;->consecutiveLineBreaks:I

    if-lt v4, v7, :cond_3

    .line 169
    iget v4, p0, Landroid/framework/util/jar/InitManifest;->pos:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/framework/util/jar/InitManifest;->pos:I

    .line 175
    .end local v3    # "next":B
    :cond_1
    iget-object v4, p0, Landroid/framework/util/jar/InitManifest;->valueBuffer:Landroid/framework/langlang/UnsafeByteSequence;

    iget-object v5, p0, Landroid/framework/util/jar/InitManifest;->buf:[B

    sub-int v6, v0, v2

    invoke-virtual {v4, v5, v2, v6}, Landroid/framework/langlang/UnsafeByteSequence;->write([BII)V

    .line 176
    iget-object v4, p0, Landroid/framework/util/jar/InitManifest;->valueBuffer:Landroid/framework/langlang/UnsafeByteSequence;

    sget-object v5, Lorg/apache/commons/compress/utils/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Landroid/framework/langlang/UnsafeByteSequence;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/framework/util/jar/InitManifest;->value:Ljava/lang/String;

    .line 177
    return-void

    .line 147
    .restart local v3    # "next":B
    :sswitch_0
    new-instance v4, Ljava/io/IOException;

    const-string v5, "NUL character in a manifest"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 149
    :sswitch_1
    if-eqz v1, :cond_2

    .line 150
    const/4 v1, 0x0

    goto :goto_0

    .line 152
    :cond_2
    iget v4, p0, Landroid/framework/util/jar/InitManifest;->consecutiveLineBreaks:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/framework/util/jar/InitManifest;->consecutiveLineBreaks:I

    goto :goto_0

    .line 156
    :sswitch_2
    const/4 v1, 0x1

    .line 157
    iget v4, p0, Landroid/framework/util/jar/InitManifest;->consecutiveLineBreaks:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/framework/util/jar/InitManifest;->consecutiveLineBreaks:I

    goto :goto_0

    .line 160
    :sswitch_3
    iget v4, p0, Landroid/framework/util/jar/InitManifest;->consecutiveLineBreaks:I

    if-ne v4, v7, :cond_0

    .line 161
    iget-object v4, p0, Landroid/framework/util/jar/InitManifest;->valueBuffer:Landroid/framework/langlang/UnsafeByteSequence;

    iget-object v5, p0, Landroid/framework/util/jar/InitManifest;->buf:[B

    sub-int v6, v0, v2

    invoke-virtual {v4, v5, v2, v6}, Landroid/framework/langlang/UnsafeByteSequence;->write([BII)V

    .line 162
    iget v2, p0, Landroid/framework/util/jar/InitManifest;->pos:I

    .line 163
    const/4 v4, 0x0

    iput v4, p0, Landroid/framework/util/jar/InitManifest;->consecutiveLineBreaks:I

    goto :goto_0

    .line 172
    :cond_3
    iget v0, p0, Landroid/framework/util/jar/InitManifest;->pos:I

    .line 173
    goto :goto_0

    .line 145
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0xd -> :sswitch_2
        0x20 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method getPos()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Landroid/framework/util/jar/InitManifest;->pos:I

    return v0
.end method

.method initEntries(Ljava/util/Map;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/framework/util/jar/Attributes;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/framework/util/jar/Manifest$Chunk;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/framework/util/jar/Attributes;>;"
    .local p2, "chunks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/framework/util/jar/Manifest$Chunk;>;"
    iget v2, p0, Landroid/framework/util/jar/InitManifest;->pos:I

    .line 60
    .local v2, "mark":I
    :goto_0
    invoke-direct {p0}, Landroid/framework/util/jar/InitManifest;->readHeader()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 61
    sget-object v3, Landroid/framework/util/jar/Attributes$Name;->NAME:Landroid/framework/util/jar/Attributes$Name;

    iget-object v4, p0, Landroid/framework/util/jar/InitManifest;->name:Landroid/framework/util/jar/Attributes$Name;

    invoke-virtual {v3, v4}, Landroid/framework/util/jar/Attributes$Name;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 62
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Entry is not named"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 64
    :cond_0
    iget-object v1, p0, Landroid/framework/util/jar/InitManifest;->value:Ljava/lang/String;

    .line 66
    .local v1, "entryNameValue":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/framework/util/jar/Attributes;

    .line 67
    .local v0, "entry":Landroid/framework/util/jar/Attributes;
    if-nez v0, :cond_1

    .line 68
    new-instance v0, Landroid/framework/util/jar/Attributes;

    .end local v0    # "entry":Landroid/framework/util/jar/Attributes;
    const/16 v3, 0xc

    invoke-direct {v0, v3}, Landroid/framework/util/jar/Attributes;-><init>(I)V

    .line 71
    .restart local v0    # "entry":Landroid/framework/util/jar/Attributes;
    :cond_1
    :goto_1
    invoke-direct {p0}, Landroid/framework/util/jar/InitManifest;->readHeader()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 72
    iget-object v3, p0, Landroid/framework/util/jar/InitManifest;->name:Landroid/framework/util/jar/Attributes$Name;

    iget-object v4, p0, Landroid/framework/util/jar/InitManifest;->value:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/framework/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 75
    :cond_2
    if-eqz p2, :cond_4

    .line 76
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 83
    new-instance v3, Ljava/io/IOException;

    const-string v4, "A jar verifier does not support more than one entry with the same name"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 85
    :cond_3
    new-instance v3, Landroid/framework/util/jar/Manifest$Chunk;

    iget v4, p0, Landroid/framework/util/jar/InitManifest;->pos:I

    invoke-direct {v3, v2, v4}, Landroid/framework/util/jar/Manifest$Chunk;-><init>(II)V

    invoke-interface {p2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget v2, p0, Landroid/framework/util/jar/InitManifest;->pos:I

    .line 89
    :cond_4
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 91
    .end local v0    # "entry":Landroid/framework/util/jar/Attributes;
    .end local v1    # "entryNameValue":Ljava/lang/String;
    :cond_5
    return-void
.end method
