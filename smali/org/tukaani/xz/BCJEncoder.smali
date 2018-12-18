.class Lorg/tukaani/xz/BCJEncoder;
.super Lorg/tukaani/xz/BCJCoder;

# interfaces
.implements Lorg/tukaani/xz/FilterEncoder;


# static fields
.field static final $assertionsDisabled:Z

.field static class$org$tukaani$xz$BCJEncoder:Ljava/lang/Class;


# instance fields
.field private final filterID:J

.field private final options:Lorg/tukaani/xz/BCJOptions;

.field private final props:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/tukaani/xz/BCJEncoder;->class$org$tukaani$xz$BCJEncoder:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.tukaani.xz.BCJEncoder"

    invoke-static {v0}, Lorg/tukaani/xz/BCJEncoder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/tukaani/xz/BCJEncoder;->class$org$tukaani$xz$BCJEncoder:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lorg/tukaani/xz/BCJEncoder;->$assertionsDisabled:Z

    return-void

    :cond_0
    sget-object v0, Lorg/tukaani/xz/BCJEncoder;->class$org$tukaani$xz$BCJEncoder:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method constructor <init>(Lorg/tukaani/xz/BCJOptions;J)V
    .locals 6

    const/4 v4, 0x4

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/tukaani/xz/BCJCoder;-><init>()V

    sget-boolean v1, Lorg/tukaani/xz/BCJEncoder;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {p2, p3}, Lorg/tukaani/xz/BCJEncoder;->isBCJFilterID(J)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lorg/tukaani/xz/BCJOptions;->getStartOffset()I

    move-result v1

    if-nez v1, :cond_2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/tukaani/xz/BCJEncoder;->props:[B

    :cond_1
    iput-wide p2, p0, Lorg/tukaani/xz/BCJEncoder;->filterID:J

    invoke-virtual {p1}, Lorg/tukaani/xz/BCJOptions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/tukaani/xz/BCJOptions;

    iput-object v0, p0, Lorg/tukaani/xz/BCJEncoder;->options:Lorg/tukaani/xz/BCJOptions;

    return-void

    :cond_2
    new-array v2, v4, [B

    iput-object v2, p0, Lorg/tukaani/xz/BCJEncoder;->props:[B

    :goto_0
    if-ge v0, v4, :cond_1

    iget-object v2, p0, Lorg/tukaani/xz/BCJEncoder;->props:[B

    mul-int/lit8 v3, v0, 0x8

    ushr-int v3, v1, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public getFilterID()J
    .locals 2

    iget-wide v0, p0, Lorg/tukaani/xz/BCJEncoder;->filterID:J

    return-wide v0
.end method

.method public getFilterProps()[B
    .locals 1

    iget-object v0, p0, Lorg/tukaani/xz/BCJEncoder;->props:[B

    return-object v0
.end method

.method public getOutputStream(Lorg/tukaani/xz/FinishableOutputStream;)Lorg/tukaani/xz/FinishableOutputStream;
    .locals 1

    iget-object v0, p0, Lorg/tukaani/xz/BCJEncoder;->options:Lorg/tukaani/xz/BCJOptions;

    invoke-virtual {v0, p1}, Lorg/tukaani/xz/BCJOptions;->getOutputStream(Lorg/tukaani/xz/FinishableOutputStream;)Lorg/tukaani/xz/FinishableOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public supportsFlushing()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
