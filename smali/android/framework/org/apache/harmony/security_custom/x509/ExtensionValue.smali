.class public Landroid/framework/org/apache/harmony/security_custom/x509/ExtensionValue;
.super Ljava/lang/Object;
.source "ExtensionValue.java"


# instance fields
.field protected encoding:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "encoding"    # [B

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Landroid/framework/org/apache/harmony/security_custom/x509/ExtensionValue;->encoding:[B

    .line 34
    return-void
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 57
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Landroid/framework/org/apache/harmony/security_custom/x509/ExtensionValue;->dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Unparseable extension value:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget-object v4, p0, Landroid/framework/org/apache/harmony/security_custom/x509/ExtensionValue;->encoding:[B

    if-nez v4, :cond_0

    .line 44
    invoke-virtual {p0}, Landroid/framework/org/apache/harmony/security_custom/x509/ExtensionValue;->getEncoded()[B

    move-result-object v4

    iput-object v4, p0, Landroid/framework/org/apache/harmony/security_custom/x509/ExtensionValue;->encoding:[B

    .line 46
    :cond_0
    iget-object v4, p0, Landroid/framework/org/apache/harmony/security_custom/x509/ExtensionValue;->encoding:[B

    if-nez v4, :cond_2

    .line 47
    const-string v4, "NULL\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    :cond_1
    return-void

    .line 49
    :cond_2
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/ExtensionValue;->encoding:[B

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-byte v1, v0, v2

    .line 50
    .local v1, "b":B
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/ExtensionValue;->encoding:[B

    return-object v0
.end method
