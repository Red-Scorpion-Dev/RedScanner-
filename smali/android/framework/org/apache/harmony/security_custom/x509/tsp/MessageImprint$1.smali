.class final Landroid/framework/org/apache/harmony/security_custom/x509/tsp/MessageImprint$1;
.super Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;
.source "MessageImprint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/framework/org/apache/harmony/security_custom/x509/tsp/MessageImprint;
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
    .line 49
    invoke-direct {p0, p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;-><init>([Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V

    return-void
.end method


# virtual methods
.method protected getDecodedObject(Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 4
    .param p1, "in"    # Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;

    .prologue
    .line 52
    iget-object v1, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 53
    .local v0, "values":[Ljava/lang/Object;
    new-instance v3, Landroid/framework/org/apache/harmony/security_custom/x509/tsp/MessageImprint;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, [B

    check-cast v2, [B

    invoke-direct {v3, v1, v2}, Landroid/framework/org/apache/harmony/security_custom/x509/tsp/MessageImprint;-><init>(Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;[B)V

    return-object v3
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    .prologue
    .line 59
    move-object v0, p1

    check-cast v0, Landroid/framework/org/apache/harmony/security_custom/x509/tsp/MessageImprint;

    .line 60
    .local v0, "mi":Landroid/framework/org/apache/harmony/security_custom/x509/tsp/MessageImprint;
    const/4 v1, 0x0

    invoke-static {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/tsp/MessageImprint;->access$000(Landroid/framework/org/apache/harmony/security_custom/x509/tsp/MessageImprint;)Landroid/framework/org/apache/harmony/security_custom/x509/AlgorithmIdentifier;

    move-result-object v2

    aput-object v2, p2, v1

    .line 61
    const/4 v1, 0x1

    invoke-static {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/tsp/MessageImprint;->access$100(Landroid/framework/org/apache/harmony/security_custom/x509/tsp/MessageImprint;)[B

    move-result-object v2

    aput-object v2, p2, v1

    .line 62
    return-void
.end method
