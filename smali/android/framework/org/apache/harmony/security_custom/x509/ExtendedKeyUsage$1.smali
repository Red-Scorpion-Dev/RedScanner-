.class final Landroid/framework/org/apache/harmony/security_custom/x509/ExtendedKeyUsage$1;
.super Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Oid;
.source "ExtendedKeyUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/framework/org/apache/harmony/security_custom/x509/ExtendedKeyUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Oid;-><init>()V

    return-void
.end method


# virtual methods
.method public getDecodedObject(Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 2
    .param p1, "in"    # Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Oid;->getDecodedObject(Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 100
    .local v0, "oid":[I
    invoke-static {v0}, Landroid/framework/org/apache/harmony/security_custom/asn1/ObjectIdentifier;->toString([I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
