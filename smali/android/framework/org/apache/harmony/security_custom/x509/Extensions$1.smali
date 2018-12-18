.class final Landroid/framework/org/apache/harmony/security_custom/x509/Extensions$1;
.super Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1SequenceOf;
.source "Extensions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;
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
    .line 346
    invoke-direct {p0, p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1SequenceOf;-><init>(Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V

    return-void
.end method


# virtual methods
.method public getDecodedObject(Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 2
    .param p1, "in"    # Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;

    .prologue
    .line 348
    new-instance v1, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;

    iget-object v0, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-direct {v1, v0}, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public getValues(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 352
    move-object v0, p1

    check-cast v0, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;

    .line 353
    .local v0, "extensions":Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;
    invoke-static {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->access$000(Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;->access$000(Landroid/framework/org/apache/harmony/security_custom/x509/Extensions;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method
