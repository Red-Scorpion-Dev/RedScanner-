.class final Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName$1;
.super Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Choice;
.source "GeneralName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V
    .locals 0
    .param p1, "x0"    # [Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;

    .prologue
    .line 664
    invoke-direct {p0, p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Choice;-><init>([Landroid/framework/org/apache/harmony/security_custom/asn1/ASN1Type;)V

    return-void
.end method


# virtual methods
.method public getDecodedObject(Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 5
    .param p1, "in"    # Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 676
    iget v2, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->choiceIndex:I

    packed-switch v2, :pswitch_data_0

    .line 708
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GeneralName: unknown tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->choiceIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 678
    :pswitch_0
    new-instance v0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;

    iget-object v2, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v2, Landroid/framework/org/apache/harmony/security_custom/x509/OtherName;

    invoke-direct {v0, v2}, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;-><init>(Landroid/framework/org/apache/harmony/security_custom/x509/OtherName;)V

    .line 710
    .local v0, "result":Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;
    :goto_0
    invoke-virtual {p1}, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->getEncoded()[B

    move-result-object v2

    invoke-static {v0, v2}, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->access$202(Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;[B)[B

    .line 711
    return-object v0

    .line 682
    .end local v0    # "result":Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;
    :pswitch_1
    new-instance v0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;

    iget v3, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->choiceIndex:I

    iget-object v2, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v3, v2}, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;-><init>(ILjava/lang/String;)V

    .line 683
    .restart local v0    # "result":Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;
    goto :goto_0

    .line 685
    .end local v0    # "result":Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;
    :pswitch_2
    new-instance v0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;

    iget-object v2, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v2, Landroid/framework/org/apache/harmony/security_custom/x509/ORAddress;

    invoke-direct {v0, v2}, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;-><init>(Landroid/framework/org/apache/harmony/security_custom/x509/ORAddress;)V

    .line 686
    .restart local v0    # "result":Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;
    goto :goto_0

    .line 688
    .end local v0    # "result":Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;
    :pswitch_3
    new-instance v0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;

    iget-object v2, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v2, Landroid/framework/org/apache/harmony/security_custom/x501/Name;

    invoke-direct {v0, v2}, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;-><init>(Landroid/framework/org/apache/harmony/security_custom/x501/Name;)V

    .line 689
    .restart local v0    # "result":Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;
    goto :goto_0

    .line 691
    .end local v0    # "result":Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;
    :pswitch_4
    new-instance v0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;

    iget-object v2, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v2, Landroid/framework/org/apache/harmony/security_custom/x509/EDIPartyName;

    invoke-direct {v0, v2}, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;-><init>(Landroid/framework/org/apache/harmony/security_custom/x509/EDIPartyName;)V

    .line 692
    .restart local v0    # "result":Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;
    goto :goto_0

    .line 694
    .end local v0    # "result":Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;
    :pswitch_5
    iget-object v1, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 695
    .local v1, "uri":Ljava/lang/String;
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 696
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GeneralName: scheme is missing in URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 698
    :cond_0
    new-instance v0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;

    iget v2, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->choiceIndex:I

    invoke-direct {v0, v2, v1}, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;-><init>(ILjava/lang/String;)V

    .line 699
    .restart local v0    # "result":Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;
    goto :goto_0

    .line 701
    .end local v0    # "result":Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;
    .end local v1    # "uri":Ljava/lang/String;
    :pswitch_6
    new-instance v0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;

    iget-object v2, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-direct {v0, v2}, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;-><init>([B)V

    .line 702
    .restart local v0    # "result":Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;
    goto :goto_0

    .line 704
    .end local v0    # "result":Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;
    :pswitch_7
    new-instance v0, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;

    iget v3, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->choiceIndex:I

    iget-object v2, p1, Landroid/framework/org/apache/harmony/security_custom/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    invoke-static {v2}, Landroid/framework/org/apache/harmony/security_custom/asn1/ObjectIdentifier;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;-><init>(ILjava/lang/String;)V

    .line 706
    .restart local v0    # "result":Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;
    goto :goto_0

    .line 676
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getIndex(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 671
    check-cast p1, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-static {p1}, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->access$100(Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;)I

    move-result v0

    return v0
.end method

.method public getObjectToEncode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 667
    check-cast p1, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-static {p1}, Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;->access$000(Landroid/framework/org/apache/harmony/security_custom/x509/GeneralName;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
