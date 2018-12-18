.class Landroid/framework/util/jar/Manifest$Chunk;
.super Ljava/lang/Object;
.source "Manifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/framework/util/jar/Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Chunk"
.end annotation


# instance fields
.field end:I

.field start:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Landroid/framework/util/jar/Manifest$Chunk;->start:I

    .line 73
    iput p2, p0, Landroid/framework/util/jar/Manifest$Chunk;->end:I

    .line 74
    return-void
.end method
