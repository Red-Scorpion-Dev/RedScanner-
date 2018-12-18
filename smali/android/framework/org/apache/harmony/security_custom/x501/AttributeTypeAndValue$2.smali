.class final Landroid/framework/org/apache/harmony/security_custom/x501/AttributeTypeAndValue$2;
.super Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;
.source "AttributeTypeAndValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/framework/org/apache/harmony/security_custom/x501/AttributeTypeAndValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V
    .locals 0
    .param p1, "x0"    # [Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    .prologue
    .line 393
    invoke-direct {p0, p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;-><init>([Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V

    return-void
.end method


# virtual methods
.method protected getDecodedObject(Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 5
    .param p1, "in"    # Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 396
    iget-object v1, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 397
    .local v0, "values":[Ljava/lang/Object;
    new-instance v3, Landroid/framework/org/apache/harmony/security_custom/x501/AttributeTypeAndValue;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, [I

    check-cast v1, [I

    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Landroid/framework/org/apache/harmony/security_custom/x501/AttributeValue;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v2, v4}, Landroid/framework/org/apache/harmony/security_custom/x501/AttributeTypeAndValue;-><init>([ILandroid/framework/org/apache/harmony/security_custom/x501/AttributeValue;Landroid/framework/org/apache/harmony/security_custom/x501/AttributeTypeAndValue$1;)V

    return-object v3
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    .prologue
    .line 401
    move-object v0, p1

    check-cast v0, Landroid/framework/org/apache/harmony/security_custom/x501/AttributeTypeAndValue;

    .line 402
    .local v0, "atav":Landroid/framework/org/apache/harmony/security_custom/x501/AttributeTypeAndValue;
    const/4 v1, 0x0

    invoke-static {v0}, Landroid/framework/org/apache/harmony/security_custom/x501/AttributeTypeAndValue;->access$100(Landroid/framework/org/apache/harmony/security_custom/x501/AttributeTypeAndValue;)Landroid/framework/org/apache/harmony/security_custom/utils/ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Landroid/framework/org/apache/harmony/security_custom/utils/ObjectIdentifier;->getOid()[I

    move-result-object v2

    aput-object v2, p2, v1

    .line 403
    const/4 v1, 0x1

    invoke-static {v0}, Landroid/framework/org/apache/harmony/security_custom/x501/AttributeTypeAndValue;->access$200(Landroid/framework/org/apache/harmony/security_custom/x501/AttributeTypeAndValue;)Landroid/framework/org/apache/harmony/security_custom/x501/AttributeValue;

    move-result-object v2

    aput-object v2, p2, v1

    .line 404
    return-void
.end method
