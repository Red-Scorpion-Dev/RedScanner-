.class final Landroid/framework/org/apache/harmony/security_custom/x509/AccessDescription$1;
.super Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;
.source "AccessDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/framework/org/apache/harmony/security_custom/x509/AccessDescription;
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
    .line 80
    invoke-direct {p0, p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;-><init>([Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V

    return-void
.end method


# virtual methods
.method protected getDecodedObject(Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 6
    .param p1, "in"    # Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;

    .prologue
    .line 83
    iget-object v1, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 84
    .local v0, "values":[Ljava/lang/Object;
    new-instance v2, Landroid/framework/org/apache/harmony/security_custom/x509/AccessDescription;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, [I

    check-cast v1, [I

    invoke-static {v1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ObjectIdentifier;->toString([I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;

    invoke-virtual {p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->getEncoded()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v1, v4, v5}, Landroid/framework/org/apache/harmony/security_custom/x509/AccessDescription;-><init>(Ljava/lang/String;Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;[BLandroid/framework/org/apache/harmony/security_custom/x509/AccessDescription$1;)V

    return-object v2
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    .prologue
    .line 90
    move-object v0, p1

    check-cast v0, Landroid/framework/org/apache/harmony/security_custom/x509/AccessDescription;

    .line 91
    .local v0, "ad":Landroid/framework/org/apache/harmony/security_custom/x509/AccessDescription;
    const/4 v1, 0x0

    invoke-static {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/AccessDescription;->access$100(Landroid/framework/org/apache/harmony/security_custom/x509/AccessDescription;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/framework/org/apache/harmony/security_custom/asn1/ObjectIdentifier;->toIntArray(Ljava/lang/String;)[I

    move-result-object v2

    aput-object v2, p2, v1

    .line 92
    const/4 v1, 0x1

    invoke-static {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/AccessDescription;->access$200(Landroid/framework/org/apache/harmony/security_custom/x509/AccessDescription;)Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;

    move-result-object v2

    aput-object v2, p2, v1

    .line 93
    return-void
.end method
