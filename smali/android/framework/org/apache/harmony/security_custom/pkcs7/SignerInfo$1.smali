.class final Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo$1;
.super Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;
.source "SignerInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/framework/org/apache/harmony/security_custom/pkcs7/SignerInfo;
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
    .line 150
    invoke-direct {p0, p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;-><init>([Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V

    return-void
.end method


# virtual methods
.method public getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 153
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "object":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    .line 154
    .local v0, "issAndSerial":[Ljava/lang/Object;
    aget-object v1, v0, v2

    aput-object v1, p2, v2

    .line 155
    aget-object v1, v0, v3

    aput-object v1, p2, v3

    .line 156
    return-void
.end method
