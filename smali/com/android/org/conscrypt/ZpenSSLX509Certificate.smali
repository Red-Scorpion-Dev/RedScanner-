.class public Lcom/android/org/conscrypt/ZpenSSLX509Certificate;
.super Ljava/lang/Object;
.source "ZpenSSLX509Certificate.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public final mContext:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "ctx"    # J

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-wide p1, p0, Lcom/android/org/conscrypt/ZpenSSLX509Certificate;->mContext:J

    .line 13
    return-void
.end method
