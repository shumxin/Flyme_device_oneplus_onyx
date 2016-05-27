.class public final Lcom/oppo/util/OppoAnimSynthesisNumber;
.super Ljava/lang/Object;
.source "OppoAnimSynthesisNumber.java"


# static fields
.field private static final BDEBUG:Z

.field private static final TAG:Ljava/lang/String; = "OppoAnimSynthesisNumber"

.field private static mFlagSynthesis:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    const-string v0, "persist.sys.assert.panic"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oppo/util/OppoAnimSynthesisNumber;->BDEBUG:Z

    .line 22
    sput v1, Lcom/oppo/util/OppoAnimSynthesisNumber;->mFlagSynthesis:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static getHighDigit(I)I
    .locals 1
    .param p0, "synthesis"    # I

    .prologue
    .line 34
    invoke-static {p0}, Lcom/oppo/util/OppoAnimSynthesisNumber;->isSynthesisNumber(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    shr-int/lit8 v0, p0, 0xc

    and-int/lit16 p0, v0, 0xfff

    .line 37
    .end local p0    # "synthesis":I
    :cond_0
    return p0
.end method

.method public static getLowerDigit(I)I
    .locals 1
    .param p0, "synthesis"    # I

    .prologue
    .line 42
    invoke-static {p0}, Lcom/oppo/util/OppoAnimSynthesisNumber;->isSynthesisNumber(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    and-int/lit16 p0, p0, 0xfff

    .line 45
    .end local p0    # "synthesis":I
    :cond_0
    return p0
.end method

.method public static getSynthesisNumber(II)I
    .locals 4
    .param p0, "high"    # I
    .param p1, "lower"    # I

    .prologue
    .line 28
    sget-boolean v1, Lcom/oppo/util/OppoAnimSynthesisNumber;->BDEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "OppoAnimSynthesisNumber"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSynthesisNumber high = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " lower = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_0
    and-int/lit16 v1, p1, 0xfff

    shl-int/lit8 v2, p0, 0xc

    const v3, 0xfff000

    and-int/2addr v2, v3

    add-int v0, v1, v2

    .line 30
    .local v0, "result":I
    return v0
.end method

.method public static isSynthesisNumber(I)Z
    .locals 3
    .param p0, "synthesis"    # I

    .prologue
    const/4 v0, 0x0

    .line 50
    if-nez p0, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v0

    .line 53
    :cond_1
    sget v1, Lcom/oppo/util/OppoAnimSynthesisNumber;->mFlagSynthesis:I

    const/high16 v2, -0x1000000

    and-int/2addr v2, p0

    if-ne v1, v2, :cond_0

    .line 54
    const/4 v0, 0x1

    goto :goto_0
.end method
