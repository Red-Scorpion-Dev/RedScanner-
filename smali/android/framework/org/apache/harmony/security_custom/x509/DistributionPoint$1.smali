.class final Landroid/framework/org/apache/harmony/security_custom/x509/DistributionPoint$1;
.super Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;
.source "DistributionPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/framework/org/apache/harmony/security_custom/x509/DistributionPoint;
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
    .line 109
    invoke-direct {p0, p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;-><init>([Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/framework/org/apache/harmony/security_custom/x509/DistributionPoint$1;->setOptional(I)V

    .line 112
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/framework/org/apache/harmony/security_custom/x509/DistributionPoint$1;->setOptional(I)V

    .line 113
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/framework/org/apache/harmony/security_custom/x509/DistributionPoint$1;->setOptional(I)V

    .line 114
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
    .line 117
    iget-object v1, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 118
    .local v0, "values":[Ljava/lang/Object;
    new-instance v4, Landroid/framework/org/apache/harmony/security_custom/x509/DistributionPoint;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Landroid/framework/org/apache/harmony/security_custom/x509/DistributionPointName;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Landroid/framework/org/apache/harmony/security_custom/x509/ReasonFlags;

    const/4 v3, 0x2

    aget-object v3, v0, v3

    check-cast v3, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralNames;

    invoke-direct {v4, v1, v2, v3}, Landroid/framework/org/apache/harmony/security_custom/x509/DistributionPoint;-><init>(Landroid/framework/org/apache/harmony/security_custom/x509/DistributionPointName;Landroid/framework/org/apache/harmony/security_custom/x509/ReasonFlags;Landroid/framework/org/apache/harmony/security_custom/x509/GeneralNames;)V

    return-object v4
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    .prologue
    .line 123
    move-object v0, p1

    check-cast v0, Landroid/framework/org/apache/harmony/security_custom/x509/DistributionPoint;

    .line 124
    .local v0, "dp":Landroid/framework/org/apache/harmony/security_custom/x509/DistributionPoint;
    const/4 v1, 0x0

    invoke-static {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/DistributionPoint;->access$000(Landroid/framework/org/apache/harmony/security_custom/x509/DistributionPoint;)Landroid/framework/org/apache/harmony/security_custom/x509/DistributionPointName;

    move-result-object v2

    aput-object v2, p2, v1

    .line 125
    const/4 v1, 0x1

    invoke-static {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/DistributionPoint;->access$100(Landroid/framework/org/apache/harmony/security_custom/x509/DistributionPoint;)Landroid/framework/org/apache/harmony/security_custom/x509/ReasonFlags;

    move-result-object v2

    aput-object v2, p2, v1

    .line 126
    const/4 v1, 0x2

    invoke-static {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/DistributionPoint;->access$200(Landroid/framework/org/apache/harmony/security_custom/x509/DistributionPoint;)Landroid/framework/org/apache/harmony/security_custom/x509/GeneralNames;

    move-result-object v2

    aput-object v2, p2, v1

    .line 127
    return-void
.end method
