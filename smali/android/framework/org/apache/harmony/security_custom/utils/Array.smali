.class public Landroid/framework/org/apache/harmony/security_custom/utils/Array;
.super Ljava/lang/Object;
.source "Array.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static getBytesAsString([B)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B

    .prologue
    const/4 v4, 0x1

    .line 39
    const-string v0, "%040x"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v4, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString([BLjava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "array"    # [B
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 54
    const/4 v9, 0x5

    new-array v6, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, ""

    aput-object v10, v6, v9

    const/4 v9, 0x1

    const-string v10, "000"

    aput-object v10, v6, v9

    const/4 v9, 0x2

    const-string v10, "00"

    aput-object v10, v6, v9

    const/4 v9, 0x3

    const-string v10, "0"

    aput-object v10, v6, v9

    const/4 v9, 0x4

    const-string v10, ""

    aput-object v10, v6, v9

    .line 61
    .local v6, "offsetPrefix":[Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .local v7, "sb":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .local v0, "charForm":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 64
    .local v3, "i":I
    const/4 v3, 0x0

    :goto_0
    array-length v9, p0

    if-ge v3, v9, :cond_4

    .line 65
    rem-int/lit8 v9, v3, 0x10

    if-nez v9, :cond_0

    .line 66
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 69
    .local v5, "offset":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    aget-object v9, v6, v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const/4 v9, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 75
    .end local v5    # "offset":Ljava/lang/String;
    :cond_0
    const/16 v9, 0x20

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    const-string v9, "%040x"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-byte v12, p0, v3

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    aget-byte v9, p0, v3

    and-int/lit16 v1, v9, 0xff

    .line 80
    .local v1, "currentByte":I
    const v9, 0xffff

    and-int/2addr v9, v1

    int-to-char v2, v9

    .line 82
    .local v2, "currentChar":C
    invoke-static {v2}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v2, 0x2e

    .end local v2    # "currentChar":C
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    add-int/lit8 v9, v3, 0x1

    rem-int/lit8 v9, v9, 0x8

    if-nez v9, :cond_2

    .line 86
    const/16 v9, 0x20

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    :cond_2
    add-int/lit8 v9, v3, 0x1

    rem-int/lit8 v9, v9, 0x10

    if-nez v9, :cond_3

    .line 90
    const/16 v9, 0x20

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const/16 v9, 0xa

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 96
    .end local v1    # "currentByte":I
    :cond_4
    rem-int/lit8 v9, v3, 0x10

    if-eqz v9, :cond_7

    .line 97
    rem-int/lit8 v9, v3, 0x10

    rsub-int/lit8 v8, v9, 0x10

    .line 98
    .local v8, "ws2add":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v8, :cond_5

    .line 99
    const-string v9, "   "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 101
    :cond_5
    const/16 v9, 0x8

    if-le v8, v9, :cond_6

    .line 102
    const/16 v9, 0x20

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    :cond_6
    const-string v9, "  "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const/16 v9, 0xa

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    .end local v4    # "j":I
    .end local v8    # "ws2add":I
    :cond_7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method
