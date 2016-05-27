.class Lcom/android/server/net/NetworkStatsCollection$Key;
.super Ljava/lang/Object;
.source "NetworkStatsCollection.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/server/net/NetworkStatsCollection$Key;",
        ">;"
    }
.end annotation


# instance fields
.field private final hashCode:I

.field public final ident:Lcom/android/server/net/NetworkIdentitySet;

.field public final set:I

.field public final tag:I

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkIdentitySet;III)V
    .locals 3
    .param p1, "ident"    # Lcom/android/server/net/NetworkIdentitySet;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I

    .prologue
    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 597
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    .line 598
    iput p2, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    .line 599
    iput p3, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    .line 600
    iput p4, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    .line 601
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->hashCode:I

    .line 602
    return-void
.end method

.method public static setToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "set"    # I

    .prologue
    .line 655
    packed-switch p0, :pswitch_data_0

    .line 663
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 657
    :pswitch_0
    const-string v0, "ALL"

    goto :goto_0

    .line 659
    :pswitch_1
    const-string v0, "DEFAULT"

    goto :goto_0

    .line 661
    :pswitch_2
    const-string v0, "FOREGROUND"

    goto :goto_0

    .line 655
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static tagToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "tag"    # I

    .prologue
    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/android/server/net/NetworkStatsCollection$Key;)I
    .locals 3
    .param p1, "another"    # Lcom/android/server/net/NetworkStatsCollection$Key;

    .prologue
    .line 621
    const/4 v0, 0x0

    .line 622
    .local v0, "res":I
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    if-eqz v1, :cond_0

    .line 623
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    iget-object v2, p1, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v1, v2}, Lcom/android/server/net/NetworkIdentitySet;->compareTo(Lcom/android/server/net/NetworkIdentitySet;)I

    move-result v0

    .line 625
    :cond_0
    if-nez v0, :cond_1

    .line 626
    iget v1, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    iget v2, p1, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 628
    :cond_1
    if-nez v0, :cond_2

    .line 629
    iget v1, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    iget v2, p1, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 631
    :cond_2
    if-nez v0, :cond_3

    .line 632
    iget v1, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    iget v2, p1, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 634
    :cond_3
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 588
    check-cast p1, Lcom/android/server/net/NetworkStatsCollection$Key;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkStatsCollection$Key;->compareTo(Lcom/android/server/net/NetworkStatsCollection$Key;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 611
    instance-of v2, p1, Lcom/android/server/net/NetworkStatsCollection$Key;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 612
    check-cast v0, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 613
    .local v0, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget v2, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    iget v3, v0, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    iget v3, v0, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    iget v3, v0, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 616
    .end local v0    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 606
    iget v0, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 643
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, " Key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 645
    const-string v1, " set="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    invoke-static {v2}, Lcom/android/server/net/NetworkStatsCollection$Key;->setToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    const-string v1, " tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    invoke-static {v2}, Lcom/android/server/net/NetworkStatsCollection$Key;->tagToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
