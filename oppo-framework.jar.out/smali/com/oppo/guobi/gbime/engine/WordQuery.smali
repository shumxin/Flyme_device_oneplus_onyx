.class public Lcom/oppo/guobi/gbime/engine/WordQuery;
.super Ljava/lang/Object;
.source "WordQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/guobi/gbime/engine/WordQuery$WordQueryResult;
    }
.end annotation


# static fields
.field private static final APP_DIR:Ljava/lang/String; = "/data/data/com.oppo.ime/"

.field private static final CHAR_TYPE_CHINESE_WORD:I = 0x0

.field private static final CHAR_TYPE_OTHER_CHAR:I = 0x1

.field private static final DEBUG:Z = false

.field private static final MAX_CN_WORD_COUNT_PER_PAGE:I = 0x6

.field private static final MAX_EN_WORD_COUNT_PER_PAGE:I = 0x6

.field public static final QUERY_COMBINED_PINYIN:I = 0x10000

.field public static final QUERY_FIRST_PINYIN:I = 0x1

.field public static final QUERY_FIRST_STROKE:I = 0x10

.field public static final QUERY_PINYIN_SEPERATED:I = 0x1000

.field public static final QUERY_PINYIN_WITH_WORD:I = 0x100000

.field public static final QUERY_WHOLE_PINYIN:I = 0x100

.field private static final SEPERATOR_CHAR:C = '#'

.field private static final SEPERATOR_STRING:Ljava/lang/String; = "#"

.field private static final TAG:Ljava/lang/String; = "WordQuery"

.field private static final inputModePinyin:I = 0x6

.field private static final inputModeStroke:I = 0x2

.field private static final mHengValue:I = 0x4e00

.field private static final mNaValue:I = 0x4e36

.field private static final mPieValue:I = 0x4e3f

.field private static mQueryCombinedPinyin:Z = false

.field private static mQueryFirstPinyin:Z = false

.field private static mQueryFirstStroke:Z = false

.field private static mQueryPinyinSeperated:Z = false

.field private static mQueryPinyinWithWord:Z = false

.field private static mQueryWholePinyin:Z = false

.field private static final mShuValue:I = 0x4e28

.field private static mWordQueryInstance:Lcom/oppo/guobi/gbime/engine/WordQuery; = null

.field private static final mZheValue:I = 0x4e5b


# instance fields
.field private mFirstPinyinStr:Ljava/lang/String;

.field private mFirstStrokesStr:Ljava/lang/String;

.field private mPinyinWithWord:Ljava/lang/String;

.field private mWholePinyinSeperatedStr:Ljava/lang/String;

.field private mWholePinyinStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mWordQueryInstance:Lcom/oppo/guobi/gbime/engine/WordQuery;

    .line 117
    sput-boolean v1, Lcom/oppo/guobi/gbime/engine/WordQuery;->mQueryPinyinWithWord:Z

    .line 118
    sput-boolean v1, Lcom/oppo/guobi/gbime/engine/WordQuery;->mQueryCombinedPinyin:Z

    .line 119
    sput-boolean v1, Lcom/oppo/guobi/gbime/engine/WordQuery;->mQueryPinyinSeperated:Z

    .line 120
    sput-boolean v1, Lcom/oppo/guobi/gbime/engine/WordQuery;->mQueryWholePinyin:Z

    .line 121
    sput-boolean v1, Lcom/oppo/guobi/gbime/engine/WordQuery;->mQueryFirstStroke:Z

    .line 122
    sput-boolean v1, Lcom/oppo/guobi/gbime/engine/WordQuery;->mQueryFirstPinyin:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mWholePinyinStr:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mFirstPinyinStr:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mFirstStrokesStr:Ljava/lang/String;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mWholePinyinSeperatedStr:Ljava/lang/String;

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mPinyinWithWord:Ljava/lang/String;

    .line 264
    invoke-direct {p0}, Lcom/oppo/guobi/gbime/engine/WordQuery;->initEngine()V

    .line 265
    return-void
.end method

.method private static createInstance()V
    .locals 1

    .prologue
    .line 259
    new-instance v0, Lcom/oppo/guobi/gbime/engine/WordQuery;

    invoke-direct {v0}, Lcom/oppo/guobi/gbime/engine/WordQuery;-><init>()V

    sput-object v0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mWordQueryInstance:Lcom/oppo/guobi/gbime/engine/WordQuery;

    .line 260
    return-void
.end method

.method private fromCharToNumStr(C)Ljava/lang/String;
    .locals 3
    .param p1, "c"    # C

    .prologue
    .line 532
    const-string v1, ""

    .line 533
    .local v1, "res":Ljava/lang/String;
    move v0, p1

    .line 534
    .local v0, "charValue":I
    packed-switch v0, :pswitch_data_0

    .line 579
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    .line 539
    :pswitch_0
    const-string v2, "2"

    goto :goto_0

    .line 544
    :pswitch_1
    const-string v2, "3"

    goto :goto_0

    .line 549
    :pswitch_2
    const-string v2, "4"

    goto :goto_0

    .line 554
    :pswitch_3
    const-string v2, "5"

    goto :goto_0

    .line 559
    :pswitch_4
    const-string v2, "6"

    goto :goto_0

    .line 565
    :pswitch_5
    const-string v2, "7"

    goto :goto_0

    .line 570
    :pswitch_6
    const-string v2, "8"

    goto :goto_0

    .line 576
    :pswitch_7
    const-string v2, "9"

    goto :goto_0

    .line 534
    nop

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method private getCombinePinyinStrRepressByNum(Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .param p1, "wholePinyinSeperatedStr"    # Ljava/lang/String;

    .prologue
    .line 415
    const-string v10, ""

    .line 417
    .local v10, "res":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 527
    .end local v10    # "res":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v10

    .line 421
    .restart local v10    # "res":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mWholePinyinSeperatedStr:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v5

    .line 422
    .local v5, "len":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v5, v0, :cond_0

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mWholePinyinSeperatedStr:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 427
    .local v13, "subStr":Ljava/lang/String;
    if-eqz v13, :cond_0

    .line 431
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_0

    .line 438
    const-string v17, "#"

    invoke-static/range {v17 .. v17}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 440
    .local v11, "splitter":Ljava/lang/String;
    invoke-virtual {v13, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 441
    .local v6, "pinyinStrArr":[Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 445
    array-length v0, v6

    move/from16 v17, v0

    if-lez v17, :cond_0

    .line 450
    const-string v2, ""

    .line 452
    .local v2, "combineStr":Ljava/lang/String;
    const-string v7, ""

    .line 453
    .local v7, "pinyinStrOne":Ljava/lang/String;
    const-string v9, ""

    .line 454
    .local v9, "pinyinStrTwo":Ljava/lang/String;
    const-string v8, ""

    .line 456
    .local v8, "pinyinStrThree":Ljava/lang/String;
    const-string v15, ""

    .line 457
    .local v15, "tmpStr":Ljava/lang/String;
    const/4 v14, 0x0

    .line 458
    .local v14, "tmpChar":C
    const-string v12, ""

    .line 459
    .local v12, "strOfCharToNum":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v0, v6

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v3, v0, :cond_7

    .line 461
    aget-object v15, v6, v3

    .line 463
    if-eqz v15, :cond_6

    .line 465
    invoke-virtual {v15}, Ljava/lang/String;->toCharArray()[C

    move-result-object v16

    .line 466
    .local v16, "tmpStrCharArr":[C
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v4, v0, :cond_6

    .line 468
    aget-char v14, v16, v4

    .line 469
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/oppo/guobi/gbime/engine/WordQuery;->fromCharToNumStr(C)Ljava/lang/String;

    move-result-object v12

    .line 472
    array-length v0, v6

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_4

    .line 474
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 485
    :cond_2
    :goto_3
    if-nez v3, :cond_5

    .line 487
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 498
    :cond_3
    :goto_4
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 466
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 478
    :cond_4
    if-nez v4, :cond_2

    .line 480
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 491
    :cond_5
    if-nez v4, :cond_3

    .line 493
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    .line 459
    .end local v4    # "j":I
    .end local v16    # "tmpStrCharArr":[C
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 502
    :cond_7
    if-eqz v8, :cond_0

    .line 504
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "#"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 511
    if-eqz v7, :cond_8

    .line 513
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 514
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "#"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 516
    :cond_8
    if-eqz v9, :cond_9

    .line 518
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 519
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "#"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 521
    :cond_9
    if-eqz v8, :cond_a

    .line 523
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 524
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "#"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_a
    move-object v10, v2

    .line 527
    goto/16 :goto_0
.end method

.method private initEngine()V
    .locals 7

    .prologue
    .line 269
    const/4 v2, 0x1

    .line 270
    .local v2, "isSC":Z
    const/4 v1, 0x0

    .line 272
    .local v1, "initRes":Z
    :try_start_0
    const-string v3, "/data/data/com.oppo.ime/"

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x6

    invoke-static {v3, v4, v5, v6}, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->initGuobiMMIEngine(Ljava/lang/String;ZII)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 281
    if-nez v1, :cond_0

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 275
    :catch_0
    move-exception v0

    .line 277
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "WordQuery"

    const-string v4, "GBMMIEngineInitor.initGuobiMMIEngine throw Exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static initQueryFlag(I)V
    .locals 3
    .param p0, "queryFlag"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 239
    const/high16 v0, 0x100000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mQueryPinyinWithWord:Z

    .line 240
    const/high16 v0, 0x10000

    and-int/2addr v0, p0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mQueryCombinedPinyin:Z

    .line 241
    and-int/lit16 v0, p0, 0x1000

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mQueryPinyinSeperated:Z

    .line 242
    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mQueryWholePinyin:Z

    .line 243
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    sput-boolean v0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mQueryFirstStroke:Z

    .line 244
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_5

    :goto_5
    sput-boolean v1, Lcom/oppo/guobi/gbime/engine/WordQuery;->mQueryFirstPinyin:Z

    .line 245
    return-void

    :cond_0
    move v0, v2

    .line 239
    goto :goto_0

    :cond_1
    move v0, v2

    .line 240
    goto :goto_1

    :cond_2
    move v0, v2

    .line 241
    goto :goto_2

    :cond_3
    move v0, v2

    .line 242
    goto :goto_3

    :cond_4
    move v0, v2

    .line 243
    goto :goto_4

    :cond_5
    move v1, v2

    .line 244
    goto :goto_5
.end method

.method private logQueryRes(Lcom/oppo/guobi/gbime/engine/WordQuery$WordQueryResult;)V
    .locals 3
    .param p1, "queryRes"    # Lcom/oppo/guobi/gbime/engine/WordQuery$WordQueryResult;

    .prologue
    .line 967
    if-nez p1, :cond_0

    .line 969
    const-string v0, "WordQuery"

    const-string v1, "logQueryRes:null == queryRes, return;"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    :goto_0
    return-void

    .line 973
    :cond_0
    iget-object v0, p1, Lcom/oppo/guobi/gbime/engine/WordQuery$WordQueryResult;->mWholePinyinStr:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 975
    const-string v0, "WordQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logQueryRes:queryRes.mWholePinyinStr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/oppo/guobi/gbime/engine/WordQuery$WordQueryResult;->mWholePinyinStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    :goto_1
    iget-object v0, p1, Lcom/oppo/guobi/gbime/engine/WordQuery$WordQueryResult;->mFirstPinyinStr:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 984
    const-string v0, "WordQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logQueryRes:queryRes.mFirstPinyinStr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/oppo/guobi/gbime/engine/WordQuery$WordQueryResult;->mFirstPinyinStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    :goto_2
    iget-object v0, p1, Lcom/oppo/guobi/gbime/engine/WordQuery$WordQueryResult;->mFirstStrokesStr:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 993
    const-string v0, "WordQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logQueryRes:queryRes.mFirstStrokesStr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/oppo/guobi/gbime/engine/WordQuery$WordQueryResult;->mFirstStrokesStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    :goto_3
    iget-object v0, p1, Lcom/oppo/guobi/gbime/engine/WordQuery$WordQueryResult;->mWholePinyinSeperatedStr:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1002
    const-string v0, "WordQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logQueryRes:queryRes.mWholePinyinSeperatedStr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/oppo/guobi/gbime/engine/WordQuery$WordQueryResult;->mWholePinyinSeperatedStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    :goto_4
    iget-object v0, p1, Lcom/oppo/guobi/gbime/engine/WordQuery$WordQueryResult;->mCombinePinyinStrRepressByNum:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 1011
    const-string v0, "WordQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logQueryRes:queryRes.mCombinePinyinStrRepressByNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/oppo/guobi/gbime/engine/WordQuery$WordQueryResult;->mWholePinyinSeperatedStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    :goto_5
    iget-object v0, p1, Lcom/oppo/guobi/gbime/engine/WordQuery$WordQueryResult;->mPinyinWithWordStr:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 1020
    const-string v0, "WordQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logQueryRes:queryRes.mPinyinWithWordStr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/oppo/guobi/gbime/engine/WordQuery$WordQueryResult;->mWholePinyinSeperatedStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 979
    :cond_1
    const-string v0, "WordQuery"

    const-string v1, "logQueryRes:queryRes.mWholePinyinStr == null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 988
    :cond_2
    const-string v0, "WordQuery"

    const-string v1, "logQueryRes:queryRes.mFirstPinyinStr == null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 997
    :cond_3
    const-string v0, "WordQuery"

    const-string v1, "logQueryRes:queryRes.mFirstStrokesStr == null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1006
    :cond_4
    const-string v0, "WordQuery"

    const-string v1, "logQueryRes:queryRes.mWholePinyinSeperatedStr == null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1015
    :cond_5
    const-string v0, "WordQuery"

    const-string v1, "logQueryRes:queryRes.mCombinePinyinStrRepressByNum == null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1024
    :cond_6
    const-string v0, "WordQuery"

    const-string v1, "logQueryRes:queryRes.mPinyinWithWordStr == null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private numStrToStroke(C)Ljava/lang/String;
    .locals 3
    .param p1, "num"    # C

    .prologue
    .line 920
    const-string v1, ""

    .line 921
    .local v1, "strokeStr":Ljava/lang/String;
    const/4 v0, 0x0

    .line 922
    .local v0, "strokeChar":C
    packed-switch p1, :pswitch_data_0

    .line 929
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 930
    return-object v1

    .line 923
    :pswitch_0
    const/16 v0, 0x4e00

    goto :goto_0

    .line 924
    :pswitch_1
    const/16 v0, 0x4e28

    goto :goto_0

    .line 925
    :pswitch_2
    const/16 v0, 0x4e3f

    goto :goto_0

    .line 926
    :pswitch_3
    const/16 v0, 0x4e36

    goto :goto_0

    .line 927
    :pswitch_4
    const/16 v0, 0x4e5b

    goto :goto_0

    .line 922
    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static preProcessQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "words"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 200
    if-nez p0, :cond_0

    .line 202
    const-string v3, "WordQuery"

    const-string v4, "The param words\'s length is 0, return null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 234
    :goto_0
    return-object v1

    .line 206
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 207
    .local v0, "strLen":I
    if-nez v0, :cond_1

    .line 209
    const-string v3, "WordQuery"

    const-string v4, "The param words\'s length is 0, return null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 210
    goto :goto_0

    .line 213
    :cond_1
    const-string v3, " "

    const-string v4, "#"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "tmpWords":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 217
    const-string v3, "WordQuery"

    const-string v4, "The length of tmpWords is 0, return null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 218
    goto :goto_0

    .line 221
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 222
    if-nez v0, :cond_3

    .line 224
    const-string v3, "WordQuery"

    const-string v4, "The length of tmpWords is 0, return null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 225
    goto :goto_0

    .line 228
    :cond_3
    sget-object v2, Lcom/oppo/guobi/gbime/engine/WordQuery;->mWordQueryInstance:Lcom/oppo/guobi/gbime/engine/WordQuery;

    if-nez v2, :cond_4

    .line 230
    invoke-static {}, Lcom/oppo/guobi/gbime/engine/WordQuery;->createInstance()V

    .line 232
    :cond_4
    sget-object v2, Lcom/oppo/guobi/gbime/engine/WordQuery;->mWordQueryInstance:Lcom/oppo/guobi/gbime/engine/WordQuery;

    invoke-direct {v2}, Lcom/oppo/guobi/gbime/engine/WordQuery;->resetBuf()V

    goto :goto_0
.end method

.method private procChineseWord(CZ)V
    .locals 14
    .param p1, "word"    # C
    .param p2, "getAllInfo"    # Z

    .prologue
    .line 727
    const/4 v5, 0x0

    .line 728
    .local v5, "pinyinResBuf":[C
    const/4 v8, 0x0

    .line 730
    .local v8, "strokeResBuf":[C
    move v9, p1

    .line 732
    .local v9, "tmpWord":C
    const-string v6, ""

    .line 734
    .local v6, "pinyinResStr":Ljava/lang/String;
    const/4 v12, 0x1

    new-array v1, v12, [C

    .line 735
    .local v1, "chars":[C
    const/4 v12, 0x0

    aput-char p1, v1, v12

    .line 736
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v1}, Ljava/lang/String;-><init>([C)V

    .line 737
    .local v11, "wordString":Ljava/lang/String;
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/String;->codePointAt(I)I

    move-result v10

    .line 738
    .local v10, "wordCode":I
    sget-boolean v12, Lcom/oppo/guobi/gbime/engine/WordQuery;->mQueryFirstPinyin:Z

    if-nez v12, :cond_0

    sget-boolean v12, Lcom/oppo/guobi/gbime/engine/WordQuery;->mQueryWholePinyin:Z

    if-nez v12, :cond_0

    sget-boolean v12, Lcom/oppo/guobi/gbime/engine/WordQuery;->mQueryPinyinSeperated:Z

    if-nez v12, :cond_0

    sget-boolean v12, Lcom/oppo/guobi/gbime/engine/WordQuery;->mQueryPinyinWithWord:Z

    if-nez v12, :cond_0

    sget-boolean v12, Lcom/oppo/guobi/gbime/engine/WordQuery;->mQueryCombinedPinyin:Z

    if-eqz v12, :cond_1

    .line 742
    :cond_0
    invoke-static {}, Lcom/oppo/guobi/gbime/engine/GBApi;->reset()I

    .line 743
    const/4 v12, 0x6

    const/4 v13, 0x0

    invoke-static {v12, v10, v13}, Lcom/oppo/guobi/gbime/engine/GBApi;->word2CodesByInputmod(III)Ljava/lang/String;

    move-result-object v6

    .line 747
    :cond_1
    if-eqz p2, :cond_5

    sget-boolean v12, Lcom/oppo/guobi/gbime/engine/WordQuery;->mQueryFirstStroke:Z

    if-eqz v12, :cond_5

    .line 750
    invoke-static {}, Lcom/oppo/guobi/gbime/engine/GBApi;->reset()I

    .line 751
    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-static {v12, v10, v13}, Lcom/oppo/guobi/gbime/engine/GBApi;->word2CodesByInputmod(III)Ljava/lang/String;

    move-result-object v7

    .line 752
    .local v7, "stokeString":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 753
    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    .line 760
    :goto_0
    if-nez v8, :cond_4

    .line 762
    const-string v12, "WordQuery"

    const-string v13, "couldn\'t query any stroke information from engine"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    move v0, p1

    .line 765
    .local v0, "charCodeValue":I
    sparse-switch v0, :sswitch_data_0

    .line 874
    .end local v0    # "charCodeValue":I
    .end local v7    # "stokeString":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 756
    .restart local v7    # "stokeString":Ljava/lang/String;
    :cond_3
    const-string v12, "WordQuery"

    const-string v13, "wordQuery word result is null"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 772
    .restart local v0    # "charCodeValue":I
    :sswitch_0
    const/4 v12, 0x1

    new-array v8, v12, [C

    .line 773
    const/4 v12, 0x0

    aput-char p1, v8, v12

    .line 782
    .end local v0    # "charCodeValue":I
    :cond_4
    const/4 v12, 0x0

    aget-char v12, v8, v12

    if-eqz v12, :cond_6

    .line 799
    const/4 v12, 0x0

    aget-char v12, v8, v12

    invoke-direct {p0, v12}, Lcom/oppo/guobi/gbime/engine/WordQuery;->numStrToStroke(C)Ljava/lang/String;

    move-result-object v4

    .line 807
    .local v4, "firstStroke":Ljava/lang/String;
    :goto_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mFirstStrokesStr:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mFirstStrokesStr:Ljava/lang/String;

    .line 837
    .end local v4    # "firstStroke":Ljava/lang/String;
    .end local v7    # "stokeString":Ljava/lang/String;
    :cond_5
    if-nez v6, :cond_7

    .line 838
    const-string v12, "WordQuery"

    const-string v13, "couldn\'t query any pinyin information from engine"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 805
    .restart local v7    # "stokeString":Ljava/lang/String;
    :cond_6
    const-string v4, ""

    .restart local v4    # "firstStroke":Ljava/lang/String;
    goto :goto_2

    .line 843
    .end local v4    # "firstStroke":Ljava/lang/String;
    .end local v7    # "stokeString":Ljava/lang/String;
    :cond_7
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_2

    .line 845
    if-eqz p2, :cond_8

    sget-boolean v12, Lcom/oppo/guobi/gbime/engine/WordQuery;->mQueryFirstPinyin:Z

    if-eqz v12, :cond_8

    .line 848
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 849
    .local v2, "firstOne":C
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    .line 850
    .local v3, "firstPinyinChar":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mFirstPinyinStr:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mFirstPinyinStr:Ljava/lang/String;

    .line 853
    .end local v2    # "firstOne":C
    .end local v3    # "firstPinyinChar":Ljava/lang/String;
    :cond_8
    sget-boolean v12, Lcom/oppo/guobi/gbime/engine/WordQuery;->mQueryWholePinyin:Z

    if-eqz v12, :cond_9

    .line 855
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mWholePinyinStr:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mWholePinyinStr:Ljava/lang/String;

    .line 858
    :cond_9
    sget-boolean v12, Lcom/oppo/guobi/gbime/engine/WordQuery;->mQueryPinyinSeperated:Z

    if-nez v12, :cond_a

    sget-boolean v12, Lcom/oppo/guobi/gbime/engine/WordQuery;->mQueryCombinedPinyin:Z

    if-eqz v12, :cond_b

    .line 860
    :cond_a
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mWholePinyinSeperatedStr:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "#"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mWholePinyinSeperatedStr:Ljava/lang/String;

    .line 863
    :cond_b
    sget-boolean v12, Lcom/oppo/guobi/gbime/engine/WordQuery;->mQueryPinyinWithWord:Z

    if-eqz v12, :cond_2

    .line 867
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mPinyinWithWord:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mPinyinWithWord:Ljava/lang/String;

    goto/16 :goto_1

    .line 765
    :sswitch_data_0
    .sparse-switch
        0x4e00 -> :sswitch_0
        0x4e28 -> :sswitch_0
        0x4e36 -> :sswitch_0
        0x4e3f -> :sswitch_0
        0x4e5b -> :sswitch_0
    .end sparse-switch
.end method

.method private procChnWords(Ljava/lang/String;)V
    .locals 9
    .param p1, "words"    # Ljava/lang/String;

    .prologue
    .line 586
    const/4 v0, 0x1

    .line 588
    .local v0, "getAllInfo":Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 590
    .local v3, "strLen":I
    const/4 v2, 0x0

    .line 591
    .local v2, "isMeetEqualMark":Z
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v3, :cond_6

    .line 593
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 595
    .local v4, "tmpWord":C
    if-eqz v4, :cond_0

    .line 597
    const/16 v7, 0x23

    if-ne v7, v4, :cond_1

    .line 600
    const/4 v2, 0x1

    .line 591
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 604
    :cond_1
    invoke-direct {p0, v4}, Lcom/oppo/guobi/gbime/engine/WordQuery;->whichType(C)I

    move-result v6

    .line 606
    .local v6, "type":I
    packed-switch v6, :pswitch_data_0

    .line 618
    const/4 v0, 0x0

    .line 619
    const-string v5, ""

    .line 620
    .local v5, "tmpWordStr":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    .line 621
    sget-boolean v7, Lcom/oppo/guobi/gbime/engine/WordQuery;->mQueryWholePinyin:Z

    if-eqz v7, :cond_2

    .line 623
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mWholePinyinStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mWholePinyinStr:Ljava/lang/String;

    .line 626
    :cond_2
    sget-boolean v7, Lcom/oppo/guobi/gbime/engine/WordQuery;->mQueryPinyinSeperated:Z

    if-nez v7, :cond_3

    sget-boolean v7, Lcom/oppo/guobi/gbime/engine/WordQuery;->mQueryCombinedPinyin:Z

    if-eqz v7, :cond_5

    .line 628
    :cond_3
    if-eqz v2, :cond_4

    .line 630
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mWholePinyinSeperatedStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mWholePinyinSeperatedStr:Ljava/lang/String;

    .line 634
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mWholePinyinSeperatedStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mWholePinyinSeperatedStr:Ljava/lang/String;

    .line 636
    :cond_5
    const/4 v2, 0x0

    .line 638
    sget-boolean v7, Lcom/oppo/guobi/gbime/engine/WordQuery;->mQueryPinyinWithWord:Z

    if-eqz v7, :cond_0

    .line 640
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mPinyinWithWord:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mPinyinWithWord:Ljava/lang/String;

    goto :goto_1

    .line 609
    .end local v5    # "tmpWordStr":Ljava/lang/String;
    :pswitch_0
    invoke-direct {p0, v4, v0}, Lcom/oppo/guobi/gbime/engine/WordQuery;->procChineseWord(CZ)V

    .line 610
    if-eqz v2, :cond_0

    .line 612
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 646
    .end local v4    # "tmpWord":C
    .end local v6    # "type":I
    :cond_6
    return-void

    .line 606
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private procOtherTypeWord(C)V
    .locals 0
    .param p1, "word"    # C

    .prologue
    .line 938
    return-void
.end method

.method private procOtherWords(Ljava/lang/String;)V
    .locals 10
    .param p1, "words"    # Ljava/lang/String;

    .prologue
    .line 653
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 654
    .local v0, "firstChar":C
    if-eqz v0, :cond_0

    .line 656
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mFirstPinyinStr:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mFirstPinyinStr:Ljava/lang/String;

    .line 661
    :cond_0
    const/4 v1, 0x0

    .line 662
    .local v1, "getAllInfo":Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 663
    .local v4, "strLen":I
    const/4 v3, 0x0

    .line 664
    .local v3, "isMeetEqualMark":Z
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v4, :cond_7

    .line 666
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 668
    .local v5, "tmpWord":C
    if-eqz v5, :cond_1

    .line 670
    const/16 v8, 0x23

    if-ne v8, v5, :cond_2

    .line 673
    const/4 v3, 0x1

    .line 664
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 677
    :cond_2
    invoke-direct {p0, v5}, Lcom/oppo/guobi/gbime/engine/WordQuery;->whichType(C)I

    move-result v7

    .line 678
    .local v7, "type":I
    packed-switch v7, :pswitch_data_0

    .line 691
    const-string v6, ""

    .line 692
    .local v6, "tmpWordStr":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    .line 694
    sget-boolean v8, Lcom/oppo/guobi/gbime/engine/WordQuery;->mQueryWholePinyin:Z

    if-eqz v8, :cond_3

    .line 696
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mWholePinyinStr:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mWholePinyinStr:Ljava/lang/String;

    .line 699
    :cond_3
    sget-boolean v8, Lcom/oppo/guobi/gbime/engine/WordQuery;->mQueryPinyinSeperated:Z

    if-nez v8, :cond_4

    sget-boolean v8, Lcom/oppo/guobi/gbime/engine/WordQuery;->mQueryCombinedPinyin:Z

    if-eqz v8, :cond_6

    .line 701
    :cond_4
    if-eqz v3, :cond_5

    .line 703
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mWholePinyinSeperatedStr:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mWholePinyinSeperatedStr:Ljava/lang/String;

    .line 707
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mWholePinyinSeperatedStr:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mWholePinyinSeperatedStr:Ljava/lang/String;

    .line 709
    :cond_6
    const/4 v3, 0x0

    .line 711
    sget-boolean v8, Lcom/oppo/guobi/gbime/engine/WordQuery;->mQueryPinyinWithWord:Z

    if-eqz v8, :cond_1

    .line 713
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mPinyinWithWord:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mPinyinWithWord:Ljava/lang/String;

    goto :goto_1

    .line 681
    .end local v6    # "tmpWordStr":Ljava/lang/String;
    :pswitch_0
    invoke-direct {p0, v5, v1}, Lcom/oppo/guobi/gbime/engine/WordQuery;->procChineseWord(CZ)V

    .line 682
    if-eqz v3, :cond_1

    .line 684
    const/4 v3, 0x0

    goto :goto_1

    .line 721
    .end local v5    # "tmpWord":C
    .end local v7    # "type":I
    :cond_7
    const-string v8, ""

    iput-object v8, p0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mFirstStrokesStr:Ljava/lang/String;

    .line 722
    return-void

    .line 678
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private procQueryInfo(Ljava/lang/String;)Lcom/oppo/guobi/gbime/engine/WordQuery$WordQueryResult;
    .locals 8
    .param p1, "words"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 317
    new-instance v0, Lcom/oppo/guobi/gbime/engine/WordQuery$WordQueryResult;

    invoke-direct {v0}, Lcom/oppo/guobi/gbime/engine/WordQuery$WordQueryResult;-><init>()V

    .line 320
    .local v0, "queryRes":Lcom/oppo/guobi/gbime/engine/WordQuery$WordQueryResult;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 324
    .local v1, "strLen":I
    const/4 v4, 0x0

    .line 325
    .local v4, "wordsType":I
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 326
    .local v3, "tmpWord":C
    if-eqz v3, :cond_7

    .line 328
    invoke-direct {p0, v3}, Lcom/oppo/guobi/gbime/engine/WordQuery;->stringsType(C)I

    move-result v4

    .line 335
    packed-switch v4, :pswitch_data_0

    .line 343
    invoke-direct {p0, p1}, Lcom/oppo/guobi/gbime/engine/WordQuery;->procOtherWords(Ljava/lang/String;)V

    .line 347
    :goto_0
    sget-boolean v5, Lcom/oppo/guobi/gbime/engine/WordQuery;->mQueryWholePinyin:Z

    if-eqz v5, :cond_0

    .line 349
    iget-object v5, p0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mWholePinyinStr:Ljava/lang/String;

    iput-object v5, v0, Lcom/oppo/guobi/gbime/engine/WordQuery$WordQueryResult;->mWholePinyinStr:Ljava/lang/String;

    .line 352
    :cond_0
    sget-boolean v5, Lcom/oppo/guobi/gbime/engine/WordQuery;->mQueryFirstPinyin:Z

    if-eqz v5, :cond_1

    .line 354
    iget-object v5, p0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mFirstPinyinStr:Ljava/lang/String;

    iput-object v5, v0, Lcom/oppo/guobi/gbime/engine/WordQuery$WordQueryResult;->mFirstPinyinStr:Ljava/lang/String;

    .line 357
    :cond_1
    sget-boolean v5, Lcom/oppo/guobi/gbime/engine/WordQuery;->mQueryFirstStroke:Z

    if-eqz v5, :cond_2

    .line 359
    iget-object v5, p0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mFirstStrokesStr:Ljava/lang/String;

    iput-object v5, v0, Lcom/oppo/guobi/gbime/engine/WordQuery$WordQueryResult;->mFirstStrokesStr:Ljava/lang/String;

    .line 362
    :cond_2
    sget-boolean v5, Lcom/oppo/guobi/gbime/engine/WordQuery;->mQueryPinyinSeperated:Z

    if-eqz v5, :cond_3

    .line 364
    iget-object v5, p0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mWholePinyinSeperatedStr:Ljava/lang/String;

    iput-object v5, v0, Lcom/oppo/guobi/gbime/engine/WordQuery$WordQueryResult;->mWholePinyinSeperatedStr:Ljava/lang/String;

    .line 367
    :cond_3
    sget-boolean v5, Lcom/oppo/guobi/gbime/engine/WordQuery;->mQueryPinyinWithWord:Z

    if-eqz v5, :cond_4

    .line 369
    iget-object v5, p0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mPinyinWithWord:Ljava/lang/String;

    iput-object v5, v0, Lcom/oppo/guobi/gbime/engine/WordQuery$WordQueryResult;->mPinyinWithWordStr:Ljava/lang/String;

    .line 372
    :cond_4
    iget-object v5, v0, Lcom/oppo/guobi/gbime/engine/WordQuery$WordQueryResult;->mWholePinyinSeperatedStr:Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 374
    iget-object v5, v0, Lcom/oppo/guobi/gbime/engine/WordQuery$WordQueryResult;->mWholePinyinSeperatedStr:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_5

    .line 376
    const/16 v5, 0x23

    iget-object v6, v0, Lcom/oppo/guobi/gbime/engine/WordQuery$WordQueryResult;->mWholePinyinSeperatedStr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_5

    .line 378
    const-string v2, "#"

    .line 379
    .local v2, "tmpStr":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mWholePinyinSeperatedStr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 380
    iput-object v2, v0, Lcom/oppo/guobi/gbime/engine/WordQuery$WordQueryResult;->mWholePinyinSeperatedStr:Ljava/lang/String;

    .line 384
    .end local v2    # "tmpStr":Ljava/lang/String;
    :cond_5
    sget-boolean v5, Lcom/oppo/guobi/gbime/engine/WordQuery;->mQueryCombinedPinyin:Z

    if-eqz v5, :cond_6

    .line 386
    iget-object v5, v0, Lcom/oppo/guobi/gbime/engine/WordQuery$WordQueryResult;->mWholePinyinSeperatedStr:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/oppo/guobi/gbime/engine/WordQuery;->getCombinePinyinStrRepressByNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/oppo/guobi/gbime/engine/WordQuery$WordQueryResult;->mCombinePinyinStrRepressByNum:Ljava/lang/String;

    .line 410
    .end local v0    # "queryRes":Lcom/oppo/guobi/gbime/engine/WordQuery$WordQueryResult;
    :cond_6
    :goto_1
    return-object v0

    .line 332
    .restart local v0    # "queryRes":Lcom/oppo/guobi/gbime/engine/WordQuery$WordQueryResult;
    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    .line 338
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/oppo/guobi/gbime/engine/WordQuery;->procChnWords(Ljava/lang/String;)V

    goto :goto_0

    .line 335
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static queryWordInfo(Ljava/lang/String;)Lcom/oppo/guobi/gbime/engine/WordQuery$WordQueryResult;
    .locals 2
    .param p0, "words"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-static {p0}, Lcom/oppo/guobi/gbime/engine/WordQuery;->preProcessQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "tmpWords":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 166
    const/4 v1, 0x0

    .line 171
    :goto_0
    return-object v1

    .line 169
    :cond_0
    invoke-static {}, Lcom/oppo/guobi/gbime/engine/WordQuery;->resetQueryFlagToTrue()V

    .line 171
    sget-object v1, Lcom/oppo/guobi/gbime/engine/WordQuery;->mWordQueryInstance:Lcom/oppo/guobi/gbime/engine/WordQuery;

    invoke-direct {v1, v0}, Lcom/oppo/guobi/gbime/engine/WordQuery;->procQueryInfo(Ljava/lang/String;)Lcom/oppo/guobi/gbime/engine/WordQuery$WordQueryResult;

    move-result-object v1

    goto :goto_0
.end method

.method public static queryWordInfo(Ljava/lang/String;I)Lcom/oppo/guobi/gbime/engine/WordQuery$WordQueryResult;
    .locals 2
    .param p0, "words"    # Ljava/lang/String;
    .param p1, "queryFlag"    # I

    .prologue
    .line 182
    if-nez p1, :cond_0

    .line 184
    invoke-static {p0}, Lcom/oppo/guobi/gbime/engine/WordQuery;->queryWordInfo(Ljava/lang/String;)Lcom/oppo/guobi/gbime/engine/WordQuery$WordQueryResult;

    move-result-object v1

    .line 195
    :goto_0
    return-object v1

    .line 187
    :cond_0
    invoke-static {p0}, Lcom/oppo/guobi/gbime/engine/WordQuery;->preProcessQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "tmpWords":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 190
    const/4 v1, 0x0

    goto :goto_0

    .line 193
    :cond_1
    invoke-static {p1}, Lcom/oppo/guobi/gbime/engine/WordQuery;->initQueryFlag(I)V

    .line 195
    sget-object v1, Lcom/oppo/guobi/gbime/engine/WordQuery;->mWordQueryInstance:Lcom/oppo/guobi/gbime/engine/WordQuery;

    invoke-direct {v1, v0}, Lcom/oppo/guobi/gbime/engine/WordQuery;->procQueryInfo(Ljava/lang/String;)Lcom/oppo/guobi/gbime/engine/WordQuery$WordQueryResult;

    move-result-object v1

    goto :goto_0
.end method

.method private resetBuf()V
    .locals 1

    .prologue
    .line 289
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mWholePinyinStr:Ljava/lang/String;

    .line 290
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mFirstPinyinStr:Ljava/lang/String;

    .line 291
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mFirstStrokesStr:Ljava/lang/String;

    .line 292
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mWholePinyinSeperatedStr:Ljava/lang/String;

    .line 293
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mPinyinWithWord:Ljava/lang/String;

    .line 294
    return-void
.end method

.method private static resetQueryFlagToTrue()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 249
    sput-boolean v0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mQueryPinyinWithWord:Z

    .line 250
    sput-boolean v0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mQueryCombinedPinyin:Z

    .line 251
    sput-boolean v0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mQueryPinyinSeperated:Z

    .line 252
    sput-boolean v0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mQueryWholePinyin:Z

    .line 253
    sput-boolean v0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mQueryFirstStroke:Z

    .line 254
    sput-boolean v0, Lcom/oppo/guobi/gbime/engine/WordQuery;->mQueryFirstPinyin:Z

    .line 255
    return-void
.end method

.method private stringsType(C)I
    .locals 1
    .param p1, "firstChar"    # C

    .prologue
    .line 942
    const/4 v0, 0x0

    .line 943
    .local v0, "typeValue":I
    invoke-direct {p0, p1}, Lcom/oppo/guobi/gbime/engine/WordQuery;->whichType(C)I

    move-result v0

    .line 944
    return v0
.end method

.method private strokeToNumStr(C)Ljava/lang/String;
    .locals 3
    .param p1, "stroke"    # C

    .prologue
    .line 878
    const-string v0, ""

    .line 881
    .local v0, "strokeNum":Ljava/lang/String;
    const/16 v2, 0x4e00

    if-ne v2, p1, :cond_0

    .line 883
    const/16 v1, 0x31

    .line 906
    .local v1, "strokeNumValue":C
    :goto_0
    if-eqz v1, :cond_5

    .line 908
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 915
    :goto_1
    return-object v0

    .line 885
    .end local v1    # "strokeNumValue":C
    :cond_0
    const/16 v2, 0x4e28

    if-ne v2, p1, :cond_1

    .line 887
    const/16 v1, 0x32

    .restart local v1    # "strokeNumValue":C
    goto :goto_0

    .line 889
    .end local v1    # "strokeNumValue":C
    :cond_1
    const/16 v2, 0x4e3f

    if-ne v2, p1, :cond_2

    .line 891
    const/16 v1, 0x33

    .restart local v1    # "strokeNumValue":C
    goto :goto_0

    .line 893
    .end local v1    # "strokeNumValue":C
    :cond_2
    const/16 v2, 0x4e36

    if-ne v2, p1, :cond_3

    .line 895
    const/16 v1, 0x34

    .restart local v1    # "strokeNumValue":C
    goto :goto_0

    .line 897
    .end local v1    # "strokeNumValue":C
    :cond_3
    const/16 v2, 0x4e5b

    if-ne v2, p1, :cond_4

    .line 899
    const/16 v1, 0x35

    .restart local v1    # "strokeNumValue":C
    goto :goto_0

    .line 903
    .end local v1    # "strokeNumValue":C
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "strokeNumValue":C
    goto :goto_0

    .line 912
    :cond_5
    const-string v0, ""

    goto :goto_1
.end method

.method private whichType(C)I
    .locals 2
    .param p1, "word"    # C

    .prologue
    const/4 v0, 0x0

    .line 950
    const/16 v1, 0x23

    if-ne v1, p1, :cond_1

    .line 961
    :cond_0
    :goto_0
    return v0

    .line 955
    :cond_1
    const/16 v1, 0x4e00

    if-gt v1, p1, :cond_2

    const v1, 0x9fa5

    if-le p1, v1, :cond_0

    .line 961
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
