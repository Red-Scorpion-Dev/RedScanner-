.class final Landroid/framework/org/apache/harmony/security_custom/x509/NameConstraints$1;
.super Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;
.source "NameConstraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/framework/org/apache/harmony/security_custom/x509/NameConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V
    .locals 1
    .param p1, "x0"    # [Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    .prologue
    .line 262
    invoke-direct {p0, p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;-><init>([Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V

    .line 264
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/framework/org/apache/harmony/security_custom/x509/NameConstraints$1;->setOptional(I)V

    .line 265
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/framework/org/apache/harmony/security_custom/x509/NameConstraints$1;->setOptional(I)V

    .line 266
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 6
    .param p1, "in"    # Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;

    .prologue
    .line 269
    iget-object v1, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 270
    .local v0, "values":[Ljava/lang/Object;
    new-instance v3, Landroid/framework/org/apache/harmony/security_custom/x509/NameConstraints;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralSubtrees;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralSubtrees;

    invoke-virtual {p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->getEncoded()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v1, v2, v4, v5}, Landroid/framework/org/apache/harmony/security_custom/x509/NameConstraints;-><init>(Landroid/framework/org/apache/harmony/security_custom/x509/GeneralSubtrees;Landroid/framework/org/apache/harmony/security_custom/x509/GeneralSubtrees;[BLandroid/framework/org/apache/harmony/security_custom/x509/NameConstraints$1;)V

    return-object v3
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    .prologue
    .line 277
    move-object v0, p1

    check-cast v0, Landroid/framework/org/apache/harmony/security_custom/x509/NameConstraints;

    .line 278
    .local v0, "nc":Landroid/framework/org/apache/harmony/security_custom/x509/NameConstraints;
    const/4 v1, 0x0

    invoke-static {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/NameConstraints;->access$100(Landroid/framework/org/apache/harmony/security_custom/x509/NameConstraints;)Landroid/framework/org/apache/harmony/security_custom/x509/GeneralSubtrees;

    move-result-object v2

    aput-object v2, p2, v1

    .line 279
    const/4 v1, 0x1

    invoke-static {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/NameConstraints;->access$200(Landroid/framework/org/apache/harmony/security_custom/x509/NameConstraints;)Landroid/framework/org/apache/harmony/security_custom/x509/GeneralSubtrees;

    move-result-object v2

    aput-object v2, p2, v1

    .line 280
    return-void
.end method
