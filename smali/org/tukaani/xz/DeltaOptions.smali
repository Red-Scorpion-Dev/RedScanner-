.class public Lorg/tukaani/xz/DeltaOptions;
.super Lorg/tukaani/xz/FilterOptions;


# static fields
.field static final $assertionsDisabled:Z

.field public static final DISTANCE_MAX:I = 0x100

.field public static final DISTANCE_MIN:I = 0x1

.field static class$org$tukaani$xz$DeltaOptions:Ljava/lang/Class;


# instance fields
.field private distance:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/tukaani/xz/DeltaOptions;->class$org$tukaani$xz$DeltaOptions:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.tukaani.xz.DeltaOptions"

    invoke-static {v0}, Lorg/tukaani/xz/DeltaOptions;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/tukaani/xz/DeltaOptions;->class$org$tukaani$xz$DeltaOptions:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lorg/tukaani/xz/DeltaOptions;->$assertionsDisabled:Z

    return-void

    :cond_0
    sget-object v0, Lorg/tukaani/xz/DeltaOptions;->class$org$tukaani$xz$DeltaOptions:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/tukaani/xz/FilterOptions;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/tukaani/xz/DeltaOptions;->distance:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/UnsupportedOptionsException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/tukaani/xz/FilterOptions;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/tukaani/xz/DeltaOptions;->distance:I

    invoke-virtual {p0, p1}, Lorg/tukaani/xz/DeltaOptions;->setDistance(I)V

    return-void
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
.method public clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v0, Lorg/tukaani/xz/DeltaOptions;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public getDecoderMemoryUsage()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getDistance()I
    .locals 1

    iget v0, p0, Lorg/tukaani/xz/DeltaOptions;->distance:I

    return v0
.end method

.method public getEncoderMemoryUsage()I
    .locals 1

    invoke-static {}, Lorg/tukaani/xz/DeltaOutputStream;->getMemoryUsage()I

    move-result v0

    return v0
.end method

.method getFilterEncoder()Lorg/tukaani/xz/FilterEncoder;
    .locals 1

    new-instance v0, Lorg/tukaani/xz/DeltaEncoder;

    invoke-direct {v0, p0}, Lorg/tukaani/xz/DeltaEncoder;-><init>(Lorg/tukaani/xz/DeltaOptions;)V

    return-object v0
.end method

.method public getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2

    new-instance v0, Lorg/tukaani/xz/DeltaInputStream;

    iget v1, p0, Lorg/tukaani/xz/DeltaOptions;->distance:I

    invoke-direct {v0, p1, v1}, Lorg/tukaani/xz/DeltaInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v0
.end method

.method public getOutputStream(Lorg/tukaani/xz/FinishableOutputStream;)Lorg/tukaani/xz/FinishableOutputStream;
    .locals 1

    new-instance v0, Lorg/tukaani/xz/DeltaOutputStream;

    invoke-direct {v0, p1, p0}, Lorg/tukaani/xz/DeltaOutputStream;-><init>(Lorg/tukaani/xz/FinishableOutputStream;Lorg/tukaani/xz/DeltaOptions;)V

    return-object v0
.end method

.method public setDistance(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/UnsupportedOptionsException;
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x100

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Delta distance must be in the range [1, 256]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lorg/tukaani/xz/DeltaOptions;->distance:I

    return-void
.end method
