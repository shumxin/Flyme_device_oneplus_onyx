.class public Landroid/net/NetworkStats;
.super Ljava/lang/Object;
.source "NetworkStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkStats$NonMonotonicObserver;,
        Landroid/net/NetworkStats$DataComparator;,
        Landroid/net/NetworkStats$Entry;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field public static final IFACE_ALL:Ljava/lang/String;

.field public static final SET_ALL:I = -0x1

.field public static final SET_DEFAULT:I = 0x0

.field public static final SET_FOREGROUND:I = 0x1

.field public static final SUPPORT_EXTEND_DATA_NO:I = 0x0

.field public static final SUPPORT_EXTEND_DATA_YES:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NetworkStats"

.field public static final TAG_ALL:I = -0x1

.field public static final TAG_NONE:I = 0x0

.field public static final UID_ALL:I = -0x1


# instance fields
.field private capacity:I

.field private comms:[Ljava/lang/String;

.field private containExtendData:I

.field private elapsedRealtime:J

.field private iface:[Ljava/lang/String;

.field private operations:[J

.field private pids:[J

.field private rxBytes:[J

.field private rxPackets:[J

.field private set:[I

.field private size:I

.field private tag:[I

.field private txBytes:[J

.field private txPackets:[J

.field private uid:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput-object v0, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    .line 1372
    new-instance v0, Landroid/net/NetworkStats$1;

    invoke-direct {v0}, Landroid/net/NetworkStats$1;-><init>()V

    sput-object v0, Landroid/net/NetworkStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 3
    .param p1, "elapsedRealtime"    # J
    .param p3, "initialSize"    # I

    .prologue
    const/4 v1, 0x0

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput v1, p0, Landroid/net/NetworkStats;->containExtendData:I

    .line 227
    iput-wide p1, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    .line 228
    iput v1, p0, Landroid/net/NetworkStats;->size:I

    .line 229
    if-ltz p3, :cond_0

    .line 230
    iput p3, p0, Landroid/net/NetworkStats;->capacity:I

    .line 231
    new-array v0, p3, [Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 232
    new-array v0, p3, [I

    iput-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    .line 233
    new-array v0, p3, [I

    iput-object v0, p0, Landroid/net/NetworkStats;->set:[I

    .line 234
    new-array v0, p3, [I

    iput-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    .line 235
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 236
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 237
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    .line 238
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 239
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    .line 243
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->pids:[J

    .line 244
    new-array v0, p3, [Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkStats;->comms:[Ljava/lang/String;

    .line 246
    iput v1, p0, Landroid/net/NetworkStats;->containExtendData:I

    .line 261
    :goto_0
    return-void

    .line 250
    :cond_0
    iput v1, p0, Landroid/net/NetworkStats;->capacity:I

    .line 251
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 252
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    .line 253
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/net/NetworkStats;->set:[I

    .line 254
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    .line 255
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 256
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 257
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    .line 258
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 259
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/NetworkStats;->containExtendData:I

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkStats;->size:I

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkStats;->capacity:I

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->set:[I

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkStats;->containExtendData:I

    .line 282
    const/4 v0, 0x1

    iget v1, p0, Landroid/net/NetworkStats;->containExtendData:I

    if-ne v0, v1, :cond_0

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->pids:[J

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->comms:[Ljava/lang/String;

    .line 287
    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/net/NetworkStats;)[I
    .locals 1
    .param p0, "x0"    # Landroid/net/NetworkStats;

    .prologue
    .line 50
    iget-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/NetworkStats;)[J
    .locals 1
    .param p0, "x0"    # Landroid/net/NetworkStats;

    .prologue
    .line 50
    iget-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/NetworkStats;)[J
    .locals 1
    .param p0, "x0"    # Landroid/net/NetworkStats;

    .prologue
    .line 50
    iget-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    return-object v0
.end method

.method private getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;
    .locals 11
    .param p1, "recycle"    # Landroid/net/NetworkStats$Entry;
    .param p3, "limitUid"    # I
    .param p4, "includeTags"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats$Entry;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;IZ)",
            "Landroid/net/NetworkStats$Entry;"
        }
    .end annotation

    .prologue
    .local p2, "limitIface":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v5, 0x1

    const/4 v10, -0x1

    const/4 v4, 0x0

    const-wide/16 v8, 0x0

    .line 711
    if-eqz p1, :cond_3

    move-object v0, p1

    .line 713
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    :goto_0
    sget-object v6, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v6, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 714
    iput p3, v0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 715
    iput v10, v0, Landroid/net/NetworkStats$Entry;->set:I

    .line 716
    iput v4, v0, Landroid/net/NetworkStats$Entry;->tag:I

    .line 717
    iput-wide v8, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 718
    iput-wide v8, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 719
    iput-wide v8, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 720
    iput-wide v8, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 721
    iput-wide v8, v0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 723
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v6, p0, Landroid/net/NetworkStats;->size:I

    if-ge v1, v6, :cond_7

    .line 724
    if-eq p3, v10, :cond_0

    iget-object v6, p0, Landroid/net/NetworkStats;->uid:[I

    aget v6, v6, v1

    if-ne p3, v6, :cond_4

    :cond_0
    move v3, v5

    .line 725
    .local v3, "matchesUid":Z
    :goto_2
    if-eqz p2, :cond_1

    iget-object v6, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {p2, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_1
    move v2, v5

    .line 727
    .local v2, "matchesIface":Z
    :goto_3
    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 729
    iget-object v6, p0, Landroid/net/NetworkStats;->tag:[I

    aget v6, v6, v1

    if-eqz v6, :cond_6

    if-nez p4, :cond_6

    .line 723
    :cond_2
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 711
    .end local v0    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v1    # "i":I
    .end local v2    # "matchesIface":Z
    .end local v3    # "matchesUid":Z
    :cond_3
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    goto :goto_0

    .restart local v0    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v1    # "i":I
    :cond_4
    move v3, v4

    .line 724
    goto :goto_2

    .restart local v3    # "matchesUid":Z
    :cond_5
    move v2, v4

    .line 725
    goto :goto_3

    .line 731
    .restart local v2    # "matchesIface":Z
    :cond_6
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-object v8, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v8, v8, v1

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 732
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-object v8, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v8, v8, v1

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 733
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-object v8, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v8, v8, v1

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 734
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-object v8, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v8, v8, v1

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 735
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->operations:J

    iget-object v8, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v8, v8, v1

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->operations:J

    goto :goto_4

    .line 738
    .end local v2    # "matchesIface":Z
    .end local v3    # "matchesUid":Z
    :cond_7
    return-object v0
.end method

.method public static setToCheckinString(I)Ljava/lang/String;
    .locals 1
    .param p0, "set"    # I

    .prologue
    .line 1055
    packed-switch p0, :pswitch_data_0

    .line 1063
    const-string/jumbo v0, "unk"

    :goto_0
    return-object v0

    .line 1057
    :pswitch_0
    const-string v0, "all"

    goto :goto_0

    .line 1059
    :pswitch_1
    const-string v0, "def"

    goto :goto_0

    .line 1061
    :pswitch_2
    const-string v0, "fg"

    goto :goto_0

    .line 1055
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "set"    # I

    .prologue
    .line 1039
    packed-switch p0, :pswitch_data_0

    .line 1047
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 1041
    :pswitch_0
    const-string v0, "ALL"

    goto :goto_0

    .line 1043
    :pswitch_1
    const-string v0, "DEFAULT"

    goto :goto_0

    .line 1045
    :pswitch_2
    const-string v0, "FOREGROUND"

    goto :goto_0

    .line 1039
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;)Landroid/net/NetworkStats;
    .locals 1
    .param p0, "left"    # Landroid/net/NetworkStats;
    .param p1, "right"    # Landroid/net/NetworkStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats$NonMonotonicObserver",
            "<TC;>;TC;)",
            "Landroid/net/NetworkStats;"
        }
    .end annotation

    .prologue
    .line 771
    .local p2, "observer":Landroid/net/NetworkStats$NonMonotonicObserver;, "Landroid/net/NetworkStats$NonMonotonicObserver<TC;>;"
    .local p3, "cookie":Ljava/lang/Object;, "TC;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public static subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 16
    .param p0, "left"    # Landroid/net/NetworkStats;
    .param p1, "right"    # Landroid/net/NetworkStats;
    .param p4, "recycle"    # Landroid/net/NetworkStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats$NonMonotonicObserver",
            "<TC;>;TC;",
            "Landroid/net/NetworkStats;",
            ")",
            "Landroid/net/NetworkStats;"
        }
    .end annotation

    .prologue
    .line 788
    .local p2, "observer":Landroid/net/NetworkStats$NonMonotonicObserver;, "Landroid/net/NetworkStats$NonMonotonicObserver<TC;>;"
    .local p3, "cookie":Ljava/lang/Object;, "TC;"
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/net/NetworkStats;->elapsedRealtime:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Landroid/net/NetworkStats;->elapsedRealtime:J

    sub-long v12, v2, v4

    .line 789
    .local v12, "deltaRealtime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-gez v2, :cond_1

    .line 790
    if-eqz p2, :cond_0

    .line 791
    const/4 v4, -0x1

    const/4 v6, -0x1

    move-object/from16 v2, p2

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p3

    invoke-interface/range {v2 .. v7}, Landroid/net/NetworkStats$NonMonotonicObserver;->foundNonMonotonic(Landroid/net/NetworkStats;ILandroid/net/NetworkStats;ILjava/lang/Object;)V

    .line 793
    :cond_0
    const-wide/16 v12, 0x0

    .line 797
    :cond_1
    new-instance v14, Landroid/net/NetworkStats$Entry;

    invoke-direct {v14}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 799
    .local v14, "entry":Landroid/net/NetworkStats$Entry;
    if-eqz p4, :cond_6

    move-object/from16 v0, p4

    iget v2, v0, Landroid/net/NetworkStats;->capacity:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/net/NetworkStats;->size:I

    if-lt v2, v3, :cond_6

    .line 800
    move-object/from16 v15, p4

    .line 801
    .local v15, "result":Landroid/net/NetworkStats;
    const/4 v2, 0x0

    iput v2, v15, Landroid/net/NetworkStats;->size:I

    .line 802
    iput-wide v12, v15, Landroid/net/NetworkStats;->elapsedRealtime:J

    .line 809
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats;->isContainExtendData()Z

    move-result v11

    .line 810
    .local v11, "containExtendData":Z
    invoke-virtual {v15, v11}, Landroid/net/NetworkStats;->setContainExtendDataFlag(Z)V

    .line 811
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkStats;->isContainExtendData()Z

    move-result v2

    if-eq v2, v11, :cond_2

    .line 812
    const-string v2, "NetworkStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "subtract, attribute value is not the same. left.containExtendData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    :cond_2
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/net/NetworkStats;->size:I

    if-ge v7, v2, :cond_b

    .line 816
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v2, v2, v7

    iput-object v2, v14, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 817
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->uid:[I

    aget v2, v2, v7

    iput v2, v14, Landroid/net/NetworkStats$Entry;->uid:I

    .line 818
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->set:[I

    aget v2, v2, v7

    iput v2, v14, Landroid/net/NetworkStats$Entry;->set:I

    .line 819
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->tag:[I

    aget v2, v2, v7

    iput v2, v14, Landroid/net/NetworkStats$Entry;->tag:I

    .line 823
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->pids:[J

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->pids:[J

    array-length v2, v2

    if-le v2, v7, :cond_3

    .line 824
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->pids:[J

    aget-wide v2, v2, v7

    iput-wide v2, v14, Landroid/net/NetworkStats$Entry;->pid:J

    .line 826
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->comms:[Ljava/lang/String;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->comms:[Ljava/lang/String;

    array-length v2, v2

    if-le v2, v7, :cond_4

    .line 827
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->comms:[Ljava/lang/String;

    aget-object v2, v2, v7

    iput-object v2, v14, Landroid/net/NetworkStats$Entry;->comm:Ljava/lang/String;

    .line 837
    :cond_4
    if-eqz v11, :cond_7

    iget-object v3, v14, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iget v4, v14, Landroid/net/NetworkStats$Entry;->uid:I

    iget v5, v14, Landroid/net/NetworkStats$Entry;->set:I

    iget v6, v14, Landroid/net/NetworkStats$Entry;->tag:I

    iget-wide v8, v14, Landroid/net/NetworkStats$Entry;->pid:J

    iget-object v10, v14, Landroid/net/NetworkStats$Entry;->comm:Ljava/lang/String;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v10}, Landroid/net/NetworkStats;->findIndexHintedWithProcessInfo(Ljava/lang/String;IIIIJLjava/lang/String;)I

    move-result v9

    .line 842
    .local v9, "j":I
    :goto_2
    const/4 v2, -0x1

    if-ne v9, v2, :cond_8

    .line 844
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v2, v2, v7

    iput-wide v2, v14, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 845
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v2, v2, v7

    iput-wide v2, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 846
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v2, v2, v7

    iput-wide v2, v14, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 847
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v2, v2, v7

    iput-wide v2, v14, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 848
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v2, v2, v7

    iput-wide v2, v14, Landroid/net/NetworkStats$Entry;->operations:J

    .line 870
    :cond_5
    :goto_3
    invoke-virtual {v15, v14}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 815
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 804
    .end local v7    # "i":I
    .end local v9    # "j":I
    .end local v11    # "containExtendData":Z
    .end local v15    # "result":Landroid/net/NetworkStats;
    :cond_6
    new-instance v15, Landroid/net/NetworkStats;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/net/NetworkStats;->size:I

    invoke-direct {v15, v12, v13, v2}, Landroid/net/NetworkStats;-><init>(JI)V

    .restart local v15    # "result":Landroid/net/NetworkStats;
    goto/16 :goto_0

    .line 837
    .restart local v7    # "i":I
    .restart local v11    # "containExtendData":Z
    :cond_7
    iget-object v3, v14, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iget v4, v14, Landroid/net/NetworkStats$Entry;->uid:I

    iget v5, v14, Landroid/net/NetworkStats$Entry;->set:I

    iget v6, v14, Landroid/net/NetworkStats$Entry;->tag:I

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/net/NetworkStats;->findIndexHinted(Ljava/lang/String;IIII)I

    move-result v9

    goto :goto_2

    .line 851
    .restart local v9    # "j":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v2, v2, v7

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v4, v4, v9

    sub-long/2addr v2, v4

    iput-wide v2, v14, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 852
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v2, v2, v7

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v4, v4, v9

    sub-long/2addr v2, v4

    iput-wide v2, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 853
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v2, v2, v7

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v4, v4, v9

    sub-long/2addr v2, v4

    iput-wide v2, v14, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 854
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v2, v2, v7

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v4, v4, v9

    sub-long/2addr v2, v4

    iput-wide v2, v14, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 855
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v2, v2, v7

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v4, v4, v9

    sub-long/2addr v2, v4

    iput-wide v2, v14, Landroid/net/NetworkStats$Entry;->operations:J

    .line 857
    iget-wide v2, v14, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_9

    iget-wide v2, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_9

    iget-wide v2, v14, Landroid/net/NetworkStats$Entry;->txBytes:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_9

    iget-wide v2, v14, Landroid/net/NetworkStats$Entry;->txPackets:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_9

    iget-wide v2, v14, Landroid/net/NetworkStats$Entry;->operations:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_5

    .line 859
    :cond_9
    if-eqz p2, :cond_a

    move-object/from16 v5, p2

    move-object/from16 v6, p0

    move-object/from16 v8, p1

    move-object/from16 v10, p3

    .line 860
    invoke-interface/range {v5 .. v10}, Landroid/net/NetworkStats$NonMonotonicObserver;->foundNonMonotonic(Landroid/net/NetworkStats;ILandroid/net/NetworkStats;ILjava/lang/Object;)V

    .line 862
    :cond_a
    iget-wide v2, v14, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v14, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 863
    iget-wide v2, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 864
    iget-wide v2, v14, Landroid/net/NetworkStats$Entry;->txBytes:J

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v14, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 865
    iget-wide v2, v14, Landroid/net/NetworkStats$Entry;->txPackets:J

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v14, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 866
    iget-wide v2, v14, Landroid/net/NetworkStats$Entry;->operations:J

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v14, Landroid/net/NetworkStats$Entry;->operations:J

    goto/16 :goto_3

    .line 873
    .end local v9    # "j":I
    :cond_b
    return-object v15
.end method

.method public static tagToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "tag"    # I

    .prologue
    .line 1071
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
.method public addIfaceValues(Ljava/lang/String;JJJJ)Landroid/net/NetworkStats;
    .locals 16
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "rxBytes"    # J
    .param p4, "rxPackets"    # J
    .param p6, "txBytes"    # J
    .param p8, "txPackets"    # J

    .prologue
    .line 334
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    invoke-virtual/range {v1 .. v15}, Landroid/net/NetworkStats;->addValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    .locals 7
    .param p1, "entry"    # Landroid/net/NetworkStats$Entry;

    .prologue
    const/4 v6, 0x1

    .line 350
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    iget v2, p0, Landroid/net/NetworkStats;->capacity:I

    if-lt v1, v2, :cond_0

    .line 351
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v0, v1, 0x2

    .line 352
    .local v0, "newLength":I
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 353
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    .line 354
    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->set:[I

    .line 355
    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    .line 356
    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 357
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 358
    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    .line 359
    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 360
    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    .line 361
    iput v0, p0, Landroid/net/NetworkStats;->capacity:I

    .line 365
    iget v1, p0, Landroid/net/NetworkStats;->containExtendData:I

    if-ne v6, v1, :cond_0

    .line 366
    iget-object v1, p0, Landroid/net/NetworkStats;->pids:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->pids:[J

    .line 367
    iget-object v1, p0, Landroid/net/NetworkStats;->comms:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/net/NetworkStats;->comms:[Ljava/lang/String;

    .line 372
    .end local v0    # "newLength":I
    :cond_0
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-object v3, p1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 373
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget v3, p1, Landroid/net/NetworkStats$Entry;->uid:I

    aput v3, v1, v2

    .line 374
    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget v3, p1, Landroid/net/NetworkStats$Entry;->set:I

    aput v3, v1, v2

    .line 375
    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget v3, p1, Landroid/net/NetworkStats$Entry;->tag:I

    aput v3, v1, v2

    .line 376
    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    aput-wide v4, v1, v2

    .line 377
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    aput-wide v4, v1, v2

    .line 378
    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    aput-wide v4, v1, v2

    .line 379
    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    aput-wide v4, v1, v2

    .line 380
    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->operations:J

    aput-wide v4, v1, v2

    .line 384
    iget v1, p0, Landroid/net/NetworkStats;->containExtendData:I

    if-ne v6, v1, :cond_1

    .line 385
    iget-object v1, p0, Landroid/net/NetworkStats;->pids:[J

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->pid:J

    aput-wide v4, v1, v2

    .line 386
    iget-object v1, p0, Landroid/net/NetworkStats;->comms:[Ljava/lang/String;

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-object v3, p1, Landroid/net/NetworkStats$Entry;->comm:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 389
    :cond_1
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/NetworkStats;->size:I

    .line 391
    return-object p0
.end method

.method public addValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;
    .locals 19
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "rxBytes"    # J
    .param p7, "rxPackets"    # J
    .param p9, "txBytes"    # J
    .param p11, "txPackets"    # J
    .param p13, "operations"    # J

    .prologue
    .line 341
    new-instance v3, Landroid/net/NetworkStats$Entry;

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move-wide/from16 v14, p11

    move-wide/from16 v16, p13

    invoke-direct/range {v3 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v2

    return-object v2
.end method

.method public clone()Landroid/net/NetworkStats;
    .locals 6

    .prologue
    .line 317
    new-instance v0, Landroid/net/NetworkStats;

    iget-wide v4, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    iget v3, p0, Landroid/net/NetworkStats;->size:I

    invoke-direct {v0, v4, v5, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 321
    .local v0, "clone":Landroid/net/NetworkStats;
    invoke-virtual {p0}, Landroid/net/NetworkStats;->isContainExtendData()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/net/NetworkStats;->setContainExtendDataFlag(Z)V

    .line 323
    const/4 v1, 0x0

    .line 324
    .local v1, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v2, v3, :cond_0

    .line 325
    invoke-virtual {p0, v2, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v1

    .line 326
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 324
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 328
    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p0}, Landroid/net/NetworkStats;->clone()Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public combineAllValues(Landroid/net/NetworkStats;)V
    .locals 3
    .param p1, "another"    # Landroid/net/NetworkStats;

    .prologue
    .line 510
    const/4 v0, 0x0

    .line 511
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p1, Landroid/net/NetworkStats;->size:I

    if-ge v1, v2, :cond_0

    .line 512
    invoke-virtual {p1, v1, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 513
    invoke-virtual {p0, v0}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 511
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 515
    :cond_0
    return-void
.end method

.method public combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    .locals 7
    .param p1, "entry"    # Landroid/net/NetworkStats$Entry;

    .prologue
    .line 489
    iget v0, p0, Landroid/net/NetworkStats;->containExtendData:I

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iget v1, p1, Landroid/net/NetworkStats$Entry;->uid:I

    iget v2, p1, Landroid/net/NetworkStats$Entry;->set:I

    iget v3, p1, Landroid/net/NetworkStats$Entry;->tag:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;III)I

    move-result v6

    .line 493
    .local v6, "i":I
    :goto_0
    const/4 v0, -0x1

    if-ne v6, v0, :cond_1

    .line 495
    invoke-virtual {p0, p1}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 503
    :goto_1
    return-object p0

    .line 489
    .end local v6    # "i":I
    :cond_0
    iget-object v1, p1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iget v2, p1, Landroid/net/NetworkStats$Entry;->uid:I

    iget v3, p1, Landroid/net/NetworkStats$Entry;->set:I

    iget v4, p1, Landroid/net/NetworkStats$Entry;->tag:I

    iget-object v5, p1, Landroid/net/NetworkStats$Entry;->comm:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStats;->findIndexWithProcName(Ljava/lang/String;IIILjava/lang/String;)I

    move-result v6

    goto :goto_0

    .line 497
    .restart local v6    # "i":I
    :cond_1
    iget-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v2, v0, v6

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    add-long/2addr v2, v4

    aput-wide v2, v0, v6

    .line 498
    iget-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v2, v0, v6

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    add-long/2addr v2, v4

    aput-wide v2, v0, v6

    .line 499
    iget-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v2, v0, v6

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v2, v4

    aput-wide v2, v0, v6

    .line 500
    iget-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v2, v0, v6

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    add-long/2addr v2, v4

    aput-wide v2, v0, v6

    .line 501
    iget-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v2, v0, v6

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->operations:J

    add-long/2addr v2, v4

    aput-wide v2, v0, v6

    goto :goto_1
.end method

.method public combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;
    .locals 19
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "rxBytes"    # J
    .param p7, "rxPackets"    # J
    .param p9, "txBytes"    # J
    .param p11, "txPackets"    # J
    .param p13, "operations"    # J

    .prologue
    .line 456
    new-instance v3, Landroid/net/NetworkStats$Entry;

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move-wide/from16 v14, p11

    move-wide/from16 v16, p13

    invoke-direct/range {v3 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v2

    return-object v2
.end method

.method public combineValues(Ljava/lang/String;IIIJJJJJLjava/lang/String;J)Landroid/net/NetworkStats;
    .locals 21
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "rxBytes"    # J
    .param p7, "rxPackets"    # J
    .param p9, "txBytes"    # J
    .param p11, "txPackets"    # J
    .param p13, "pid"    # J
    .param p15, "comm"    # Ljava/lang/String;
    .param p16, "operations"    # J

    .prologue
    .line 465
    new-instance v3, Landroid/net/NetworkStats$Entry;

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move-wide/from16 v14, p11

    move-wide/from16 v16, p13

    move-object/from16 v18, p15

    move-wide/from16 v19, p16

    invoke-direct/range {v3 .. v20}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJLjava/lang/String;J)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v2

    return-object v2
.end method

.method public combineValues(Ljava/lang/String;IIJJJJJ)Landroid/net/NetworkStats;
    .locals 16
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "tag"    # I
    .param p4, "rxBytes"    # J
    .param p6, "rxPackets"    # J
    .param p8, "txBytes"    # J
    .param p10, "txPackets"    # J
    .param p12, "operations"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 450
    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move-wide/from16 v14, p12

    invoke-virtual/range {v1 .. v15}, Landroid/net/NetworkStats;->combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1369
    const/4 v0, 0x0

    return v0
.end method

.method public doGetTopRecords(ILandroid/net/NetworkStats$DataComparator;Landroid/net/NetworkStats;)V
    .locals 16
    .param p1, "countToGet"    # I
    .param p2, "comparator"    # Landroid/net/NetworkStats$DataComparator;
    .param p3, "targetRes"    # Landroid/net/NetworkStats;

    .prologue
    .line 1164
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats;->size()I

    move-result v13

    .line 1166
    .local v13, "totalSize":I
    div-int v1, v13, p1

    .line 1167
    .local v1, "batchCount":I
    rem-int v9, v13, p1

    .line 1168
    .local v9, "remain":I
    const/4 v10, 0x0

    .line 1169
    .local v10, "sortArray":[Ljava/lang/Integer;
    const/4 v14, 0x1

    if-gt v1, v14, :cond_4

    .line 1171
    new-array v10, v13, [Ljava/lang/Integer;

    .line 1172
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_0
    if-ge v7, v13, :cond_0

    .line 1173
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v10, v7

    .line 1172
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1175
    :cond_0
    move-object/from16 v0, p2

    invoke-static {v10, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1205
    :cond_1
    :goto_1
    new-instance v3, Landroid/net/NetworkStats$Entry;

    invoke-direct {v3}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 1206
    .local v3, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x0

    .line 1207
    .local v2, "doAdd":Z
    invoke-virtual/range {p2 .. p2}, Landroid/net/NetworkStats$DataComparator;->isProcessRootUid()Z

    move-result v6

    .line 1208
    .local v6, "isProcessRootUid":Z
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_2
    move/from16 v0, p1

    if-ge v5, v0, :cond_d

    .line 1210
    aget-object v14, v10, v5

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1211
    .local v11, "sortIndex":I
    if-ltz v11, :cond_2

    if-lt v11, v13, :cond_a

    .line 1212
    :cond_2
    const-string v14, "NetworkStats"

    const-string/jumbo v15, "sortIndex out of index."

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1178
    .end local v2    # "doAdd":Z
    .end local v3    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v5    # "index":I
    .end local v6    # "isProcessRootUid":Z
    .end local v7    # "j":I
    .end local v11    # "sortIndex":I
    :cond_4
    mul-int/lit8 v14, p1, 0x2

    new-array v10, v14, [Ljava/lang/Integer;

    .line 1179
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_4
    move/from16 v0, p1

    if-ge v7, v0, :cond_5

    .line 1180
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v10, v7

    .line 1179
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1182
    :cond_5
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    add-int/lit8 v14, v1, -0x1

    if-ge v4, v14, :cond_7

    .line 1183
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_6
    move/from16 v0, p1

    if-ge v8, v0, :cond_6

    .line 1184
    add-int v14, p1, v8

    add-int/lit8 v15, v4, 0x1

    mul-int v15, v15, p1

    add-int/2addr v15, v8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v10, v14

    .line 1183
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 1186
    :cond_6
    move-object/from16 v0, p2

    invoke-static {v10, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1182
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1190
    .end local v8    # "k":I
    :cond_7
    if-lez v9, :cond_1

    .line 1191
    sub-int v12, v13, v9

    .line 1192
    .local v12, "start":I
    const/4 v8, 0x0

    .restart local v8    # "k":I
    :goto_7
    move/from16 v0, p1

    if-ge v8, v0, :cond_9

    .line 1193
    if-ge v8, v9, :cond_8

    .line 1194
    add-int v14, p1, v8

    add-int v15, v12, v8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v10, v14

    .line 1192
    :goto_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 1197
    :cond_8
    add-int v14, p1, v8

    const/4 v15, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v10, v14

    goto :goto_8

    .line 1200
    :cond_9
    move-object/from16 v0, p2

    invoke-static {v10, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_1

    .line 1215
    .end local v4    # "i":I
    .end local v8    # "k":I
    .end local v12    # "start":I
    .restart local v2    # "doAdd":Z
    .restart local v3    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v5    # "index":I
    .restart local v6    # "isProcessRootUid":Z
    .restart local v11    # "sortIndex":I
    :cond_a
    if-eqz v6, :cond_c

    .line 1216
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/NetworkStats;->uid:[I

    aget v14, v14, v11

    if-nez v14, :cond_b

    .line 1217
    const/4 v2, 0x1

    .line 1224
    :cond_b
    :goto_9
    if-eqz v2, :cond_3

    .line 1225
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v3}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v3

    .line 1226
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 1227
    const/4 v2, 0x0

    goto :goto_3

    .line 1220
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/NetworkStats;->uid:[I

    aget v14, v14, v11

    if-eqz v14, :cond_b

    .line 1221
    const/4 v2, 0x1

    goto :goto_9

    .line 1230
    .end local v11    # "sortIndex":I
    :cond_d
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v6, 0x1

    .line 988
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 989
    const-string v3, "NetworkStats: elapsedRealtime="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    invoke-virtual {p2, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 993
    const-string v3, "NetworkStats: size="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Landroid/net/NetworkStats;->size:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 994
    const-string v3, "NetworkStats: containExtendData="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Landroid/net/NetworkStats;->containExtendData:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 995
    const/4 v2, 0x0

    .line 996
    .local v2, "pidsLen":I
    const/4 v0, 0x0

    .line 997
    .local v0, "commsLen":I
    iget v3, p0, Landroid/net/NetworkStats;->containExtendData:I

    if-ne v6, v3, :cond_1

    .line 998
    iget-object v3, p0, Landroid/net/NetworkStats;->pids:[J

    if-eqz v3, :cond_0

    .line 999
    iget-object v3, p0, Landroid/net/NetworkStats;->pids:[J

    array-length v2, v3

    .line 1001
    :cond_0
    iget-object v3, p0, Landroid/net/NetworkStats;->comms:[Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1002
    iget-object v3, p0, Landroid/net/NetworkStats;->comms:[Ljava/lang/String;

    array-length v0, v3

    .line 1005
    :cond_1
    const-string v3, " pids.len ="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1006
    const-string v3, " comms.len ="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1008
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v1, v3, :cond_4

    .line 1009
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1010
    const-string v3, "  ["

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, "]"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1011
    const-string v3, " iface="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1012
    const-string v3, " uid="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/net/NetworkStats;->uid:[I

    aget v3, v3, v1

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1013
    const-string v3, " set="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/net/NetworkStats;->set:[I

    aget v3, v3, v1

    invoke-static {v3}, Landroid/net/NetworkStats;->setToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1014
    const-string v3, " tag="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    aget v3, v3, v1

    invoke-static {v3}, Landroid/net/NetworkStats;->tagToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1015
    const-string v3, " rxBytes="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v4, v3, v1

    invoke-virtual {p2, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 1016
    const-string v3, " rxPackets="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v4, v3, v1

    invoke-virtual {p2, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 1017
    const-string v3, " txBytes="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v4, v3, v1

    invoke-virtual {p2, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 1018
    const-string v3, " txPackets="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v4, v3, v1

    invoke-virtual {p2, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 1022
    iget v3, p0, Landroid/net/NetworkStats;->containExtendData:I

    if-ne v6, v3, :cond_3

    .line 1023
    iget-object v3, p0, Landroid/net/NetworkStats;->pids:[J

    if-eqz v3, :cond_2

    if-le v2, v1, :cond_2

    .line 1024
    const-string v3, " pids="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/net/NetworkStats;->pids:[J

    aget-wide v4, v3, v1

    invoke-virtual {p2, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 1026
    :cond_2
    iget-object v3, p0, Landroid/net/NetworkStats;->comms:[Ljava/lang/String;

    if-eqz v3, :cond_3

    if-le v0, v1, :cond_3

    .line 1027
    const-string v3, " comms="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/net/NetworkStats;->comms:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1031
    :cond_3
    const-string v3, " operations="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v4, v3, v1

    invoke-virtual {p2, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 1008
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1033
    :cond_4
    return-void
.end method

.method public findIndex(Ljava/lang/String;III)I
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I

    .prologue
    .line 521
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v1, :cond_1

    .line 522
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    aget v1, v1, v0

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    aget v1, v1, v0

    if-ne p3, v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    aget v1, v1, v0

    if-ne p4, v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 527
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 521
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 527
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public findIndexHinted(Ljava/lang/String;IIII)I
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "hintIndex"    # I

    .prologue
    .line 560
    const/4 v2, 0x0

    .local v2, "offset":I
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v2, v3, :cond_2

    .line 561
    div-int/lit8 v0, v2, 0x2

    .line 565
    .local v0, "halfOffset":I
    rem-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_0

    .line 566
    add-int v3, p5, v0

    iget v4, p0, Landroid/net/NetworkStats;->size:I

    rem-int v1, v3, v4

    .line 571
    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Landroid/net/NetworkStats;->uid:[I

    aget v3, v3, v1

    if-ne p2, v3, :cond_1

    iget-object v3, p0, Landroid/net/NetworkStats;->set:[I

    aget v3, v3, v1

    if-ne p3, v3, :cond_1

    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    aget v3, v3, v1

    if-ne p4, v3, :cond_1

    iget-object v3, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 576
    .end local v0    # "halfOffset":I
    .end local v1    # "i":I
    :goto_2
    return v1

    .line 568
    .restart local v0    # "halfOffset":I
    :cond_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    add-int/2addr v3, p5

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Landroid/net/NetworkStats;->size:I

    rem-int v1, v3, v4

    .restart local v1    # "i":I
    goto :goto_1

    .line 560
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 576
    .end local v0    # "halfOffset":I
    .end local v1    # "i":I
    :cond_2
    const/4 v1, -0x1

    goto :goto_2
.end method

.method public findIndexHintedWithProcessInfo(Ljava/lang/String;IIIIJLjava/lang/String;)I
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "hintIndex"    # I
    .param p6, "pid"    # J
    .param p8, "processName"    # Ljava/lang/String;

    .prologue
    .line 584
    invoke-virtual {p0}, Landroid/net/NetworkStats;->isContainExtendData()Z

    move-result v3

    if-nez v3, :cond_1

    .line 585
    invoke-virtual/range {p0 .. p5}, Landroid/net/NetworkStats;->findIndexHinted(Ljava/lang/String;IIII)I

    move-result v1

    .line 606
    :cond_0
    :goto_0
    return v1

    .line 588
    :cond_1
    const/4 v2, 0x0

    .local v2, "offset":I
    :goto_1
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v2, v3, :cond_4

    .line 589
    div-int/lit8 v0, v2, 0x2

    .line 593
    .local v0, "halfOffset":I
    rem-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_3

    .line 594
    add-int v3, p5, v0

    iget v4, p0, Landroid/net/NetworkStats;->size:I

    rem-int v1, v3, v4

    .line 599
    .local v1, "i":I
    :goto_2
    iget-object v3, p0, Landroid/net/NetworkStats;->uid:[I

    aget v3, v3, v1

    if-ne p2, v3, :cond_2

    iget-object v3, p0, Landroid/net/NetworkStats;->set:[I

    aget v3, v3, v1

    if-ne p3, v3, :cond_2

    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    aget v3, v3, v1

    if-ne p4, v3, :cond_2

    iget-object v3, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 601
    if-eqz p8, :cond_2

    iget-object v3, p0, Landroid/net/NetworkStats;->comms:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/net/NetworkStats;->comms:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 588
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 596
    .end local v1    # "i":I
    :cond_3
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    add-int/2addr v3, p5

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Landroid/net/NetworkStats;->size:I

    rem-int v1, v3, v4

    .restart local v1    # "i":I
    goto :goto_2

    .line 606
    .end local v0    # "halfOffset":I
    .end local v1    # "i":I
    :cond_4
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public findIndexWithProcName(Ljava/lang/String;IIILjava/lang/String;)I
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "procName"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 537
    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    .line 538
    :cond_0
    const-string v2, "NetworkStats"

    const-string v3, "findIndexWithProcName procName is empty."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 550
    :cond_1
    :goto_0
    return v0

    .line 542
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v2, :cond_4

    .line 543
    iget-object v2, p0, Landroid/net/NetworkStats;->comms:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 544
    iget-object v2, p0, Landroid/net/NetworkStats;->uid:[I

    aget v2, v2, v0

    if-ne p2, v2, :cond_3

    iget-object v2, p0, Landroid/net/NetworkStats;->set:[I

    aget v2, v2, v0

    if-ne p3, v2, :cond_3

    iget-object v2, p0, Landroid/net/NetworkStats;->tag:[I

    aget v2, v2, v0

    if-ne p4, v2, :cond_3

    iget-object v2, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 542
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 550
    goto :goto_0
.end method

.method public getElapsedRealtime()J
    .locals 2

    .prologue
    .line 423
    iget-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    return-wide v0
.end method

.method public getElapsedRealtimeAge()J
    .locals 4

    .prologue
    .line 435
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getSepecialTotal(Landroid/net/NetworkStats$Entry;ILandroid/net/NetworkStats$Entry;)Z
    .locals 8
    .param p1, "limitUidEntry"    # Landroid/net/NetworkStats$Entry;
    .param p2, "limitUid"    # I
    .param p3, "otherUidEntry"    # Landroid/net/NetworkStats$Entry;

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    .line 1313
    if-nez p1, :cond_0

    .line 1314
    const-string v3, "NetworkStats"

    const-string v4, "getSepecialTotal:limitUidEntry null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    :goto_0
    return v2

    .line 1317
    :cond_0
    if-nez p3, :cond_1

    .line 1318
    const-string v3, "NetworkStats"

    const-string v4, "getSepecialTotal:otherUidEntry null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1322
    :cond_1
    sget-object v4, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v4, p1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 1323
    iput p2, p1, Landroid/net/NetworkStats$Entry;->uid:I

    .line 1324
    iput v5, p1, Landroid/net/NetworkStats$Entry;->set:I

    .line 1325
    iput v2, p1, Landroid/net/NetworkStats$Entry;->tag:I

    .line 1326
    iput-wide v6, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 1327
    iput-wide v6, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 1328
    iput-wide v6, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 1329
    iput-wide v6, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 1330
    iput-wide v6, p1, Landroid/net/NetworkStats$Entry;->operations:J

    .line 1332
    sget-object v4, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v4, p3, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 1333
    iput v3, p3, Landroid/net/NetworkStats$Entry;->uid:I

    .line 1334
    iput v5, p3, Landroid/net/NetworkStats$Entry;->set:I

    .line 1335
    iput v2, p3, Landroid/net/NetworkStats$Entry;->tag:I

    .line 1336
    iput-wide v6, p3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 1337
    iput-wide v6, p3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 1338
    iput-wide v6, p3, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 1339
    iput-wide v6, p3, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 1340
    iput-wide v6, p3, Landroid/net/NetworkStats$Entry;->operations:J

    .line 1342
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v4, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v4, :cond_5

    .line 1344
    iget-object v4, p0, Landroid/net/NetworkStats;->tag:[I

    aget v4, v4, v0

    if-eqz v4, :cond_2

    .line 1342
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1347
    :cond_2
    iget-object v4, p0, Landroid/net/NetworkStats;->uid:[I

    aget v4, v4, v0

    if-ne p2, v4, :cond_3

    move v1, v3

    .line 1348
    .local v1, "matchesUid":Z
    :goto_3
    if-eqz v1, :cond_4

    .line 1349
    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-object v6, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v6, v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 1350
    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-object v6, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v6, v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 1351
    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-object v6, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v6, v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 1352
    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-object v6, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v6, v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 1353
    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->operations:J

    iget-object v6, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v6, v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p1, Landroid/net/NetworkStats$Entry;->operations:J

    goto :goto_2

    .end local v1    # "matchesUid":Z
    :cond_3
    move v1, v2

    .line 1347
    goto :goto_3

    .line 1355
    .restart local v1    # "matchesUid":Z
    :cond_4
    iget-wide v4, p3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-object v6, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v6, v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 1356
    iget-wide v4, p3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-object v6, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v6, v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 1357
    iget-wide v4, p3, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-object v6, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v6, v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p3, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 1358
    iget-wide v4, p3, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-object v6, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v6, v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p3, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 1359
    iget-wide v4, p3, Landroid/net/NetworkStats$Entry;->operations:J

    iget-object v6, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v6, v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p3, Landroid/net/NetworkStats$Entry;->operations:J

    goto :goto_2

    .end local v1    # "matchesUid":Z
    :cond_5
    move v2, v3

    .line 1363
    goto/16 :goto_0
.end method

.method public getSpecifiedTopRecords(II)Landroid/net/NetworkStats;
    .locals 8
    .param p1, "countForRootUid"    # I
    .param p2, "countForNonRootUid"    # I

    .prologue
    .line 1135
    invoke-virtual {p0}, Landroid/net/NetworkStats;->size()I

    move-result v5

    .line 1137
    .local v5, "totalSize":I
    if-ge p1, v5, :cond_0

    if-lt p2, v5, :cond_1

    .line 1159
    .end local p0    # "this":Landroid/net/NetworkStats;
    :cond_0
    :goto_0
    return-object p0

    .line 1143
    .restart local p0    # "this":Landroid/net/NetworkStats;
    :cond_1
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1145
    .local v1, "initCount":I
    new-instance v4, Landroid/net/NetworkStats;

    iget-wide v6, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    invoke-direct {v4, v6, v7, v1}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 1146
    .local v4, "targetRes":Landroid/net/NetworkStats;
    invoke-virtual {p0}, Landroid/net/NetworkStats;->isContainExtendData()Z

    move-result v6

    invoke-virtual {v4, v6}, Landroid/net/NetworkStats;->setContainExtendDataFlag(Z)V

    .line 1149
    new-instance v3, Landroid/net/NetworkStats$DataComparator;

    const/4 v6, 0x1

    invoke-direct {v3, p0, v6, v5}, Landroid/net/NetworkStats$DataComparator;-><init>(Landroid/net/NetworkStats;ZI)V

    .line 1150
    .local v3, "rootUidComparator":Landroid/net/NetworkStats$DataComparator;
    invoke-virtual {p0, p1, v3, v4}, Landroid/net/NetworkStats;->doGetTopRecords(ILandroid/net/NetworkStats$DataComparator;Landroid/net/NetworkStats;)V

    .line 1153
    new-instance v2, Landroid/net/NetworkStats$DataComparator;

    const/4 v6, 0x0

    invoke-direct {v2, p0, v6, v5}, Landroid/net/NetworkStats$DataComparator;-><init>(Landroid/net/NetworkStats;ZI)V

    .line 1154
    .local v2, "nonRootUidComparator":Landroid/net/NetworkStats$DataComparator;
    invoke-virtual {p0, p2, v2, v4}, Landroid/net/NetworkStats;->doGetTopRecords(ILandroid/net/NetworkStats$DataComparator;Landroid/net/NetworkStats;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v4

    .line 1156
    goto :goto_0

    .line 1157
    .end local v1    # "initCount":I
    .end local v2    # "nonRootUidComparator":Landroid/net/NetworkStats$DataComparator;
    .end local v3    # "rootUidComparator":Landroid/net/NetworkStats$DataComparator;
    .end local v4    # "targetRes":Landroid/net/NetworkStats;
    :catch_0
    move-exception v0

    .line 1158
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "NetworkStats"

    const-string v7, "getSpecifiedTopRecords failed, just return all! Error:"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 3
    .param p1, "recycle"    # Landroid/net/NetworkStats$Entry;

    .prologue
    .line 679
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getTotal(Landroid/net/NetworkStats$Entry;I)Landroid/net/NetworkStats$Entry;
    .locals 2
    .param p1, "recycle"    # Landroid/net/NetworkStats$Entry;
    .param p2, "limitUid"    # I

    .prologue
    .line 687
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;)Landroid/net/NetworkStats$Entry;
    .locals 2
    .param p1, "recycle"    # Landroid/net/NetworkStats$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats$Entry;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/NetworkStats$Entry;"
        }
    .end annotation

    .prologue
    .line 695
    .local p2, "limitIface":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getTotalBytes()J
    .locals 6

    .prologue
    .line 671
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 672
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    iget-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v2, v4

    return-wide v2
.end method

.method public getTotalIncludingTags(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 3
    .param p1, "recycle"    # Landroid/net/NetworkStats$Entry;

    .prologue
    .line 699
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getTotalPackets()J
    .locals 8

    .prologue
    .line 745
    const-wide/16 v2, 0x0

    .line 746
    .local v2, "total":J
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 747
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v4, v1, v0

    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v6, v1, v0

    add-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 746
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 749
    :cond_0
    return-wide v2
.end method

.method public getUniqueIfaces()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 630
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 634
    .local v3, "ifaces":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v5, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 636
    iget-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    .line 637
    .local v2, "iface":Ljava/lang/String;
    sget-object v5, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    if-eq v2, v5, :cond_0

    .line 638
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 636
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 646
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "iface":Ljava/lang/String;
    .end local v4    # "len$":I
    :cond_1
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5
.end method

.method public getUniqueUids()[I
    .locals 9

    .prologue
    .line 653
    new-instance v7, Landroid/util/SparseBooleanArray;

    invoke-direct {v7}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 654
    .local v7, "uids":Landroid/util/SparseBooleanArray;
    iget-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v6, v0, v2

    .line 655
    .local v6, "uid":I
    const/4 v8, 0x1

    invoke-virtual {v7, v6, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 654
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 658
    .end local v6    # "uid":I
    :cond_0
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    .line 659
    .local v5, "size":I
    new-array v4, v5, [I

    .line 660
    .local v4, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_1

    .line 661
    invoke-virtual {v7, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    aput v8, v4, v1

    .line 660
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 663
    :cond_1
    return-object v4
.end method

.method public getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 4
    .param p1, "i"    # I
    .param p2, "recycle"    # Landroid/net/NetworkStats$Entry;

    .prologue
    .line 398
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 399
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    :goto_0
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v1, p1

    iput-object v1, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 400
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    aget v1, v1, p1

    iput v1, v0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 401
    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    aget v1, v1, p1

    iput v1, v0, Landroid/net/NetworkStats$Entry;->set:I

    .line 402
    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    aget v1, v1, p1

    iput v1, v0, Landroid/net/NetworkStats$Entry;->tag:I

    .line 403
    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v2, v1, p1

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 404
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v2, v1, p1

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 405
    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v2, v1, p1

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 406
    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v2, v1, p1

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 410
    const/4 v1, 0x1

    iget v2, p0, Landroid/net/NetworkStats;->containExtendData:I

    if-ne v1, v2, :cond_1

    .line 411
    iget-object v1, p0, Landroid/net/NetworkStats;->pids:[J

    aget-wide v2, v1, p1

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->pid:J

    .line 412
    iget-object v1, p0, Landroid/net/NetworkStats;->comms:[Ljava/lang/String;

    aget-object v1, v1, p1

    iput-object v1, v0, Landroid/net/NetworkStats$Entry;->comm:Ljava/lang/String;

    .line 418
    :goto_1
    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v2, v1, p1

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 419
    return-object v0

    .line 398
    .end local v0    # "entry":Landroid/net/NetworkStats$Entry;
    :cond_0
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    goto :goto_0

    .line 414
    .restart local v0    # "entry":Landroid/net/NetworkStats$Entry;
    :cond_1
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->pid:J

    .line 415
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/net/NetworkStats$Entry;->comm:Ljava/lang/String;

    goto :goto_1
.end method

.method public groupedByIface()Landroid/net/NetworkStats;
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, -0x1

    .line 881
    new-instance v2, Landroid/net/NetworkStats;

    iget-wide v4, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    const/16 v3, 0xa

    invoke-direct {v2, v4, v5, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 885
    .local v2, "stats":Landroid/net/NetworkStats;
    invoke-virtual {p0}, Landroid/net/NetworkStats;->isContainExtendData()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/NetworkStats;->setContainExtendDataFlag(Z)V

    .line 888
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 889
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    iput v6, v0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 890
    iput v6, v0, Landroid/net/NetworkStats$Entry;->set:I

    .line 891
    const/4 v3, 0x0

    iput v3, v0, Landroid/net/NetworkStats$Entry;->tag:I

    .line 892
    iput-wide v8, v0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 894
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v1, v3, :cond_2

    .line 896
    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    aget v3, v3, v1

    if-eqz v3, :cond_0

    .line 894
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 898
    :cond_0
    iget-object v3, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v3, v3, v1

    iput-object v3, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 899
    iget-object v3, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 900
    iget-object v3, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 901
    iget-object v3, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 902
    iget-object v3, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 906
    invoke-virtual {p0}, Landroid/net/NetworkStats;->isContainExtendData()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 907
    iget-object v3, p0, Landroid/net/NetworkStats;->pids:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->pid:J

    .line 908
    iget-object v3, p0, Landroid/net/NetworkStats;->comms:[Ljava/lang/String;

    aget-object v3, v3, v1

    iput-object v3, v0, Landroid/net/NetworkStats$Entry;->comm:Ljava/lang/String;

    .line 914
    :goto_2
    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    goto :goto_1

    .line 910
    :cond_1
    iput-wide v8, v0, Landroid/net/NetworkStats$Entry;->pid:J

    .line 911
    const/4 v3, 0x0

    iput-object v3, v0, Landroid/net/NetworkStats$Entry;->comm:Ljava/lang/String;

    goto :goto_2

    .line 917
    :cond_2
    return-object v2
.end method

.method public groupedByUid()Landroid/net/NetworkStats;
    .locals 6

    .prologue
    .line 925
    new-instance v2, Landroid/net/NetworkStats;

    iget-wide v4, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    const/16 v3, 0xa

    invoke-direct {v2, v4, v5, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 929
    .local v2, "stats":Landroid/net/NetworkStats;
    invoke-virtual {p0}, Landroid/net/NetworkStats;->isContainExtendData()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/NetworkStats;->setContainExtendDataFlag(Z)V

    .line 932
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 933
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    sget-object v3, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v3, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 934
    const/4 v3, -0x1

    iput v3, v0, Landroid/net/NetworkStats$Entry;->set:I

    .line 935
    const/4 v3, 0x0

    iput v3, v0, Landroid/net/NetworkStats$Entry;->tag:I

    .line 937
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v1, v3, :cond_2

    .line 939
    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    aget v3, v3, v1

    if-eqz v3, :cond_0

    .line 937
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 941
    :cond_0
    iget-object v3, p0, Landroid/net/NetworkStats;->uid:[I

    aget v3, v3, v1

    iput v3, v0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 942
    iget-object v3, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 943
    iget-object v3, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 944
    iget-object v3, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 945
    iget-object v3, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 946
    iget-object v3, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 950
    invoke-virtual {p0}, Landroid/net/NetworkStats;->isContainExtendData()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 951
    iget-object v3, p0, Landroid/net/NetworkStats;->pids:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->pid:J

    .line 952
    iget-object v3, p0, Landroid/net/NetworkStats;->comms:[Ljava/lang/String;

    aget-object v3, v3, v1

    iput-object v3, v0, Landroid/net/NetworkStats$Entry;->comm:Ljava/lang/String;

    .line 958
    :goto_2
    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    goto :goto_1

    .line 954
    :cond_1
    const-wide/16 v4, 0x0

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->pid:J

    .line 955
    const/4 v3, 0x0

    iput-object v3, v0, Landroid/net/NetworkStats$Entry;->comm:Ljava/lang/String;

    goto :goto_2

    .line 961
    :cond_2
    return-object v2
.end method

.method public internalSize()I
    .locals 1

    .prologue
    .line 444
    iget v0, p0, Landroid/net/NetworkStats;->capacity:I

    return v0
.end method

.method public isContainExtendData()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 470
    iget v1, p0, Landroid/net/NetworkStats;->containExtendData:I

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logoutData(Ljava/lang/String;)V
    .locals 11
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    .line 1085
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1086
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-nez p1, :cond_0

    .line 1087
    const-string p1, "*"

    .line 1089
    :cond_0
    const-string v4, "NetworkStats"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "------------ NetworkStats["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] begin: ------------"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    const-string v4, "NetworkStats: elapsedRealtime="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1092
    const-string v4, ", size="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/net/NetworkStats;->size:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1093
    const-string v4, ", containExtendData="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/net/NetworkStats;->containExtendData:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1094
    const/4 v3, 0x0

    .line 1095
    .local v3, "pidsLen":I
    const/4 v1, 0x0

    .line 1096
    .local v1, "commsLen":I
    iget v4, p0, Landroid/net/NetworkStats;->containExtendData:I

    if-ne v10, v4, :cond_2

    .line 1097
    iget-object v4, p0, Landroid/net/NetworkStats;->pids:[J

    if-eqz v4, :cond_1

    .line 1098
    iget-object v4, p0, Landroid/net/NetworkStats;->pids:[J

    array-length v3, v4

    .line 1100
    :cond_1
    iget-object v4, p0, Landroid/net/NetworkStats;->comms:[Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 1101
    iget-object v4, p0, Landroid/net/NetworkStats;->comms:[Ljava/lang/String;

    array-length v1, v4

    .line 1104
    :cond_2
    const-string v4, ", pids.len ="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1105
    const-string v4, ", comms.len ="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1106
    const-string v4, "NetworkStats"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Landroid/net/NetworkStats;->size:I

    if-ge v2, v4, :cond_5

    .line 1108
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1109
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    const-string v4, "    ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1110
    const-string v4, " iface="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    const-string v4, " uid="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/NetworkStats;->uid:[I

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1112
    iget v4, p0, Landroid/net/NetworkStats;->containExtendData:I

    if-ne v10, v4, :cond_4

    .line 1113
    iget-object v4, p0, Landroid/net/NetworkStats;->comms:[Ljava/lang/String;

    if-eqz v4, :cond_3

    if-le v1, v2, :cond_3

    .line 1114
    const-string v4, " comms="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/NetworkStats;->comms:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1116
    :cond_3
    iget-object v4, p0, Landroid/net/NetworkStats;->pids:[J

    if-eqz v4, :cond_4

    if-le v3, v2, :cond_4

    .line 1117
    const-string v4, " pids="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/NetworkStats;->pids:[J

    aget-wide v6, v5, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1120
    :cond_4
    const-string v4, " totalBytes="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v6, v5, v2

    iget-object v5, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v8, v5, v2

    add-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1122
    const-string v4, " set="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/NetworkStats;->set:[I

    aget v5, v5, v2

    invoke-static {v5}, Landroid/net/NetworkStats;->setToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1123
    const-string v4, " tag="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/NetworkStats;->tag:[I

    aget v5, v5, v2

    invoke-static {v5}, Landroid/net/NetworkStats;->tagToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1124
    const-string v4, " rxBytes="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v6, v5, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1125
    const-string v4, " rxPackets="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v6, v5, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1126
    const-string v4, " txBytes="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v6, v5, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1127
    const-string v4, " txPackets="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v6, v5, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1128
    const-string v4, " operations="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v6, v5, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1129
    const-string v4, "NetworkStats"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1131
    :cond_5
    const-string v4, "NetworkStats"

    const-string v5, "------------ -----------end----------- ------------"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    return-void
.end method

.method public setContainExtendDataFlag(Z)V
    .locals 1
    .param p1, "contain"    # Z

    .prologue
    .line 474
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Landroid/net/NetworkStats;->containExtendData:I

    .line 475
    return-void

    .line 474
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setElapsedRealtime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 427
    iput-wide p1, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    .line 428
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 439
    iget v0, p0, Landroid/net/NetworkStats;->size:I

    return v0
.end method

.method public spliceOperationsFrom(Landroid/net/NetworkStats;)V
    .locals 6
    .param p1, "stats"    # Landroid/net/NetworkStats;

    .prologue
    .line 616
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v2, :cond_1

    .line 617
    iget-object v2, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Landroid/net/NetworkStats;->uid:[I

    aget v3, v3, v0

    iget-object v4, p0, Landroid/net/NetworkStats;->set:[I

    aget v4, v4, v0

    iget-object v5, p0, Landroid/net/NetworkStats;->tag:[I

    aget v5, v5, v0

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;III)I

    move-result v1

    .line 618
    .local v1, "j":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 619
    iget-object v2, p0, Landroid/net/NetworkStats;->operations:[J

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v0

    .line 616
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 621
    :cond_0
    iget-object v2, p0, Landroid/net/NetworkStats;->operations:[J

    iget-object v3, p1, Landroid/net/NetworkStats;->operations:[J

    aget-wide v4, v3, v1

    aput-wide v4, v2, v0

    goto :goto_1

    .line 624
    .end local v1    # "j":I
    :cond_1
    return-void
.end method

.method public subtract(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 1
    .param p1, "right"    # Landroid/net/NetworkStats;

    .prologue
    const/4 v0, 0x0

    .line 758
    invoke-static {p0, p1, v0, v0}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1076
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 1077
    .local v0, "writer":Ljava/io/CharArrayWriter;
    const-string v1, ""

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1, v2}, Landroid/net/NetworkStats;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1078
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withoutUids([I)Landroid/net/NetworkStats;
    .locals 6
    .param p1, "uids"    # [I

    .prologue
    .line 969
    new-instance v2, Landroid/net/NetworkStats;

    iget-wide v4, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    const/16 v3, 0xa

    invoke-direct {v2, v4, v5, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 973
    .local v2, "stats":Landroid/net/NetworkStats;
    invoke-virtual {p0}, Landroid/net/NetworkStats;->isContainExtendData()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/NetworkStats;->setContainExtendDataFlag(Z)V

    .line 976
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 977
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v1, v3, :cond_1

    .line 978
    invoke-virtual {p0, v1, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 979
    iget v3, v0, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {p1, v3}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 980
    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 977
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 984
    :cond_1
    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 291
    iget-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 292
    iget v0, p0, Landroid/net/NetworkStats;->size:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    iget v0, p0, Landroid/net/NetworkStats;->capacity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    iget-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 296
    iget-object v0, p0, Landroid/net/NetworkStats;->set:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 297
    iget-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 298
    iget-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 299
    iget-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 300
    iget-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 301
    iget-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 302
    iget-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 306
    iget v0, p0, Landroid/net/NetworkStats;->containExtendData:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    const/4 v0, 0x1

    iget v1, p0, Landroid/net/NetworkStats;->containExtendData:I

    if-ne v0, v1, :cond_0

    .line 309
    iget-object v0, p0, Landroid/net/NetworkStats;->pids:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 310
    iget-object v0, p0, Landroid/net/NetworkStats;->comms:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 313
    :cond_0
    return-void
.end method
