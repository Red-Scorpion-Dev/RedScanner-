.class final Landroid/framework/org/apache/harmony/security_custom/x509/GeneralNames$1;
.super Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1SequenceOf;
.source "GeneralNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/framework/org/apache/harmony/security_custom/x509/GeneralNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V
    .locals 0
    .param p1, "x0"    # Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    .prologue
    .line 124
    invoke-direct {p0, p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1SequenceOf;-><init>(Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V

    return-void
.end method


# virtual methods
.method public getDecodedObject(Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 4
    .param p1, "in"    # Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;

    .prologue
    .line 126
    new-instance v1, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralNames;

    iget-object v0, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->getEncoded()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralNames;-><init>(Ljava/util/List;[BLandroid/framework/org/apache/harmony/security_custom/x509/GeneralNames$1;)V

    return-object v1
.end method

.method public getValues(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 130
    move-object v0, p1

    check-cast v0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralNames;

    .line 131
    .local v0, "gns":Landroid/framework/org/apache/harmony/security_custom/x509/GeneralNames;
    invoke-static {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralNames;->access$100(Landroid/framework/org/apache/harmony/security_custom/x509/GeneralNames;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
