.class public final Landroid/framework/org/apache/harmony/security_custom/x509/PolicyQualifierInfo;
.super Ljava/lang/Object;
.source "PolicyQualifierInfo.java"


# static fields
.field public static final ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 53
    new-instance v0, Landroid/framework/org/apache/harmony/security_custom/x509/PolicyQualifierInfo$1;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    const/4 v2, 0x0

    invoke-static {}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Oid;->getInstance()Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Oid;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Any;->getInstance()Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Any;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Landroid/framework/org/apache/harmony/security_custom/x509/PolicyQualifierInfo$1;-><init>([Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V

    sput-object v0, Landroid/framework/org/apache/harmony/security_custom/x509/PolicyQualifierInfo;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
