.class public final Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;
.super Ljava/lang/Object;
.source "Extensions.java"


# static fields
.field public static final ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

.field private static SUPPORTED_CRITICAL:Ljava/util/List;


# instance fields
.field private critical:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private encoding:[B

.field private extensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/framework/org/apache/harmony/security_custom/x509/Extension;",
            ">;"
        }
    .end annotation
.end field

.field private hasUnsupported:Z

.field private noncritical:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private oidMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/framework/org/apache/harmony/security_custom/x509/Extension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "2.5.29.15"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "2.5.29.19"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "2.5.29.32"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "2.5.29.17"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "2.5.29.30"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "2.5.29.36"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "2.5.29.37"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "2.5.29.54"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->SUPPORTED_CRITICAL:Ljava/util/List;

    .line 346
    new-instance v0, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions$1;

    sget-object v1, Landroid/framework/org/apache/harmony/security_custom/x509/Extension;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;

    invoke-direct {v0, v1}, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions$1;-><init>(Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V

    sput-object v0, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/framework/org/apache/harmony/security_custom/x509/Extension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "extensions":Ljava/util/List;, "Ljava/util/List<Landroid/framework/org/apache/harmony/security_custom/x509/Extension;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->extensions:Ljava/util/List;

    .line 77
    return-void
.end method

.method static synthetic access$000(Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;

    .prologue
    .line 50
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->extensions:Ljava/util/List;

    return-object v0
.end method

.method private makeOidsLists()V
    .locals 5

    .prologue
    .line 115
    iget-object v4, p0, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->extensions:Ljava/util/List;

    if-nez v4, :cond_1

    .line 132
    :cond_0
    return-void

    .line 118
    :cond_1
    iget-object v4, p0, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->extensions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 119
    .local v3, "size":I
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v4, p0, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->critical:Ljava/util/Set;

    .line 120
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v4, p0, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->noncritical:Ljava/util/Set;

    .line 121
    iget-object v4, p0, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->extensions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/framework/org/apache/harmony/security_custom/x509/Extension;

    .line 122
    .local v0, "extension":Landroid/framework/org/apache/harmony/security_custom/x509/Extension;
    invoke-virtual {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/Extension;->getExtnID()Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "oid":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/Extension;->getCritical()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 124
    sget-object v4, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->SUPPORTED_CRITICAL:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 125
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->hasUnsupported:Z

    .line 127
    :cond_2
    iget-object v4, p0, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->critical:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 129
    :cond_3
    iget-object v4, p0, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->noncritical:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 333
    iget-object v4, p0, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->extensions:Ljava/util/List;

    if-nez v4, :cond_1

    .line 341
    :cond_0
    return-void

    .line 336
    :cond_1
    const/4 v2, 0x1

    .line 337
    .local v2, "num":I
    iget-object v4, p0, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->extensions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/framework/org/apache/harmony/security_custom/x509/Extension;

    .line 338
    .local v0, "extension":Landroid/framework/org/apache/harmony/security_custom/x509/Extension;
    const/16 v4, 0xa

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "num":I
    .local v3, "num":I
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v0, p1, p2}, Landroid/framework/org/apache/harmony/security_custom/x509/Extension;->dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    move v2, v3

    .line 340
    .end local v3    # "num":I
    .restart local v2    # "num":I
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 315
    instance-of v2, p1, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;

    if-nez v2, :cond_1

    .line 319
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 318
    check-cast v0, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;

    .line 319
    .local v0, "that":Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;
    iget-object v2, p0, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->extensions:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->extensions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, v0, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->extensions:Ljava/util/List;

    if-eqz v2, :cond_3

    iget-object v2, v0, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->extensions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->extensions:Ljava/util/List;

    iget-object v2, v0, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->extensions:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getCriticalExtensions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->critical:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 88
    invoke-direct {p0}, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->makeOidsLists()V

    .line 90
    :cond_0
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->critical:Ljava/util/Set;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->encoding:[B

    if-nez v0, :cond_0

    .line 309
    sget-object v0, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    invoke-virtual {v0, p0}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->encoding:[B

    .line 311
    :cond_0
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->encoding:[B

    return-object v0
.end method

.method public getExtensionByOID(Ljava/lang/String;)Landroid/framework/org/apache/harmony/security_custom/x509/Extension;
    .locals 4
    .param p1, "oid"    # Ljava/lang/String;

    .prologue
    .line 138
    iget-object v2, p0, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->extensions:Ljava/util/List;

    if-nez v2, :cond_0

    .line 139
    const/4 v2, 0x0

    .line 147
    :goto_0
    return-object v2

    .line 141
    :cond_0
    iget-object v2, p0, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->oidMap:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 142
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->oidMap:Ljava/util/HashMap;

    .line 143
    iget-object v2, p0, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->extensions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/framework/org/apache/harmony/security_custom/x509/Extension;

    .line 144
    .local v0, "extension":Landroid/framework/org/apache/harmony/security_custom/x509/Extension;
    iget-object v2, p0, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->oidMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/Extension;->getExtnID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 147
    .end local v0    # "extension":Landroid/framework/org/apache/harmony/security_custom/x509/Extension;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->oidMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/framework/org/apache/harmony/security_custom/x509/Extension;

    goto :goto_0
.end method

.method public getNonCriticalExtensions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->noncritical:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 98
    invoke-direct {p0}, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->makeOidsLists()V

    .line 100
    :cond_0
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->noncritical:Ljava/util/Set;

    return-object v0
.end method

.method public hasUnsupportedCritical()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->critical:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 105
    invoke-direct {p0}, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->makeOidsLists()V

    .line 107
    :cond_0
    iget-boolean v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->hasUnsupported:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 325
    const/4 v0, 0x0

    .line 326
    .local v0, "hashCode":I
    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->extensions:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 327
    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->extensions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v0

    .line 329
    :cond_0
    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->extensions:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->extensions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public valueOfBasicConstrains()I
    .locals 3

    .prologue
    .line 229
    const-string v2, "2.5.29.19"

    invoke-virtual {p0, v2}, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->getExtensionByOID(Ljava/lang/String;)Landroid/framework/org/apache/harmony/security_custom/x509/Extension;

    move-result-object v1

    .line 231
    .local v1, "extension":Landroid/framework/org/apache/harmony/security_custom/x509/Extension;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/framework/org/apache/harmony/security_custom/x509/Extension;->getBasicConstraintsValue()Landroid/framework/org/apache/harmony/security_custom/x509/BasicConstraints;

    move-result-object v0

    .local v0, "bc":Landroid/framework/org/apache/harmony/security_custom/x509/BasicConstraints;
    if-nez v0, :cond_1

    .line 232
    .end local v0    # "bc":Landroid/framework/org/apache/harmony/security_custom/x509/BasicConstraints;
    :cond_0
    const v2, 0x7fffffff

    .line 234
    :goto_0
    return v2

    .restart local v0    # "bc":Landroid/framework/org/apache/harmony/security_custom/x509/BasicConstraints;
    :cond_1
    invoke-virtual {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/BasicConstraints;->getPathLenConstraint()I

    move-result v2

    goto :goto_0
.end method

.method public valueOfCertificateIssuerExtension()Ljavax/security/auth/x500/X500Principal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    const-string v1, "2.5.29.29"

    invoke-virtual {p0, v1}, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->getExtensionByOID(Ljava/lang/String;)Landroid/framework/org/apache/harmony/security_custom/x509/Extension;

    move-result-object v0

    .line 298
    .local v0, "extension":Landroid/framework/org/apache/harmony/security_custom/x509/Extension;
    if-nez v0, :cond_0

    .line 299
    const/4 v1, 0x0

    .line 301
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/Extension;->getDecodedExtensionValue()Landroid/framework/org/apache/harmony/security_custom/x509/ExtensionValue;

    move-result-object v1

    check-cast v1, Landroid/framework/org/apache/harmony/security_custom/x509/CertificateIssuer;

    invoke-virtual {v1}, Landroid/framework/org/apache/harmony/security_custom/x509/CertificateIssuer;->getIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    goto :goto_0
.end method

.method public valueOfExtendedKeyUsage()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    const-string v1, "2.5.29.37"

    invoke-virtual {p0, v1}, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->getExtensionByOID(Ljava/lang/String;)Landroid/framework/org/apache/harmony/security_custom/x509/Extension;

    move-result-object v0

    .line 205
    .local v0, "extension":Landroid/framework/org/apache/harmony/security_custom/x509/Extension;
    if-nez v0, :cond_0

    .line 206
    const/4 v1, 0x0

    .line 208
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/Extension;->getDecodedExtensionValue()Landroid/framework/org/apache/harmony/security_custom/x509/ExtensionValue;

    move-result-object v1

    check-cast v1, Landroid/framework/org/apache/harmony/security_custom/x509/ExtendedKeyUsage;

    invoke-virtual {v1}, Landroid/framework/org/apache/harmony/security_custom/x509/ExtendedKeyUsage;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public valueOfIssuerAlternativeName()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    const-string v1, "2.5.29.18"

    invoke-virtual {p0, v1}, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->getExtensionByOID(Ljava/lang/String;)Landroid/framework/org/apache/harmony/security_custom/x509/Extension;

    move-result-object v0

    .line 277
    .local v0, "extension":Landroid/framework/org/apache/harmony/security_custom/x509/Extension;
    if-nez v0, :cond_0

    .line 278
    const/4 v1, 0x0

    .line 280
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralNames;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    invoke-virtual {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/Extension;->getExtnValue()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralNames;

    invoke-virtual {v1}, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralNames;->getPairsList()Ljava/util/Collection;

    move-result-object v1

    goto :goto_0
.end method

.method public valueOfKeyUsage()[Z
    .locals 3

    .prologue
    .line 178
    const-string v2, "2.5.29.15"

    invoke-virtual {p0, v2}, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->getExtensionByOID(Ljava/lang/String;)Landroid/framework/org/apache/harmony/security_custom/x509/Extension;

    move-result-object v0

    .line 180
    .local v0, "extension":Landroid/framework/org/apache/harmony/security_custom/x509/Extension;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/Extension;->getKeyUsageValue()Landroid/framework/org/apache/harmony/security_custom/x509/KeyUsage;

    move-result-object v1

    .local v1, "kUsage":Landroid/framework/org/apache/harmony/security_custom/x509/KeyUsage;
    if-nez v1, :cond_1

    .line 181
    .end local v1    # "kUsage":Landroid/framework/org/apache/harmony/security_custom/x509/KeyUsage;
    :cond_0
    const/4 v2, 0x0

    .line 183
    :goto_0
    return-object v2

    .restart local v1    # "kUsage":Landroid/framework/org/apache/harmony/security_custom/x509/KeyUsage;
    :cond_1
    invoke-virtual {v1}, Landroid/framework/org/apache/harmony/security_custom/x509/KeyUsage;->getKeyUsage()[Z

    move-result-object v2

    goto :goto_0
.end method

.method public valueOfSubjectAlternativeName()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    const-string v1, "2.5.29.17"

    invoke-virtual {p0, v1}, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->getExtensionByOID(Ljava/lang/String;)Landroid/framework/org/apache/harmony/security_custom/x509/Extension;

    move-result-object v0

    .line 254
    .local v0, "extension":Landroid/framework/org/apache/harmony/security_custom/x509/Extension;
    if-nez v0, :cond_0

    .line 255
    const/4 v1, 0x0

    .line 257
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralNames;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    invoke-virtual {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/Extension;->getExtnValue()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralNames;

    invoke-virtual {v1}, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralNames;->getPairsList()Ljava/util/Collection;

    move-result-object v1

    goto :goto_0
.end method
