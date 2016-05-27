.class public Lcom/oppo/guobi/gbime/engine/GBMMIEngineChineseConfig;
.super Ljava/lang/Object;
.source "GBMMIEngineChineseConfig.java"


# static fields
.field public static GBCFG_ADD_TRANSLATE_INPUT_STRING_TO_SYLLABLE:I

.field public static GBCFG_ASSOCIATE_HIGH_FREQ:I

.field public static GBCFG_ASSOCIATE_INTEPCT:I

.field public static GBCFG_ASSOC_NOT_FILL_HIGHEST_FREQ_WORD:I

.field public static GBCFG_AUTO_JIANPIN:I

.field public static GBCFG_CHARSET_SET:I

.field public static GBCFG_CLOSE_ASSOC_PHRASE:I

.field public static GBCFG_CLOSE_COMPONENT:I

.field public static GBCFG_CLOSE_PHRASE:I

.field public static GBCFG_FIND_ONLY_FULL_MATCHING:I

.field public static GBCFG_FIRST_PAGE_ADD_PHRASE:I

.field public static GBCFG_INIT_GET_HIGHEST_FREQ_WORD:I

.field public static GBCFG_NOT_ALLOW_USELESS_STROKE:I

.field public static GBCFG_ONLY_ENTIRE_PHRASE_CAND:I

.field public static GBCFG_OUT_ZI_SYLLABLE:I

.field public static GBCFG_PINYIN_FUZZY_H_F:I

.field public static GBCFG_PINYIN_FUZZY_K_G:I

.field public static GBCFG_PINYIN_FUZZY_NG_N:I

.field public static GBCFG_PINYIN_FUZZY_N_L:I

.field public static GBCFG_PINYIN_FUZZY_R_L:I

.field public static GBCFG_PINYIN_FUZZY_XH_X:I

.field public static GBCFG_PY_1_MATCH_FUNC:I

.field public static GBCFG_SET_FIRST_CANDIDATE:I

.field public static GBCFG_SET_JP_MAX_TAIL_MATCH_COUNT:I

.field public static GBCFG_SET_PHRASE_LEN_LIMIT:I

.field public static GBCFG_SET_PHRASE_SPLIT_CHAR:I

.field public static GBCFG_SET_STROKE_WILDCARD_CHAR:I

.field public static GBCFG_SET_STROKE_WILDCHAR_SHOW:I

.field public static GBCFG_SPLIT_ACC_SYLLABLE:I

.field public static GBCFG_SYNTAX:I

.field public static GBCFG_TAIL_ACC_MATCH:I

.field public static GBCFG_TRANSLATE_INPUT_STRING:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const/16 v0, 0x8

    sput v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineChineseConfig;->GBCFG_PINYIN_FUZZY_H_F:I

    .line 7
    const/16 v0, 0x10

    sput v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineChineseConfig;->GBCFG_PINYIN_FUZZY_N_L:I

    .line 8
    const/16 v0, 0x20

    sput v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineChineseConfig;->GBCFG_PINYIN_FUZZY_NG_N:I

    .line 9
    const/16 v0, 0x40

    sput v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineChineseConfig;->GBCFG_PINYIN_FUZZY_XH_X:I

    .line 10
    const/16 v0, 0x80

    sput v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineChineseConfig;->GBCFG_PINYIN_FUZZY_K_G:I

    .line 14
    const/16 v0, 0x100

    sput v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineChineseConfig;->GBCFG_CLOSE_PHRASE:I

    .line 16
    const/16 v0, 0x200

    sput v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineChineseConfig;->GBCFG_PY_1_MATCH_FUNC:I

    .line 18
    const/16 v0, 0x400

    sput v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineChineseConfig;->GBCFG_ONLY_ENTIRE_PHRASE_CAND:I

    .line 20
    const/16 v0, 0x800

    sput v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineChineseConfig;->GBCFG_SYNTAX:I

    .line 22
    const/16 v0, 0x1000

    sput v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineChineseConfig;->GBCFG_FIRST_PAGE_ADD_PHRASE:I

    .line 24
    const/16 v0, 0x2000

    sput v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineChineseConfig;->GBCFG_SET_FIRST_CANDIDATE:I

    .line 27
    const/16 v0, 0x4000

    sput v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineChineseConfig;->GBCFG_CHARSET_SET:I

    .line 31
    const/16 v0, 0x4001

    sput v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineChineseConfig;->GBCFG_SET_PHRASE_SPLIT_CHAR:I

    .line 35
    const/16 v0, 0x4002

    sput v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineChineseConfig;->GBCFG_SET_STROKE_WILDCARD_CHAR:I

    .line 38
    const/16 v0, 0x4003

    sput v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineChineseConfig;->GBCFG_SET_STROKE_WILDCHAR_SHOW:I

    .line 48
    const v0, 0x8000

    sput v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineChineseConfig;->GBCFG_PINYIN_FUZZY_R_L:I

    .line 51
    const/high16 v0, 0x10000

    sput v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineChineseConfig;->GBCFG_INIT_GET_HIGHEST_FREQ_WORD:I

    .line 54
    const/high16 v0, 0x20000

    sput v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineChineseConfig;->GBCFG_ASSOC_NOT_FILL_HIGHEST_FREQ_WORD:I

    .line 57
    const/high16 v0, 0x40000

    sput v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineChineseConfig;->GBCFG_NOT_ALLOW_USELESS_STROKE:I

    .line 60
    const/high16 v0, 0x80000

    sput v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineChineseConfig;->GBCFG_CLOSE_ASSOC_PHRASE:I

    .line 63
    const/high16 v0, 0x100000

    sput v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineChineseConfig;->GBCFG_FIND_ONLY_FULL_MATCHING:I

    .line 66
    const/high16 v0, 0x200000

    sput v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineChineseConfig;->GBCFG_ASSOCIATE_INTEPCT:I

    .line 68
    const/high16 v0, 0x400000

    sput v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineChineseConfig;->GBCFG_TRANSLATE_INPUT_STRING:I

    .line 71
    const/high16 v0, 0x800000

    sput v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineChineseConfig;->GBCFG_OUT_ZI_SYLLABLE:I

    .line 74
    const/high16 v0, 0x1000000

    sput v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineChineseConfig;->GBCFG_CLOSE_COMPONENT:I

    .line 77
    const/high16 v0, 0x2000000

    sput v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineChineseConfig;->GBCFG_ADD_TRANSLATE_INPUT_STRING_TO_SYLLABLE:I

    .line 80
    const/high16 v0, 0x4000000

    sput v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineChineseConfig;->GBCFG_ASSOCIATE_HIGH_FREQ:I

    .line 85
    const/high16 v0, 0x8000000

    sput v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineChineseConfig;->GBCFG_AUTO_JIANPIN:I

    .line 89
    const/high16 v0, 0x10000000

    sput v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineChineseConfig;->GBCFG_SPLIT_ACC_SYLLABLE:I

    .line 91
    const/high16 v0, 0x20000000

    sput v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineChineseConfig;->GBCFG_TAIL_ACC_MATCH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
