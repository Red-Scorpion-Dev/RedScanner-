.class public Lorg/apache/commons/compress/archivers/dump/ShortFileException;
.super Lorg/apache/commons/compress/archivers/dump/DumpArchiveException;
.source "ShortFileException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "unexpected EOF"

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveException;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method
