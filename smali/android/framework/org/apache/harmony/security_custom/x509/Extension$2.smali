.class final Landroid/framework/org/apache/harmony/security_custom/x509/Extension$2;
.super Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;
.source "Extension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/framework/org/apache/harmony/security_custom/x509/Extension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V
    .locals 2
    .param p1, "x0"    # [Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    .prologue
    .line 367
    invoke-direct {p0, p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;-><init>([Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V

    .line 369
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/framework/org/apache/harmony/security_custom/x509/Extension$2;->setDefault(Ljava/lang/Object;I)V

    .line 370
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 10
    .param p1, "in"    # Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 373
    iget-object v0, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, [Ljava/lang/Object;

    .line 375
    .local v9, "values":[Ljava/lang/Object;
    aget-object v0, v9, v1

    check-cast v0, [I

    move-object v8, v0

    check-cast v8, [I

    .line 376
    .local v8, "oid":[I
    aget-object v0, v9, v5

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, [B

    move-object v3, v0

    check-cast v3, [B

    .line 377
    .local v3, "extnValue":[B
    aget-object v0, v9, v5

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, [B

    move-object v4, v0

    check-cast v4, [B

    .line 379
    .local v4, "rawExtnValue":[B
    const/4 v6, 0x0

    .line 381
    .local v6, "decodedExtValue":Landroid/framework/org/apache/harmony/security_custom/x509/ExtensionValue;
    sget-object v0, Landroid/framework/org/apache/harmony/security_custom/x509/Extension;->KEY_USAGE:[I

    invoke-static {v8, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    new-instance v6, Landroid/framework/org/apache/harmony/security_custom/x509/KeyUsage;

    .end local v6    # "decodedExtValue":Landroid/framework/org/apache/harmony/security_custom/x509/ExtensionValue;
    invoke-direct {v6, v3}, Landroid/framework/org/apache/harmony/security_custom/x509/KeyUsage;-><init>([B)V

    .line 387
    .restart local v6    # "decodedExtValue":Landroid/framework/org/apache/harmony/security_custom/x509/ExtensionValue;
    :cond_0
    :goto_0
    new-instance v0, Landroid/framework/org/apache/harmony/security_custom/x509/Extension;

    aget-object v1, v9, v1

    check-cast v1, [I

    check-cast v1, [I

    aget-object v2, v9, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->getEncoded()[B

    move-result-object v5

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/framework/org/apache/harmony/security_custom/x509/Extension;-><init>([IZ[B[B[BLandroid/framework/org/apache/harmony/security_custom/x509/ExtensionValue;Landroid/framework/org/apache/harmony/security_custom/x509/Extension$1;)V

    return-object v0

    .line 383
    :cond_1
    sget-object v0, Landroid/framework/org/apache/harmony/security_custom/x509/Extension;->BASIC_CONSTRAINTS:[I

    invoke-static {v8, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    new-instance v6, Landroid/framework/org/apache/harmony/security_custom/x509/BasicConstraints;

    .end local v6    # "decodedExtValue":Landroid/framework/org/apache/harmony/security_custom/x509/ExtensionValue;
    invoke-direct {v6, v3}, Landroid/framework/org/apache/harmony/security_custom/x509/BasicConstraints;-><init>([B)V

    .restart local v6    # "decodedExtValue":Landroid/framework/org/apache/harmony/security_custom/x509/ExtensionValue;
    goto :goto_0
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    .prologue
    .line 392
    move-object v0, p1

    check-cast v0, Landroid/framework/org/apache/harmony/security_custom/x509/Extension;

    .line 393
    .local v0, "ext":Landroid/framework/org/apache/harmony/security_custom/x509/Extension;
    const/4 v1, 0x0

    invoke-static {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/Extension;->access$100(Landroid/framework/org/apache/harmony/security_custom/x509/Extension;)[I

    move-result-object v2

    aput-object v2, p2, v1

    .line 394
    const/4 v2, 0x1

    invoke-static {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/Extension;->access$200(Landroid/framework/org/apache/harmony/security_custom/x509/Extension;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    aput-object v1, p2, v2

    .line 395
    const/4 v1, 0x2

    invoke-static {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/Extension;->access$300(Landroid/framework/org/apache/harmony/security_custom/x509/Extension;)[B

    move-result-object v2

    aput-object v2, p2, v1

    .line 396
    return-void

    .line 394
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method
