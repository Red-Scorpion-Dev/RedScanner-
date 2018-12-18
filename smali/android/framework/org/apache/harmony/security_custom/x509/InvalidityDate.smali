.class public final Landroid/framework/org/apache/harmony/security_custom/x509/InvalidityDate;
.super Landroid/framework/org/apache/harmony/security_custom/x509/ExtensionValue;
.source "InvalidityDate.java"


# static fields
.field public static final ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;


# instance fields
.field private final date:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1GeneralizedTime;->getInstance()Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1GeneralizedTime;

    move-result-object v0

    sput-object v0, Landroid/framework/org/apache/harmony/security_custom/x509/InvalidityDate;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "encoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/framework/org/apache/harmony/security_custom/x509/ExtensionValue;-><init>([B)V

    .line 43
    sget-object v0, Landroid/framework/org/apache/harmony/security_custom/x509/InvalidityDate;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    invoke-virtual {v0, p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/InvalidityDate;->date:Ljava/util/Date;

    .line 44
    return-void
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Invalidity Date: [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/x509/InvalidityDate;->date:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    return-void
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/InvalidityDate;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/InvalidityDate;->encoding:[B

    if-nez v0, :cond_0

    .line 58
    sget-object v0, Landroid/framework/org/apache/harmony/security_custom/x509/InvalidityDate;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/x509/InvalidityDate;->date:Ljava/util/Date;

    invoke-virtual {v0, v1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/InvalidityDate;->encoding:[B

    .line 60
    :cond_0
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/InvalidityDate;->encoding:[B

    return-object v0
.end method
