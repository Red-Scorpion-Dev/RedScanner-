.class Landroid/framework/util/jar/JarFile$1JarFileEnumerator;
.super Ljava/lang/Object;
.source "JarFile.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/framework/util/jar/JarFile;->entries()Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JarFileEnumerator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<",
        "Landroid/framework/util/jar/JarEntry;",
        ">;"
    }
.end annotation


# instance fields
.field jf:Landroid/framework/util/jar/JarFile;

.field final synthetic this$0:Landroid/framework/util/jar/JarFile;

.field ze:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration",
            "<+",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/framework/util/jar/JarFile;Ljava/util/Enumeration;Landroid/framework/util/jar/JarFile;)V
    .locals 0
    .param p3, "jf"    # Landroid/framework/util/jar/JarFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration",
            "<+",
            "Ljava/util/zip/ZipEntry;",
            ">;",
            "Landroid/framework/util/jar/JarFile;",
            ")V"
        }
    .end annotation

    .prologue
    .line 263
    .local p2, "zenum":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    iput-object p1, p0, Landroid/framework/util/jar/JarFile$1JarFileEnumerator;->this$0:Landroid/framework/util/jar/JarFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-object p2, p0, Landroid/framework/util/jar/JarFile$1JarFileEnumerator;->ze:Ljava/util/Enumeration;

    .line 265
    iput-object p3, p0, Landroid/framework/util/jar/JarFile$1JarFileEnumerator;->jf:Landroid/framework/util/jar/JarFile;

    .line 266
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Landroid/framework/util/jar/JarFile$1JarFileEnumerator;->ze:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    return v0
.end method

.method public nextElement()Landroid/framework/util/jar/JarEntry;
    .locals 2

    .prologue
    .line 273
    new-instance v0, Landroid/framework/util/jar/JarEntry;

    iget-object v1, p0, Landroid/framework/util/jar/JarFile$1JarFileEnumerator;->ze:Ljava/util/Enumeration;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    invoke-direct {v0, v1}, Landroid/framework/util/jar/JarEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    .line 274
    .local v0, "je":Landroid/framework/util/jar/JarEntry;
    iget-object v1, p0, Landroid/framework/util/jar/JarFile$1JarFileEnumerator;->jf:Landroid/framework/util/jar/JarFile;

    iput-object v1, v0, Landroid/framework/util/jar/JarEntry;->parentJar:Landroid/framework/util/jar/JarFile;

    .line 275
    return-object v0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 258
    invoke-virtual {p0}, Landroid/framework/util/jar/JarFile$1JarFileEnumerator;->nextElement()Landroid/framework/util/jar/JarEntry;

    move-result-object v0

    return-object v0
.end method
