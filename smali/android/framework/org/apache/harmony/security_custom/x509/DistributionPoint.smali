.class public final Landroid/framework/org/apache/harmony/security_custom/x509/DistributionPoint;
.super Ljava/lang/Object;
.source "DistributionPoint.java"


# static fields
.field public static final ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;


# instance fields
.field private final cRLIssuer:Landroid/framework/org/apache/harmony/security_custom/x509/GeneralNames;

.field private final distributionPoint:Landroid/framework/org/apache/harmony/security_custom/x509/DistributionPointName;

.field private final reasons:Landroid/framework/org/apache/harmony/security_custom/x509/ReasonFlags;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 105
    new-instance v0, Landroid/framework/org/apache/harmony/security_custom/x509/DistributionPoint$1;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    new-instance v2, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Explicit;

    sget-object v3, Landroid/framework/org/apache/harmony/security_custom/x509/DistributionPointName;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Choice;

    invoke-direct {v2, v4, v3}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Explicit;-><init>(ILandroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V

    aput-object v2, v1, v4

    new-instance v2, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Implicit;

    sget-object v3, Landroid/framework/org/apache/harmony/security_custom/x509/ReasonFlags;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1BitString;

    invoke-direct {v2, v5, v3}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Implicit;-><init>(ILandroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V

    aput-object v2, v1, v5

    new-instance v2, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Implicit;

    sget-object v3, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralNames;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    invoke-direct {v2, v6, v3}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Implicit;-><init>(ILandroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V

    aput-object v2, v1, v6

    invoke-direct {v0, v1}, Landroid/framework/org/apache/harmony/security_custom/x509/DistributionPoint$1;-><init>([Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V

    sput-object v0, Landroid/framework/org/apache/harmony/security_custom/x509/DistributionPoint;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>(Landroid/framework/org/apache/harmony/security_custom/x509/DistributionPointName;Landroid/framework/org/apache/harmony/security_custom/x509/ReasonFlags;Landroid/framework/org/apache/harmony/security_custom/x509/GeneralNames;)V
    .locals 2
    .param p1, "distributionPoint"    # Landroid/framework/org/apache/harmony/security_custom/x509/DistributionPointName;
    .param p2, "reasons"    # Landroid/framework/org/apache/harmony/security_custom/x509/ReasonFlags;
    .param p3, "cRLIssuer"    # Landroid/framework/org/apache/harmony/security_custom/x509/GeneralNames;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    if-nez p3, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DistributionPoint MUST NOT consist of only the reasons field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    iput-object p1, p0, Landroid/framework/org/apache/harmony/security_custom/x509/DistributionPoint;->distributionPoint:Landroid/framework/org/apache/harmony/security_custom/x509/DistributionPointName;

    .line 78
    iput-object p2, p0, Landroid/framework/org/apache/harmony/security_custom/x509/DistributionPoint;->reasons:Landroid/framework/org/apache/harmony/security_custom/x509/ReasonFlags;

    .line 79
    iput-object p3, p0, Landroid/framework/org/apache/harmony/security_custom/x509/DistributionPoint;->cRLIssuer:Landroid/framework/org/apache/harmony/security_custom/x509/GeneralNames;

    .line 80
    return-void
.end method

.method static synthetic access$000(Landroid/framework/org/apache/harmony/security_custom/x509/DistributionPoint;)Landroid/framework/org/apache/harmony/security_custom/x509/DistributionPointName;
    .locals 1
    .param p0, "x0"    # Landroid/framework/org/apache/harmony/security_custom/x509/DistributionPoint;

    .prologue
    .line 67
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/DistributionPoint;->distributionPoint:Landroid/framework/org/apache/harmony/security_custom/x509/DistributionPointName;

    return-object v0
.end method

.method static synthetic access$100(Landroid/framework/org/apache/harmony/security_custom/x509/DistributionPoint;)Landroid/framework/org/apache/harmony/security_custom/x509/ReasonFlags;
    .locals 1
    .param p0, "x0"    # Landroid/framework/org/apache/harmony/security_custom/x509/DistributionPoint;

    .prologue
    .line 67
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/DistributionPoint;->reasons:Landroid/framework/org/apache/harmony/security_custom/x509/ReasonFlags;

    return-object v0
.end method

.method static synthetic access$200(Landroid/framework/org/apache/harmony/security_custom/x509/DistributionPoint;)Landroid/framework/org/apache/harmony/security_custom/x509/GeneralNames;
    .locals 1
    .param p0, "x0"    # Landroid/framework/org/apache/harmony/security_custom/x509/DistributionPoint;

    .prologue
    .line 67
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/DistributionPoint;->cRLIssuer:Landroid/framework/org/apache/harmony/security_custom/x509/GeneralNames;

    return-object v0
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string v0, "Distribution Point: [\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/DistributionPoint;->distributionPoint:Landroid/framework/org/apache/harmony/security_custom/x509/DistributionPointName;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/DistributionPoint;->distributionPoint:Landroid/framework/org/apache/harmony/security_custom/x509/DistributionPointName;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/framework/org/apache/harmony/security_custom/x509/DistributionPointName;->dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 88
    :cond_0
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/DistributionPoint;->reasons:Landroid/framework/org/apache/harmony/security_custom/x509/ReasonFlags;

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/DistributionPoint;->reasons:Landroid/framework/org/apache/harmony/security_custom/x509/ReasonFlags;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/framework/org/apache/harmony/security_custom/x509/ReasonFlags;->dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 91
    :cond_1
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/DistributionPoint;->cRLIssuer:Landroid/framework/org/apache/harmony/security_custom/x509/GeneralNames;

    if-eqz v0, :cond_2

    .line 92
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string v0, "  CRL Issuer: [\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/DistributionPoint;->cRLIssuer:Landroid/framework/org/apache/harmony/security_custom/x509/GeneralNames;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralNames;->dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v0, "  ]\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string v0, "]\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    return-void
.end method
