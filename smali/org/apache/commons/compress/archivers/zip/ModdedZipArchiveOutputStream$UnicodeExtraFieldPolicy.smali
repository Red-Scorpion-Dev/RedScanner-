.class public final Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$UnicodeExtraFieldPolicy;
.super Ljava/lang/Object;
.source "ModdedZipArchiveOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnicodeExtraFieldPolicy"
.end annotation


# static fields
.field public static final ALWAYS:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$UnicodeExtraFieldPolicy;

.field public static final NEVER:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$UnicodeExtraFieldPolicy;

.field public static final NOT_ENCODEABLE:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$UnicodeExtraFieldPolicy;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1528
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    const-string v1, "always"

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$UnicodeExtraFieldPolicy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$UnicodeExtraFieldPolicy;->ALWAYS:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    .line 1532
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    const-string v1, "never"

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$UnicodeExtraFieldPolicy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$UnicodeExtraFieldPolicy;->NEVER:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    .line 1537
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    const-string v1, "not encodeable"

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$UnicodeExtraFieldPolicy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$UnicodeExtraFieldPolicy;->NOT_ENCODEABLE:Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "n"    # Ljava/lang/String;

    .prologue
    .line 1541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1542
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$UnicodeExtraFieldPolicy;->name:Ljava/lang/String;

    .line 1543
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1546
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ModdedZipArchiveOutputStream$UnicodeExtraFieldPolicy;->name:Ljava/lang/String;

    return-object v0
.end method
