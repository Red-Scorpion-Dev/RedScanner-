.class public abstract Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1ValueCollection;
.super Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Constructed;
.source "ASN1ValueCollection.java"


# instance fields
.field public final type:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;


# direct methods
.method public constructor <init>(ILandroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V
    .locals 0
    .param p1, "tagNumber"    # I
    .param p2, "type"    # Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Constructed;-><init>(I)V

    .line 46
    iput-object p2, p0, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1ValueCollection;->type:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    .line 47
    return-void
.end method


# virtual methods
.method public getValues(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 59
    check-cast p1, Ljava/util/Collection;

    .end local p1    # "object":Ljava/lang/Object;
    return-object p1
.end method
