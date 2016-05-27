.class public Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;
.super Ljava/lang/Object;
.source "GBMMIEngineInitor.java"


# static fields
.field public static final CHN_CNUDB:Ljava/lang/String; = "chn.cnudb"

.field public static final CHN_UDB:Ljava/lang/String; = "chn.udb"

.field public static final CNUDB_LEN:I = 0x8000

.field private static final DEBUG:Z = true

.field private static final ENGINE_SELF_MAKE_WORD_RES_REPEAT:I = -0x17

.field private static final ENGINE_SELF_MAKE_WORD_RES_REPEAT_CN:I = 0xde

.field private static final ENGINE_SELF_MAKE_WORD_RES_REPEAT_EN:I = 0xe9

.field public static final EN_UDB:Ljava/lang/String; = "en.udb"

.field private static final MAX_CN_WORD_COUNT_PER_PAGE:I = 0x6

.field private static final MAX_EN_WORD_COUNT_PER_PAGE:I = 0x6

.field public static final SELF_MAKE_WORD_ERROR:I = 0x2

.field public static final SELF_MAKE_WORD_RES_HAS_EXIST:I = 0x1

.field public static final SELF_MAKE_WORD_RES_OK:I = 0x0

.field private static final SYSTEM_DICT_ENGLISH:Ljava/lang/String; = "guobi/gb_en.ebd"

.field private static final SYSTEM_DICT_MARS:Ljava/lang/String; = "guobi/gb_mars.ebd"

.field private static final SYSTEM_DICT_SIMPLE_CN:Ljava/lang/String; = "guobi/gb_sc.ebd"

.field private static final SYSTEM_DICT_TAIWAN_CN:Ljava/lang/String; = "guobi/gb_tc.ebd"

.field private static final TAG:Ljava/lang/String; = "GBMMIEngineInitor"

.field public static final TW_CHN_CNUDB:Ljava/lang/String; = "tw_chn.cnudb"

.field public static final TW_CHN_UDB:Ljava/lang/String; = "tw_chn.udb"

.field public static final UDB_LEN:I = 0x10000

.field private static mChnDataLen:I

.field private static mDoneChnEngineInit:Z

.field private static mDoneLatinEngineInit:Z

.field private static mDoneLoadData:Z

.field static mEnData:[B

.field static mEnUDB:[B

.field private static mIsMarsLangueOpen:Z

.field private static mLoadSystemDictsFlag:Z

.field static mMarsData:[B

.field private static mMaxCnWordCountPerPage:I

.field private static mMaxEnWordCountPerPage:I

.field static mScCnUDB:[B

.field static mScData:[B

.field static mScUDB:[B

.field static mTwCnData:[B

.field static mTwCnUDB:[B

.field static mTwUDB:[B

.field private static mUseSimpleChn:Z

.field public static strBeginMakeWord:[C

.field public static final strBeginMakeWordDefaultTip:[C

.field public static strOkToAddMakeWord:[C

.field public static final strOkToAddMakeWordDefaultTip:[C


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x0

    .line 49
    const/16 v0, 0xe

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->strBeginMakeWordDefaultTip:[C

    .line 50
    const/16 v0, 0xc

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->strOkToAddMakeWordDefaultTip:[C

    .line 64
    sput v1, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mChnDataLen:I

    .line 66
    sput-boolean v1, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mDoneChnEngineInit:Z

    .line 67
    sput-boolean v1, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mDoneLatinEngineInit:Z

    .line 69
    sput-boolean v1, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mDoneLoadData:Z

    .line 83
    sput v2, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mMaxCnWordCountPerPage:I

    .line 84
    sput v2, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mMaxEnWordCountPerPage:I

    .line 86
    const/4 v0, 0x1

    sput-boolean v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mUseSimpleChn:Z

    .line 89
    sput-boolean v1, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mIsMarsLangueOpen:Z

    .line 98
    sput-boolean v1, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mLoadSystemDictsFlag:Z

    return-void

    .line 49
    :array_0
    .array-data 2
        0x42s
        0x65s
        0x67s
        0x69s
        0x6es
        0x4ds
        0x61s
        0x6bs
        0x65s
        0x57s
        0x6fs
        0x72s
        0x64s
        0x0s
    .end array-data

    .line 50
    :array_1
    .array-data 2
        0x4fs
        0x6bs
        0x54s
        0x6fs
        0x41s
        0x64s
        0x64s
        0x57s
        0x6fs
        0x72s
        0x64s
        0x0s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static GBMMIInit(II)Z
    .locals 8
    .param p0, "maxCnWordCountPerPage"    # I
    .param p1, "maxEnWordCountPerPage"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 471
    const/4 v1, 0x0

    .line 472
    .local v1, "ret":I
    const-string v4, "GBMMIEngineInitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GBMMIInit:mUseSimpleChn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mUseSimpleChn:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :try_start_0
    sget-boolean v4, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mUseSimpleChn:Z

    if-eqz v4, :cond_1

    .line 479
    const-string v4, "GBMMIEngineInitor"

    const-string v5, "GBMMIInit:load simple chinese data."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const/4 v4, 0x4

    const/4 v5, 0x0

    sget-object v6, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mScData:[B

    invoke-static {v4, v5, v6}, Lcom/oppo/guobi/gbime/engine/GBApi;->loadLanguageDB(II[B)I

    move-result v1

    .line 482
    if-nez v1, :cond_0

    .line 483
    const-string v4, "GBMMIEngineInitor"

    const-string v5, "GBMMIInit:load chinese system data success"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :goto_0
    const/16 v4, 0x9

    const/4 v5, 0x0

    sget-object v6, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mEnData:[B

    invoke-static {v4, v5, v6}, Lcom/oppo/guobi/gbime/engine/GBApi;->loadLanguageDB(II[B)I

    move-result v1

    .line 504
    if-nez v1, :cond_3

    .line 505
    const-string v4, "GBMMIEngineInitor"

    const-string v5, "GBMMIInit:load english system data success"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :goto_1
    const v4, 0xe005

    const/4 v5, 0x0

    sget-object v6, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mMarsData:[B

    invoke-static {v4, v5, v6}, Lcom/oppo/guobi/gbime/engine/GBApi;->loadLanguageDB(II[B)I

    move-result v1

    .line 511
    if-nez v1, :cond_4

    .line 512
    const-string v4, "GBMMIEngineInitor"

    const-string v5, "GBMMIInit:load english system data success"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :goto_2
    invoke-static {}, Lcom/oppo/guobi/gbime/engine/GBApi;->initialize()I

    move-result v1

    .line 519
    if-nez v1, :cond_5

    .line 520
    const-string v4, "GBMMIEngineInitor"

    const-string v5, "GBMMIInit:init guobi engine success"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const/16 v4, 0x9

    const/4 v5, 0x0

    sget-object v6, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mEnUDB:[B

    invoke-static {v4, v5, v6}, Lcom/oppo/guobi/gbime/engine/GBApi;->udbAttach(II[B)I

    move-result v1

    .line 529
    if-nez v1, :cond_6

    .line 530
    const-string v4, "GBMMIEngineInitor"

    const-string v5, "GBMMIInit:load english user data success"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :goto_3
    sget-boolean v4, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mUseSimpleChn:Z

    if-eqz v4, :cond_8

    .line 538
    const-string v4, "GBMMIEngineInitor"

    const-string v5, "GBMMIInit:init engine mode to simple chinese, pinyin mode."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/oppo/guobi/gbime/engine/GBApi;->setCurLanguage(II)I

    .line 541
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/oppo/guobi/gbime/engine/GBApi;->setCurInputMode(I)I

    .line 543
    const/4 v4, 0x4

    const/4 v5, 0x0

    sget-object v6, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mScUDB:[B

    sget-object v7, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mScCnUDB:[B

    invoke-static {v4, v5, v6, v7}, Lcom/oppo/guobi/gbime/engine/GBApi;->chnudbAttach(II[B[B)I

    move-result v1

    .line 544
    const-string v4, "GBMMIEngineInitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GBMMIInit : GBApi.chnudbAttach = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    if-nez v1, :cond_7

    .line 546
    const-string v4, "GBMMIEngineInitor"

    const-string v5, "GBMMIInit:load chinese single word predict and remenber data success"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :goto_4
    invoke-static {}, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->initEngineOption()V

    .line 572
    if-nez v1, :cond_a

    .line 574
    const-string v4, "GBMMIEngineInitor"

    const-string v5, "GBMMIInit success."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    const/4 v4, 0x1

    sput-boolean v4, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mDoneChnEngineInit:Z

    .line 576
    const/4 v4, 0x1

    sput-boolean v4, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mDoneLatinEngineInit:Z

    .line 592
    :goto_5
    return v2

    .line 485
    :cond_0
    const-string v4, "GBMMIEngineInitor"

    const-string v5, "GBMMIInit:load chinese system data failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 586
    :catch_0
    move-exception v0

    .line 587
    .local v0, "exc":Ljava/lang/Exception;
    sput-boolean v3, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mDoneChnEngineInit:Z

    .line 588
    sput-boolean v3, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mDoneLatinEngineInit:Z

    .line 590
    const-string v2, "GBMMIEngineInitor"

    const-string v4, "GBMMIInit throw Exception"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v3

    .line 592
    goto :goto_5

    .line 492
    .end local v0    # "exc":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v4, "GBMMIEngineInitor"

    const-string v5, "GBMMIInit:load taiwan chinese data."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const/4 v4, 0x4

    const/4 v5, 0x0

    sget-object v6, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mTwCnData:[B

    invoke-static {v4, v5, v6}, Lcom/oppo/guobi/gbime/engine/GBApi;->loadLanguageDB(II[B)I

    move-result v1

    .line 495
    if-nez v1, :cond_2

    .line 496
    const-string v4, "GBMMIEngineInitor"

    const-string v5, "GBMMIInit:load traditional chinese system data success"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 498
    :cond_2
    const-string v4, "GBMMIEngineInitor"

    const-string v5, "GBMMIInit:load traditional chinese system data failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 507
    :cond_3
    const-string v4, "GBMMIEngineInitor"

    const-string v5, "GBMMIInit:load english system data failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 514
    :cond_4
    const-string v4, "GBMMIEngineInitor"

    const-string v5, "GBMMIInit:load english system data failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 522
    :cond_5
    const-string v2, "GBMMIEngineInitor"

    const-string v4, "GBMMIInit:init guobi engine failed"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 523
    goto :goto_5

    .line 532
    :cond_6
    const-string v4, "GBMMIEngineInitor"

    const-string v5, "GBMMIInit:load english user data failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 548
    :cond_7
    const-string v4, "GBMMIEngineInitor"

    const-string v5, "GBMMIInit:load chinese single word predict and remenber  failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 554
    :cond_8
    const-string v4, "GBMMIEngineInitor"

    const-string v5, "GBMMIInit:init engine mode to taiwan chinese, canjie mode."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/oppo/guobi/gbime/engine/GBApi;->setCurLanguage(II)I

    .line 558
    const/4 v4, 0x4

    invoke-static {v4}, Lcom/oppo/guobi/gbime/engine/GBApi;->setCurInputMode(I)I

    .line 560
    const/4 v4, 0x4

    const/4 v5, 0x0

    sget-object v6, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mTwUDB:[B

    sget-object v7, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mTwCnUDB:[B

    invoke-static {v4, v5, v6, v7}, Lcom/oppo/guobi/gbime/engine/GBApi;->chnudbAttach(II[B[B)I

    move-result v1

    .line 561
    if-nez v1, :cond_9

    .line 562
    const-string v4, "GBMMIEngineInitor"

    const-string v5, "GBMMIInit:load traditional chinese single word predict and remenber data success"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 564
    :cond_9
    const-string v4, "GBMMIEngineInitor"

    const-string v5, "GBMMIInit:load traditional chinese single word predict and remenber  failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 581
    :cond_a
    const-string v2, "GBMMIEngineInitor"

    const-string v4, "GBMMIInit failed, return false."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const/4 v2, 0x0

    sput-boolean v2, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mDoneChnEngineInit:Z

    .line 583
    const/4 v2, 0x0

    sput-boolean v2, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mDoneLatinEngineInit:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v2, v3

    .line 584
    goto/16 :goto_5
.end method

.method private static LoadData(Ljava/lang/String;Z)Z
    .locals 5
    .param p0, "appDir"    # Ljava/lang/String;
    .param p1, "fromIme"    # Z

    .prologue
    const/4 v2, 0x0

    .line 221
    const/4 v1, 0x0

    .line 222
    .local v1, "loadSystemDictsDataRes":Z
    invoke-static {}, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->loadSystemDictsData()Z

    move-result v1

    .line 223
    if-nez v1, :cond_0

    .line 225
    const-string v3, "GBMMIEngineInitor"

    const-string v4, "load system dictionaries\' data failed!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :goto_0
    return v2

    .line 230
    :cond_0
    const/4 v0, 0x0

    .line 231
    .local v0, "dataArrayCreateRes":Z
    invoke-static {}, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->createUserDictsDataBuffers()Z

    move-result v0

    .line 232
    if-nez v0, :cond_1

    .line 234
    const-string v3, "GBMMIEngineInitor"

    const-string v4, "create self make words data array failed!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 239
    :cond_1
    if-nez p1, :cond_2

    .line 241
    const/4 v2, 0x1

    goto :goto_0

    .line 245
    :cond_2
    invoke-static {p0}, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->readUserDictsData(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method private static addEndChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 832
    const-string v0, "\u0000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    .end local p0    # "str":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "str":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static addSelfMakeWord(Ljava/lang/String;)I
    .locals 7
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x2

    .line 782
    const-string v4, "GBMMIEngineInitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addLatinSelfMakeWord1:str = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    if-nez p0, :cond_0

    .line 785
    const-string v4, "GBMMIEngineInitor"

    const-string v5, "addChnSelfMakeWord:null == shWord, return false!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :goto_0
    return v3

    .line 789
    :cond_0
    const-string v4, ""

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 791
    const-string v4, "GBMMIEngineInitor"

    const-string v5, "addChnSelfMakeWord:shWord is empty, return false!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 795
    :cond_1
    invoke-static {p0}, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->addEndChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 797
    .local v1, "newString":Ljava/lang/String;
    const-string v4, "GBMMIEngineInitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addLatinSelfMakeWord:newString = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    const/4 v2, 0x0

    .line 801
    .local v2, "result":I
    const/4 v4, 0x0

    :try_start_0
    invoke-static {v1, v4}, Lcom/oppo/guobi/gbime/engine/GBApi;->udbAddPhrase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 803
    const-string v4, "GBMMIEngineInitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addChnSelfMakeWord:result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    if-nez v2, :cond_2

    .line 807
    const-string v4, "GBMMIEngineInitor"

    const-string v5, "addChnSelfMakeWord:proc ok!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    const/4 v3, 0x0

    goto :goto_0

    .line 810
    :cond_2
    const/16 v4, 0xde

    if-ne v4, v2, :cond_3

    .line 812
    const-string v4, "GBMMIEngineInitor"

    const-string v5, "addChnSelfMakeWord:the word has exist in the engine!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    const/4 v3, 0x1

    goto :goto_0

    .line 817
    :cond_3
    const-string v4, "GBMMIEngineInitor"

    const-string v5, "addChnSelfMakeWord:proc failed!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 821
    :catch_0
    move-exception v0

    .line 822
    .local v0, "error":Ljava/lang/Exception;
    const-string v4, "GBMMIEngineInitor"

    const-string v5, "addChnSelfMakeWord:proc failed!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static changeGuobiInputMode(III)Z
    .locals 11
    .param p0, "inputMode"    # I
    .param p1, "maxCnWordCountPerPage"    # I
    .param p2, "maxEnWordCountPerPage"    # I

    .prologue
    const/4 v10, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 927
    const/4 v2, 0x0

    .line 928
    .local v2, "language":I
    const/4 v4, 0x0

    .line 931
    .local v4, "subLanguage":I
    const/4 v0, -0x1

    .line 933
    .local v0, "cnType":I
    packed-switch p0, :pswitch_data_0

    .line 974
    :pswitch_0
    const-string v5, "GBMMIEngineInitor"

    const-string v7, "changeGuobiInputMode:default case, return true."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    :goto_0
    return v6

    .line 937
    :pswitch_1
    const-string v5, "GBMMIEngineInitor"

    const-string v8, "changeGuobiInputMode:pinyin"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    const/4 v2, 0x4

    .line 939
    const/4 v0, 0x0

    .line 978
    :goto_1
    const/4 v1, 0x0

    .line 979
    .local v1, "forceToInit":Z
    sget v5, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mMaxCnWordCountPerPage:I

    if-ne v5, p1, :cond_0

    sget v5, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mMaxEnWordCountPerPage:I

    if-eq v5, p2, :cond_1

    .line 982
    :cond_0
    const/4 v1, 0x1

    .line 985
    :cond_1
    const-string v5, "GBMMIEngineInitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "changeGuobiInputMode:mUseSimpleChn = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mUseSimpleChn:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", cnType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    if-nez v0, :cond_2

    sget-boolean v5, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mUseSimpleChn:Z

    if-eqz v5, :cond_4

    :cond_2
    if-ne v6, v0, :cond_3

    sget-boolean v5, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mUseSimpleChn:Z

    if-eq v6, v5, :cond_4

    :cond_3
    if-eqz v1, :cond_8

    .line 992
    :cond_4
    if-nez v0, :cond_6

    move v5, v6

    :goto_2
    sput-boolean v5, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mUseSimpleChn:Z

    .line 997
    invoke-static {}, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->resetGuobiMMIEngine()Z

    .line 1000
    invoke-static {p1, p2}, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->GBMMIInit(II)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1002
    const-string v5, "GBMMIEngineInitor"

    const-string v8, "changeGuobiInputMode:change to simple cn ok!"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    :goto_3
    invoke-static {}, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->resetGuobiMMIEngine()Z

    .line 1019
    sget-boolean v5, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mIsMarsLangueOpen:Z

    if-eqz v5, :cond_9

    .line 1021
    sget v5, Lcom/oppo/guobi/gbime/engine/GBMMIEngineFunctionConfig;->GBFO_Open_Chn_2_Mars:I

    invoke-static {v10, v5, v6}, Lcom/oppo/guobi/gbime/engine/GBApi;->setEngineOption(III)I

    .line 1032
    sget v5, Lcom/oppo/guobi/gbime/engine/GBMMIEngineFunctionConfig;->GBFO_Mars_Char_Random_Cand:I

    invoke-static {v10, v5, v7}, Lcom/oppo/guobi/gbime/engine/GBApi;->setEngineOption(III)I

    .line 1034
    sget v5, Lcom/oppo/guobi/gbime/engine/GBMMIEngineFunctionConfig;->GBFO_Mars_Word_Random_Cand:I

    invoke-static {v10, v5, v7}, Lcom/oppo/guobi/gbime/engine/GBApi;->setEngineOption(III)I

    .line 1045
    :cond_5
    :goto_4
    invoke-static {v2, v4}, Lcom/oppo/guobi/gbime/engine/GBApi;->setCurLanguage(II)I

    move-result v3

    .line 1046
    .local v3, "ret":I
    if-eqz v3, :cond_a

    .line 1048
    const-string v5, "GBMMIEngineInitor"

    const-string v6, "changeGuobiInputMode:Change input language failed, return false"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 1049
    goto :goto_0

    .line 943
    .end local v1    # "forceToInit":Z
    .end local v3    # "ret":I
    :pswitch_2
    const-string v5, "GBMMIEngineInitor"

    const-string v8, "changeGuobiInputMode:GBIM_Stroke"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    const/4 v2, 0x4

    .line 945
    const/4 v0, 0x0

    .line 946
    goto :goto_1

    .line 949
    :pswitch_3
    const-string v5, "GBMMIEngineInitor"

    const-string v8, "changeGuobiInputMode:GBIM_Predictive"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    const/16 v2, 0x9

    .line 951
    goto/16 :goto_1

    .line 954
    :pswitch_4
    const-string v5, "GBMMIEngineInitor"

    const-string v8, "changeGuobiInputMode:GBIM_Qwerty_Alphabetic"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    const/16 v2, 0x9

    .line 956
    goto/16 :goto_1

    .line 960
    :pswitch_5
    const-string v5, "GBMMIEngineInitor"

    const-string v8, "changeGuobiInputMode:zhuyin"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    const/4 v2, 0x4

    .line 963
    const/4 v0, 0x1

    .line 964
    goto/16 :goto_1

    .line 967
    :pswitch_6
    const-string v5, "GBMMIEngineInitor"

    const-string v8, "changeGuobiInputMode:canjie"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    const/4 v2, 0x4

    .line 970
    const/4 v0, 0x1

    .line 971
    goto/16 :goto_1

    .restart local v1    # "forceToInit":Z
    :cond_6
    move v5, v7

    .line 992
    goto :goto_2

    .line 1006
    :cond_7
    const-string v5, "GBMMIEngineInitor"

    const-string v8, "changeGuobiInputMode:change to simple cn failed!"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1011
    :cond_8
    const-string v5, "GBMMIEngineInitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "changeGuobiInputMode:keep previous chinese data:mUseSimpleChn = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mUseSimpleChn:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1038
    :cond_9
    sget-boolean v5, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mIsMarsLangueOpen:Z

    if-nez v5, :cond_5

    .line 1040
    sget v5, Lcom/oppo/guobi/gbime/engine/GBMMIEngineFunctionConfig;->GBFO_Open_Chn_2_Mars:I

    invoke-static {v10, v5, v7}, Lcom/oppo/guobi/gbime/engine/GBApi;->setEngineOption(III)I

    goto :goto_4

    .line 1053
    .restart local v3    # "ret":I
    :cond_a
    const-string v5, "GBMMIEngineInitor"

    const-string v8, "changeGuobiInputMode:Change input language ok."

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    invoke-static {p0}, Lcom/oppo/guobi/gbime/engine/GBApi;->setCurInputMode(I)I

    move-result v3

    .line 1058
    if-eqz v3, :cond_b

    .line 1060
    const-string v5, "GBMMIEngineInitor"

    const-string v6, "changeGuobiInputMode:Change input mode failed, return false"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    const-string v5, "GBMMIEngineInitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changeGuobiInputMode:Change input mode failed, ret = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 1062
    goto/16 :goto_0

    .line 1066
    :cond_b
    const-string v5, "GBMMIEngineInitor"

    const-string v7, "changeGuobiInputMode:Change input mode ok."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 933
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static changeSelfMakeWordTip([C[C)Z
    .locals 1
    .param p0, "beginMakeWordTip"    # [C
    .param p1, "okToAddWordTip"    # [C

    .prologue
    .line 151
    invoke-static {p0, p1}, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->setSelfMakeWordTip([C[C)V

    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method public static clearFileData(Ljava/lang/String;)Z
    .locals 6
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 907
    const/4 v2, 0x1

    .line 909
    .local v2, "ret":Z
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 910
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_1

    .line 911
    :cond_0
    const-string v3, "GBMMIEngineInitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearFileData : file is not exist or file can not wirte. path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    const/4 v3, 0x0

    .line 921
    :goto_0
    return v3

    .line 915
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 917
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_1
    move v3, v2

    .line 921
    goto :goto_0

    .line 918
    :catch_0
    move-exception v0

    .line 919
    .local v0, "exp":Ljava/lang/Exception;
    const-string v3, "GBMMIEngineInitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static clearSelfMakeWord(Ljava/lang/String;)Z
    .locals 1
    .param p0, "appDir"    # Ljava/lang/String;

    .prologue
    .line 898
    invoke-static {}, Lcom/oppo/guobi/gbime/engine/GBApi;->resetChnUDBData()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static createUserDictsDataBuffers()Z
    .locals 4

    .prologue
    const v3, 0x8000

    const/high16 v2, 0x10000

    const/4 v0, 0x0

    .line 309
    sget-object v1, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mScUDB:[B

    if-nez v1, :cond_0

    .line 311
    new-array v1, v2, [B

    sput-object v1, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mScUDB:[B

    .line 312
    sget-object v1, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mScUDB:[B

    if-nez v1, :cond_0

    .line 314
    const-string v1, "GBMMIEngineInitor"

    const-string v2, "createUserDictsDataBuffers:create mScUDB falied!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :goto_0
    return v0

    .line 320
    :cond_0
    sget-object v1, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mTwUDB:[B

    if-nez v1, :cond_1

    .line 322
    new-array v1, v2, [B

    sput-object v1, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mTwUDB:[B

    .line 323
    sget-object v1, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mTwUDB:[B

    if-nez v1, :cond_1

    .line 325
    const-string v1, "GBMMIEngineInitor"

    const-string v2, "createUserDictsDataBuffers:create mTwUDB falied!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 331
    :cond_1
    sget-object v1, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mEnUDB:[B

    if-nez v1, :cond_2

    .line 333
    new-array v1, v2, [B

    sput-object v1, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mEnUDB:[B

    .line 334
    sget-object v1, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mEnUDB:[B

    if-nez v1, :cond_2

    .line 336
    const-string v1, "GBMMIEngineInitor"

    const-string v2, "createUserDictsDataBuffers:create mEnUDB falied!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 343
    :cond_2
    sget-object v1, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mScCnUDB:[B

    if-nez v1, :cond_3

    .line 345
    new-array v1, v3, [B

    sput-object v1, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mScCnUDB:[B

    .line 346
    sget-object v1, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mScUDB:[B

    if-nez v1, :cond_3

    .line 348
    const-string v1, "GBMMIEngineInitor"

    const-string v2, "createUserDictsDataBuffers:create mScCnUDB falied!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 354
    :cond_3
    sget-object v1, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mTwCnUDB:[B

    if-nez v1, :cond_4

    .line 356
    new-array v1, v3, [B

    sput-object v1, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mTwCnUDB:[B

    .line 357
    sget-object v1, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mTwUDB:[B

    if-nez v1, :cond_4

    .line 359
    const-string v1, "GBMMIEngineInitor"

    const-string v2, "createUserDictsDataBuffers:create mTwCnUDB falied!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 365
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static deleteSelfMakeWord(Ljava/lang/String;)Z
    .locals 2
    .param p0, "shWord"    # Ljava/lang/String;

    .prologue
    .line 845
    const/4 v0, -0x1

    .line 846
    .local v0, "procResult":I
    invoke-static {p0}, Lcom/oppo/guobi/gbime/engine/GBApi;->udbDeletePhrase(Ljava/lang/String;)I

    move-result v0

    .line 847
    if-nez v0, :cond_0

    .line 849
    const/4 v1, 0x1

    .line 853
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static ensureEngineInit(Ljava/lang/String;Z)Z
    .locals 5
    .param p0, "appDir"    # Ljava/lang/String;
    .param p1, "fromIme"    # Z

    .prologue
    const/4 v4, 0x6

    const/4 v1, 0x1

    .line 758
    sget-boolean v2, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mDoneLatinEngineInit:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mDoneChnEngineInit:Z

    if-nez v2, :cond_1

    .line 760
    :cond_0
    const-string v2, "GBMMIEngineInitor"

    const-string v3, "ensureEngineInit: need to init engine first. Now init...."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const/4 v0, 0x7

    .line 762
    .local v0, "chnDataLen":I
    invoke-static {v0}, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->setChnDataLen(I)V

    .line 763
    invoke-static {p0, p1, v4, v4}, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->initGuobiMMIEngine(Ljava/lang/String;ZII)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 766
    const-string v2, "GBMMIEngineInitor"

    const-string v3, "ensureEngineInit:init engine ok!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    .end local v0    # "chnDataLen":I
    :cond_1
    :goto_0
    return v1

    .line 771
    .restart local v0    # "chnDataLen":I
    :cond_2
    const-string v1, "GBMMIEngineInitor"

    const-string v2, "ensureEngineInit:init engine failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static initEngineOption()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 601
    sget v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineChineseConfig;->GBCFG_SET_STROKE_WILDCHAR_SHOW:I

    const/16 v1, 0x2a

    invoke-static {v4, v0, v1}, Lcom/oppo/guobi/gbime/engine/GBApi;->setEngineOption(III)I

    .line 603
    sget v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineChineseConfig;->GBCFG_ASSOCIATE_INTEPCT:I

    invoke-static {v4, v0, v2}, Lcom/oppo/guobi/gbime/engine/GBApi;->setEngineOption(III)I

    .line 605
    sget v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineChineseConfig;->GBCFG_TRANSLATE_INPUT_STRING:I

    invoke-static {v4, v0, v2}, Lcom/oppo/guobi/gbime/engine/GBApi;->setEngineOption(III)I

    .line 607
    sget v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineChineseConfig;->GBCFG_OUT_ZI_SYLLABLE:I

    invoke-static {v4, v0, v2}, Lcom/oppo/guobi/gbime/engine/GBApi;->setEngineOption(III)I

    .line 609
    sget v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineAlphabeticConfig;->GBALP_INPUTSTRING_IS_FIRST_CANDIDATE:I

    invoke-static {v2, v0, v2}, Lcom/oppo/guobi/gbime/engine/GBApi;->setEngineOption(III)I

    .line 611
    sget v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineAlphabeticConfig;->GBALP_FIRST_KEY_ASSOC:I

    invoke-static {v2, v0, v2}, Lcom/oppo/guobi/gbime/engine/GBApi;->setEngineOption(III)I

    .line 613
    sget v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineAlphabeticConfig;->GBALP_SET_AVOID_PATENT_SYMBOL:I

    invoke-static {v2, v0, v2}, Lcom/oppo/guobi/gbime/engine/GBApi;->setEngineOption(III)I

    .line 615
    sget v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineFunctionConfig;->GBFO_Alp_UAW_Confirm:I

    invoke-static {v3, v0, v2}, Lcom/oppo/guobi/gbime/engine/GBApi;->setEngineOption(III)I

    .line 617
    sget v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineFunctionConfig;->GBFO_Alp_Paging_By_Lower:I

    invoke-static {v3, v0, v2}, Lcom/oppo/guobi/gbime/engine/GBApi;->setEngineOption(III)I

    .line 619
    sget v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineAlphabeticConfig;->GBALP_CLOSE_AVOID_PATENT:I

    invoke-static {v2, v0, v2}, Lcom/oppo/guobi/gbime/engine/GBApi;->setEngineOption(III)I

    .line 621
    sget v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineFunctionConfig;->GBFO_Alp_Get_Only_Lower:I

    invoke-static {v3, v0, v2}, Lcom/oppo/guobi/gbime/engine/GBApi;->setEngineOption(III)I

    .line 623
    sget v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineFunctionConfig;->GBFO_Alp_UAW:I

    invoke-static {v3, v0, v2}, Lcom/oppo/guobi/gbime/engine/GBApi;->setEngineOption(III)I

    .line 625
    sget v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineFunctionConfig;->GBFO_Alp_Open_Associat:I

    invoke-static {v3, v0, v2}, Lcom/oppo/guobi/gbime/engine/GBApi;->setEngineOption(III)I

    .line 627
    sget v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineFunctionConfig;->GBFO_Alp_UAW_Support_Tchscr:I

    invoke-static {v3, v0, v2}, Lcom/oppo/guobi/gbime/engine/GBApi;->setEngineOption(III)I

    .line 629
    return-void
.end method

.method public static initGuobiMMIEngine(Ljava/lang/String;ZII)Z
    .locals 3
    .param p0, "appDir"    # Ljava/lang/String;
    .param p1, "fromIme"    # Z
    .param p2, "maxCnWordCountPerPage"    # I
    .param p3, "maxEnWordCountPerPage"    # I

    .prologue
    const/4 v0, 0x0

    .line 167
    if-nez p0, :cond_0

    .line 169
    const-string v1, "GBMMIEngineInitor"

    const-string v2, "null == appDir, return false"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :goto_0
    return v0

    .line 172
    :cond_0
    invoke-static {p0, p1}, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->LoadData(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 174
    const-string v1, "GBMMIEngineInitor"

    const-string v2, "load date failed, return false"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 178
    :cond_1
    invoke-static {p2, p3}, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->GBMMIInit(II)Z

    move-result v1

    if-nez v1, :cond_2

    .line 180
    const-string v1, "GBMMIEngineInitor"

    const-string v2, "call GBMMIInit() failed, return false"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 184
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static loadSystemDictsData()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 250
    new-instance v0, Landroid/content/res/AssetManager;

    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    .line 252
    .local v0, "amToLoadInvariableDictionary":Landroid/content/res/AssetManager;
    sget-boolean v3, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mLoadSystemDictsFlag:Z

    if-nez v3, :cond_4

    .line 254
    const-string v3, "guobi/gb_sc.ebd"

    invoke-static {v0, v3}, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->readData(Landroid/content/res/AssetManager;Ljava/lang/String;)[B

    move-result-object v3

    sput-object v3, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mScData:[B

    .line 255
    sget-object v3, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mScData:[B

    if-nez v3, :cond_0

    .line 257
    const-string v2, "GBMMIEngineInitor"

    const-string v3, "load system dict failed, dictName = guobi/gb_sc.ebd"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :goto_0
    return v1

    .line 262
    :cond_0
    const-string v3, "GBMMIEngineInitor"

    const-string v4, "load system dict success, dictName = guobi/gb_sc.ebd"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const-string v3, "guobi/gb_tc.ebd"

    invoke-static {v0, v3}, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->readData(Landroid/content/res/AssetManager;Ljava/lang/String;)[B

    move-result-object v3

    sput-object v3, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mTwCnData:[B

    .line 267
    sget-object v3, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mTwCnData:[B

    if-nez v3, :cond_1

    .line 269
    const-string v2, "GBMMIEngineInitor"

    const-string v3, "load system dict failed, dictName = guobi/gb_tc.ebd"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 274
    :cond_1
    const-string v3, "GBMMIEngineInitor"

    const-string v4, "load system dict success, dictName = guobi/gb_tc.ebd"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const-string v3, "guobi/gb_en.ebd"

    invoke-static {v0, v3}, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->readData(Landroid/content/res/AssetManager;Ljava/lang/String;)[B

    move-result-object v3

    sput-object v3, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mEnData:[B

    .line 279
    sget-object v3, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mEnData:[B

    if-nez v3, :cond_2

    .line 281
    const-string v2, "GBMMIEngineInitor"

    const-string v3, "load system dict failed, dictName = guobi/gb_en.ebd"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 286
    :cond_2
    const-string v3, "GBMMIEngineInitor"

    const-string v4, "load system dict success, dictName = guobi/gb_en.ebd"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const-string v3, "guobi/gb_mars.ebd"

    invoke-static {v0, v3}, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->readData(Landroid/content/res/AssetManager;Ljava/lang/String;)[B

    move-result-object v3

    sput-object v3, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mMarsData:[B

    .line 291
    sget-object v3, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mMarsData:[B

    if-nez v3, :cond_3

    .line 293
    const-string v2, "GBMMIEngineInitor"

    const-string v3, "load system dict failed, dictName = guobi/gb_mars.ebd"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 298
    :cond_3
    const-string v1, "GBMMIEngineInitor"

    const-string v3, "load system dict success, dictName = guobi/gb_mars.ebd"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    sput-boolean v2, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mLoadSystemDictsFlag:Z

    :cond_4
    move v1, v2

    .line 303
    goto :goto_0
.end method

.method private static readData(Landroid/content/res/AssetManager;Ljava/lang/String;)[B
    .locals 8
    .param p0, "am"    # Landroid/content/res/AssetManager;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 645
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 646
    .local v2, "is":Ljava/io/InputStream;
    if-nez v2, :cond_0

    .line 648
    const-string v5, "GBMMIEngineInitor"

    const-string v6, "read Data! open fail 1!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 680
    .end local v2    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v0

    .line 652
    .restart local v2    # "is":Ljava/io/InputStream;
    :cond_0
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    .line 653
    .local v3, "length":I
    if-gtz v3, :cond_1

    .line 655
    const-string v5, "GBMMIEngineInitor"

    const-string v6, "read Data! open fail 2!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 656
    goto :goto_0

    .line 659
    :cond_1
    new-array v0, v3, [B

    .line 660
    .local v0, "buf":[B
    if-nez v0, :cond_2

    .line 662
    const-string v5, "GBMMIEngineInitor"

    const-string v6, "read Data! open fail 3!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 663
    goto :goto_0

    .line 666
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    .line 668
    const-string v5, "GBMMIEngineInitor"

    const-string v6, "read Data! open fail 4!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 669
    goto :goto_0

    .line 672
    :cond_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 674
    .end local v0    # "buf":[B
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "length":I
    :catch_0
    move-exception v1

    .line 675
    .local v1, "ex":Ljava/lang/Exception;
    const-string v5, "GBMMIEngineInitor"

    const-string v6, "read Data! open fail 5!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    const-string v5, "GBMMIEngineInitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " ex  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 677
    goto :goto_0
.end method

.method private static readDataFromApkFile(Ljava/lang/String;[B)Z
    .locals 7
    .param p0, "entireFileName"    # Ljava/lang/String;
    .param p1, "dst"    # [B

    .prologue
    const/4 v3, 0x0

    .line 419
    if-nez p0, :cond_0

    .line 421
    const-string v4, "GBMMIEngineInitor"

    const-string v5, "readDataFormApkFile:null == entireFileName"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :goto_0
    return v3

    .line 424
    :cond_0
    if-eqz p1, :cond_1

    array-length v4, p1

    if-gtz v4, :cond_2

    .line 426
    :cond_1
    const-string v4, "GBMMIEngineInitor"

    const-string v5, "readDataFormApkFile:null == dst || dst.length <= 0"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 430
    :cond_2
    const/4 v2, 0x0

    .line 432
    .local v2, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 433
    .local v0, "dataFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 435
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 437
    :cond_3
    new-instance v2, Ljava/io/FileInputStream;

    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    if-nez v2, :cond_4

    .line 445
    const-string v4, "GBMMIEngineInitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load file failed, return false. fileName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 438
    .end local v0    # "dataFile":Ljava/io/File;
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 439
    .local v1, "exc":Ljava/lang/Exception;
    const-string v4, "GBMMIEngineInitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load file failed, return false. fileName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const-string v4, "GBMMIEngineInitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exc = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 450
    .end local v1    # "exc":Ljava/lang/Exception;
    .restart local v0    # "dataFile":Ljava/io/File;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    :cond_4
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/FileInputStream;->read([B)I

    .line 451
    const-string v4, "GBMMIEngineInitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load file success, fileName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 453
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 461
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 453
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    throw v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 455
    :catch_1
    move-exception v1

    .line 456
    .local v1, "exc":Ljava/io/IOException;
    const-string v4, "GBMMIEngineInitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load file failed, return false. fileName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const-string v4, "GBMMIEngineInitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private static readUserDictsData(Ljava/lang/String;)Z
    .locals 4
    .param p0, "appDir"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 370
    const/4 v0, 0x0

    .line 372
    .local v0, "readRes":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "chn.udb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mScUDB:[B

    invoke-static {v2, v3}, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->readDataFromApkFile(Ljava/lang/String;[B)Z

    move-result v0

    .line 373
    if-nez v0, :cond_0

    .line 375
    const-string v2, "GBMMIEngineInitor"

    const-string v3, "read simple chinese user dictionary failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :goto_0
    return v1

    .line 380
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "tw_chn.udb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mTwUDB:[B

    invoke-static {v2, v3}, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->readDataFromApkFile(Ljava/lang/String;[B)Z

    move-result v0

    .line 381
    if-nez v0, :cond_1

    .line 383
    const-string v2, "GBMMIEngineInitor"

    const-string v3, "read taiWan chinese user dictionary failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 388
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "en.udb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mEnUDB:[B

    invoke-static {v2, v3}, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->readDataFromApkFile(Ljava/lang/String;[B)Z

    move-result v0

    .line 389
    if-nez v0, :cond_2

    .line 391
    const-string v2, "GBMMIEngineInitor"

    const-string v3, "read english user dictionary failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 397
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "chn.cnudb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mScCnUDB:[B

    invoke-static {v2, v3}, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->readDataFromApkFile(Ljava/lang/String;[B)Z

    move-result v0

    .line 398
    if-nez v0, :cond_3

    .line 400
    const-string v2, "GBMMIEngineInitor"

    const-string v3, "read simple chinese user dictionary failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 405
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "tw_chn.cnudb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mTwCnUDB:[B

    invoke-static {v2, v3}, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->readDataFromApkFile(Ljava/lang/String;[B)Z

    move-result v0

    .line 406
    if-nez v0, :cond_4

    .line 408
    const-string v2, "GBMMIEngineInitor"

    const-string v3, "read taiWan chinese user dictionary failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 413
    :cond_4
    const-string v1, "GBMMIEngineInitor"

    const-string v2, "read user dictionary ok!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public static resetGuobiMMIEngine()Z
    .locals 3

    .prologue
    .line 204
    invoke-static {}, Lcom/oppo/guobi/gbime/engine/GBApi;->reset()I

    move-result v0

    .line 205
    .local v0, "ret":I
    if-nez v0, :cond_0

    .line 206
    const-string v1, "GBMMIEngineInitor"

    const-string v2, "resetGuobiMMIEngine: success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/4 v1, 0x1

    .line 210
    :goto_0
    return v1

    .line 209
    :cond_0
    const-string v1, "GBMMIEngineInitor"

    const-string v2, "resetGuobiMMIEngine: failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static saveData(Ljava/lang/String;[B)Z
    .locals 6
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .prologue
    const/4 v3, 0x0

    .line 691
    const/4 v1, 0x0

    .line 694
    .local v1, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    .end local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v2, "fileOutputStream":Ljava/io/FileOutputStream;
    if-nez v2, :cond_0

    move-object v1, v2

    .line 713
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_0
    return v3

    .line 695
    :catch_0
    move-exception v0

    .line 696
    .local v0, "exc":Ljava/io/FileNotFoundException;
    goto :goto_0

    .line 706
    .end local v0    # "exc":Ljava/io/FileNotFoundException;
    .end local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    array-length v5, p1

    invoke-virtual {v2, p1, v4, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 708
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 713
    const/4 v3, 0x1

    move-object v1, v2

    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 708
    .end local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    throw v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 710
    :catch_1
    move-exception v0

    .local v0, "exc":Ljava/io/IOException;
    move-object v1, v2

    .line 711
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method public static saveSelfMakedWordsDate(Ljava/lang/String;)Z
    .locals 3
    .param p0, "appDir"    # Ljava/lang/String;

    .prologue
    .line 721
    const/4 v0, 0x1

    .line 724
    .local v0, "ret":Z
    sget-object v1, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mScUDB:[B

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "chn.udb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mScUDB:[B

    invoke-static {v1, v2}, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->saveData(Ljava/lang/String;[B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 725
    :cond_0
    const/4 v0, 0x0

    .line 729
    :cond_1
    sget-object v1, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mScCnUDB:[B

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "chn.cnudb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mScCnUDB:[B

    invoke-static {v1, v2}, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->saveData(Ljava/lang/String;[B)Z

    move-result v1

    if-nez v1, :cond_3

    .line 730
    :cond_2
    const/4 v0, 0x0

    .line 734
    :cond_3
    sget-object v1, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mTwUDB:[B

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "tw_chn.udb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mTwUDB:[B

    invoke-static {v1, v2}, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->saveData(Ljava/lang/String;[B)Z

    move-result v1

    if-nez v1, :cond_5

    .line 735
    :cond_4
    const/4 v0, 0x0

    .line 739
    :cond_5
    sget-object v1, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mTwCnUDB:[B

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "tw_chn.cnudb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mTwCnUDB:[B

    invoke-static {v1, v2}, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->saveData(Ljava/lang/String;[B)Z

    move-result v1

    if-nez v1, :cond_7

    .line 740
    :cond_6
    const/4 v0, 0x0

    .line 744
    :cond_7
    sget-object v1, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mEnUDB:[B

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "en.udb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mEnUDB:[B

    invoke-static {v1, v2}, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->saveData(Ljava/lang/String;[B)Z

    move-result v1

    if-nez v1, :cond_9

    .line 745
    :cond_8
    const/4 v0, 0x0

    .line 747
    :cond_9
    return v0
.end method

.method public static setChnDataLen(I)V
    .locals 0
    .param p0, "value"    # I

    .prologue
    .line 115
    sput p0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mChnDataLen:I

    .line 116
    return-void
.end method

.method public static setEngineChnType(Z)V
    .locals 0
    .param p0, "isSimpleChn"    # Z

    .prologue
    .line 106
    sput-boolean p0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mUseSimpleChn:Z

    .line 107
    return-void
.end method

.method public static setLoadSystemDictFlag(Z)V
    .locals 0
    .param p0, "flag"    # Z

    .prologue
    .line 100
    sput-boolean p0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mLoadSystemDictsFlag:Z

    .line 101
    return-void
.end method

.method public static setMarsLangueOpen(Z)V
    .locals 0
    .param p0, "isOpen"    # Z

    .prologue
    .line 93
    sput-boolean p0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->mIsMarsLangueOpen:Z

    .line 94
    return-void
.end method

.method public static setSelfMakeWordTip([C[C)V
    .locals 3
    .param p0, "beginMakeWordTip"    # [C
    .param p1, "okToAddWordTip"    # [C

    .prologue
    const/4 v2, 0x0

    .line 125
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_2

    .line 127
    :cond_0
    sget-object v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->strBeginMakeWordDefaultTip:[C

    sput-object v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->strBeginMakeWord:[C

    .line 136
    :goto_0
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_3

    .line 138
    :cond_1
    sget-object v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->strOkToAddMakeWordDefaultTip:[C

    sput-object v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->strOkToAddMakeWord:[C

    .line 146
    :goto_1
    return-void

    .line 131
    :cond_2
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [C

    sput-object v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->strBeginMakeWord:[C

    .line 132
    sget-object v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->strBeginMakeWord:[C

    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 133
    sget-object v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->strBeginMakeWord:[C

    array-length v1, p0

    aput-char v2, v0, v1

    goto :goto_0

    .line 142
    :cond_3
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [C

    sput-object v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->strOkToAddMakeWord:[C

    .line 143
    sget-object v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->strOkToAddMakeWord:[C

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 144
    sget-object v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineInitor;->strOkToAddMakeWord:[C

    array-length v1, p1

    aput-char v2, v0, v1

    goto :goto_1
.end method

.method public static shutDownGuobiMMIEngine()Z
    .locals 3

    .prologue
    .line 191
    invoke-static {}, Lcom/oppo/guobi/gbime/engine/GBApi;->reset()I

    move-result v0

    .line 192
    .local v0, "ret":I
    if-nez v0, :cond_0

    .line 193
    const-string v1, "GBMMIEngineInitor"

    const-string v2, "shutDownGuobiMMIEngine: success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v1, 0x1

    .line 197
    :goto_0
    return v1

    .line 196
    :cond_0
    const-string v1, "GBMMIEngineInitor"

    const-string v2, "shutDownGuobiMMIEngine: failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v1, 0x0

    goto :goto_0
.end method
