.class public Lcom/oppo/guobi/gbime/engine/GBMMIEngineAlphabeticConfig;
.super Ljava/lang/Object;
.source "GBMMIEngineAlphabeticConfig.java"


# static fields
.field public static GBALP_ASSOC_NO_DERIVE:I

.field public static GBALP_AUTO_CORRECTION:I

.field public static GBALP_CLOSE_AUTO_COMPLETION:I

.field public static GBALP_CLOSE_AVOID_PATENT:I

.field public static GBALP_CUSTOM_SYMBOL_TABLE:I

.field public static GBALP_FIRST_KEY_ASSOC:I

.field public static GBALP_INPUTSTRING_IS_FIRST_CANDIDATE:I

.field public static GBALP_KEEP_ALL_HEADER:I

.field public static GBALP_QWERTY_OUTPUT_DEFAULT_STRING:I

.field public static GBALP_SET_AVOID_PATENT_SYMBOL:I

.field public static GBALP_SET_EMBEDDED_INTERPUNCTION_KEY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const/16 v0, 0x10

    sput v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineAlphabeticConfig;->GBALP_AUTO_CORRECTION:I

    .line 7
    const/16 v0, 0x20

    sput v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineAlphabeticConfig;->GBALP_CLOSE_AUTO_COMPLETION:I

    .line 8
    const/16 v0, 0x40

    sput v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineAlphabeticConfig;->GBALP_INPUTSTRING_IS_FIRST_CANDIDATE:I

    .line 9
    const/16 v0, 0x80

    sput v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineAlphabeticConfig;->GBALP_QWERTY_OUTPUT_DEFAULT_STRING:I

    .line 10
    const/16 v0, 0x100

    sput v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineAlphabeticConfig;->GBALP_FIRST_KEY_ASSOC:I

    .line 12
    const/16 v0, 0x200

    sput v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineAlphabeticConfig;->GBALP_ASSOC_NO_DERIVE:I

    .line 14
    const/16 v0, 0x400

    sput v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineAlphabeticConfig;->GBALP_KEEP_ALL_HEADER:I

    .line 17
    const/16 v0, 0x800

    sput v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineAlphabeticConfig;->GBALP_SET_AVOID_PATENT_SYMBOL:I

    .line 20
    const/16 v0, 0x1000

    sput v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineAlphabeticConfig;->GBALP_CUSTOM_SYMBOL_TABLE:I

    .line 23
    const/16 v0, 0x2000

    sput v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineAlphabeticConfig;->GBALP_SET_EMBEDDED_INTERPUNCTION_KEY:I

    .line 26
    const/16 v0, 0x4000

    sput v0, Lcom/oppo/guobi/gbime/engine/GBMMIEngineAlphabeticConfig;->GBALP_CLOSE_AVOID_PATENT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
