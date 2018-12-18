.class final Landroid/framework/org/apache/harmony/security_custom/x509/IssuingDistributionPoint$1;
.super Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;
.source "IssuingDistributionPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/framework/org/apache/harmony/security_custom/x509/IssuingDistributionPoint;
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
    .line 136
    invoke-direct {p0, p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;-><init>([Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V

    .line 138
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/framework/org/apache/harmony/security_custom/x509/IssuingDistributionPoint$1;->setOptional(I)V

    .line 139
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/framework/org/apache/harmony/security_custom/x509/IssuingDistributionPoint$1;->setOptional(I)V

    .line 140
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/framework/org/apache/harmony/security_custom/x509/IssuingDistributionPoint$1;->setDefault(Ljava/lang/Object;I)V

    .line 141
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/framework/org/apache/harmony/security_custom/x509/IssuingDistributionPoint$1;->setDefault(Ljava/lang/Object;I)V

    .line 142
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/framework/org/apache/harmony/security_custom/x509/IssuingDistributionPoint$1;->setDefault(Ljava/lang/Object;I)V

    .line 143
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Landroid/framework/org/apache/harmony/security_custom/x509/IssuingDistributionPoint$1;->setDefault(Ljava/lang/Object;I)V

    .line 144
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 8
    .param p1, "in"    # Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 147
    iget-object v2, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 148
    .local v1, "values":[Ljava/lang/Object;
    new-instance v0, Landroid/framework/org/apache/harmony/security_custom/x509/IssuingDistributionPoint;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Landroid/framework/org/apache/harmony/security_custom/x509/DistributionPointName;

    const/4 v3, 0x3

    aget-object v3, v1, v3

    check-cast v3, Landroid/framework/org/apache/harmony/security_custom/x509/ReasonFlags;

    invoke-direct {v0, v2, v3}, Landroid/framework/org/apache/harmony/security_custom/x509/IssuingDistributionPoint;-><init>(Landroid/framework/org/apache/harmony/security_custom/x509/DistributionPointName;Landroid/framework/org/apache/harmony/security_custom/x509/ReasonFlags;)V

    .line 150
    .local v0, "idp":Landroid/framework/org/apache/harmony/security_custom/x509/IssuingDistributionPoint;
    invoke-virtual {p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->getEncoded()[B

    move-result-object v2

    iput-object v2, v0, Landroid/framework/org/apache/harmony/security_custom/x509/IssuingDistributionPoint;->encoding:[B

    .line 151
    aget-object v2, v1, v4

    if-eqz v2, :cond_0

    .line 152
    aget-object v2, v1, v4

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/framework/org/apache/harmony/security_custom/x509/IssuingDistributionPoint;->setOnlyContainsUserCerts(Z)V

    .line 154
    :cond_0
    aget-object v2, v1, v5

    if-eqz v2, :cond_1

    .line 155
    aget-object v2, v1, v5

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/framework/org/apache/harmony/security_custom/x509/IssuingDistributionPoint;->setOnlyContainsCACerts(Z)V

    .line 157
    :cond_1
    aget-object v2, v1, v6

    if-eqz v2, :cond_2

    .line 158
    aget-object v2, v1, v6

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/framework/org/apache/harmony/security_custom/x509/IssuingDistributionPoint;->setIndirectCRL(Z)V

    .line 160
    :cond_2
    aget-object v2, v1, v7

    if-eqz v2, :cond_3

    .line 161
    aget-object v2, v1, v7

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/framework/org/apache/harmony/security_custom/x509/IssuingDistributionPoint;->setOnlyContainsAttributeCerts(Z)V

    .line 163
    :cond_3
    return-object v0
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 167
    move-object v0, p1

    check-cast v0, Landroid/framework/org/apache/harmony/security_custom/x509/IssuingDistributionPoint;

    .line 168
    .local v0, "idp":Landroid/framework/org/apache/harmony/security_custom/x509/IssuingDistributionPoint;
    const/4 v1, 0x0

    invoke-static {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/IssuingDistributionPoint;->access$000(Landroid/framework/org/apache/harmony/security_custom/x509/IssuingDistributionPoint;)Landroid/framework/org/apache/harmony/security_custom/x509/DistributionPointName;

    move-result-object v3

    aput-object v3, p2, v1

    .line 169
    const/4 v3, 0x1

    invoke-static {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/IssuingDistributionPoint;->access$100(Landroid/framework/org/apache/harmony/security_custom/x509/IssuingDistributionPoint;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    aput-object v1, p2, v3

    .line 170
    const/4 v3, 0x2

    invoke-static {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/IssuingDistributionPoint;->access$200(Landroid/framework/org/apache/harmony/security_custom/x509/IssuingDistributionPoint;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    aput-object v1, p2, v3

    .line 171
    const/4 v1, 0x3

    invoke-static {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/IssuingDistributionPoint;->access$300(Landroid/framework/org/apache/harmony/security_custom/x509/IssuingDistributionPoint;)Landroid/framework/org/apache/harmony/security_custom/x509/ReasonFlags;

    move-result-object v3

    aput-object v3, p2, v1

    .line 172
    const/4 v3, 0x4

    invoke-static {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/IssuingDistributionPoint;->access$400(Landroid/framework/org/apache/harmony/security_custom/x509/IssuingDistributionPoint;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_2
    aput-object v1, p2, v3

    .line 173
    const/4 v1, 0x5

    invoke-static {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/IssuingDistributionPoint;->access$500(Landroid/framework/org/apache/harmony/security_custom/x509/IssuingDistributionPoint;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :cond_0
    aput-object v2, p2, v1

    .line 174
    return-void

    :cond_1
    move-object v1, v2

    .line 169
    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 170
    goto :goto_1

    :cond_3
    move-object v1, v2

    .line 172
    goto :goto_2
.end method
