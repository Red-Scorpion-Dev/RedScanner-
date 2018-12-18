.class public Landroid/framework/util/jar/JarOutputStream;
.super Ljava/util/zip/ZipOutputStream;
.source "JarOutputStream.java"


# instance fields
.field private manifest:Landroid/framework/util/jar/Manifest;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0, p1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Landroid/framework/util/jar/Manifest;)V
    .locals 2
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "mf"    # Landroid/framework/util/jar/Manifest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 48
    if-nez p2, :cond_0

    .line 49
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 51
    :cond_0
    iput-object p2, p0, Landroid/framework/util/jar/JarOutputStream;->manifest:Landroid/framework/util/jar/Manifest;

    .line 52
    new-instance v0, Ljava/util/zip/ZipEntry;

    const-string v1, "META-INF/MANIFEST.MF"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, "ze":Ljava/util/zip/ZipEntry;
    invoke-virtual {p0, v0}, Landroid/framework/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 54
    iget-object v1, p0, Landroid/framework/util/jar/JarOutputStream;->manifest:Landroid/framework/util/jar/Manifest;

    invoke-virtual {v1, p0}, Landroid/framework/util/jar/Manifest;->write(Ljava/io/OutputStream;)V

    .line 55
    invoke-virtual {p0}, Landroid/framework/util/jar/JarOutputStream;->closeEntry()V

    .line 56
    return-void
.end method


# virtual methods
.method public putNextEntry(Ljava/util/zip/ZipEntry;)V
    .locals 0
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-super {p0, p1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 84
    return-void
.end method
