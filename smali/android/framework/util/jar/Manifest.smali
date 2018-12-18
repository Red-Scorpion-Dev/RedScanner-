.class public Landroid/framework/util/jar/Manifest;
.super Ljava/lang/Object;
.source "Manifest.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/framework/util/jar/Manifest$Chunk;
    }
.end annotation


# static fields
.field private static final BAIS_BUF:Ljava/lang/reflect/Field;

.field private static final BAIS_POS:Ljava/lang/reflect/Field;

.field static final LINE_LENGTH_LIMIT:I = 0x48

.field private static final LINE_SEPARATOR:[B

.field private static final NAME_ATTRIBUTE:Landroid/framework/util/jar/Attributes$Name;

.field private static final VALUE_SEPARATOR:[B


# instance fields
.field private chunks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/framework/util/jar/Manifest$Chunk;",
            ">;"
        }
    .end annotation
.end field

.field private entries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/framework/util/jar/Attributes;",
            ">;"
        }
    .end annotation
.end field

.field private mainAttributes:Landroid/framework/util/jar/Attributes;

.field private mainEnd:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 44
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/framework/util/jar/Manifest;->LINE_SEPARATOR:[B

    .line 46
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Landroid/framework/util/jar/Manifest;->VALUE_SEPARATOR:[B

    .line 48
    new-instance v0, Landroid/framework/util/jar/Attributes$Name;

    const-string v1, "Name"

    invoke-direct {v0, v1}, Landroid/framework/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/framework/util/jar/Manifest;->NAME_ATTRIBUTE:Landroid/framework/util/jar/Attributes$Name;

    .line 50
    const-string v0, "buf"

    invoke-static {v0}, Landroid/framework/util/jar/Manifest;->getByteArrayInputStreamField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/framework/util/jar/Manifest;->BAIS_BUF:Ljava/lang/reflect/Field;

    .line 51
    const-string v0, "pos"

    invoke-static {v0}, Landroid/framework/util/jar/Manifest;->getByteArrayInputStreamField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/framework/util/jar/Manifest;->BAIS_POS:Ljava/lang/reflect/Field;

    return-void

    .line 44
    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 46
    nop

    :array_1
    .array-data 1
        0x3at
        0x20t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/framework/util/jar/Attributes;

    invoke-direct {v0}, Landroid/framework/util/jar/Attributes;-><init>()V

    iput-object v0, p0, Landroid/framework/util/jar/Manifest;->mainAttributes:Landroid/framework/util/jar/Attributes;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/framework/util/jar/Manifest;->entries:Ljava/util/HashMap;

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/framework/util/jar/Manifest;)V
    .locals 1
    .param p1, "man"    # Landroid/framework/util/jar/Manifest;

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/framework/util/jar/Attributes;

    invoke-direct {v0}, Landroid/framework/util/jar/Attributes;-><init>()V

    iput-object v0, p0, Landroid/framework/util/jar/Manifest;->mainAttributes:Landroid/framework/util/jar/Attributes;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/framework/util/jar/Manifest;->entries:Ljava/util/HashMap;

    .line 113
    iget-object v0, p1, Landroid/framework/util/jar/Manifest;->mainAttributes:Landroid/framework/util/jar/Attributes;

    invoke-virtual {v0}, Landroid/framework/util/jar/Attributes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/framework/util/jar/Attributes;

    iput-object v0, p0, Landroid/framework/util/jar/Manifest;->mainAttributes:Landroid/framework/util/jar/Attributes;

    .line 114
    invoke-virtual {p1}, Landroid/framework/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Landroid/framework/util/jar/Manifest;->entries:Ljava/util/HashMap;

    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/framework/util/jar/Attributes;

    invoke-direct {v0}, Landroid/framework/util/jar/Attributes;-><init>()V

    iput-object v0, p0, Landroid/framework/util/jar/Manifest;->mainAttributes:Landroid/framework/util/jar/Attributes;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/framework/util/jar/Manifest;->entries:Ljava/util/HashMap;

    .line 101
    invoke-virtual {p0, p1}, Landroid/framework/util/jar/Manifest;->read(Ljava/io/InputStream;)V

    .line 102
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Z)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "readChunks"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/framework/util/jar/Attributes;

    invoke-direct {v0}, Landroid/framework/util/jar/Attributes;-><init>()V

    iput-object v0, p0, Landroid/framework/util/jar/Manifest;->mainAttributes:Landroid/framework/util/jar/Attributes;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/framework/util/jar/Manifest;->entries:Ljava/util/HashMap;

    .line 119
    if-eqz p2, :cond_0

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/framework/util/jar/Manifest;->chunks:Ljava/util/HashMap;

    .line 122
    :cond_0
    invoke-virtual {p0, p1}, Landroid/framework/util/jar/Manifest;->read(Ljava/io/InputStream;)V

    .line 123
    return-void
.end method

.method private static exposeByteArrayInputStreamBytes(Ljava/io/ByteArrayInputStream;)[B
    .locals 10
    .param p0, "bais"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 232
    monitor-enter p0

    .line 236
    :try_start_0
    sget-object v7, Landroid/framework/util/jar/Manifest;->BAIS_BUF:Ljava/lang/reflect/Field;

    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    move-object v0, v7

    check-cast v0, [B

    move-object v3, v0

    .line 237
    .local v3, "buf":[B
    sget-object v7, Landroid/framework/util/jar/Manifest;->BAIS_POS:Ljava/lang/reflect/Field;

    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 241
    .local v6, "pos":I
    :try_start_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    .line 242
    .local v2, "available":I
    if-nez v6, :cond_0

    array-length v7, v3

    if-ne v7, v2, :cond_0

    .line 243
    move-object v4, v3

    .line 248
    .local v4, "buffer":[B
    :goto_0
    int-to-long v8, v2

    invoke-virtual {p0, v8, v9}, Ljava/io/ByteArrayInputStream;->skip(J)J

    .line 249
    monitor-exit p0

    .line 250
    return-object v4

    .line 238
    .end local v2    # "available":I
    .end local v3    # "buf":[B
    .end local v4    # "buffer":[B
    .end local v6    # "pos":I
    :catch_0
    move-exception v5

    .line 239
    .local v5, "iae":Ljava/lang/IllegalAccessException;
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 249
    .end local v5    # "iae":Ljava/lang/IllegalAccessException;
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 245
    .restart local v2    # "available":I
    .restart local v3    # "buf":[B
    .restart local v6    # "pos":I
    :cond_0
    :try_start_2
    new-array v4, v2, [B

    .line 246
    .restart local v4    # "buffer":[B
    const/4 v7, 0x0

    invoke-static {v3, v6, v4, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private static getByteArrayInputStreamField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 55
    :try_start_0
    const-class v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 56
    .local v1, "f":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    return-object v1

    .line 58
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 59
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method static write(Landroid/framework/util/jar/Manifest;Ljava/io/OutputStream;)V
    .locals 10
    .param p0, "manifest"    # Landroid/framework/util/jar/Manifest;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    sget-object v8, Lorg/apache/commons/compress/utils/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v2

    .line 308
    .local v2, "encoder":Ljava/nio/charset/CharsetEncoder;
    const/16 v8, 0x48

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 310
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    iget-object v8, p0, Landroid/framework/util/jar/Manifest;->mainAttributes:Landroid/framework/util/jar/Attributes;

    sget-object v9, Landroid/framework/util/jar/Attributes$Name;->MANIFEST_VERSION:Landroid/framework/util/jar/Attributes$Name;

    invoke-virtual {v8, v9}, Landroid/framework/util/jar/Attributes;->getValue(Landroid/framework/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v7

    .line 311
    .local v7, "version":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 312
    sget-object v8, Landroid/framework/util/jar/Attributes$Name;->MANIFEST_VERSION:Landroid/framework/util/jar/Attributes$Name;

    invoke-static {p1, v8, v7, v2, v1}, Landroid/framework/util/jar/Manifest;->writeEntry(Ljava/io/OutputStream;Landroid/framework/util/jar/Attributes$Name;Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V

    .line 313
    iget-object v8, p0, Landroid/framework/util/jar/Manifest;->mainAttributes:Landroid/framework/util/jar/Attributes;

    invoke-virtual {v8}, Landroid/framework/util/jar/Attributes;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 314
    .local v3, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 315
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/framework/util/jar/Attributes$Name;

    .line 316
    .local v6, "name":Landroid/framework/util/jar/Attributes$Name;
    sget-object v8, Landroid/framework/util/jar/Attributes$Name;->MANIFEST_VERSION:Landroid/framework/util/jar/Attributes$Name;

    invoke-virtual {v6, v8}, Landroid/framework/util/jar/Attributes$Name;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 317
    iget-object v8, p0, Landroid/framework/util/jar/Manifest;->mainAttributes:Landroid/framework/util/jar/Attributes;

    invoke-virtual {v8, v6}, Landroid/framework/util/jar/Attributes;->getValue(Landroid/framework/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v6, v8, v2, v1}, Landroid/framework/util/jar/Manifest;->writeEntry(Ljava/io/OutputStream;Landroid/framework/util/jar/Attributes$Name;Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 321
    .end local v3    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v6    # "name":Landroid/framework/util/jar/Attributes$Name;
    :cond_1
    sget-object v8, Landroid/framework/util/jar/Manifest;->LINE_SEPARATOR:[B

    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write([B)V

    .line 322
    invoke-virtual {p0}, Landroid/framework/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 323
    .local v4, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 324
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 325
    .local v5, "key":Ljava/lang/String;
    sget-object v8, Landroid/framework/util/jar/Manifest;->NAME_ATTRIBUTE:Landroid/framework/util/jar/Attributes$Name;

    invoke-static {p1, v8, v5, v2, v1}, Landroid/framework/util/jar/Manifest;->writeEntry(Ljava/io/OutputStream;Landroid/framework/util/jar/Attributes$Name;Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V

    .line 326
    iget-object v8, p0, Landroid/framework/util/jar/Manifest;->entries:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/framework/util/jar/Attributes;

    .line 327
    .local v0, "attrib":Landroid/framework/util/jar/Attributes;
    invoke-virtual {v0}, Landroid/framework/util/jar/Attributes;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 328
    .restart local v3    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 329
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/framework/util/jar/Attributes$Name;

    .line 330
    .restart local v6    # "name":Landroid/framework/util/jar/Attributes$Name;
    invoke-virtual {v0, v6}, Landroid/framework/util/jar/Attributes;->getValue(Landroid/framework/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v6, v8, v2, v1}, Landroid/framework/util/jar/Manifest;->writeEntry(Ljava/io/OutputStream;Landroid/framework/util/jar/Attributes$Name;Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V

    goto :goto_2

    .line 332
    .end local v6    # "name":Landroid/framework/util/jar/Attributes$Name;
    :cond_2
    sget-object v8, Landroid/framework/util/jar/Manifest;->LINE_SEPARATOR:[B

    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    .line 334
    .end local v0    # "attrib":Landroid/framework/util/jar/Attributes;
    .end local v3    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v5    # "key":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private static writeEntry(Ljava/io/OutputStream;Landroid/framework/util/jar/Attributes$Name;Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "name"    # Landroid/framework/util/jar/Attributes$Name;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "encoder"    # Ljava/nio/charset/CharsetEncoder;
    .param p4, "bBuf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    invoke-virtual {p1}, Landroid/framework/util/jar/Attributes$Name;->getName()Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, "nameString":Ljava/lang/String;
    sget-object v3, Lorg/apache/commons/compress/utils/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 340
    sget-object v3, Landroid/framework/util/jar/Manifest;->VALUE_SEPARATOR:[B

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 342
    invoke-virtual {p3}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 343
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x48

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v3, v4}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 345
    invoke-static {p2}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 348
    .local v0, "cBuf":Ljava/nio/CharBuffer;
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {p3, v0, p4, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v2

    .line 349
    .local v2, "r":Ljava/nio/charset/CoderResult;
    sget-object v3, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    if-ne v3, v2, :cond_0

    .line 350
    invoke-virtual {p3, p4}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v2

    .line 352
    :cond_0
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 353
    sget-object v3, Landroid/framework/util/jar/Manifest;->LINE_SEPARATOR:[B

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 354
    sget-object v3, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    if-ne v3, v2, :cond_1

    .line 360
    return-void

    .line 357
    :cond_1
    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 358
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v3

    const/16 v4, 0x47

    invoke-virtual {v3, v4}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Landroid/framework/util/jar/Manifest;->entries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 131
    iget-object v0, p0, Landroid/framework/util/jar/Manifest;->mainAttributes:Landroid/framework/util/jar/Attributes;

    invoke-virtual {v0}, Landroid/framework/util/jar/Attributes;->clear()V

    .line 132
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 175
    new-instance v0, Landroid/framework/util/jar/Manifest;

    invoke-direct {v0, p0}, Landroid/framework/util/jar/Manifest;-><init>(Landroid/framework/util/jar/Manifest;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 274
    if-nez p1, :cond_0

    move v0, v1

    .line 280
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .line 277
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Landroid/framework/util/jar/Manifest;->mainAttributes:Landroid/framework/util/jar/Attributes;

    move-object v0, p1

    check-cast v0, Landroid/framework/util/jar/Manifest;

    iget-object v0, v0, Landroid/framework/util/jar/Manifest;->mainAttributes:Landroid/framework/util/jar/Attributes;

    invoke-virtual {v2, v0}, Landroid/framework/util/jar/Attributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 278
    goto :goto_0

    .line 280
    :cond_1
    invoke-virtual {p0}, Landroid/framework/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v0

    check-cast p1, Landroid/framework/util/jar/Manifest;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/framework/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAttributes(Ljava/lang/String;)Landroid/framework/util/jar/Attributes;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0}, Landroid/framework/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/framework/util/jar/Attributes;

    return-object v0
.end method

.method getChunk(Ljava/lang/String;)Landroid/framework/util/jar/Manifest$Chunk;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 284
    iget-object v0, p0, Landroid/framework/util/jar/Manifest;->chunks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/framework/util/jar/Manifest$Chunk;

    return-object v0
.end method

.method public getEntries()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/framework/util/jar/Attributes;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Landroid/framework/util/jar/Manifest;->entries:Ljava/util/HashMap;

    return-object v0
.end method

.method public getMainAttributes()Landroid/framework/util/jar/Attributes;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Landroid/framework/util/jar/Manifest;->mainAttributes:Landroid/framework/util/jar/Attributes;

    return-object v0
.end method

.method getMainAttributesEnd()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Landroid/framework/util/jar/Manifest;->mainEnd:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Landroid/framework/util/jar/Manifest;->mainAttributes:Landroid/framework/util/jar/Attributes;

    invoke-virtual {v0}, Landroid/framework/util/jar/Attributes;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Landroid/framework/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    instance-of v3, p1, Ljava/io/ByteArrayInputStream;

    if-eqz v3, :cond_0

    .line 202
    check-cast p1, Ljava/io/ByteArrayInputStream;

    .end local p1    # "is":Ljava/io/InputStream;
    invoke-static {p1}, Landroid/framework/util/jar/Manifest;->exposeByteArrayInputStreamBytes(Ljava/io/ByteArrayInputStream;)[B

    move-result-object v1

    .line 207
    .local v1, "buf":[B
    :goto_0
    array-length v3, v1

    if-nez v3, :cond_1

    .line 224
    :goto_1
    return-void

    .line 204
    .end local v1    # "buf":[B
    .restart local p1    # "is":Ljava/io/InputStream;
    :cond_0
    invoke-static {p1}, Landroid/framework/libcore/io/Streams;->readFullyNoClose(Ljava/io/InputStream;)[B

    move-result-object v1

    .restart local v1    # "buf":[B
    goto :goto_0

    .line 214
    .end local p1    # "is":Ljava/io/InputStream;
    :cond_1
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-byte v0, v1, v3

    .line 215
    .local v0, "b":B
    if-eqz v0, :cond_2

    const/16 v3, 0x1a

    if-ne v0, v3, :cond_3

    .line 216
    :cond_2
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    const/16 v4, 0xa

    aput-byte v4, v1, v3

    .line 221
    :cond_3
    new-instance v2, Landroid/framework/util/jar/InitManifest;

    iget-object v3, p0, Landroid/framework/util/jar/Manifest;->mainAttributes:Landroid/framework/util/jar/Attributes;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Landroid/framework/util/jar/InitManifest;-><init>([BLandroid/framework/util/jar/Attributes;Landroid/framework/util/jar/Attributes$Name;)V

    .line 222
    .local v2, "im":Landroid/framework/util/jar/InitManifest;
    invoke-virtual {v2}, Landroid/framework/util/jar/InitManifest;->getPos()I

    move-result v3

    iput v3, p0, Landroid/framework/util/jar/Manifest;->mainEnd:I

    .line 223
    iget-object v3, p0, Landroid/framework/util/jar/Manifest;->entries:Ljava/util/HashMap;

    iget-object v4, p0, Landroid/framework/util/jar/Manifest;->chunks:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v4}, Landroid/framework/util/jar/InitManifest;->initEntries(Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_1
.end method

.method removeChunks()V
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/framework/util/jar/Manifest;->chunks:Ljava/util/HashMap;

    .line 289
    return-void
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-static {p0, p1}, Landroid/framework/util/jar/Manifest;->write(Landroid/framework/util/jar/Manifest;Ljava/io/OutputStream;)V

    .line 189
    return-void
.end method
