.class public Lcom/oppo/widget/OppoLunarUtil;
.super Ljava/lang/Object;
.source "OppoLunarUtil.java"


# static fields
.field private static final ALL_SC_SOLAR_TERM_NAMES:[Ljava/lang/String;

.field private static final ALL_TC_SOLAR_TERM_NAMES:[Ljava/lang/String;

.field public static final DECREATE_A_LUANR_YEAR:I = -0x1

.field public static final INCREASE_A_LUANR_YEAR:I = 0x1

.field public static final LEAP_MONTH:I = 0x0

.field public static final NORMAL_MONTH:I = 0x1

.field private static final SOLAR_TERM_DAYS:[[I

.field private static final TAG:Ljava/lang/String; = "OppoLunar"

.field static sChineseDateFormat:Ljava/text/SimpleDateFormat;

.field static final sChineseNumber:[Ljava/lang/String;

.field static final sLunarInfo:[J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x18

    .line 44
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u4e00"

    aput-object v1, v0, v4

    const-string v1, "\u4e8c"

    aput-object v1, v0, v5

    const-string v1, "\u4e09"

    aput-object v1, v0, v6

    const-string v1, "\u56db"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\u4e94"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u516d"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u4e03"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u516b"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u4e5d"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u5341"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u5341\u4e00"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u5341\u4e8c"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/widget/OppoLunarUtil;->sChineseNumber:[Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy\u5e74MM\u6708dd\u65e5"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oppo/widget/OppoLunarUtil;->sChineseDateFormat:Ljava/text/SimpleDateFormat;

    .line 48
    const/16 v0, 0x96

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oppo/widget/OppoLunarUtil;->sLunarInfo:[J

    .line 69
    const/16 v0, 0x43

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [I

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [I

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [I

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [I

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [I

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_19

    aput-object v1, v0, v3

    const/16 v1, 0x19

    new-array v2, v3, [I

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [I

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v3, [I

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v3, [I

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v3, [I

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v3, [I

    fill-array-data v2, :array_1f

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v3, [I

    fill-array-data v2, :array_20

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v3, [I

    fill-array-data v2, :array_21

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v3, [I

    fill-array-data v2, :array_22

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v3, [I

    fill-array-data v2, :array_23

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v3, [I

    fill-array-data v2, :array_24

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v3, [I

    fill-array-data v2, :array_25

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v3, [I

    fill-array-data v2, :array_26

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v3, [I

    fill-array-data v2, :array_27

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v3, [I

    fill-array-data v2, :array_28

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v3, [I

    fill-array-data v2, :array_29

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v3, [I

    fill-array-data v2, :array_2a

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v3, [I

    fill-array-data v2, :array_2b

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v3, [I

    fill-array-data v2, :array_2c

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v3, [I

    fill-array-data v2, :array_2d

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v3, [I

    fill-array-data v2, :array_2e

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v3, [I

    fill-array-data v2, :array_2f

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v3, [I

    fill-array-data v2, :array_30

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v3, [I

    fill-array-data v2, :array_31

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v3, [I

    fill-array-data v2, :array_32

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v3, [I

    fill-array-data v2, :array_33

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v3, [I

    fill-array-data v2, :array_34

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v3, [I

    fill-array-data v2, :array_35

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v3, [I

    fill-array-data v2, :array_36

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v3, [I

    fill-array-data v2, :array_37

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v3, [I

    fill-array-data v2, :array_38

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v3, [I

    fill-array-data v2, :array_39

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v3, [I

    fill-array-data v2, :array_3a

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v3, [I

    fill-array-data v2, :array_3b

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-array v2, v3, [I

    fill-array-data v2, :array_3c

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-array v2, v3, [I

    fill-array-data v2, :array_3d

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-array v2, v3, [I

    fill-array-data v2, :array_3e

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-array v2, v3, [I

    fill-array-data v2, :array_3f

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-array v2, v3, [I

    fill-array-data v2, :array_40

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-array v2, v3, [I

    fill-array-data v2, :array_41

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-array v2, v3, [I

    fill-array-data v2, :array_42

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-array v2, v3, [I

    fill-array-data v2, :array_43

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/widget/OppoLunarUtil;->SOLAR_TERM_DAYS:[[I

    .line 141
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "\u5c0f\u5bd2"

    aput-object v1, v0, v4

    const-string v1, "\u5927\u5bd2"

    aput-object v1, v0, v5

    const-string v1, "\u7acb\u6625"

    aput-object v1, v0, v6

    const-string v1, "\u96e8\u6c34"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\u60ca\u86f0"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u6625\u5206"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u6e05\u660e"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u8c37\u96e8"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u7acb\u590f"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u5c0f\u6ee1"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u8292\u79cd"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u590f\u81f3"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u5c0f\u6691"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u5927\u6691"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u7acb\u79cb"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u5904\u6691"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u767d\u9732"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u79cb\u5206"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\u5bd2\u9732"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\u971c\u964d"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\u7acb\u51ac"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\u5c0f\u96ea"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\u5927\u96ea"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\u51ac\u81f3"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/widget/OppoLunarUtil;->ALL_SC_SOLAR_TERM_NAMES:[Ljava/lang/String;

    .line 144
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "\u5c0f\u5bd2"

    aput-object v1, v0, v4

    const-string v1, "\u5927\u5bd2"

    aput-object v1, v0, v5

    const-string v1, "\u7acb\u6625"

    aput-object v1, v0, v6

    const-string v1, "\u96e8\u6c34"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\u9a5a\u87c4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u6625\u5206"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u6e05\u660e"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u7a40\u96e8"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u7acb\u590f"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u5c0f\u6eff"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u8292\u7a2e"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u590f\u81f3"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u5c0f\u6691"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u5927\u6691"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u7acb\u79cb"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u8655\u6691"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u767d\u9732"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u79cb\u5206"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\u5bd2\u9732"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\u971c\u964d"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\u7acb\u51ac"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\u5c0f\u96ea"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\u5927\u96ea"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\u51ac\u81f3"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/widget/OppoLunarUtil;->ALL_TC_SOLAR_TERM_NAMES:[Ljava/lang/String;

    return-void

    .line 48
    :array_0
    .array-data 8
        0x4bd8
        0x4ae0
        0xa570
        0x54d5
        0xd260
        0xd950
        0x16554
        0x56a0
        0x9ad0
        0x55d2
        0x4ae0
        0xa5b6
        0xa4d0
        0xd250
        0x1d255
        0xb540
        0xd6a0
        0xada2
        0x95b0
        0x14977
        0x4970
        0xa4b0
        0xb4b5
        0x6a50
        0x6d40
        0x1ab54
        0x2b60
        0x9570
        0x52f2
        0x4970
        0x6566
        0xd4a0
        0xea50
        0x16a95
        0x5ad0
        0x2b60
        0x186e3
        0x92e0
        0x1c8d7
        0xc950
        0xd4a0
        0x1d8a6
        0xb550
        0x56a0
        0x1a5b4
        0x25d0
        0x92d0
        0xd2b2
        0xa950
        0xb557
        0x6ca0
        0xb550
        0x15355
        0x4da0
        0xa5b0
        0x14573
        0x52b0
        0xa9a8
        0xe950
        0x6aa0
        0xaea6
        0xab50
        0x4b60
        0xaae4
        0xa570
        0x5260
        0xf263
        0xd950
        0x5b57
        0x56a0
        0x96d0
        0x4dd5
        0x4ad0
        0xa4d0
        0xd4d4
        0xd250
        0xd558
        0xb540
        0xb6a0
        0x195a6
        0x95b0
        0x49b0
        0xa974
        0xa4b0
        0xb27a
        0x6a50
        0x6d40
        0xaf46
        0xab60
        0x9570
        0x4af5
        0x4970
        0x64b0
        0x74a3
        0xea50
        0x6b58
        0x5ac0
        0xab60
        0x96d5
        0x92e0
        0xc960
        0xd954
        0xd4a0
        0xda50
        0x7552
        0x56a0
        0xabb7
        0x25d0
        0x92d0
        0xcab5
        0xa950
        0xb4a0
        0xbaa4
        0xad50
        0x55d9
        0x4ba0
        0xa5b0
        0x15176
        0x52b0
        0xa930
        0x7954
        0x6aa0
        0xad50
        0x5b52
        0x4b60
        0xa6e6
        0xa4e0
        0xd260
        0xea65
        0xd530
        0x5aa0
        0x76a3
        0x96d0
        0x4afb
        0x4ad0
        0xa4d0
        0x1d0b6
        0xd250
        0xd520
        0xdd45
        0xb5a0
        0x56d0
        0x55b2
        0x49b0
        0xa577
        0xa4b0
        0xaa50
        0x1b255
        0x6d20
        0xada0
    .end array-data

    .line 69
    :array_1
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x16
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x9
        0x18
        0x8
        0x17
        0x7
        0x16
    .end array-data

    :array_2
    .array-data 4
        0x6
        0x15
        0x4
        0x13
        0x6
        0x15
        0x5
        0x15
        0x6
        0x16
        0x6
        0x16
        0x8
        0x17
        0x8
        0x18
        0x8
        0x18
        0x9
        0x18
        0x8
        0x17
        0x8
        0x16
    .end array-data

    :array_3
    .array-data 4
        0x6
        0x15
        0x5
        0x13
        0x5
        0x14
        0x5
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x17
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x15
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x16
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x9
        0x18
        0x8
        0x16
        0x7
        0x16
    .end array-data

    :array_6
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x15
        0x6
        0x16
        0x6
        0x16
        0x8
        0x17
        0x8
        0x18
        0x8
        0x18
        0x9
        0x18
        0x8
        0x17
        0x8
        0x16
    .end array-data

    :array_7
    .array-data 4
        0x6
        0x15
        0x4
        0x13
        0x5
        0x14
        0x4
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x17
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_8
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x5
        0x15
        0x5
        0x14
        0x5
        0x15
        0x6
        0x15
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_9
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x16
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x8
        0x18
        0x8
        0x17
        0x7
        0x16
    .end array-data

    :array_a
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x15
        0x6
        0x16
        0x6
        0x16
        0x8
        0x17
        0x8
        0x18
        0x8
        0x17
        0x9
        0x18
        0x8
        0x17
        0x8
        0x16
    .end array-data

    :array_b
    .array-data 4
        0x6
        0x15
        0x4
        0x13
        0x5
        0x14
        0x4
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x17
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x15
    .end array-data

    :array_c
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x5
        0x15
        0x5
        0x14
        0x5
        0x15
        0x6
        0x15
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_d
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x16
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x8
        0x18
        0x8
        0x16
        0x7
        0x16
    .end array-data

    :array_e
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x16
        0x8
        0x17
        0x8
        0x18
        0x8
        0x17
        0x9
        0x18
        0x8
        0x17
        0x8
        0x16
    .end array-data

    :array_f
    .array-data 4
        0x6
        0x15
        0x4
        0x13
        0x5
        0x14
        0x4
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x17
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x15
    .end array-data

    :array_10
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x5
        0x14
        0x5
        0x14
        0x5
        0x15
        0x6
        0x15
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_11
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x16
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x8
        0x18
        0x8
        0x16
        0x7
        0x16
    .end array-data

    :array_12
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x16
        0x8
        0x17
        0x8
        0x18
        0x8
        0x17
        0x9
        0x18
        0x8
        0x17
        0x7
        0x16
    .end array-data

    :array_13
    .array-data 4
        0x6
        0x15
        0x4
        0x13
        0x5
        0x14
        0x4
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x17
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x15
    .end array-data

    :array_14
    .array-data 4
        0x5
        0x14
        0x4
        0x12
        0x5
        0x14
        0x5
        0x14
        0x5
        0x15
        0x6
        0x15
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_15
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x15
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x8
        0x18
        0x8
        0x16
        0x7
        0x16
    .end array-data

    :array_16
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x16
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x9
        0x18
        0x8
        0x17
        0x7
        0x16
    .end array-data

    :array_17
    .array-data 4
        0x6
        0x15
        0x4
        0x13
        0x5
        0x14
        0x4
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x16
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x15
    .end array-data

    :array_18
    .array-data 4
        0x5
        0x14
        0x4
        0x12
        0x5
        0x14
        0x5
        0x14
        0x5
        0x15
        0x6
        0x15
        0x7
        0x17
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_19
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x16
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_1a
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x16
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x9
        0x18
        0x8
        0x17
        0x7
        0x16
    .end array-data

    :array_1b
    .array-data 4
        0x6
        0x15
        0x4
        0x13
        0x5
        0x14
        0x4
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x16
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x15
    .end array-data

    :array_1c
    .array-data 4
        0x5
        0x14
        0x4
        0x12
        0x5
        0x14
        0x5
        0x14
        0x5
        0x15
        0x6
        0x15
        0x7
        0x17
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_1d
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x15
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_1e
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x16
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x9
        0x18
        0x8
        0x17
        0x7
        0x16
    .end array-data

    :array_1f
    .array-data 4
        0x6
        0x15
        0x4
        0x13
        0x5
        0x14
        0x4
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x16
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x15
    .end array-data

    :array_20
    .array-data 4
        0x5
        0x14
        0x4
        0x12
        0x5
        0x14
        0x5
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x17
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_21
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x15
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_22
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x16
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x9
        0x18
        0x8
        0x17
        0x7
        0x16
    .end array-data

    :array_23
    .array-data 4
        0x6
        0x15
        0x4
        0x13
        0x5
        0x14
        0x4
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x16
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x15
    .end array-data

    :array_24
    .array-data 4
        0x5
        0x14
        0x4
        0x12
        0x5
        0x14
        0x5
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x17
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_25
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x15
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_26
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x16
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x9
        0x18
        0x8
        0x16
        0x7
        0x16
    .end array-data

    :array_27
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x5
        0x14
        0x4
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x16
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x15
    .end array-data

    :array_28
    .array-data 4
        0x5
        0x14
        0x3
        0x12
        0x5
        0x14
        0x4
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x17
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_29
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x5
        0x15
        0x6
        0x15
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_2a
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x16
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x8
        0x18
        0x8
        0x17
        0x7
        0x16
    .end array-data

    :array_2b
    .array-data 4
        0x6
        0x15
        0x4
        0x13
        0x5
        0x14
        0x4
        0x14
        0x5
        0x14
        0x5
        0x15
        0x7
        0x16
        0x7
        0x17
        0x7
        0x16
        0x8
        0x17
        0x7
        0x16
        0x7
        0x15
    .end array-data

    :array_2c
    .array-data 4
        0x5
        0x14
        0x4
        0x12
        0x5
        0x14
        0x4
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x16
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_2d
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x5
        0x15
        0x5
        0x14
        0x5
        0x15
        0x6
        0x15
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_2e
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x16
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x8
        0x18
        0x8
        0x16
        0x7
        0x16
    .end array-data

    :array_2f
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x5
        0x14
        0x4
        0x13
        0x5
        0x14
        0x5
        0x15
        0x7
        0x16
        0x7
        0x17
        0x7
        0x16
        0x8
        0x17
        0x7
        0x16
        0x6
        0x15
    .end array-data

    :array_30
    .array-data 4
        0x5
        0x14
        0x3
        0x12
        0x5
        0x14
        0x4
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x17
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x15
    .end array-data

    :array_31
    .array-data 4
        0x5
        0x14
        0x4
        0x12
        0x5
        0x14
        0x5
        0x14
        0x5
        0x15
        0x6
        0x15
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_32
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x15
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x8
        0x18
        0x8
        0x16
        0x7
        0x16
    .end array-data

    :array_33
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x5
        0x14
        0x4
        0x13
        0x5
        0x14
        0x5
        0x15
        0x7
        0x16
        0x7
        0x17
        0x7
        0x16
        0x8
        0x17
        0x7
        0x16
        0x6
        0x15
    .end array-data

    :array_34
    .array-data 4
        0x5
        0x14
        0x3
        0x12
        0x5
        0x14
        0x4
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x16
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x15
    .end array-data

    :array_35
    .array-data 4
        0x5
        0x14
        0x4
        0x12
        0x5
        0x14
        0x5
        0x14
        0x5
        0x15
        0x6
        0x15
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_36
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x16
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_37
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x5
        0x14
        0x4
        0x13
        0x5
        0x14
        0x5
        0x15
        0x6
        0x16
        0x7
        0x17
        0x7
        0x16
        0x8
        0x17
        0x7
        0x16
        0x6
        0x15
    .end array-data

    :array_38
    .array-data 4
        0x5
        0x14
        0x3
        0x12
        0x5
        0x14
        0x4
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x16
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x15
    .end array-data

    :array_39
    .array-data 4
        0x5
        0x14
        0x4
        0x12
        0x5
        0x14
        0x5
        0x14
        0x5
        0x15
        0x6
        0x15
        0x7
        0x17
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_3a
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x15
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_3b
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x5
        0x14
        0x4
        0x13
        0x5
        0x14
        0x5
        0x15
        0x6
        0x16
        0x7
        0x16
        0x7
        0x16
        0x8
        0x17
        0x7
        0x16
        0x6
        0x15
    .end array-data

    :array_3c
    .array-data 4
        0x5
        0x14
        0x3
        0x12
        0x5
        0x14
        0x4
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x16
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x15
    .end array-data

    :array_3d
    .array-data 4
        0x5
        0x14
        0x4
        0x12
        0x5
        0x14
        0x5
        0x14
        0x5
        0x15
        0x6
        0x15
        0x7
        0x17
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_3e
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x15
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_3f
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x5
        0x14
        0x4
        0x13
        0x5
        0x14
        0x5
        0x15
        0x6
        0x16
        0x7
        0x16
        0x7
        0x16
        0x8
        0x17
        0x7
        0x16
        0x6
        0x15
    .end array-data

    :array_40
    .array-data 4
        0x5
        0x14
        0x3
        0x12
        0x5
        0x14
        0x4
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x16
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x15
    .end array-data

    :array_41
    .array-data 4
        0x5
        0x14
        0x4
        0x12
        0x5
        0x14
        0x5
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x17
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_42
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x5
        0x15
        0x6
        0x15
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_43
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x5
        0x14
        0x4
        0x13
        0x5
        0x14
        0x5
        0x15
        0x6
        0x16
        0x7
        0x16
        0x7
        0x16
        0x8
        0x17
        0x7
        0x16
        0x6
        0x15
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateLunarByGregorian(III)[I
    .locals 22
    .param p0, "gregorianYear"    # I
    .param p1, "gregorianMonth"    # I
    .param p2, "gregorianDay"    # I

    .prologue
    .line 252
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v10, v0, [I

    fill-array-data v10, :array_0

    .line 256
    .local v10, "lunar":[I
    const/4 v2, 0x0

    .line 258
    .local v2, "baseDate":Ljava/util/Date;
    const/4 v3, 0x0

    .line 263
    .local v3, "currentDate":Ljava/util/Date;
    :try_start_0
    sget-object v17, Lcom/oppo/widget/OppoLunarUtil;->sChineseDateFormat:Ljava/text/SimpleDateFormat;

    const-string v18, "1900\u5e741\u670831\u65e5"

    invoke-virtual/range {v17 .. v18}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 268
    :goto_0
    if-nez v2, :cond_0

    .line 269
    const-string v17, "OppoLunar"

    const-string v18, "baseDate is null,return lunar date:2000.1.1"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :goto_1
    return-object v10

    .line 264
    :catch_0
    move-exception v7

    .line 265
    .local v7, "e":Ljava/text/ParseException;
    const-string v17, "OppoLunar"

    const-string v18, "calculateLunarByGregorian(),parse baseDate error."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-virtual {v7}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0

    .line 274
    .end local v7    # "e":Ljava/text/ParseException;
    :cond_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\u5e74"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\u6708"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\u65e5"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 276
    .local v4, "currentDateString":Ljava/lang/String;
    :try_start_1
    sget-object v17, Lcom/oppo/widget/OppoLunarUtil;->sChineseDateFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 281
    :goto_2
    if-nez v3, :cond_1

    .line 282
    const-string v17, "OppoLunar"

    const-string v18, "currentDate is null,return lunar date:2000.1.1"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 277
    :catch_1
    move-exception v7

    .line 278
    .restart local v7    # "e":Ljava/text/ParseException;
    const-string v17, "OppoLunar"

    const-string v18, "calculateLunarByGregorian(),parse currentDate error."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-virtual {v7}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_2

    .line 287
    .end local v7    # "e":Ljava/text/ParseException;
    :cond_1
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v17, v0

    const v18, 0x4ca4cb80    # 8.64E7f

    div-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 292
    .local v14, "offsetDaysFromBaseDate":I
    const/4 v6, 0x0

    .line 300
    .local v6, "daysOfTempLunaryear":I
    const/16 v16, 0x76c

    .local v16, "tempLunaryear":I
    :goto_3
    const/16 v17, 0x2710

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    if-lez v14, :cond_2

    .line 301
    invoke-static/range {v16 .. v16}, Lcom/oppo/widget/OppoLunarUtil;->daysOfLunarYear(I)I

    move-result v6

    .line 302
    sub-int/2addr v14, v6

    .line 300
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 305
    :cond_2
    if-gez v14, :cond_3

    .line 306
    add-int/2addr v14, v6

    .line 307
    add-int/lit8 v16, v16, -0x1

    .line 309
    :cond_3
    move/from16 v13, v16

    .line 312
    .local v13, "lunarYear":I
    invoke-static/range {v16 .. v16}, Lcom/oppo/widget/OppoLunarUtil;->leapMonth(I)I

    move-result v9

    .line 314
    .local v9, "leapMonth":I
    const/4 v8, 0x0

    .line 316
    .local v8, "isMinusLeapMonthDays":Z
    const/4 v5, 0x0

    .line 322
    .local v5, "daysOfTempLunarMonth":I
    const/4 v15, 0x1

    .local v15, "tempLunarMonth":I
    :goto_4
    const/16 v17, 0xd

    move/from16 v0, v17

    if-ge v15, v0, :cond_6

    if-lez v14, :cond_6

    .line 324
    if-lez v9, :cond_5

    add-int/lit8 v17, v9, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_5

    if-nez v8, :cond_5

    .line 325
    add-int/lit8 v15, v15, -0x1

    .line 326
    const/4 v8, 0x1

    .line 327
    invoke-static {v13}, Lcom/oppo/widget/OppoLunarUtil;->daysOfLeapMonthInLunarYear(I)I

    move-result v5

    .line 332
    :goto_5
    sub-int/2addr v14, v5

    .line 335
    if-eqz v8, :cond_4

    add-int/lit8 v17, v9, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_4

    .line 336
    const/4 v8, 0x0

    .line 322
    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 329
    :cond_5
    invoke-static {v13, v15}, Lcom/oppo/widget/OppoLunarUtil;->daysOfALunarMonth(II)I

    move-result v5

    goto :goto_5

    .line 341
    :cond_6
    if-nez v14, :cond_7

    if-lez v9, :cond_7

    add-int/lit8 v17, v9, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_7

    .line 342
    if-eqz v8, :cond_9

    .line 343
    const/4 v8, 0x0

    .line 350
    :cond_7
    :goto_6
    if-gez v14, :cond_8

    .line 351
    add-int/2addr v14, v5

    .line 352
    add-int/lit8 v15, v15, -0x1

    .line 354
    :cond_8
    move v12, v15

    .line 359
    .local v12, "lunarMonth":I
    add-int/lit8 v11, v14, 0x1

    .line 361
    .local v11, "lunarDay":I
    const/16 v17, 0x0

    aput v13, v10, v17

    .line 362
    const/16 v17, 0x1

    aput v12, v10, v17

    .line 363
    const/16 v17, 0x2

    aput v11, v10, v17

    .line 364
    const/16 v18, 0x3

    if-eqz v8, :cond_a

    const/16 v17, 0x0

    :goto_7
    aput v17, v10, v18

    goto/16 :goto_1

    .line 345
    .end local v11    # "lunarDay":I
    .end local v12    # "lunarMonth":I
    :cond_9
    const/4 v8, 0x1

    .line 346
    add-int/lit8 v15, v15, -0x1

    goto :goto_6

    .line 364
    .restart local v11    # "lunarDay":I
    .restart local v12    # "lunarMonth":I
    :cond_a
    const/16 v17, 0x1

    goto :goto_7

    .line 252
    :array_0
    .array-data 4
        0x7d0
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public static changeALunarYear(Ljava/util/Calendar;IIIII)Ljava/util/Calendar;
    .locals 6
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "lunarMonth"    # I
    .param p2, "lunarDay"    # I
    .param p3, "isLeap"    # I
    .param p4, "oldYear"    # I
    .param p5, "newYear"    # I

    .prologue
    .line 503
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 504
    .local v0, "newCalendar":Ljava/util/Calendar;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 505
    if-le p4, p5, :cond_0

    move v4, p4

    .line 506
    .end local p4    # "oldYear":I
    .local v4, "oldYear":I
    :goto_0
    if-le v4, p5, :cond_1

    .line 507
    add-int/lit8 p4, v4, -0x1

    .end local v4    # "oldYear":I
    .restart local p4    # "oldYear":I
    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/oppo/widget/OppoLunarUtil;->changeALunarYearByOne(Ljava/util/Calendar;IIIII)Ljava/util/Calendar;

    move-result-object v0

    move v4, p4

    .end local p4    # "oldYear":I
    .restart local v4    # "oldYear":I
    goto :goto_0

    .line 510
    .end local v4    # "oldYear":I
    .restart local p4    # "oldYear":I
    :cond_0
    if-ge p4, p5, :cond_2

    move v4, p4

    .line 511
    .end local p4    # "oldYear":I
    .restart local v4    # "oldYear":I
    :goto_1
    if-ge v4, p5, :cond_1

    .line 512
    add-int/lit8 p4, v4, 0x1

    .end local v4    # "oldYear":I
    .restart local p4    # "oldYear":I
    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/oppo/widget/OppoLunarUtil;->changeALunarYearByOne(Ljava/util/Calendar;IIIII)Ljava/util/Calendar;

    move-result-object v0

    move v4, p4

    .end local p4    # "oldYear":I
    .restart local v4    # "oldYear":I
    goto :goto_1

    :cond_1
    move p4, v4

    .line 516
    .end local v4    # "oldYear":I
    .restart local p4    # "oldYear":I
    :cond_2
    return-object v0
.end method

.method public static changeALunarYearByOne(Ljava/util/Calendar;IIIII)Ljava/util/Calendar;
    .locals 7
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "lunarMonth"    # I
    .param p2, "lunarDay"    # I
    .param p3, "isLeap"    # I
    .param p4, "oldYear"    # I
    .param p5, "newYear"    # I

    .prologue
    const/4 v6, 0x5

    .line 470
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 471
    .local v1, "newCalendar":Ljava/util/Calendar;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 473
    invoke-static {p4, p1, p2, p3}, Lcom/oppo/widget/OppoLunarUtil;->getDays(IIII)I

    move-result v3

    .line 474
    .local v3, "oldDays":I
    invoke-static {p5, p1, p2, p3}, Lcom/oppo/widget/OppoLunarUtil;->getDays(IIII)I

    move-result v2

    .line 476
    .local v2, "newDays":I
    const/4 v0, 0x0

    .line 477
    .local v0, "days":I
    if-le p4, p5, :cond_1

    .line 478
    invoke-static {p5}, Lcom/oppo/widget/OppoLunarUtil;->daysOfLunarYear(I)I

    move-result v4

    sub-int/2addr v4, v2

    add-int v0, v4, v3

    .line 479
    neg-int v4, v0

    invoke-virtual {v1, v6, v4}, Ljava/util/Calendar;->add(II)V

    .line 486
    :cond_0
    :goto_0
    return-object v1

    .line 480
    :cond_1
    if-ge p4, p5, :cond_0

    .line 481
    invoke-static {p4}, Lcom/oppo/widget/OppoLunarUtil;->daysOfLunarYear(I)I

    move-result v4

    add-int/2addr v4, v2

    sub-int v0, v4, v3

    .line 482
    invoke-virtual {v1, v6, v0}, Ljava/util/Calendar;->add(II)V

    goto :goto_0
.end method

.method public static chneseStringOfALunarDay(I)Ljava/lang/String;
    .locals 5
    .param p0, "lunarDay"    # I

    .prologue
    const/16 v4, 0x1e

    .line 218
    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u521d"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "\u5341"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "\u5eff"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "\u5345"

    aput-object v3, v0, v2

    .line 219
    .local v0, "chineseTen":[Ljava/lang/String;
    rem-int/lit8 v2, p0, 0xa

    if-nez v2, :cond_0

    const/16 v1, 0x9

    .line 220
    .local v1, "n":I
    :goto_0
    if-le p0, v4, :cond_1

    .line 221
    const-string v2, ""

    .line 236
    :goto_1
    return-object v2

    .line 219
    .end local v1    # "n":I
    :cond_0
    rem-int/lit8 v2, p0, 0xa

    add-int/lit8 v1, v2, -0x1

    goto :goto_0

    .line 224
    .restart local v1    # "n":I
    :cond_1
    const/16 v2, 0xa

    if-ne p0, v2, :cond_2

    .line 225
    const-string v2, "\u521d\u5341"

    goto :goto_1

    .line 228
    :cond_2
    const/16 v2, 0x14

    if-ne p0, v2, :cond_3

    .line 229
    const-string v2, "\u4e8c\u5341"

    goto :goto_1

    .line 232
    :cond_3
    if-ne p0, v4, :cond_4

    .line 233
    const-string v2, "\u4e09\u5341"

    goto :goto_1

    .line 236
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v3, p0, 0xa

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/oppo/widget/OppoLunarUtil;->sChineseNumber:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static daysOfALunarMonth(II)I
    .locals 4
    .param p0, "luanrYear"    # I
    .param p1, "lunarMonth"    # I

    .prologue
    .line 204
    sget-object v0, Lcom/oppo/widget/OppoLunarUtil;->sLunarInfo:[J

    add-int/lit16 v1, p0, -0x76c

    aget-wide v0, v0, v1

    const/high16 v2, 0x10000

    shr-int/2addr v2, p1

    int-to-long v2, v2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 205
    const/16 v0, 0x1d

    .line 207
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1e

    goto :goto_0
.end method

.method public static daysOfLeapMonthInLunarYear(I)I
    .locals 4
    .param p0, "lunarYear"    # I

    .prologue
    .line 172
    invoke-static {p0}, Lcom/oppo/widget/OppoLunarUtil;->leapMonth(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    sget-object v0, Lcom/oppo/widget/OppoLunarUtil;->sLunarInfo:[J

    add-int/lit16 v1, p0, -0x76c

    aget-wide v0, v0, v1

    const-wide/32 v2, 0x10000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 174
    const/16 v0, 0x1e

    .line 179
    :goto_0
    return v0

    .line 176
    :cond_0
    const/16 v0, 0x1d

    goto :goto_0

    .line 179
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static daysOfLunarYear(I)I
    .locals 6
    .param p0, "lunarYear"    # I

    .prologue
    .line 155
    const/16 v1, 0x15c

    .line 156
    .local v1, "sum":I
    const v0, 0x8000

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x8

    if-le v0, v2, :cond_1

    .line 157
    sget-object v2, Lcom/oppo/widget/OppoLunarUtil;->sLunarInfo:[J

    add-int/lit16 v3, p0, -0x76c

    aget-wide v2, v2, v3

    int-to-long v4, v0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 158
    add-int/lit8 v1, v1, 0x1

    .line 156
    :cond_0
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_1
    invoke-static {p0}, Lcom/oppo/widget/OppoLunarUtil;->daysOfLeapMonthInLunarYear(I)I

    move-result v2

    add-int/2addr v2, v1

    return v2
.end method

.method public static decreaseOrIncreaseALunarYear(Ljava/util/Calendar;III)Ljava/util/Calendar;
    .locals 10
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "lunarMonth"    # I
    .param p2, "lunarDay"    # I
    .param p3, "operatorType"    # I

    .prologue
    .line 424
    const/4 v7, 0x1

    if-eq p3, v7, :cond_0

    const/4 v7, -0x1

    if-eq p3, v7, :cond_0

    .line 425
    const-string v7, "OppoLunar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "operatorType:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " error! Cann\'t increase or decrease a lunar year on this time."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    .end local p0    # "calendar":Ljava/util/Calendar;
    :goto_0
    return-object p0

    .line 430
    .restart local p0    # "calendar":Ljava/util/Calendar;
    :cond_0
    mul-int/lit16 v5, p3, 0x190

    .line 432
    .local v5, "offset":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 433
    .local v4, "newCalendar":Ljava/util/Calendar;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 434
    const/4 v7, 0x5

    invoke-virtual {v4, v7, v5}, Ljava/util/Calendar;->add(II)V

    .line 440
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/16 v7, 0xc8

    if-ge v1, v7, :cond_1

    .line 441
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 442
    .local v6, "year":I
    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v3, v7, 0x1

    .line 443
    .local v3, "month":I
    const/4 v7, 0x5

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 444
    .local v0, "day":I
    invoke-static {v6, v3, v0}, Lcom/oppo/widget/OppoLunarUtil;->calculateLunarByGregorian(III)[I

    move-result-object v2

    .line 445
    .local v2, "lunarDates":[I
    const/4 v7, 0x1

    aget v7, v2, v7

    if-ne v7, p1, :cond_2

    const/4 v7, 0x2

    aget v7, v2, v7

    if-ne v7, p2, :cond_2

    .end local v0    # "day":I
    .end local v2    # "lunarDates":[I
    .end local v3    # "month":I
    .end local v6    # "year":I
    :cond_1
    move-object p0, v4

    .line 451
    goto :goto_0

    .line 448
    .restart local v0    # "day":I
    .restart local v2    # "lunarDates":[I
    .restart local v3    # "month":I
    .restart local v6    # "year":I
    :cond_2
    const/4 v7, 0x5

    neg-int v8, p3

    invoke-virtual {v4, v7, v8}, Ljava/util/Calendar;->add(II)V

    .line 440
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static getAMonthSolarTermDays(II)[I
    .locals 6
    .param p0, "gregorianYear"    # I
    .param p1, "gregorianMonth"    # I

    .prologue
    .line 575
    add-int/lit8 v4, p1, -0x1

    mul-int/lit8 v2, v4, 0x2

    .line 576
    .local v2, "firstSolarTermIndex":I
    const/4 v4, 0x2

    new-array v0, v4, [I

    fill-array-data v0, :array_0

    .line 578
    .local v0, "days":[I
    const/16 v4, 0x7b1

    if-le p0, v4, :cond_0

    const/16 v4, 0x7f5

    if-ge p0, v4, :cond_0

    .line 579
    sget-object v4, Lcom/oppo/widget/OppoLunarUtil;->SOLAR_TERM_DAYS:[[I

    add-int/lit16 v5, p0, -0x7b2

    aget-object v4, v4, v5

    aget v1, v4, v2

    .line 580
    .local v1, "firstSolarTermDay":I
    sget-object v4, Lcom/oppo/widget/OppoLunarUtil;->SOLAR_TERM_DAYS:[[I

    add-int/lit16 v5, p0, -0x7b2

    aget-object v4, v4, v5

    add-int/lit8 v5, v2, 0x1

    aget v3, v4, v5

    .line 581
    .local v3, "secondSolarTermDay":I
    const/4 v4, 0x0

    aput v1, v0, v4

    .line 582
    const/4 v4, 0x1

    aput v3, v0, v4

    .line 584
    .end local v1    # "firstSolarTermDay":I
    .end local v3    # "secondSolarTermDay":I
    :cond_0
    return-object v0

    .line 576
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private static getAMonthSolarTermNames(I)[Ljava/lang/String;
    .locals 11
    .param p0, "gregorianMonth"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 592
    if-lt p0, v8, :cond_0

    const/16 v5, 0xc

    if-le p0, v5, :cond_1

    .line 593
    :cond_0
    const-string v5, "OppoLunar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAMonthSolarTermNames(),param gregorianMonth:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is error"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    new-array v4, v10, [Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, v9

    const-string v5, ""

    aput-object v5, v4, v8

    .line 605
    .local v4, "solarTerms":[Ljava/lang/String;
    :goto_0
    return-object v4

    .line 598
    .end local v4    # "solarTerms":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, p0, -0x1

    mul-int/lit8 v0, v5, 0x2

    .line 599
    .local v0, "firstSolarTermIndex":I
    const/4 v2, 0x1

    .line 600
    .local v2, "isTCLunarCalendarEnabled":Z
    sget-object v5, Lcom/oppo/widget/OppoLunarUtil;->ALL_TC_SOLAR_TERM_NAMES:[Ljava/lang/String;

    aget-object v1, v5, v0

    .line 602
    .local v1, "firstSolarTermName":Ljava/lang/String;
    sget-object v5, Lcom/oppo/widget/OppoLunarUtil;->ALL_TC_SOLAR_TERM_NAMES:[Ljava/lang/String;

    add-int/lit8 v6, v0, 0x1

    aget-object v3, v5, v6

    .line 604
    .local v3, "secondSolarTermName":Ljava/lang/String;
    new-array v4, v10, [Ljava/lang/String;

    aput-object v1, v4, v9

    aput-object v3, v4, v8

    .line 605
    .restart local v4    # "solarTerms":[Ljava/lang/String;
    goto :goto_0
.end method

.method public static getDays(IIII)I
    .locals 3
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I
    .param p3, "isLeap"    # I

    .prologue
    .line 529
    move v0, p2

    .line 530
    .local v0, "days":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 531
    invoke-static {p0, v1}, Lcom/oppo/widget/OppoLunarUtil;->daysOfALunarMonth(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 530
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 533
    :cond_0
    invoke-static {p0}, Lcom/oppo/widget/OppoLunarUtil;->leapMonth(I)I

    move-result v2

    if-ge v2, p1, :cond_2

    .line 534
    invoke-static {p0}, Lcom/oppo/widget/OppoLunarUtil;->daysOfLeapMonthInLunarYear(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 538
    :cond_1
    :goto_1
    return v0

    .line 535
    :cond_2
    invoke-static {p0}, Lcom/oppo/widget/OppoLunarUtil;->leapMonth(I)I

    move-result v2

    if-ne v2, p1, :cond_1

    if-nez p3, :cond_1

    .line 536
    invoke-static {p0, p1}, Lcom/oppo/widget/OppoLunarUtil;->daysOfALunarMonth(II)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1
.end method

.method private static getGregFestival(II)Ljava/lang/String;
    .locals 3
    .param p0, "gregorianMonth"    # I
    .param p1, "gregorianDay"    # I

    .prologue
    const/4 v2, 0x1

    .line 688
    const/4 v0, 0x1

    .line 689
    .local v0, "isTCLunarCalendarEnabled":Z
    if-ne p0, v2, :cond_0

    if-ne p1, v2, :cond_0

    .line 690
    const-string v1, ""

    .line 697
    :goto_0
    return-object v1

    .line 691
    :cond_0
    const/4 v1, 0x5

    if-ne p0, v1, :cond_1

    if-ne p1, v2, :cond_1

    .line 692
    const-string v1, ""

    goto :goto_0

    .line 693
    :cond_1
    const/16 v1, 0xa

    if-ne p0, v1, :cond_2

    if-ne p1, v2, :cond_2

    .line 694
    const-string v1, ""

    goto :goto_0

    .line 697
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getLunarDateString(III)Ljava/lang/String;
    .locals 5
    .param p0, "gregorianYear"    # I
    .param p1, "gregorianMonth"    # I
    .param p2, "gregorianDay"    # I

    .prologue
    .line 393
    invoke-static {p0, p1, p2}, Lcom/oppo/widget/OppoLunarUtil;->calculateLunarByGregorian(III)[I

    move-result-object v0

    .line 394
    .local v0, "lunarDate":[I
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    const/4 v4, 0x3

    aget v4, v0, v4

    invoke-static {v1, v2, v3, v4}, Lcom/oppo/widget/OppoLunarUtil;->getLunarDateString(IIII)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getLunarDateString(IIII)Ljava/lang/String;
    .locals 4
    .param p0, "lunarYear"    # I
    .param p1, "lunarMonth"    # I
    .param p2, "LunarDay"    # I
    .param p3, "leapMonthCode"    # I

    .prologue
    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5e74"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_0

    const-string v1, "\u95f0"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oppo/widget/OppoLunarUtil;->sChineseNumber:[Ljava/lang/String;

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u6708"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/oppo/widget/OppoLunarUtil;->chneseStringOfALunarDay(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "luanrDateString":Ljava/lang/String;
    return-object v0

    .line 408
    .end local v0    # "luanrDateString":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getLunarDateString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 8
    .param p0, "cal"    # Ljava/util/Calendar;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 375
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 376
    .local v2, "gregorianYear":I
    invoke-virtual {p0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v1, v4, 0x1

    .line 377
    .local v1, "gregorianMonth":I
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 379
    .local v0, "gregorianDay":I
    invoke-static {v2, v1, v0}, Lcom/oppo/widget/OppoLunarUtil;->calculateLunarByGregorian(III)[I

    move-result-object v3

    .line 381
    .local v3, "lunarDate":[I
    const/4 v4, 0x0

    aget v4, v3, v4

    aget v5, v3, v5

    aget v6, v3, v6

    const/4 v7, 0x3

    aget v7, v3, v7

    invoke-static {v4, v5, v6, v7}, Lcom/oppo/widget/OppoLunarUtil;->getLunarDateString(IIII)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static getLunarFestival(II)Ljava/lang/String;
    .locals 3
    .param p0, "lunarMonth"    # I
    .param p1, "lunarDay"    # I

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x1

    .line 667
    const/4 v0, 0x1

    .line 668
    .local v0, "isTCLunarCalendarEnabled":Z
    if-ne p0, v1, :cond_0

    if-ne p1, v1, :cond_0

    .line 669
    const-string v1, "\u6625\u7bc0"

    .line 676
    :goto_0
    return-object v1

    .line 670
    :cond_0
    if-ne p0, v2, :cond_1

    if-ne p1, v2, :cond_1

    .line 671
    const-string v1, "\u7aef\u5348"

    goto :goto_0

    .line 672
    :cond_1
    const/16 v1, 0x8

    if-ne p0, v1, :cond_2

    const/16 v1, 0xf

    if-ne p1, v1, :cond_2

    .line 673
    const-string v1, "\u4e2d\u79cb"

    goto :goto_0

    .line 676
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getLunarFestivalChineseString(III)Ljava/lang/String;
    .locals 7
    .param p0, "gregorianYear"    # I
    .param p1, "gregorianMonth"    # I
    .param p2, "gregorianDay"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    .line 619
    const/4 v0, 0x0

    .line 621
    .local v0, "chineseString":Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/oppo/widget/OppoLunarUtil;->getGregFestival(II)Ljava/lang/String;

    move-result-object v0

    .line 622
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v3, v0

    .line 638
    :goto_0
    return-object v3

    .line 626
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/oppo/widget/OppoLunarUtil;->calculateLunarByGregorian(III)[I

    move-result-object v2

    .line 628
    .local v2, "lunarDate":[I
    aget v4, v2, v3

    aget v5, v2, v6

    invoke-static {v4, v5}, Lcom/oppo/widget/OppoLunarUtil;->getLunarFestival(II)Ljava/lang/String;

    move-result-object v0

    .line 629
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v3, v0

    .line 630
    goto :goto_0

    .line 633
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/oppo/widget/OppoLunarUtil;->getSolarTerm(III)Ljava/lang/String;

    move-result-object v0

    .line 634
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object v3, v0

    .line 635
    goto :goto_0

    .line 637
    :cond_2
    const/4 v4, 0x3

    aget v4, v2, v4

    if-nez v4, :cond_3

    move v1, v3

    .line 638
    .local v1, "isLeapMonth":Z
    :goto_1
    aget v3, v2, v3

    aget v4, v2, v6

    invoke-static {v3, v4, v1}, Lcom/oppo/widget/OppoLunarUtil;->getLunarNumber(IIZ)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 637
    .end local v1    # "isLeapMonth":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static getLunarNumber(IIZ)Ljava/lang/String;
    .locals 3
    .param p0, "lunarMonth"    # I
    .param p1, "lunarDay"    # I
    .param p2, "isLeapMonth"    # Z

    .prologue
    .line 648
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 649
    if-eqz p2, :cond_0

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u95f0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/oppo/widget/OppoLunarUtil;->sChineseNumber:[Ljava/lang/String;

    add-int/lit8 v2, p0, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 654
    :goto_0
    return-object v0

    .line 652
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oppo/widget/OppoLunarUtil;->sChineseNumber:[Ljava/lang/String;

    add-int/lit8 v2, p0, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u6708"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 654
    :cond_1
    invoke-static {p1}, Lcom/oppo/widget/OppoLunarUtil;->chneseStringOfALunarDay(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSolarTerm(III)Ljava/lang/String;
    .locals 6
    .param p0, "gregorianYear"    # I
    .param p1, "gregorianMonth"    # I
    .param p2, "gregorianDay"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 553
    invoke-static {p0, p1}, Lcom/oppo/widget/OppoLunarUtil;->getAMonthSolarTermDays(II)[I

    move-result-object v0

    .line 554
    .local v0, "days":[I
    aget v3, v0, v4

    if-eq p2, v3, :cond_1

    aget v3, v0, v5

    if-eq p2, v3, :cond_1

    .line 564
    :cond_0
    :goto_0
    return-object v2

    .line 558
    :cond_1
    invoke-static {p1}, Lcom/oppo/widget/OppoLunarUtil;->getAMonthSolarTermNames(I)[Ljava/lang/String;

    move-result-object v1

    .line 559
    .local v1, "names":[Ljava/lang/String;
    aget v3, v0, v4

    if-ne p2, v3, :cond_2

    .line 560
    aget-object v2, v1, v4

    goto :goto_0

    .line 561
    :cond_2
    aget v3, v0, v5

    if-ne p2, v3, :cond_0

    .line 562
    aget-object v2, v1, v5

    goto :goto_0
.end method

.method public static leapMonth(I)I
    .locals 4
    .param p0, "lunarYear"    # I

    .prologue
    .line 189
    const/16 v0, 0x76c

    if-lt p0, v0, :cond_0

    const/16 v0, 0x834

    if-le p0, v0, :cond_1

    .line 190
    :cond_0
    const-string v0, "OppoLunar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get leapMonth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is out of range.return 0."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/4 v0, 0x0

    .line 193
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/oppo/widget/OppoLunarUtil;->sLunarInfo:[J

    add-int/lit16 v1, p0, -0x76c

    aget-wide v0, v0, v1

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method
