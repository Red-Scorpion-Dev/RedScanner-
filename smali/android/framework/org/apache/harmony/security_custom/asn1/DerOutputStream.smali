.class public final Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;
.super Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;
.source "DerOutputStream.java"


# static fields
.field private static final initSize:I = 0x20


# instance fields
.field private index:I

.field private len:[[I

.field private val:[[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;Ljava/lang/Object;)V
    .locals 2
    .param p1, "asn1"    # Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    const/16 v1, 0x20

    .line 38
    invoke-direct {p0}, Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;-><init>()V

    .line 35
    new-array v0, v1, [[I

    iput-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->len:[[I

    .line 36
    new-array v0, v1, [[Ljava/lang/Object;

    iput-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    .line 39
    iput-object p2, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->content:Ljava/lang/Object;

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->index:I

    .line 41
    invoke-virtual {p1, p0}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;->setEncodingContent(Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;)V

    .line 42
    invoke-virtual {p1, p0}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;->getEncodedLength(Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;)I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->encoded:[B

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->index:I

    .line 44
    invoke-virtual {p1, p0}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;->encodeASN(Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;)V

    .line 45
    return-void
.end method

.method private encodeValueCollection(Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1ValueCollection;)V
    .locals 5
    .param p1, "collection"    # Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1ValueCollection;

    .prologue
    .line 89
    iget-object v3, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    iget v4, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->index:I

    aget-object v2, v3, v4

    .line 90
    .local v2, "values":[Ljava/lang/Object;
    iget-object v3, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->len:[[I

    iget v4, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->index:I

    aget-object v0, v3, v4

    .line 92
    .local v0, "compLens":[I
    iget v3, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->index:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->index:I

    .line 93
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 94
    aget-object v3, v2, v1

    iput-object v3, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->content:Ljava/lang/Object;

    .line 95
    aget v3, v0, v1

    iput v3, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->length:I

    .line 96
    iget-object v3, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1ValueCollection;->type:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    invoke-virtual {v3, p0}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;->encodeASN(Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;)V

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    :cond_0
    return-void
.end method

.method private getValueOfLength(Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1ValueCollection;)V
    .locals 6
    .param p1, "collection"    # Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1ValueCollection;

    .prologue
    .line 200
    iget-object v5, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->content:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1ValueCollection;->getValues(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 202
    .local v1, "cv":[Ljava/lang/Object;
    array-length v5, v1

    new-array v4, v5, [Ljava/lang/Object;

    .line 203
    .local v4, "values":[Ljava/lang/Object;
    array-length v5, v4

    new-array v0, v5, [I

    .line 205
    .local v0, "compLens":[I
    invoke-direct {p0, v0, v4}, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->push([I[Ljava/lang/Object;)V

    .line 206
    const/4 v3, 0x0

    .line 207
    .local v3, "seqLen":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_0

    .line 209
    aget-object v5, v1, v2

    iput-object v5, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->content:Ljava/lang/Object;

    .line 211
    iget-object v5, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1ValueCollection;->type:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    invoke-virtual {v5, p0}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;->setEncodingContent(Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;)V

    .line 213
    iget v5, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->length:I

    aput v5, v0, v2

    .line 217
    iget-object v5, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->content:Ljava/lang/Object;

    aput-object v5, v4, v2

    .line 219
    iget-object v5, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1ValueCollection;->type:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    invoke-virtual {v5, p0}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;->getEncodedLength(Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;)I

    move-result v5

    add-int/2addr v3, v5

    .line 207
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 221
    :cond_0
    iput v3, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->length:I

    .line 222
    return-void
.end method

.method private push([I[Ljava/lang/Object;)V
    .locals 5
    .param p1, "lengths"    # [I
    .param p2, "values"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 101
    iget v2, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->index:I

    .line 102
    iget v2, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->index:I

    iget-object v3, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    array-length v3, v3

    if-ne v2, v3, :cond_0

    .line 104
    iget-object v2, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [[I

    .line 105
    .local v0, "newLen":[[I
    iget-object v2, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->len:[[I

    iget-object v3, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    array-length v3, v3

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    iput-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->len:[[I

    .line 108
    iget-object v2, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    new-array v1, v2, [[Ljava/lang/Object;

    .line 109
    .local v1, "newVal":[[Ljava/lang/Object;
    iget-object v2, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    iget-object v3, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    array-length v3, v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    iput-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    .line 112
    .end local v0    # "newLen":[[I
    .end local v1    # "newVal":[[Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->len:[[I

    iget v3, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->index:I

    aput-object p1, v2, v3

    .line 113
    iget-object v2, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    iget v3, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->index:I

    aput-object p2, v2, v3

    .line 114
    return-void
.end method


# virtual methods
.method public encodeChoice(Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Choice;)V
    .locals 3
    .param p1, "choice"    # Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Choice;

    .prologue
    .line 48
    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    iget v2, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->index:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget-object v0, v1, v2

    check-cast v0, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    .line 49
    .local v0, "type":Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;
    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    iget v2, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->index:I

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iput-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->content:Ljava/lang/Object;

    .line 50
    iget v1, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->index:I

    .line 51
    invoke-virtual {v0, p0}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;->encodeASN(Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;)V

    .line 52
    return-void
.end method

.method public encodeExplicit(Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Explicit;)V
    .locals 3
    .param p1, "explicit"    # Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Explicit;

    .prologue
    const/4 v2, 0x0

    .line 55
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    iget v1, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->index:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    iput-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->content:Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->len:[[I

    iget v1, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->index:I

    aget-object v0, v0, v1

    aget v0, v0, v2

    iput v0, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->length:I

    .line 57
    iget v0, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->index:I

    .line 58
    iget-object v0, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Explicit;->type:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    invoke-virtual {v0, p0}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;->encodeASN(Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;)V

    .line 59
    return-void
.end method

.method public encodeSequence(Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;)V
    .locals 6
    .param p1, "sequence"    # Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;

    .prologue
    .line 62
    iget-object v2, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;->type:[Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    .line 64
    .local v2, "type":[Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;
    iget-object v4, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->val:[[Ljava/lang/Object;

    iget v5, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->index:I

    aget-object v3, v4, v5

    .line 65
    .local v3, "values":[Ljava/lang/Object;
    iget-object v4, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->len:[[I

    iget v5, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->index:I

    aget-object v0, v4, v5

    .line 67
    .local v0, "compLens":[I
    iget v4, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->index:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->index:I

    .line 68
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_1

    .line 69
    aget-object v4, v3, v1

    if-nez v4, :cond_0

    .line 68
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    :cond_0
    aget-object v4, v3, v1

    iput-object v4, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->content:Ljava/lang/Object;

    .line 74
    aget v4, v0, v1

    iput v4, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->length:I

    .line 76
    aget-object v4, v2, v1

    invoke-virtual {v4, p0}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;->encodeASN(Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;)V

    goto :goto_1

    .line 78
    :cond_1
    return-void
.end method

.method public encodeSequenceOf(Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1SequenceOf;)V
    .locals 0
    .param p1, "sequenceOf"    # Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1SequenceOf;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->encodeValueCollection(Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1ValueCollection;)V

    .line 82
    return-void
.end method

.method public encodeSetOf(Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1SetOf;)V
    .locals 0
    .param p1, "setOf"    # Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1SetOf;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->encodeValueCollection(Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1ValueCollection;)V

    .line 86
    return-void
.end method

.method public getChoiceLength(Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Choice;)V
    .locals 5
    .param p1, "choice"    # Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Choice;

    .prologue
    const/4 v4, 0x1

    .line 117
    iget-object v2, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->content:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Choice;->getIndex(Ljava/lang/Object;)I

    move-result v0

    .line 118
    .local v0, "i":I
    iget-object v2, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->content:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Choice;->getObjectToEncode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->content:Ljava/lang/Object;

    .line 120
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Choice;->type:[Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    aget-object v3, v3, v0

    aput-object v3, v1, v2

    iget-object v2, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->content:Ljava/lang/Object;

    aput-object v2, v1, v4

    .line 122
    .local v1, "values":[Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->push([I[Ljava/lang/Object;)V

    .line 124
    iget-object v2, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Choice;->type:[Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;->setEncodingContent(Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;)V

    .line 128
    iget-object v2, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->content:Ljava/lang/Object;

    aput-object v2, v1, v4

    .line 129
    return-void
.end method

.method public getExplicitLength(Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Explicit;)V
    .locals 4
    .param p1, "explicit"    # Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Explicit;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 132
    new-array v1, v2, [Ljava/lang/Object;

    .line 133
    .local v1, "values":[Ljava/lang/Object;
    new-array v0, v2, [I

    .line 135
    .local v0, "compLens":[I
    iget-object v2, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->content:Ljava/lang/Object;

    aput-object v2, v1, v3

    .line 137
    invoke-direct {p0, v0, v1}, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->push([I[Ljava/lang/Object;)V

    .line 139
    iget-object v2, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Explicit;->type:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    invoke-virtual {v2, p0}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;->setEncodingContent(Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;)V

    .line 143
    iget-object v2, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->content:Ljava/lang/Object;

    aput-object v2, v1, v3

    .line 144
    iget v2, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->length:I

    aput v2, v0, v3

    .line 146
    iget-object v2, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Explicit;->type:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    invoke-virtual {v2, p0}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;->getEncodedLength(Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;)I

    move-result v2

    iput v2, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->length:I

    .line 147
    return-void
.end method

.method public getSequenceLength(Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;)V
    .locals 7
    .param p1, "sequence"    # Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;

    .prologue
    .line 150
    iget-object v3, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;->type:[Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    .line 152
    .local v3, "type":[Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;
    array-length v5, v3

    new-array v4, v5, [Ljava/lang/Object;

    .line 153
    .local v4, "values":[Ljava/lang/Object;
    array-length v5, v3

    new-array v0, v5, [I

    .line 155
    .local v0, "compLens":[I
    iget-object v5, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->content:Ljava/lang/Object;

    invoke-virtual {p1, v5, v4}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;->getValues(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 157
    invoke-direct {p0, v0, v4}, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->push([I[Ljava/lang/Object;)V

    .line 159
    const/4 v2, 0x0

    .line 160
    .local v2, "seqLen":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_3

    .line 162
    aget-object v5, v4, v1

    if-nez v5, :cond_1

    .line 163
    iget-object v5, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;->OPTIONAL:[Z

    aget-boolean v5, v5, v1

    if-eqz v5, :cond_0

    .line 160
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    :cond_0
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    throw v5

    .line 170
    :cond_1
    iget-object v5, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;->DEFAULT:[Ljava/lang/Object;

    aget-object v5, v5, v1

    aget-object v6, v4, v1

    if-ne v5, v6, :cond_2

    .line 171
    const/4 v5, 0x0

    aput-object v5, v4, v1

    goto :goto_1

    .line 175
    :cond_2
    aget-object v5, v4, v1

    iput-object v5, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->content:Ljava/lang/Object;

    .line 177
    aget-object v5, v3, v1

    invoke-virtual {v5, p0}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;->setEncodingContent(Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;)V

    .line 179
    iget v5, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->length:I

    aput v5, v0, v1

    .line 183
    iget-object v5, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->content:Ljava/lang/Object;

    aput-object v5, v4, v1

    .line 185
    aget-object v5, v3, v1

    invoke-virtual {v5, p0}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;->getEncodedLength(Landroid/framework/org/apache/harmony/security_custom/asn1/BerOutputStream;)I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_1

    .line 187
    :cond_3
    iput v2, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->length:I

    .line 188
    return-void
.end method

.method public getSequenceOfLength(Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1SequenceOf;)V
    .locals 0
    .param p1, "sequence"    # Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1SequenceOf;

    .prologue
    .line 191
    invoke-direct {p0, p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->getValueOfLength(Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1ValueCollection;)V

    .line 192
    return-void
.end method

.method public getSetOfLength(Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1SetOf;)V
    .locals 0
    .param p1, "setOf"    # Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1SetOf;

    .prologue
    .line 195
    invoke-direct {p0, p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/DerOutputStream;->getValueOfLength(Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1ValueCollection;)V

    .line 196
    return-void
.end method
