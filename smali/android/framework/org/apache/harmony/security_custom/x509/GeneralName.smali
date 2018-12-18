.class public final Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;
.super Ljava/lang/Object;
.source "GeneralName.java"


# static fields
.field public static final ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Choice;

.field public static final DIR_NAME:I = 0x4

.field public static final DNS_NAME:I = 0x2

.field public static final EDIP_NAME:I = 0x5

.field public static final IP_ADDR:I = 0x7

.field public static final OTHER_NAME:I = 0x0

.field public static final REG_ID:I = 0x8

.field public static final RFC822_NAME:I = 0x1

.field public static final UR_ID:I = 0x6

.field public static final X400_ADDR:I = 0x3

.field private static nameASN1:[Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;


# instance fields
.field private encoding:[B

.field private name:Ljava/lang/Object;

.field private name_encoding:[B

.field private tag:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 112
    const/16 v0, 0x9

    new-array v0, v0, [Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    sput-object v0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->nameASN1:[Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    .line 115
    sget-object v0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->nameASN1:[Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    sget-object v1, Landroid/framework/org/apache/harmony/security_custom/x509/OtherName;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;

    aput-object v1, v0, v4

    .line 116
    sget-object v0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->nameASN1:[Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    sget-object v1, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType;->IA5STRING:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType;

    aput-object v1, v0, v5

    .line 117
    sget-object v0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->nameASN1:[Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    sget-object v1, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType;->IA5STRING:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType;

    aput-object v1, v0, v6

    .line 118
    sget-object v0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->nameASN1:[Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    const/4 v1, 0x6

    sget-object v2, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType;->IA5STRING:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType;

    aput-object v2, v0, v1

    .line 119
    sget-object v0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->nameASN1:[Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    sget-object v1, Landroid/framework/org/apache/harmony/security_custom/x509/ORAddress;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;

    aput-object v1, v0, v7

    .line 120
    sget-object v0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->nameASN1:[Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    sget-object v1, Landroid/framework/org/apache/harmony/security_custom/x501/Name;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1SequenceOf;

    aput-object v1, v0, v8

    .line 121
    sget-object v0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->nameASN1:[Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    const/4 v1, 0x5

    sget-object v2, Landroid/framework/org/apache/harmony/security_custom/x509/EDIPartyName;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;

    aput-object v2, v0, v1

    .line 122
    sget-object v0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->nameASN1:[Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    const/4 v1, 0x7

    invoke-static {}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1OctetString;->getInstance()Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1OctetString;

    move-result-object v2

    aput-object v2, v0, v1

    .line 123
    sget-object v0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->nameASN1:[Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    const/16 v1, 0x8

    invoke-static {}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Oid;->getInstance()Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Oid;

    move-result-object v2

    aput-object v2, v0, v1

    .line 655
    new-instance v0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName$1;

    const/16 v1, 0x9

    new-array v1, v1, [Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    new-instance v2, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Implicit;

    sget-object v3, Landroid/framework/org/apache/harmony/security_custom/x509/OtherName;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;

    invoke-direct {v2, v4, v3}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Implicit;-><init>(ILandroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V

    aput-object v2, v1, v4

    new-instance v2, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Implicit;

    sget-object v3, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType;->IA5STRING:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType;

    invoke-direct {v2, v5, v3}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Implicit;-><init>(ILandroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V

    aput-object v2, v1, v5

    new-instance v2, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Implicit;

    sget-object v3, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType;->IA5STRING:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType;

    invoke-direct {v2, v6, v3}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Implicit;-><init>(ILandroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V

    aput-object v2, v1, v6

    new-instance v2, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Implicit;

    sget-object v3, Landroid/framework/org/apache/harmony/security_custom/x509/ORAddress;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;

    invoke-direct {v2, v7, v3}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Implicit;-><init>(ILandroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V

    aput-object v2, v1, v7

    new-instance v2, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Implicit;

    sget-object v3, Landroid/framework/org/apache/harmony/security_custom/x501/Name;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1SequenceOf;

    invoke-direct {v2, v8, v3}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Implicit;-><init>(ILandroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V

    aput-object v2, v1, v8

    const/4 v2, 0x5

    new-instance v3, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Implicit;

    const/4 v4, 0x5

    sget-object v5, Landroid/framework/org/apache/harmony/security_custom/x509/EDIPartyName;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Sequence;

    invoke-direct {v3, v4, v5}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Implicit;-><init>(ILandroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Implicit;

    const/4 v4, 0x6

    sget-object v5, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType;->IA5STRING:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1StringType;

    invoke-direct {v3, v4, v5}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Implicit;-><init>(ILandroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Implicit;

    const/4 v4, 0x7

    invoke-static {}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1OctetString;->getInstance()Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1OctetString;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Implicit;-><init>(ILandroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-instance v3, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Implicit;

    const/16 v4, 0x8

    invoke-static {}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Oid;->getInstance()Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Oid;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Implicit;-><init>(ILandroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName$1;-><init>([Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V

    sput-object v0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Choice;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 3
    .param p1, "tag"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    if-nez p2, :cond_0

    .line 154
    new-instance v0, Ljava/io/IOException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    iput p1, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->tag:I

    .line 157
    packed-switch p1, :pswitch_data_0

    .line 188
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :pswitch_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown string representation for type ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :pswitch_1
    invoke-static {p2}, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->checkDNS(Ljava/lang/String;)V

    .line 167
    iput-object p2, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->name:Ljava/lang/Object;

    .line 190
    :goto_0
    return-void

    .line 172
    :pswitch_2
    invoke-static {p2}, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->checkURI(Ljava/lang/String;)V

    .line 173
    iput-object p2, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->name:Ljava/lang/Object;

    goto :goto_0

    .line 176
    :pswitch_3
    iput-object p2, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->name:Ljava/lang/Object;

    goto :goto_0

    .line 179
    :pswitch_4
    invoke-static {p2}, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->oidStrToInts(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->name:Ljava/lang/Object;

    goto :goto_0

    .line 182
    :pswitch_5
    new-instance v0, Landroid/framework/org/apache/harmony/security_custom/x501/Name;

    invoke-direct {v0, p2}, Landroid/framework/org/apache/harmony/security_custom/x501/Name;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->name:Ljava/lang/Object;

    goto :goto_0

    .line 185
    :pswitch_6
    invoke-static {p2}, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->ipStrToBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->name:Ljava/lang/Object;

    goto :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method public constructor <init>(I[B)V
    .locals 3
    .param p1, "tag"    # I
    .param p2, "name"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    if-nez p2, :cond_0

    .line 239
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_0
    if-ltz p1, :cond_1

    const/16 v0, 0x8

    if-le p1, v0, :cond_2

    .line 242
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GeneralName: unknown tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_2
    iput p1, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->tag:I

    .line 245
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->name_encoding:[B

    .line 246
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->name_encoding:[B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 247
    sget-object v0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->nameASN1:[Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    aget-object v0, v0, p1

    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->name_encoding:[B

    invoke-virtual {v0, v1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->name:Ljava/lang/Object;

    .line 248
    return-void
.end method

.method public constructor <init>(Landroid/framework/org/apache/harmony/security_custom/x501/Name;)V
    .locals 1
    .param p1, "name"    # Landroid/framework/org/apache/harmony/security_custom/x501/Name;

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    const/4 v0, 0x4

    iput v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->tag:I

    .line 204
    iput-object p1, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->name:Ljava/lang/Object;

    .line 205
    return-void
.end method

.method public constructor <init>(Landroid/framework/org/apache/harmony/security_custom/x509/EDIPartyName;)V
    .locals 1
    .param p1, "name"    # Landroid/framework/org/apache/harmony/security_custom/x509/EDIPartyName;

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    const/4 v0, 0x5

    iput v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->tag:I

    .line 209
    iput-object p1, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->name:Ljava/lang/Object;

    .line 210
    return-void
.end method

.method public constructor <init>(Landroid/framework/org/apache/harmony/security_custom/x509/ORAddress;)V
    .locals 1
    .param p1, "name"    # Landroid/framework/org/apache/harmony/security_custom/x509/ORAddress;

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    const/4 v0, 0x3

    iput v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->tag:I

    .line 199
    iput-object p1, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->name:Ljava/lang/Object;

    .line 200
    return-void
.end method

.method public constructor <init>(Landroid/framework/org/apache/harmony/security_custom/x509/OtherName;)V
    .locals 1
    .param p1, "name"    # Landroid/framework/org/apache/harmony/security_custom/x509/OtherName;

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    const/4 v0, 0x0

    iput v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->tag:I

    .line 194
    iput-object p1, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->name:Ljava/lang/Object;

    .line 195
    return-void
.end method

.method public constructor <init>([B)V
    .locals 4
    .param p1, "name"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    array-length v0, p1

    .line 223
    .local v0, "length":I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 224
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "name.length invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 226
    :cond_0
    const/4 v1, 0x7

    iput v1, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->tag:I

    .line 227
    array-length v1, p1

    new-array v1, v1, [B

    iput-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->name:Ljava/lang/Object;

    .line 228
    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->name:Ljava/lang/Object;

    array-length v2, p1

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    return-void
.end method

.method static synthetic access$000(Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;

    .prologue
    .line 96
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->name:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;)I
    .locals 1
    .param p0, "x0"    # Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;

    .prologue
    .line 96
    iget v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->tag:I

    return v0
.end method

.method static synthetic access$202(Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;[B)[B
    .locals 0
    .param p0, "x0"    # Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;
    .param p1, "x1"    # [B

    .prologue
    .line 96
    iput-object p1, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->encoding:[B

    return-object p1
.end method

.method public static checkDNS(Ljava/lang/String;)V
    .locals 11
    .param p0, "dns"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x39

    const/16 v9, 0x30

    const/16 v8, 0x2e

    const/16 v7, 0x2d

    const/16 v6, 0x2a

    .line 550
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 551
    .local v4, "string":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 553
    .local v3, "length":I
    const/4 v1, 0x1

    .line 554
    .local v1, "first_letter":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_9

    .line 555
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 556
    .local v0, "ch":C
    if-eqz v1, :cond_4

    .line 557
    const/16 v5, 0x7a

    if-gt v0, v5, :cond_0

    const/16 v5, 0x61

    if-ge v0, v5, :cond_2

    :cond_0
    if-lt v0, v9, :cond_1

    if-le v0, v10, :cond_2

    :cond_1
    if-eq v0, v6, :cond_2

    .line 558
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DNS name must start with a letter: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 560
    :cond_2
    const/4 v1, 0x0

    .line 554
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 563
    :cond_4
    const/16 v5, 0x61

    if-lt v0, v5, :cond_5

    const/16 v5, 0x7a

    if-le v0, v5, :cond_7

    :cond_5
    if-lt v0, v9, :cond_6

    if-le v0, v10, :cond_7

    :cond_6
    if-eq v0, v7, :cond_7

    if-eq v0, v8, :cond_7

    if-eq v0, v6, :cond_7

    .line 565
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Incorrect DNS name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 567
    :cond_7
    if-ne v0, v8, :cond_3

    .line 570
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_8

    .line 571
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Incorrect DNS name: label ends with \'-\': "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 573
    :cond_8
    const/4 v1, 0x1

    goto :goto_1

    .line 576
    .end local v0    # "ch":C
    :cond_9
    return-void
.end method

.method public static checkURI(Ljava/lang/String;)V
    .locals 5
    .param p0, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 584
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 585
    .local v1, "ur":Ljava/net/URI;
    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/net/URI;->getRawSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 586
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No scheme or scheme-specific-part in uniformResourceIdentifier: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    .end local v1    # "ur":Ljava/net/URI;
    :catch_0
    move-exception v0

    .line 592
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad representation of uniformResourceIdentifier: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/io/IOException;

    throw v2

    .line 588
    .end local v0    # "e":Ljava/net/URISyntaxException;
    .restart local v1    # "ur":Ljava/net/URI;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/net/URI;->isAbsolute()Z

    move-result v2

    if-nez v2, :cond_2

    .line 589
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Relative uniformResourceIdentifier: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    .line 595
    :cond_2
    return-void
.end method

.method public static ipBytesToStr([B)Ljava/lang/String;
    .locals 4
    .param p0, "ip"    # [B

    .prologue
    .line 649
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1, p0}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 650
    :catch_0
    move-exception v0

    .line 651
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected IP address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static ipStrToBytes(Ljava/lang/String;)[B
    .locals 1
    .param p0, "ip"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 640
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    return-object v0
.end method

.method public static oidStrToInts(Ljava/lang/String;)[I
    .locals 11
    .param p0, "oid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x2e

    .line 601
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 602
    .local v2, "length":I
    add-int/lit8 v8, v2, -0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_0

    .line 603
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad OID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 605
    :cond_0
    div-int/lit8 v8, v2, 0x2

    add-int/lit8 v8, v8, 0x1

    new-array v6, v8, [I

    .line 606
    .local v6, "result":[I
    const/4 v3, 0x0

    .line 607
    .local v3, "number":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v4, v3

    .end local v3    # "number":I
    .local v4, "number":I
    :goto_0
    if-ge v1, v2, :cond_7

    .line 608
    const/4 v7, 0x0

    .line 609
    .local v7, "value":I
    move v5, v1

    .line 610
    .local v5, "pos":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 611
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 612
    .local v0, "ch":C
    const/16 v8, 0x30

    if-lt v0, v8, :cond_1

    const/16 v8, 0x39

    if-le v0, v8, :cond_2

    .line 617
    .end local v0    # "ch":C
    :cond_1
    if-ne v1, v5, :cond_3

    .line 619
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad OID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 615
    .restart local v0    # "ch":C
    :cond_2
    mul-int/lit8 v8, v7, 0xa

    add-int/lit8 v9, v0, -0x30

    add-int v7, v8, v9

    .line 610
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 621
    .end local v0    # "ch":C
    :cond_3
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "number":I
    .restart local v3    # "number":I
    aput v7, v6, v4

    .line 622
    if-ne v1, v2, :cond_4

    .line 630
    .end local v5    # "pos":I
    .end local v7    # "value":I
    :goto_2
    const/4 v8, 0x2

    if-ge v3, v8, :cond_6

    .line 631
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OID should consist of no less than 2 components: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 625
    .restart local v5    # "pos":I
    .restart local v7    # "value":I
    :cond_4
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 626
    .restart local v0    # "ch":C
    if-eq v0, v10, :cond_5

    .line 627
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad OID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 607
    :cond_5
    add-int/lit8 v1, v1, 0x1

    move v4, v3

    .end local v3    # "number":I
    .restart local v4    # "number":I
    goto :goto_0

    .line 633
    .end local v0    # "ch":C
    .end local v4    # "number":I
    .end local v5    # "pos":I
    .end local v7    # "value":I
    .restart local v3    # "number":I
    :cond_6
    const/4 v8, 0x0

    invoke-static {v6, v8, v3}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v8

    return-object v8

    .end local v3    # "number":I
    .restart local v4    # "number":I
    :cond_7
    move v3, v4

    .end local v4    # "number":I
    .restart local v3    # "number":I
    goto :goto_2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 281
    instance-of v2, p1, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;

    if-nez v2, :cond_1

    .line 307
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 284
    check-cast v0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;

    .line 285
    .local v0, "gname":Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;
    iget v2, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->tag:I

    iget v3, v0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->tag:I

    if-ne v2, v3, :cond_0

    .line 288
    iget v2, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->tag:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 303
    :pswitch_0
    invoke-virtual {p0}, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->getEncoded()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    goto :goto_0

    .line 292
    :pswitch_1
    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->name:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->getName()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 295
    :pswitch_2
    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->name:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    iget-object v2, v0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->name:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    goto :goto_0

    .line 298
    :pswitch_3
    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->name:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    iget-object v2, v0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->name:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    goto :goto_0

    .line 288
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public getAsList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 447
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 448
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget v1, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->tag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    iget v1, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->tag:I

    packed-switch v1, :pswitch_data_0

    .line 476
    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 451
    :pswitch_0
    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->name:Ljava/lang/Object;

    check-cast v1, Landroid/framework/org/apache/harmony/security_custom/x509/OtherName;

    invoke-virtual {v1}, Landroid/framework/org/apache/harmony/security_custom/x509/OtherName;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 456
    :pswitch_1
    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->name:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 459
    :pswitch_2
    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->name:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    invoke-static {v1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ObjectIdentifier;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 462
    :pswitch_3
    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->name:Ljava/lang/Object;

    check-cast v1, Landroid/framework/org/apache/harmony/security_custom/x509/ORAddress;

    invoke-virtual {v1}, Landroid/framework/org/apache/harmony/security_custom/x509/ORAddress;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 465
    :pswitch_4
    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->name:Ljava/lang/Object;

    check-cast v1, Landroid/framework/org/apache/harmony/security_custom/x501/Name;

    const-string v2, "RFC2253"

    invoke-virtual {v1, v2}, Landroid/framework/org/apache/harmony/security_custom/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 468
    :pswitch_5
    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->name:Ljava/lang/Object;

    check-cast v1, Landroid/framework/org/apache/harmony/security_custom/x509/EDIPartyName;

    invoke-virtual {v1}, Landroid/framework/org/apache/harmony/security_custom/x509/EDIPartyName;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 471
    :pswitch_6
    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->name:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v1}, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->ipBytesToStr([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 449
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->encoding:[B

    if-nez v0, :cond_0

    .line 524
    sget-object v0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->ASN1:Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Choice;

    invoke-virtual {v0, p0}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Choice;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->encoding:[B

    .line 526
    :cond_0
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->encoding:[B

    return-object v0
.end method

.method public getEncodedName()[B
    .locals 2

    .prologue
    .line 535
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->name_encoding:[B

    if-nez v0, :cond_0

    .line 536
    sget-object v0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->nameASN1:[Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    iget v1, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->tag:I

    aget-object v0, v0, v1

    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->name:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->name_encoding:[B

    .line 538
    :cond_0
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->name_encoding:[B

    return-object v0
.end method

.method public getName()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->name:Ljava/lang/Object;

    return-object v0
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->tag:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->tag:I

    packed-switch v0, :pswitch_data_0

    .line 324
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0

    .line 317
    :pswitch_0
    iget-object v0, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->name:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    .line 322
    :pswitch_1
    invoke-virtual {p0}, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    goto :goto_0

    .line 311
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isAcceptable(Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;)Z
    .locals 20
    .param p1, "gname"    # Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;

    .prologue
    .line 343
    move-object/from16 v0, p0

    iget v0, v0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->tag:I

    move/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->getTag()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 344
    const/16 v17, 0x0

    .line 426
    :goto_0
    return v17

    .line 346
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->tag:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 426
    const/16 v17, 0x1

    goto :goto_0

    .line 351
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->getName()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    sget-object v18, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->name:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    sget-object v19, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    goto :goto_0

    .line 357
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->name:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    .line 358
    .local v8, "dns":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->getName()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 359
    .local v3, "_dns":Ljava/lang/String;
    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 360
    const/16 v17, 0x1

    goto :goto_0

    .line 362
    :cond_1
    sget-object v17, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    goto :goto_0

    .line 371
    .end local v3    # "_dns":Ljava/lang/String;
    .end local v8    # "dns":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->name:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;

    .line 372
    .local v16, "uri":Ljava/lang/String;
    const-string v17, "://"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    add-int/lit8 v7, v17, 0x3

    .line 373
    .local v7, "begin":I
    const/16 v17, 0x2f

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    .line 374
    .local v9, "end":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v9, v0, :cond_2

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 377
    .local v10, "host":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->getName()Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "uri":Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 378
    .restart local v16    # "uri":Ljava/lang/String;
    const-string v17, "://"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    add-int/lit8 v7, v17, 0x3

    .line 379
    const/16 v17, 0x2f

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    .line 380
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v9, v0, :cond_3

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 383
    .local v4, "_host":Ljava/lang/String;
    :goto_2
    const-string v17, "."

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 384
    sget-object v17, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v17

    sget-object v18, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    goto/16 :goto_0

    .line 374
    .end local v4    # "_host":Ljava/lang/String;
    .end local v10    # "host":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 380
    .restart local v10    # "host":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 386
    .restart local v4    # "_host":Ljava/lang/String;
    :cond_4
    invoke-virtual {v10, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    goto/16 :goto_0

    .line 390
    .end local v4    # "_host":Ljava/lang/String;
    .end local v7    # "begin":I
    .end local v9    # "end":I
    .end local v10    # "host":Ljava/lang/String;
    .end local v16    # "uri":Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->name:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, [B

    move-object/from16 v6, v17

    check-cast v6, [B

    .line 391
    .local v6, "address":[B
    invoke-virtual/range {p1 .. p1}, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->getName()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [B

    move-object/from16 v2, v17

    check-cast v2, [B

    .line 392
    .local v2, "_address":[B
    array-length v12, v6

    .line 393
    .local v12, "length":I
    array-length v5, v2

    .line 394
    .local v5, "_length":I
    if-ne v12, v5, :cond_5

    .line 395
    invoke-static {v6, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v17

    goto/16 :goto_0

    .line 396
    :cond_5
    mul-int/lit8 v17, v5, 0x2

    move/from16 v0, v17

    if-ne v12, v0, :cond_9

    .line 397
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    array-length v0, v2

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v11, v0, :cond_8

    .line 399
    aget-byte v17, v2, v11

    move/from16 v0, v17

    and-int/lit16 v15, v0, 0xff

    .line 400
    .local v15, "octet":I
    aget-byte v17, v6, v11

    move/from16 v0, v17

    and-int/lit16 v14, v0, 0xff

    .line 401
    .local v14, "min":I
    add-int v17, v11, v5

    aget-byte v17, v6, v17

    move/from16 v0, v17

    and-int/lit16 v13, v0, 0xff

    .line 402
    .local v13, "max":I
    if-lt v15, v14, :cond_6

    if-le v15, v13, :cond_7

    .line 403
    :cond_6
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 397
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 406
    .end local v13    # "max":I
    .end local v14    # "min":I
    .end local v15    # "octet":I
    :cond_8
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 408
    .end local v11    # "i":I
    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 422
    .end local v2    # "_address":[B
    .end local v5    # "_length":I
    .end local v6    # "address":[B
    .end local v12    # "length":I
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->getEncoded()[B

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->getEncoded()[B

    move-result-object v18

    invoke-static/range {v17 .. v18}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v17

    goto/16 :goto_0

    .line 346
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 480
    const-string v0, ""

    .line 481
    .local v0, "result":Ljava/lang/String;
    iget v1, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->tag:I

    packed-switch v1, :pswitch_data_0

    .line 516
    :goto_0
    return-object v0

    .line 483
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "otherName[0]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Landroid/framework/org/apache/harmony/security_custom/utils/Array;->getBytesAsString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 485
    goto :goto_0

    .line 487
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rfc822Name[1]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->name:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 488
    goto :goto_0

    .line 490
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dNSName[2]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->name:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 491
    goto :goto_0

    .line 493
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uniformResourceIdentifier[6]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->name:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 494
    goto :goto_0

    .line 496
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registeredID[8]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->name:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    invoke-static {v1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ObjectIdentifier;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 497
    goto :goto_0

    .line 499
    :pswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "x400Address[3]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Landroid/framework/org/apache/harmony/security_custom/utils/Array;->getBytesAsString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 501
    goto/16 :goto_0

    .line 503
    :pswitch_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "directoryName[4]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->name:Ljava/lang/Object;

    check-cast v1, Landroid/framework/org/apache/harmony/security_custom/x501/Name;

    const-string v3, "RFC2253"

    invoke-virtual {v1, v3}, Landroid/framework/org/apache/harmony/security_custom/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 505
    goto/16 :goto_0

    .line 507
    :pswitch_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ediPartyName[5]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Landroid/framework/org/apache/harmony/security_custom/utils/Array;->getBytesAsString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 509
    goto/16 :goto_0

    .line 511
    :pswitch_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iPAddress[7]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->name:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v1}, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->ipBytesToStr([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 512
    goto/16 :goto_0

    .line 481
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_3
        :pswitch_8
        :pswitch_4
    .end packed-switch
.end method
