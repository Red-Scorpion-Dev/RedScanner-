.class Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertFactoryImpl$RestoringInputStream;
.super Ljava/io/InputStream;
.source "X509CertFactoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertFactoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RestoringInputStream"
.end annotation


# static fields
.field private static final BUFF_SIZE:I = 0x20


# instance fields
.field private bar:I

.field private final buff:[I

.field private end:I

.field private final inStream:Ljava/io/InputStream;

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "inStream"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x0

    .line 763
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 749
    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertFactoryImpl$RestoringInputStream;->buff:[I

    .line 754
    const/4 v0, -0x1

    iput v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    .line 756
    iput v1, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertFactoryImpl$RestoringInputStream;->bar:I

    .line 758
    iput v1, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertFactoryImpl$RestoringInputStream;->end:I

    .line 764
    iput-object p1, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertFactoryImpl$RestoringInputStream;->inStream:Ljava/io/InputStream;

    .line 765
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 769
    iget v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertFactoryImpl$RestoringInputStream;->bar:I

    iget v1, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertFactoryImpl$RestoringInputStream;->inStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 774
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertFactoryImpl$RestoringInputStream;->inStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 775
    return-void
.end method

.method public mark(I)V
    .locals 2
    .param p1, "readlimit"    # I

    .prologue
    const/4 v1, 0x0

    .line 779
    iget v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    if-gez v0, :cond_0

    .line 780
    iput v1, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    .line 781
    iput v1, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertFactoryImpl$RestoringInputStream;->bar:I

    .line 782
    const/16 v0, 0x1f

    iput v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertFactoryImpl$RestoringInputStream;->end:I

    .line 786
    :goto_0
    return-void

    .line 784
    :cond_0
    iget v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    add-int/lit8 v0, v0, 0x20

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertFactoryImpl$RestoringInputStream;->end:I

    goto :goto_0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 790
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 808
    iget v1, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    if-ltz v1, :cond_2

    .line 810
    iget v1, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    rem-int/lit8 v0, v1, 0x20

    .line 812
    .local v0, "cur":I
    iget v1, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertFactoryImpl$RestoringInputStream;->bar:I

    if-ge v0, v1, :cond_0

    .line 814
    iget v1, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    .line 815
    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertFactoryImpl$RestoringInputStream;->buff:[I

    aget v1, v1, v0

    .line 833
    .end local v0    # "cur":I
    :goto_0
    return v1

    .line 818
    .restart local v0    # "cur":I
    :cond_0
    iget v1, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertFactoryImpl$RestoringInputStream;->end:I

    if-eq v0, v1, :cond_1

    .line 821
    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertFactoryImpl$RestoringInputStream;->buff:[I

    iget-object v2, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertFactoryImpl$RestoringInputStream;->inStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    aput v2, v1, v0

    .line 822
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertFactoryImpl$RestoringInputStream;->bar:I

    .line 823
    iget v1, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    .line 824
    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertFactoryImpl$RestoringInputStream;->buff:[I

    aget v1, v1, v0

    goto :goto_0

    .line 829
    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    .line 833
    .end local v0    # "cur":I
    :cond_2
    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertFactoryImpl$RestoringInputStream;->inStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    goto :goto_0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 840
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 841
    invoke-virtual {p0}, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertFactoryImpl$RestoringInputStream;->read()I

    move-result v1

    .local v1, "read_b":I
    if-ne v1, v2, :cond_1

    .line 842
    if-nez v0, :cond_0

    move v0, v2

    .line 846
    .end local v0    # "i":I
    .end local v1    # "read_b":I
    :cond_0
    return v0

    .line 844
    .restart local v0    # "i":I
    .restart local v1    # "read_b":I
    :cond_1
    add-int v3, p2, v0

    int-to-byte v4, v1

    aput-byte v4, p1, v3

    .line 840
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 851
    iget v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    if-ltz v0, :cond_0

    .line 852
    iget v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertFactoryImpl$RestoringInputStream;->end:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/framework/org/apache/harmony/security_custom/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    .line 857
    return-void

    .line 854
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not reset the stream: position became invalid or stream has not been marked"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
