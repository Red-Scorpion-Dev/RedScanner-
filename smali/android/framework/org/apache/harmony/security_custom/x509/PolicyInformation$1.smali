.class final Landroid/framework/org/apache/harmony/security_custom/x509/PolicyInformation$1;
.super Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;
.source "PolicyInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/framework/org/apache/harmony/security_custom/x509/PolicyInformation;
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
    .line 86
    invoke-direct {p0, p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;-><init>([Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V

    .line 88
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/framework/org/apache/harmony/security_custom/x509/PolicyInformation$1;->setOptional(I)V

    .line 89
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 3
    .param p1, "in"    # Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;

    .prologue
    .line 92
    iget-object v1, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 93
    .local v0, "values":[Ljava/lang/Object;
    new-instance v2, Landroid/framework/org/apache/harmony/security_custom/x509/PolicyInformation;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, [I

    check-cast v1, [I

    invoke-static {v1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ObjectIdentifier;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/framework/org/apache/harmony/security_custom/x509/PolicyInformation;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    .prologue
    .line 97
    move-object v0, p1

    check-cast v0, Landroid/framework/org/apache/harmony/security_custom/x509/PolicyInformation;

    .line 98
    .local v0, "pi":Landroid/framework/org/apache/harmony/security_custom/x509/PolicyInformation;
    const/4 v1, 0x0

    invoke-static {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/PolicyInformation;->access$000(Landroid/framework/org/apache/harmony/security_custom/x509/PolicyInformation;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/framework/org/apache/harmony/security_custom/asn1/ObjectIdentifier;->toIntArray(Ljava/lang/String;)[I

    move-result-object v2

    aput-object v2, p2, v1

    .line 99
    return-void
.end method
