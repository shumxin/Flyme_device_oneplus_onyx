.class public Landroid/text/OppoStaticLayout;
.super Landroid/text/StaticLayout;
.source "OppoStaticLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/OppoStaticLayout$Injector;
    }
.end annotation


# static fields
.field private static final CHAR_COLON:C = ':'

.field private static final CHAR_COMMA:C = ','

.field private static final CHAR_DOT:C = '.'

.field private static final CHAR_FIRST_CJK:C = '\u2e80'

.field private static final CHAR_FIRST_HIGH_SURROGATE:I = 0xd800

.field private static final CHAR_HYPHEN:C = '-'

.field private static final CHAR_LAST_LOW_SURROGATE:I = 0xdfff

.field private static final CHAR_NEW_LINE:C = '\n'

.field private static final CHAR_SEMICOLON:C = ';'

.field private static final CHAR_SLASH:C = '/'

.field private static final CHAR_SPACE:C = ' '

.field private static final CHAR_TAB:C = '\t'

.field private static final CHAR_ZWSP:C = '\u200b'

.field private static final COLUMNS_ELLIPSIZE:I = 0x5

.field private static final COLUMNS_NORMAL:I = 0x3

.field private static final DEBUG:Z = false

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x4

.field private static final ELLIPSIS_NORMAL:[C

.field private static final ELLIPSIS_START:I = 0x3

.field private static final ELLIPSIS_TWO_DOTS:[C

.field private static final EXTRA_ROUNDING:D = 0.5

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_INCREMENT:I = 0x14

.field private static final TAB_MASK:I = 0x20000000

.field private static final TAG:Ljava/lang/String; = "StaticLayout"

.field private static final TOP:I = 0x1


# instance fields
.field private currentline:Ljava/lang/String;

.field private mBottomPadding:I

.field private mColumns:I

.field private mEllipsizedWidth:I

.field private mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field private mLineCount:I

.field private mLineDirections:[Landroid/text/Layout$Directions;

.field private mLines:[I

.field private mMaximumVisibleLineCount:I

.field private mMeasured:Landroid/text/MeasuredText;

.field private mTopPadding:I

.field private nextline:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-array v0, v3, [C

    const/16 v1, 0x2026

    aput-char v1, v0, v2

    sput-object v0, Landroid/text/OppoStaticLayout;->ELLIPSIS_NORMAL:[C

    .line 43
    new-array v0, v3, [C

    const/16 v1, 0x2025

    aput-char v1, v0, v2

    sput-object v0, Landroid/text/OppoStaticLayout;->ELLIPSIS_TWO_DOTS:[C

    .line 113
    const-string/jumbo v0, "thwsplit"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 216
    invoke-direct {p0, p1}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;)V

    .line 1175
    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/OppoStaticLayout;->mMaximumVisibleLineCount:I

    .line 1201
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroid/text/OppoStaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 218
    const/4 v0, 0x5

    iput v0, p0, Landroid/text/OppoStaticLayout;->mColumns:I

    .line 226
    const-class v0, Landroid/text/Layout$Directions;

    iget v1, p0, Landroid/text/OppoStaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/OppoStaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 227
    iget-object v0, p0, Landroid/text/OppoStaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/OppoStaticLayout;->mLines:[I

    .line 231
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/OppoStaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 232
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 12
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z

    .prologue
    .line 140
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Landroid/text/OppoStaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 142
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 14
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z
    .param p10, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p11, "ellipsizedWidth"    # I

    .prologue
    .line 157
    sget-object v7, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v13}, Landroid/text/OppoStaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 160
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 14
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p8, "spacingmult"    # F
    .param p9, "spacingadd"    # F
    .param p10, "includepad"    # Z

    .prologue
    .line 150
    const/4 v11, 0x0

    const/4 v12, 0x0

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v13}, Landroid/text/OppoStaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 152
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V
    .locals 15
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p8, "spacingmult"    # F
    .param p9, "spacingadd"    # F
    .param p10, "includepad"    # Z
    .param p11, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p12, "ellipsizedWidth"    # I
    .param p13, "maxLines"    # I

    .prologue
    .line 169
    invoke-direct/range {p0 .. p13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 1175
    const v1, 0x7fffffff

    iput v1, p0, Landroid/text/OppoStaticLayout;->mMaximumVisibleLineCount:I

    .line 1201
    new-instance v1, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v1}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v1, p0, Landroid/text/OppoStaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 180
    if-eqz p11, :cond_0

    .line 181
    invoke-virtual {p0}, Landroid/text/OppoStaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    check-cast v14, Landroid/text/Layout$Ellipsizer;

    .line 183
    .local v14, "e":Landroid/text/Layout$Ellipsizer;
    iput-object p0, v14, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 184
    move/from16 v0, p12

    iput v0, v14, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 185
    move-object/from16 v0, p11

    iput-object v0, v14, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 186
    move/from16 v0, p12

    iput v0, p0, Landroid/text/OppoStaticLayout;->mEllipsizedWidth:I

    .line 188
    const/4 v1, 0x5

    iput v1, p0, Landroid/text/OppoStaticLayout;->mColumns:I

    .line 201
    .end local v14    # "e":Landroid/text/Layout$Ellipsizer;
    :goto_0
    const-class v1, Landroid/text/Layout$Directions;

    iget v2, p0, Landroid/text/OppoStaticLayout;->mColumns:I

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/Layout$Directions;

    iput-object v1, p0, Landroid/text/OppoStaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 202
    iget-object v1, p0, Landroid/text/OppoStaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/text/OppoStaticLayout;->mLines:[I

    .line 204
    move/from16 v0, p13

    iput v0, p0, Landroid/text/OppoStaticLayout;->mMaximumVisibleLineCount:I

    .line 206
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v1

    iput-object v1, p0, Landroid/text/OppoStaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 208
    move/from16 v0, p12

    int-to-float v12, v0

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p10

    move-object/from16 v13, p11

    invoke-virtual/range {v1 .. v13}, Landroid/text/OppoStaticLayout;->oppoGenerate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;)V

    .line 211
    iget-object v1, p0, Landroid/text/OppoStaticLayout;->mMeasured:Landroid/text/MeasuredText;

    invoke-static {v1}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-result-object v1

    iput-object v1, p0, Landroid/text/OppoStaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 212
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/text/OppoStaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 213
    return-void

    .line 190
    :cond_0
    const/4 v1, 0x3

    iput v1, p0, Landroid/text/OppoStaticLayout;->mColumns:I

    .line 191
    move/from16 v0, p5

    iput v0, p0, Landroid/text/OppoStaticLayout;->mEllipsizedWidth:I

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 10
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F
    .param p7, "includepad"    # Z

    .prologue
    .line 126
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/text/OppoStaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 127
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 11
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p6, "spacingmult"    # F
    .param p7, "spacingadd"    # F
    .param p8, "includepad"    # Z

    .prologue
    .line 134
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Landroid/text/OppoStaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    .line 136
    return-void
.end method

.method private static CharacterIsThai(C)Z
    .locals 2
    .param p0, "c"    # C

    .prologue
    .line 683
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 684
    .local v0, "ub":Ljava/lang/Character$UnicodeBlock;
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->THAI:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v1, :cond_0

    .line 685
    const/4 v1, 0x1

    .line 687
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static GetBreakPos(Ljava/lang/String;)I
    .locals 6
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 691
    invoke-static {p0}, Landroid/text/OppoStaticLayout;->IsStringEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 692
    const/4 v4, 0x0

    .line 704
    :cond_0
    return v4

    .line 694
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 695
    .local v1, "ch":[C
    array-length v3, v1

    .line 696
    .local v3, "length":I
    const/4 v4, 0x0

    .line 697
    .local v4, "pos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 698
    aget-char v0, v1, v2

    .line 699
    .local v0, "c":C
    const/16 v5, 0x20

    if-lt v0, v5, :cond_2

    const/16 v5, 0x40

    if-le v0, v5, :cond_4

    :cond_2
    const/16 v5, 0x5b

    if-lt v0, v5, :cond_3

    const/16 v5, 0x5f

    if-le v0, v5, :cond_4

    :cond_3
    const/16 v5, 0x7b

    if-lt v0, v5, :cond_5

    const/16 v5, 0x7e

    if-gt v0, v5, :cond_5

    .line 701
    :cond_4
    add-int/lit8 v4, v2, 0x1

    .line 697
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static IsStringEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 659
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    const/4 v0, 0x1

    .line 662
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static IsThaiLang(Ljava/lang/String;)Z
    .locals 6
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 667
    invoke-static {p0}, Landroid/text/OppoStaticLayout;->IsStringEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 679
    :cond_0
    :goto_0
    return v4

    .line 671
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 672
    .local v1, "ch":[C
    array-length v3, v1

    .line 673
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 674
    aget-char v0, v1, v2

    .line 675
    .local v0, "c":C
    const/16 v5, 0xe00

    if-lt v0, v5, :cond_2

    const/16 v5, 0xe5f

    if-gt v0, v5, :cond_2

    .line 676
    const/4 v4, 0x1

    goto :goto_0

    .line 673
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V
    .locals 20
    .param p1, "lineStart"    # I
    .param p2, "lineEnd"    # I
    .param p3, "widths"    # [F
    .param p4, "widthStart"    # I
    .param p5, "avail"    # F
    .param p6, "where"    # Landroid/text/TextUtils$TruncateAt;
    .param p7, "line"    # I
    .param p8, "textWidth"    # F
    .param p9, "paint"    # Landroid/text/TextPaint;
    .param p10, "forceEllipsis"    # Z

    .prologue
    .line 948
    cmpg-float v17, p8, p5

    if-gtz v17, :cond_0

    if-nez p10, :cond_0

    .line 950
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/OppoStaticLayout;->mLines:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/OppoStaticLayout;->mColumns:I

    move/from16 v18, v0

    mul-int v18, v18, p7

    add-int/lit8 v18, v18, 0x3

    const/16 v19, 0x0

    aput v19, v17, v18

    .line 951
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/OppoStaticLayout;->mLines:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/OppoStaticLayout;->mColumns:I

    move/from16 v18, v0

    mul-int v18, v18, p7

    add-int/lit8 v18, v18, 0x4

    const/16 v19, 0x0

    aput v19, v17, v18

    .line 1051
    :goto_0
    return-void

    .line 955
    :cond_0
    sget-object v17, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_3

    sget-object v17, Landroid/text/OppoStaticLayout;->ELLIPSIS_TWO_DOTS:[C

    :goto_1
    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, p9

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText([CII)F

    move-result v6

    .line 958
    .local v6, "ellipsisWidth":F
    const/4 v5, 0x0

    .line 959
    .local v5, "ellipsisStart":I
    const/4 v4, 0x0

    .line 960
    .local v4, "ellipsisCount":I
    sub-int v10, p2, p1

    .line 963
    .local v10, "len":I
    sget-object v17, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 964
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/OppoStaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 965
    const/4 v15, 0x0

    .line 968
    .local v15, "sum":F
    move v7, v10

    .local v7, "i":I
    :goto_2
    if-ltz v7, :cond_1

    .line 969
    add-int/lit8 v17, v7, -0x1

    add-int v17, v17, p1

    sub-int v17, v17, p4

    aget v16, p3, v17

    .line 971
    .local v16, "w":F
    add-float v17, v16, v15

    add-float v17, v17, v6

    cmpl-float v17, v17, p5

    if-lez v17, :cond_4

    .line 978
    .end local v16    # "w":F
    :cond_1
    const/4 v5, 0x0

    .line 979
    move v4, v7

    .line 1049
    .end local v7    # "i":I
    .end local v15    # "sum":F
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/OppoStaticLayout;->mLines:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/OppoStaticLayout;->mColumns:I

    move/from16 v18, v0

    mul-int v18, v18, p7

    add-int/lit8 v18, v18, 0x3

    aput v5, v17, v18

    .line 1050
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/OppoStaticLayout;->mLines:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/OppoStaticLayout;->mColumns:I

    move/from16 v18, v0

    mul-int v18, v18, p7

    add-int/lit8 v18, v18, 0x4

    aput v4, v17, v18

    goto :goto_0

    .line 955
    .end local v4    # "ellipsisCount":I
    .end local v5    # "ellipsisStart":I
    .end local v6    # "ellipsisWidth":F
    .end local v10    # "len":I
    :cond_3
    sget-object v17, Landroid/text/OppoStaticLayout;->ELLIPSIS_NORMAL:[C

    goto :goto_1

    .line 975
    .restart local v4    # "ellipsisCount":I
    .restart local v5    # "ellipsisStart":I
    .restart local v6    # "ellipsisWidth":F
    .restart local v7    # "i":I
    .restart local v10    # "len":I
    .restart local v15    # "sum":F
    .restart local v16    # "w":F
    :cond_4
    add-float v15, v15, v16

    .line 968
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 981
    .end local v7    # "i":I
    .end local v15    # "sum":F
    .end local v16    # "w":F
    :cond_5
    const-string v17, "StaticLayout"

    const/16 v18, 0x5

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 982
    const-string v17, "StaticLayout"

    const-string v18, "Start Ellipsis only supported with one line"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 985
    :cond_6
    sget-object v17, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_7

    sget-object v17, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_7

    sget-object v17, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_a

    .line 987
    :cond_7
    const/4 v15, 0x0

    .line 990
    .restart local v15    # "sum":F
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    if-ge v7, v10, :cond_8

    .line 991
    add-int v17, v7, p1

    sub-int v17, v17, p4

    aget v16, p3, v17

    .line 993
    .restart local v16    # "w":F
    add-float v17, v16, v15

    add-float v17, v17, v6

    cmpl-float v17, v17, p5

    if-lez v17, :cond_9

    .line 1000
    .end local v16    # "w":F
    :cond_8
    move v5, v7

    .line 1001
    sub-int v4, v10, v7

    .line 1002
    if-eqz p10, :cond_2

    if-nez v4, :cond_2

    if-lez v10, :cond_2

    .line 1003
    add-int/lit8 v5, v10, -0x1

    .line 1004
    const/4 v4, 0x1

    goto :goto_3

    .line 997
    .restart local v16    # "w":F
    :cond_9
    add-float v15, v15, v16

    .line 990
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1008
    .end local v7    # "i":I
    .end local v15    # "sum":F
    .end local v16    # "w":F
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/OppoStaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    .line 1009
    const/4 v11, 0x0

    .local v11, "lsum":F
    const/4 v14, 0x0

    .line 1010
    .local v14, "rsum":F
    const/4 v9, 0x0

    .local v9, "left":I
    move v13, v10

    .line 1012
    .local v13, "right":I
    sub-float v17, p5, v6

    const/high16 v18, 0x40000000    # 2.0f

    div-float v12, v17, v18

    .line 1013
    .local v12, "ravail":F
    move v13, v10

    :goto_5
    if-ltz v13, :cond_b

    .line 1016
    add-int/lit8 v17, v13, -0x1

    add-int v17, v17, p1

    sub-int v17, v17, p4

    if-gez v17, :cond_d

    .line 1029
    :cond_b
    sub-float v17, p5, v6

    sub-float v8, v17, v14

    .line 1030
    .local v8, "lavail":F
    const/4 v9, 0x0

    :goto_6
    if-ge v9, v13, :cond_c

    .line 1031
    add-int v17, v9, p1

    sub-int v17, v17, p4

    aget v16, p3, v17

    .line 1033
    .restart local v16    # "w":F
    add-float v17, v16, v11

    cmpl-float v17, v17, v8

    if-lez v17, :cond_e

    .line 1040
    .end local v16    # "w":F
    :cond_c
    move v5, v9

    .line 1041
    sub-int v4, v13, v9

    .line 1042
    goto/16 :goto_3

    .line 1020
    .end local v8    # "lavail":F
    :cond_d
    add-int/lit8 v17, v13, -0x1

    add-int v17, v17, p1

    sub-int v17, v17, p4

    aget v16, p3, v17

    .line 1022
    .restart local v16    # "w":F
    add-float v17, v16, v14

    cmpl-float v17, v17, v12

    if-gtz v17, :cond_b

    .line 1026
    add-float v14, v14, v16

    .line 1013
    add-int/lit8 v13, v13, -0x1

    goto :goto_5

    .line 1037
    .restart local v8    # "lavail":F
    :cond_e
    add-float v11, v11, v16

    .line 1030
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 1043
    .end local v8    # "lavail":F
    .end local v9    # "left":I
    .end local v11    # "lsum":F
    .end local v12    # "ravail":F
    .end local v13    # "right":I
    .end local v14    # "rsum":F
    .end local v16    # "w":F
    :cond_f
    const-string v17, "StaticLayout"

    const/16 v18, 0x5

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1044
    const-string v17, "StaticLayout"

    const-string v18, "Middle Ellipsis only supported with one line"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method static callIsIdeographic(CZ)Z
    .locals 1
    .param p0, "c"    # C
    .param p1, "includeNonStarters"    # Z

    .prologue
    .line 49
    invoke-static {p0, p1}, Landroid/text/OppoStaticLayout;->isIdeographic(CZ)Z

    move-result v0

    return v0
.end method

.method private static final isIdeographic(CZ)Z
    .locals 3
    .param p0, "c"    # C
    .param p1, "includeNonStarters"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 719
    const/16 v2, 0x2e80

    if-lt p0, v2, :cond_1

    const/16 v2, 0x2fff

    if-gt p0, v2, :cond_1

    .line 802
    :cond_0
    :goto_0
    return v0

    .line 722
    :cond_1
    const/16 v2, 0x3000

    if-eq p0, v2, :cond_0

    .line 725
    const/16 v2, 0x3040

    if-lt p0, v2, :cond_2

    const/16 v2, 0x309f

    if-gt p0, v2, :cond_2

    .line 726
    if-nez p1, :cond_0

    .line 727
    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 744
    goto :goto_0

    .line 749
    :cond_2
    const/16 v2, 0x30a0

    if-lt p0, v2, :cond_3

    const/16 v2, 0x30ff

    if-gt p0, v2, :cond_3

    .line 750
    if-nez p1, :cond_0

    .line 751
    sparse-switch p0, :sswitch_data_1

    goto :goto_0

    :sswitch_1
    move v0, v1

    .line 769
    goto :goto_0

    .line 774
    :cond_3
    const/16 v1, 0x3400

    if-lt p0, v1, :cond_4

    const/16 v1, 0x4db5

    if-le p0, v1, :cond_0

    .line 777
    :cond_4
    const/16 v1, 0x4e00

    if-lt p0, v1, :cond_5

    const v1, 0x9fbb

    if-le p0, v1, :cond_0

    .line 780
    :cond_5
    const v1, 0xf900

    if-lt p0, v1, :cond_6

    const v1, 0xfad9

    if-le p0, v1, :cond_0

    .line 783
    :cond_6
    const v1, 0xa000

    if-lt p0, v1, :cond_7

    const v1, 0xa48f

    if-le p0, v1, :cond_0

    .line 786
    :cond_7
    const v1, 0xa490

    if-lt p0, v1, :cond_8

    const v1, 0xa4cf

    if-le p0, v1, :cond_0

    .line 789
    :cond_8
    const v1, 0xfe62

    if-lt p0, v1, :cond_9

    const v1, 0xfe66

    if-le p0, v1, :cond_0

    .line 792
    :cond_9
    const v1, 0xff10

    if-lt p0, v1, :cond_a

    const v1, 0xff19

    if-le p0, v1, :cond_0

    .line 802
    :cond_a
    invoke-static {p0, p1}, Landroid/text/OppoStaticLayout$Injector;->isIdeographic(CZ)Z

    move-result v0

    goto :goto_0

    .line 727
    nop

    :sswitch_data_0
    .sparse-switch
        0x3041 -> :sswitch_0
        0x3043 -> :sswitch_0
        0x3045 -> :sswitch_0
        0x3047 -> :sswitch_0
        0x3049 -> :sswitch_0
        0x3063 -> :sswitch_0
        0x3083 -> :sswitch_0
        0x3085 -> :sswitch_0
        0x3087 -> :sswitch_0
        0x308e -> :sswitch_0
        0x3095 -> :sswitch_0
        0x3096 -> :sswitch_0
        0x309b -> :sswitch_0
        0x309c -> :sswitch_0
        0x309d -> :sswitch_0
        0x309e -> :sswitch_0
    .end sparse-switch

    .line 751
    :sswitch_data_1
    .sparse-switch
        0x30a0 -> :sswitch_1
        0x30a1 -> :sswitch_1
        0x30a3 -> :sswitch_1
        0x30a5 -> :sswitch_1
        0x30a7 -> :sswitch_1
        0x30a9 -> :sswitch_1
        0x30c3 -> :sswitch_1
        0x30e3 -> :sswitch_1
        0x30e5 -> :sswitch_1
        0x30e7 -> :sswitch_1
        0x30ee -> :sswitch_1
        0x30f5 -> :sswitch_1
        0x30f6 -> :sswitch_1
        0x30fb -> :sswitch_1
        0x30fc -> :sswitch_1
        0x30fd -> :sswitch_1
        0x30fe -> :sswitch_1
    .end sparse-switch
.end method

.method private out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I
    .locals 27
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "above"    # I
    .param p5, "below"    # I
    .param p6, "top"    # I
    .param p7, "bottom"    # I
    .param p8, "v"    # I
    .param p9, "spacingmult"    # F
    .param p10, "spacingadd"    # F
    .param p11, "chooseHt"    # [Landroid/text/style/LineHeightSpan;
    .param p12, "chooseHtv"    # [I
    .param p13, "fm"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p14, "hasTabOrEmoji"    # Z
    .param p15, "needMultiply"    # Z
    .param p16, "chdirs"    # [B
    .param p17, "dir"    # I
    .param p18, "easy"    # Z
    .param p19, "bufEnd"    # I
    .param p20, "includePad"    # Z
    .param p21, "trackPad"    # Z
    .param p22, "chs"    # [C
    .param p23, "widths"    # [F
    .param p24, "widthStart"    # I
    .param p25, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p26, "ellipsisWidth"    # F
    .param p27, "textWidth"    # F
    .param p28, "paint"    # Landroid/text/TextPaint;
    .param p29, "moreChars"    # Z

    .prologue
    .line 813
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/OppoStaticLayout;->mLineCount:I

    move/from16 v22, v0

    .line 814
    .local v22, "j":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/OppoStaticLayout;->mColumns:I

    mul-int v25, v22, v2

    .line 815
    .local v25, "off":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/OppoStaticLayout;->mColumns:I

    add-int v2, v2, v25

    add-int/lit8 v26, v2, 0x1

    .line 816
    .local v26, "want":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/OppoStaticLayout;->mLines:[I

    move-object/from16 v24, v0

    .line 818
    .local v24, "lines":[I
    move-object/from16 v0, v24

    array-length v2, v0

    move/from16 v0, v26

    if-lt v0, v2, :cond_0

    .line 827
    const-class v2, Landroid/text/Layout$Directions;

    invoke-static/range {v26 .. v26}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Landroid/text/Layout$Directions;

    .line 829
    .local v20, "grow2":[Landroid/text/Layout$Directions;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/OppoStaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/OppoStaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v5, v5

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 831
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/OppoStaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 833
    move-object/from16 v0, v20

    array-length v2, v0

    new-array v0, v2, [I

    move-object/from16 v19, v0

    .line 835
    .local v19, "grow":[I
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v24

    array-length v4, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 836
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/OppoStaticLayout;->mLines:[I

    .line 837
    move-object/from16 v24, v19

    .line 848
    .end local v19    # "grow":[I
    .end local v20    # "grow2":[Landroid/text/Layout$Directions;
    :cond_0
    if-eqz p11, :cond_3

    .line 849
    move/from16 v0, p4

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 850
    move/from16 v0, p5

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 851
    move/from16 v0, p6

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 852
    move/from16 v0, p7

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 854
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_0
    move-object/from16 v0, p11

    array-length v2, v0

    move/from16 v0, v21

    if-ge v0, v2, :cond_2

    .line 855
    aget-object v2, p11, v21

    instance-of v2, v2, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v2, :cond_1

    .line 856
    aget-object v2, p11, v21

    check-cast v2, Landroid/text/style/LineHeightSpan$WithDensity;

    aget v6, p12, v21

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    move-object/from16 v9, p28

    invoke-interface/range {v2 .. v9}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 854
    :goto_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 860
    :cond_1
    aget-object v2, p11, v21

    aget v6, p12, v21

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    invoke-interface/range {v2 .. v8}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_1

    .line 864
    :cond_2
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 p4, v0

    .line 865
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 p5, v0

    .line 866
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 p6, v0

    .line 867
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 p7, v0

    .line 870
    .end local v21    # "i":I
    :cond_3
    if-nez v22, :cond_5

    .line 871
    if-eqz p21, :cond_4

    .line 872
    sub-int v2, p6, p4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/OppoStaticLayout;->mTopPadding:I

    .line 875
    :cond_4
    if-eqz p20, :cond_5

    .line 876
    move/from16 p4, p6

    .line 879
    :cond_5
    move/from16 v0, p3

    move/from16 v1, p19

    if-ne v0, v1, :cond_7

    .line 880
    if-eqz p21, :cond_6

    .line 881
    sub-int v2, p7, p5

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/OppoStaticLayout;->mBottomPadding:I

    .line 884
    :cond_6
    if-eqz p20, :cond_7

    .line 885
    move/from16 p5, p7

    .line 891
    :cond_7
    if-eqz p15, :cond_10

    .line 892
    sub-int v2, p5, p4

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, p9, v3

    mul-float/2addr v2, v3

    add-float v2, v2, p10

    float-to-double v0, v2

    move-wide/from16 v16, v0

    .line 893
    .local v16, "ex":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v16, v2

    if-ltz v2, :cond_f

    .line 894
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double v2, v2, v16

    double-to-int v15, v2

    .line 902
    .end local v16    # "ex":D
    .local v15, "extra":I
    :goto_2
    add-int/lit8 v2, v25, 0x0

    aput p2, v24, v2

    .line 903
    add-int/lit8 v2, v25, 0x1

    aput p8, v24, v2

    .line 904
    add-int/lit8 v2, v25, 0x2

    add-int v3, p5, v15

    aput v3, v24, v2

    .line 906
    sub-int v2, p5, p4

    add-int/2addr v2, v15

    add-int p8, p8, v2

    .line 907
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/OppoStaticLayout;->mColumns:I

    add-int v2, v2, v25

    add-int/lit8 v2, v2, 0x0

    aput p3, v24, v2

    .line 908
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/OppoStaticLayout;->mColumns:I

    add-int v2, v2, v25

    add-int/lit8 v2, v2, 0x1

    aput p8, v24, v2

    .line 910
    if-eqz p14, :cond_8

    .line 911
    add-int/lit8 v2, v25, 0x0

    aget v3, v24, v2

    const/high16 v4, 0x20000000

    or-int/2addr v3, v4

    aput v3, v24, v2

    .line 914
    :cond_8
    add-int/lit8 v2, v25, 0x0

    aget v3, v24, v2

    shl-int/lit8 v4, p17, 0x1e

    or-int/2addr v3, v4

    aput v3, v24, v2

    .line 915
    sget-object v23, Landroid/text/OppoStaticLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 919
    .local v23, "linedirs":Landroid/text/Layout$Directions;
    if-eqz p18, :cond_11

    .line 920
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/OppoStaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aput-object v23, v2, v22

    .line 926
    :goto_3
    if-eqz p25, :cond_e

    .line 929
    if-nez v22, :cond_12

    const/16 v18, 0x1

    .line 930
    .local v18, "firstLine":Z
    :goto_4
    add-int/lit8 v2, v22, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/OppoStaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_13

    const/4 v13, 0x1

    .line 931
    .local v13, "currentLineIsTheLastVisibleOne":Z
    :goto_5
    if-eqz p29, :cond_14

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/OppoStaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/OppoStaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_14

    const/4 v12, 0x1

    .line 933
    .local v12, "forceEllipsis":Z
    :goto_6
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/OppoStaticLayout;->mMaximumVisibleLineCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    if-nez p29, :cond_a

    :cond_9
    if-eqz v18, :cond_b

    if-nez p29, :cond_b

    :cond_a
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_d

    :cond_b
    if-nez v18, :cond_15

    if-nez v13, :cond_c

    if-nez p29, :cond_15

    :cond_c
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_15

    :cond_d
    const/4 v14, 0x1

    .line 935
    .local v14, "doEllipsis":Z
    :goto_7
    if-eqz v14, :cond_e

    move-object/from16 v2, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p23

    move/from16 v6, p24

    move/from16 v7, p26

    move-object/from16 v8, p25

    move/from16 v9, v22

    move/from16 v10, p27

    move-object/from16 v11, p28

    .line 936
    invoke-direct/range {v2 .. v12}, Landroid/text/OppoStaticLayout;->calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V

    .line 941
    .end local v12    # "forceEllipsis":Z
    .end local v13    # "currentLineIsTheLastVisibleOne":Z
    .end local v14    # "doEllipsis":Z
    .end local v18    # "firstLine":Z
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/OppoStaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/OppoStaticLayout;->mLineCount:I

    .line 942
    return p8

    .line 896
    .end local v15    # "extra":I
    .end local v23    # "linedirs":Landroid/text/Layout$Directions;
    .restart local v16    # "ex":D
    :cond_f
    move-wide/from16 v0, v16

    neg-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v2, v2

    neg-int v15, v2

    .restart local v15    # "extra":I
    goto/16 :goto_2

    .line 899
    .end local v15    # "extra":I
    .end local v16    # "ex":D
    :cond_10
    const/4 v15, 0x0

    .restart local v15    # "extra":I
    goto/16 :goto_2

    .line 922
    .restart local v23    # "linedirs":Landroid/text/Layout$Directions;
    :cond_11
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/text/OppoStaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    sub-int v4, p2, p24

    sub-int v6, p2, p24

    sub-int v7, p3, p2

    move/from16 v2, p17

    move-object/from16 v3, p16

    move-object/from16 v5, p22

    invoke-static/range {v2 .. v7}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v2

    aput-object v2, v8, v22

    goto/16 :goto_3

    .line 929
    :cond_12
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 930
    .restart local v18    # "firstLine":Z
    :cond_13
    const/4 v13, 0x0

    goto :goto_5

    .line 931
    .restart local v13    # "currentLineIsTheLastVisibleOne":Z
    :cond_14
    const/4 v12, 0x0

    goto :goto_6

    .line 933
    .restart local v12    # "forceEllipsis":Z
    :cond_15
    const/4 v14, 0x0

    goto :goto_7
.end method


# virtual methods
.method finish()V
    .locals 1

    .prologue
    .line 1155
    iget-object v0, p0, Landroid/text/OppoStaticLayout;->mMeasured:Landroid/text/MeasuredText;

    invoke-static {v0}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/OppoStaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 1156
    return-void
.end method

.method generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufStart"    # I
    .param p3, "bufEnd"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerWidth"    # I
    .param p6, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z
    .param p10, "trackpad"    # Z
    .param p11, "ellipsizedWidth"    # F
    .param p12, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    .line 239
    return-void
.end method

.method public getBottomPadding()I
    .locals 1

    .prologue
    .line 1124
    iget v0, p0, Landroid/text/OppoStaticLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1129
    iget v0, p0, Landroid/text/OppoStaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 1130
    const/4 v0, 0x0

    .line 1133
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/OppoStaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/OppoStaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getEllipsisStart(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1138
    iget v0, p0, Landroid/text/OppoStaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 1139
    const/4 v0, 0x0

    .line 1142
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/OppoStaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/OppoStaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    .line 1147
    iget v0, p0, Landroid/text/OppoStaticLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1114
    iget-object v0, p0, Landroid/text/OppoStaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/OppoStaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    .line 1080
    iget v0, p0, Landroid/text/OppoStaticLayout;->mLineCount:I

    return v0
.end method

.method public getLineDescent(I)I
    .locals 3
    .param p1, "line"    # I

    .prologue
    .line 1094
    iget-object v1, p0, Landroid/text/OppoStaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/OppoStaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x2

    aget v0, v1, v2

    .line 1095
    .local v0, "descent":I
    iget v1, p0, Landroid/text/OppoStaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/text/OppoStaticLayout;->mMaximumVisibleLineCount:I

    add-int/lit8 v1, v1, -0x1

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/text/OppoStaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_0

    .line 1097
    invoke-virtual {p0}, Landroid/text/OppoStaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 1099
    :cond_0
    return v0
.end method

.method public getLineForVertical(I)I
    .locals 6
    .param p1, "vertical"    # I

    .prologue
    .line 1059
    iget v1, p0, Landroid/text/OppoStaticLayout;->mLineCount:I

    .line 1060
    .local v1, "high":I
    const/4 v3, -0x1

    .line 1062
    .local v3, "low":I
    iget-object v2, p0, Landroid/text/OppoStaticLayout;->mLines:[I

    .line 1063
    .local v2, "lines":[I
    :goto_0
    sub-int v4, v1, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 1064
    add-int v4, v1, v3

    shr-int/lit8 v0, v4, 0x1

    .line 1065
    .local v0, "guess":I
    iget v4, p0, Landroid/text/OppoStaticLayout;->mColumns:I

    mul-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    aget v4, v2, v4

    if-le v4, p1, :cond_0

    .line 1066
    move v1, v0

    goto :goto_0

    .line 1068
    :cond_0
    move v3, v0

    goto :goto_0

    .line 1071
    .end local v0    # "guess":I
    :cond_1
    if-gez v3, :cond_2

    .line 1072
    const/4 v3, 0x0

    .line 1074
    .end local v3    # "low":I
    :cond_2
    return v3
.end method

.method public getLineStart(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1104
    iget-object v0, p0, Landroid/text/OppoStaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/OppoStaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getLineTop(I)I
    .locals 3
    .param p1, "line"    # I

    .prologue
    .line 1085
    iget-object v1, p0, Landroid/text/OppoStaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/OppoStaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    aget v0, v1, v2

    .line 1086
    .local v0, "top":I
    iget v1, p0, Landroid/text/OppoStaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/text/OppoStaticLayout;->mMaximumVisibleLineCount:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/text/OppoStaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_0

    .line 1087
    invoke-virtual {p0}, Landroid/text/OppoStaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 1089
    :cond_0
    return v0
.end method

.method public getOppoHookLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1
    .param p1, "line"    # I

    .prologue
    .line 1212
    iget-object v0, p0, Landroid/text/OppoStaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getParagraphDirection(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1109
    iget-object v0, p0, Landroid/text/OppoStaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/OppoStaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 1119
    iget v0, p0, Landroid/text/OppoStaticLayout;->mTopPadding:I

    return v0
.end method

.method public native getcurrentsplitnum(Ljava/lang/String;)I
.end method

.method public native getnextsplitnum(Ljava/lang/String;I)I
.end method

.method oppoGenerate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;)V
    .locals 144
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufStart"    # I
    .param p3, "bufEnd"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerWidth"    # I
    .param p6, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z
    .param p10, "trackpad"    # Z
    .param p11, "ellipsizedWidth"    # F
    .param p12, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    .line 245
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Landroid/text/OppoStaticLayout;->mLineCount:I

    .line 247
    const/4 v13, 0x0

    .line 248
    .local v13, "v":I
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, p7, v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    cmpl-float v5, p8, v5

    if-eqz v5, :cond_3

    :cond_0
    const/16 v20, 0x1

    .line 250
    .local v20, "needMultiply":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/OppoStaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v18, v0

    .line 251
    .local v18, "fm":Landroid/graphics/Paint$FontMetricsInt;
    const/16 v17, 0x0

    .line 253
    .local v17, "chooseHtv":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/OppoStaticLayout;->mMeasured:Landroid/text/MeasuredText;

    move-object/from16 v115, v0

    .line 255
    .local v115, "measured":Landroid/text/MeasuredText;
    const/16 v137, 0x0

    .line 256
    .local v137, "spanned":Landroid/text/Spanned;
    move-object/from16 v0, p1

    instance-of v5, v0, Landroid/text/Spanned;

    if-eqz v5, :cond_1

    move-object/from16 v137, p1

    .line 257
    check-cast v137, Landroid/text/Spanned;

    .line 259
    :cond_1
    const/16 v80, 0x1

    .line 262
    .local v80, "DEFAULT_DIR":I
    move/from16 v29, p2

    .local v29, "paraStart":I
    :goto_1
    move/from16 v0, v29

    move/from16 v1, p3

    if-gt v0, v1, :cond_36

    .line 263
    const/16 v5, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v29

    move/from16 v2, p3

    invoke-static {v0, v5, v1, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v38

    .line 264
    .local v38, "paraEnd":I
    if-gez v38, :cond_4

    .line 265
    move/from16 v38, p3

    .line 269
    :goto_2
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/OppoStaticLayout;->mLineCount:I

    add-int/lit8 v97, v5, 0x1

    .line 270
    .local v97, "firstWidthLineLimit":I
    move/from16 v96, p5

    .line 271
    .local v96, "firstWidth":I
    move/from16 v132, p5

    .line 273
    .local v132, "restWidth":I
    const/16 v16, 0x0

    .line 275
    .local v16, "chooseHt":[Landroid/text/style/LineHeightSpan;
    if-eqz v137, :cond_9

    .line 276
    const-class v5, Landroid/text/style/LeadingMarginSpan;

    move-object/from16 v0, v137

    move/from16 v1, v29

    move/from16 v2, v38

    invoke-static {v0, v1, v2, v5}, Landroid/text/OppoStaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v133

    check-cast v133, [Landroid/text/style/LeadingMarginSpan;

    .line 278
    .local v133, "sp":[Landroid/text/style/LeadingMarginSpan;
    const/16 v106, 0x0

    .local v106, "i":I
    :goto_3
    move-object/from16 v0, v133

    array-length v5, v0

    move/from16 v0, v106

    if-ge v0, v5, :cond_5

    .line 279
    aget-object v112, v133, v106

    .line 280
    .local v112, "lms":Landroid/text/style/LeadingMarginSpan;
    aget-object v5, v133, v106

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v96, v96, v5

    .line 281
    aget-object v5, v133, v106

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v132, v132, v5

    .line 287
    move-object/from16 v0, v112

    instance-of v5, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v5, :cond_2

    move-object/from16 v113, v112

    .line 288
    check-cast v113, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    .line 289
    .local v113, "lms2":Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    move-object/from16 v0, v137

    move-object/from16 v1, v113

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/OppoStaticLayout;->getLineForOffset(I)I

    move-result v114

    .line 290
    .local v114, "lmsFirstLine":I
    invoke-interface/range {v113 .. v113}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v5

    add-int v97, v114, v5

    .line 278
    .end local v113    # "lms2":Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    .end local v114    # "lmsFirstLine":I
    :cond_2
    add-int/lit8 v106, v106, 0x1

    goto :goto_3

    .line 248
    .end local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v17    # "chooseHtv":[I
    .end local v18    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v20    # "needMultiply":Z
    .end local v29    # "paraStart":I
    .end local v38    # "paraEnd":I
    .end local v80    # "DEFAULT_DIR":I
    .end local v96    # "firstWidth":I
    .end local v97    # "firstWidthLineLimit":I
    .end local v106    # "i":I
    .end local v112    # "lms":Landroid/text/style/LeadingMarginSpan;
    .end local v115    # "measured":Landroid/text/MeasuredText;
    .end local v132    # "restWidth":I
    .end local v133    # "sp":[Landroid/text/style/LeadingMarginSpan;
    .end local v137    # "spanned":Landroid/text/Spanned;
    :cond_3
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 267
    .restart local v17    # "chooseHtv":[I
    .restart local v18    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v20    # "needMultiply":Z
    .restart local v29    # "paraStart":I
    .restart local v38    # "paraEnd":I
    .restart local v80    # "DEFAULT_DIR":I
    .restart local v115    # "measured":Landroid/text/MeasuredText;
    .restart local v137    # "spanned":Landroid/text/Spanned;
    :cond_4
    add-int/lit8 v38, v38, 0x1

    goto :goto_2

    .line 294
    .restart local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v96    # "firstWidth":I
    .restart local v97    # "firstWidthLineLimit":I
    .restart local v106    # "i":I
    .restart local v132    # "restWidth":I
    .restart local v133    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_5
    const-class v5, Landroid/text/style/LineHeightSpan;

    move-object/from16 v0, v137

    move/from16 v1, v29

    move/from16 v2, v38

    invoke-static {v0, v1, v2, v5}, Landroid/text/OppoStaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    check-cast v16, [Landroid/text/style/LineHeightSpan;

    .line 296
    .restart local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    move-object/from16 v0, v16

    array-length v5, v0

    if-eqz v5, :cond_9

    .line 297
    if-eqz v17, :cond_6

    move-object/from16 v0, v17

    array-length v5, v0

    move-object/from16 v0, v16

    array-length v6, v0

    if-ge v5, v6, :cond_7

    .line 304
    :cond_6
    move-object/from16 v0, v16

    array-length v5, v0

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v17

    .line 308
    :cond_7
    const/16 v106, 0x0

    :goto_4
    move-object/from16 v0, v16

    array-length v5, v0

    move/from16 v0, v106

    if-ge v0, v5, :cond_9

    .line 309
    aget-object v5, v16, v106

    move-object/from16 v0, v137

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v121

    .line 311
    .local v121, "o":I
    move/from16 v0, v121

    move/from16 v1, v29

    if-ge v0, v1, :cond_8

    .line 315
    move-object/from16 v0, p0

    move/from16 v1, v121

    invoke-virtual {v0, v1}, Landroid/text/OppoStaticLayout;->getLineForOffset(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/OppoStaticLayout;->getLineTop(I)I

    move-result v5

    aput v5, v17, v106

    .line 308
    :goto_5
    add-int/lit8 v106, v106, 0x1

    goto :goto_4

    .line 319
    :cond_8
    aput v13, v17, v106

    goto :goto_5

    .line 325
    .end local v106    # "i":I
    .end local v121    # "o":I
    .end local v133    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_9
    move-object/from16 v0, v115

    move-object/from16 v1, p1

    move/from16 v2, v29

    move/from16 v3, v38

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 326
    move-object/from16 v0, v115

    iget-object v0, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v27, v0

    .line 327
    .local v27, "chs":[C
    move-object/from16 v0, v115

    iget-object v0, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v28, v0

    .line 328
    .local v28, "widths":[F
    move-object/from16 v0, v115

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v21, v0

    .line 329
    .local v21, "chdirs":[B
    move-object/from16 v0, v115

    iget v0, v0, Landroid/text/MeasuredText;->mDir:I

    move/from16 v22, v0

    .line 330
    .local v22, "dir":I
    move-object/from16 v0, v115

    iget-boolean v0, v0, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v23, v0

    .line 332
    .local v23, "easy":Z
    move/from16 v143, v96

    .line 334
    .local v143, "width":I
    const/16 v62, 0x0

    .line 336
    .local v62, "w":F
    move/from16 v7, v29

    .line 340
    .local v7, "here":I
    move/from16 v122, v29

    .line 341
    .local v122, "ok":I
    move/from16 v127, v62

    .line 342
    .local v127, "okWidth":F
    const/16 v123, 0x0

    .local v123, "okAscent":I
    const/16 v125, 0x0

    .local v125, "okDescent":I
    const/16 v126, 0x0

    .local v126, "okTop":I
    const/16 v124, 0x0

    .line 346
    .local v124, "okBottom":I
    move/from16 v98, v29

    .line 347
    .local v98, "fit":I
    move/from16 v99, v62

    .line 348
    .local v99, "fitWidth":F
    const/16 v39, 0x0

    .local v39, "fitAscent":I
    const/16 v40, 0x0

    .local v40, "fitDescent":I
    const/16 v41, 0x0

    .local v41, "fitTop":I
    const/16 v42, 0x0

    .line 350
    .local v42, "fitBottom":I
    const/16 v19, 0x0

    .line 351
    .local v19, "hasTabOrEmoji":Z
    const/16 v105, 0x0

    .line 352
    .local v105, "hasTab":Z
    const/16 v140, 0x0

    .line 354
    .local v140, "tabStops":Landroid/text/Layout$TabStops;
    move/from16 v136, v29

    .local v136, "spanStart":I
    :goto_6
    move/from16 v0, v136

    move/from16 v1, v38

    if-ge v0, v1, :cond_33

    .line 356
    if-nez v137, :cond_1a

    .line 357
    move/from16 v134, v38

    .line 358
    .local v134, "spanEnd":I
    sub-int v135, v134, v136

    .line 359
    .local v135, "spanLen":I
    move-object/from16 v0, v115

    move-object/from16 v1, p4

    move/from16 v2, v135

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    .line 370
    :goto_7
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v104, v0

    .line 371
    .local v104, "fmTop":I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v102, v0

    .line 372
    .local v102, "fmBottom":I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v101, v0

    .line 373
    .local v101, "fmAscent":I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v103, v0

    .line 375
    .local v103, "fmDescent":I
    move/from16 v110, v136

    .local v110, "j":I
    :goto_8
    move/from16 v0, v110

    move/from16 v1, v134

    if-ge v0, v1, :cond_28

    .line 376
    sub-int v5, v110, v29

    aget-char v94, v27, v5

    .line 378
    .local v94, "c":C
    const/16 v5, 0xa

    move/from16 v0, v94

    if-ne v0, v5, :cond_1b

    .line 429
    :goto_9
    const/16 v5, 0x20

    move/from16 v0, v94

    if-eq v0, v5, :cond_a

    const/16 v5, 0x9

    move/from16 v0, v94

    if-eq v0, v5, :cond_a

    const/16 v5, 0x200b

    move/from16 v0, v94

    if-ne v0, v5, :cond_23

    :cond_a
    const/16 v109, 0x1

    .line 431
    .local v109, "isSpaceOrTab":Z
    :goto_a
    move/from16 v0, v143

    int-to-float v5, v0

    cmpg-float v5, v62, v5

    if-lez v5, :cond_b

    if-eqz v109, :cond_26

    .line 432
    :cond_b
    move/from16 v99, v62

    .line 433
    add-int/lit8 v98, v110, 0x1

    .line 435
    move/from16 v0, v104

    move/from16 v1, v41

    if-ge v0, v1, :cond_c

    .line 436
    move/from16 v41, v104

    .line 437
    :cond_c
    move/from16 v0, v101

    move/from16 v1, v39

    if-ge v0, v1, :cond_d

    .line 438
    move/from16 v39, v101

    .line 439
    :cond_d
    move/from16 v0, v103

    move/from16 v1, v40

    if-le v0, v1, :cond_e

    .line 440
    move/from16 v40, v103

    .line 441
    :cond_e
    move/from16 v0, v102

    move/from16 v1, v42

    if-le v0, v1, :cond_f

    .line 442
    move/from16 v42, v102

    .line 446
    :cond_f
    move/from16 v0, v94

    move-object/from16 v1, v27

    move/from16 v2, v110

    move/from16 v3, v134

    move/from16 v4, v29

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/OppoStaticLayout$Injector;->validateCJKCharAsSpace(C[CIII)C

    move-result v94

    .line 447
    const/16 v5, 0x20

    move/from16 v0, v94

    if-eq v0, v5, :cond_12

    const/16 v5, 0x9

    move/from16 v0, v94

    if-eq v0, v5, :cond_12

    const/16 v5, 0x2e

    move/from16 v0, v94

    if-eq v0, v5, :cond_10

    const/16 v5, 0x2c

    move/from16 v0, v94

    if-eq v0, v5, :cond_10

    const/16 v5, 0x3a

    move/from16 v0, v94

    if-eq v0, v5, :cond_10

    const/16 v5, 0x3b

    move/from16 v0, v94

    if-ne v0, v5, :cond_24

    :cond_10
    add-int/lit8 v5, v110, -0x1

    if-lt v5, v7, :cond_11

    add-int/lit8 v5, v110, -0x1

    sub-int v5, v5, v29

    aget-char v5, v27, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_24

    :cond_11
    add-int/lit8 v5, v110, 0x1

    move/from16 v0, v134

    if-ge v5, v0, :cond_12

    add-int/lit8 v5, v110, 0x1

    sub-int v5, v5, v29

    aget-char v5, v27, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_24

    :cond_12
    const/16 v109, 0x1

    .line 456
    :goto_b
    if-nez v109, :cond_15

    const/16 v5, 0x2f

    move/from16 v0, v94

    if-eq v0, v5, :cond_13

    const/16 v5, 0x2d

    move/from16 v0, v94

    if-ne v0, v5, :cond_14

    :cond_13
    add-int/lit8 v5, v110, 0x1

    move/from16 v0, v134

    if-ge v5, v0, :cond_15

    add-int/lit8 v5, v110, 0x1

    sub-int v5, v5, v29

    aget-char v5, v27, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_15

    :cond_14
    const/16 v5, 0x2e80

    move/from16 v0, v94

    if-lt v0, v5, :cond_25

    const/4 v5, 0x1

    move/from16 v0, v94

    invoke-static {v0, v5}, Landroid/text/OppoStaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_25

    add-int/lit8 v5, v110, 0x1

    move/from16 v0, v134

    if-ge v5, v0, :cond_25

    add-int/lit8 v5, v110, 0x1

    sub-int v5, v5, v29

    aget-char v5, v27, v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/text/OppoStaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_25

    :cond_15
    const/16 v108, 0x1

    .line 465
    .local v108, "isLineBreak":Z
    :goto_c
    if-eqz v108, :cond_19

    .line 466
    move/from16 v127, v62

    .line 467
    add-int/lit8 v122, v110, 0x1

    .line 469
    move/from16 v0, v41

    move/from16 v1, v126

    if-ge v0, v1, :cond_16

    .line 470
    move/from16 v126, v41

    .line 471
    :cond_16
    move/from16 v0, v39

    move/from16 v1, v123

    if-ge v0, v1, :cond_17

    .line 472
    move/from16 v123, v39

    .line 473
    :cond_17
    move/from16 v0, v40

    move/from16 v1, v125

    if-le v0, v1, :cond_18

    .line 474
    move/from16 v125, v40

    .line 475
    :cond_18
    move/from16 v0, v42

    move/from16 v1, v124

    if-le v0, v1, :cond_19

    .line 476
    move/from16 v124, v42

    .line 375
    .end local v108    # "isLineBreak":Z
    :cond_19
    add-int/lit8 v110, v110, 0x1

    goto/16 :goto_8

    .line 361
    .end local v94    # "c":C
    .end local v101    # "fmAscent":I
    .end local v102    # "fmBottom":I
    .end local v103    # "fmDescent":I
    .end local v104    # "fmTop":I
    .end local v109    # "isSpaceOrTab":Z
    .end local v110    # "j":I
    .end local v134    # "spanEnd":I
    .end local v135    # "spanLen":I
    :cond_1a
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v137

    move/from16 v1, v136

    move/from16 v2, v38

    invoke-interface {v0, v1, v2, v5}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v134

    .line 363
    .restart local v134    # "spanEnd":I
    sub-int v135, v134, v136

    .line 364
    .restart local v135    # "spanLen":I
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v137

    move/from16 v1, v136

    move/from16 v2, v134

    invoke-interface {v0, v1, v2, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v138

    check-cast v138, [Landroid/text/style/MetricAffectingSpan;

    .line 366
    .local v138, "spans":[Landroid/text/style/MetricAffectingSpan;
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v138

    move-object/from16 v1, v137

    invoke-static {v0, v1, v5}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v138

    .end local v138    # "spans":[Landroid/text/style/MetricAffectingSpan;
    check-cast v138, [Landroid/text/style/MetricAffectingSpan;

    .line 367
    .restart local v138    # "spans":[Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v115

    move-object/from16 v1, p4

    move-object/from16 v2, v138

    move/from16 v3, v135

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F

    goto/16 :goto_7

    .line 380
    .end local v138    # "spans":[Landroid/text/style/MetricAffectingSpan;
    .restart local v94    # "c":C
    .restart local v101    # "fmAscent":I
    .restart local v102    # "fmBottom":I
    .restart local v103    # "fmDescent":I
    .restart local v104    # "fmTop":I
    .restart local v110    # "j":I
    :cond_1b
    const/16 v5, 0x9

    move/from16 v0, v94

    if-ne v0, v5, :cond_1e

    .line 381
    if-nez v105, :cond_1c

    .line 382
    const/16 v105, 0x1

    .line 383
    const/16 v19, 0x1

    .line 384
    if-eqz v137, :cond_1c

    .line 386
    const-class v5, Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v137

    move/from16 v1, v29

    move/from16 v2, v38

    invoke-static {v0, v1, v2, v5}, Landroid/text/OppoStaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v138

    check-cast v138, [Landroid/text/style/TabStopSpan;

    .line 388
    .local v138, "spans":[Landroid/text/style/TabStopSpan;
    move-object/from16 v0, v138

    array-length v5, v0

    if-lez v5, :cond_1c

    .line 389
    new-instance v140, Landroid/text/Layout$TabStops;

    .end local v140    # "tabStops":Landroid/text/Layout$TabStops;
    const/16 v5, 0x14

    move-object/from16 v0, v140

    move-object/from16 v1, v138

    invoke-direct {v0, v5, v1}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 393
    .end local v138    # "spans":[Landroid/text/style/TabStopSpan;
    .restart local v140    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_1c
    if-eqz v140, :cond_1d

    .line 394
    move-object/from16 v0, v140

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/text/Layout$TabStops;->nextTab(F)F

    move-result v62

    goto/16 :goto_9

    .line 396
    :cond_1d
    const/16 v5, 0x14

    move/from16 v0, v62

    invoke-static {v0, v5}, Landroid/text/Layout$TabStops;->nextDefaultStop(FI)F

    move-result v62

    goto/16 :goto_9

    .line 398
    :cond_1e
    const v5, 0xd800

    move/from16 v0, v94

    if-lt v0, v5, :cond_22

    const v5, 0xdfff

    move/from16 v0, v94

    if-gt v0, v5, :cond_22

    add-int/lit8 v5, v110, 0x1

    move/from16 v0, v134

    if-ge v5, v0, :cond_22

    .line 400
    sub-int v5, v110, v29

    move-object/from16 v0, v27

    invoke-static {v0, v5}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v95

    .line 402
    .local v95, "emoji":I
    sget v5, Landroid/text/OppoStaticLayout;->MIN_EMOJI:I

    move/from16 v0, v95

    if-lt v0, v5, :cond_21

    sget v5, Landroid/text/OppoStaticLayout;->MAX_EMOJI:I

    move/from16 v0, v95

    if-gt v0, v5, :cond_21

    .line 403
    sget-object v5, Landroid/text/OppoStaticLayout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    move/from16 v0, v95

    invoke-virtual {v5, v0}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v93

    .line 405
    .local v93, "bm":Landroid/graphics/Bitmap;
    if-eqz v93, :cond_20

    .line 408
    if-nez v137, :cond_1f

    .line 409
    move-object/from16 v141, p4

    .line 414
    .local v141, "whichPaint":Landroid/graphics/Paint;
    :goto_d
    invoke-virtual/range {v93 .. v93}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {v141 .. v141}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    neg-float v6, v6

    mul-float/2addr v5, v6

    invoke-virtual/range {v93 .. v93}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v142, v5, v6

    .line 416
    .local v142, "wid":F
    add-float v62, v62, v142

    .line 417
    const/16 v19, 0x1

    .line 418
    add-int/lit8 v110, v110, 0x1

    .line 419
    goto/16 :goto_9

    .line 411
    .end local v141    # "whichPaint":Landroid/graphics/Paint;
    .end local v142    # "wid":F
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/OppoStaticLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v141, v0

    .restart local v141    # "whichPaint":Landroid/graphics/Paint;
    goto :goto_d

    .line 420
    .end local v141    # "whichPaint":Landroid/graphics/Paint;
    :cond_20
    sub-int v5, v110, v29

    aget v5, v28, v5

    add-float v62, v62, v5

    goto/16 :goto_9

    .line 423
    .end local v93    # "bm":Landroid/graphics/Bitmap;
    :cond_21
    sub-int v5, v110, v29

    aget v5, v28, v5

    add-float v62, v62, v5

    goto/16 :goto_9

    .line 426
    .end local v95    # "emoji":I
    :cond_22
    sub-int v5, v110, v29

    aget v5, v28, v5

    add-float v62, v62, v5

    goto/16 :goto_9

    .line 429
    :cond_23
    const/16 v109, 0x0

    goto/16 :goto_a

    .line 447
    .restart local v109    # "isSpaceOrTab":Z
    :cond_24
    const/16 v109, 0x0

    goto/16 :goto_b

    .line 456
    :cond_25
    const/16 v108, 0x0

    goto/16 :goto_c

    .line 479
    :cond_26
    add-int/lit8 v5, v110, 0x1

    move/from16 v0, v134

    if-ge v5, v0, :cond_29

    const/16 v34, 0x1

    .line 484
    .local v34, "moreChars":Z
    :goto_e
    move/from16 v0, v122

    if-eq v0, v7, :cond_2a

    .line 485
    move/from16 v8, v122

    .line 486
    .local v8, "endPos":I
    move/from16 v9, v123

    .line 487
    .local v9, "above":I
    move/from16 v10, v125

    .line 488
    .local v10, "below":I
    move/from16 v11, v126

    .line 489
    .local v11, "top":I
    move/from16 v12, v124

    .line 490
    .local v12, "bottom":I
    move/from16 v32, v127

    .local v32, "currentTextWidth":F
    :goto_f
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v24, p3

    move/from16 v25, p9

    move/from16 v26, p10

    move-object/from16 v30, p12

    move/from16 v31, p11

    move-object/from16 v33, p4

    .line 586
    invoke-direct/range {v5 .. v34}, Landroid/text/OppoStaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v13

    .line 592
    move v7, v8

    .line 593
    add-int/lit8 v110, v7, -0x1

    .line 594
    move/from16 v98, v7

    move/from16 v122, v7

    .line 595
    const/16 v62, 0x0

    .line 596
    const/16 v42, 0x0

    move/from16 v41, v42

    move/from16 v40, v42

    move/from16 v39, v42

    .line 597
    const/16 v124, 0x0

    move/from16 v126, v124

    move/from16 v125, v124

    move/from16 v123, v124

    .line 599
    add-int/lit8 v97, v97, -0x1

    if-gtz v97, :cond_27

    .line 600
    move/from16 v143, v132

    .line 603
    :cond_27
    move/from16 v0, v136

    if-ge v7, v0, :cond_32

    .line 606
    move-object/from16 v0, v115

    invoke-virtual {v0, v7}, Landroid/text/MeasuredText;->setPos(I)V

    .line 607
    move/from16 v134, v7

    .line 354
    .end local v8    # "endPos":I
    .end local v9    # "above":I
    .end local v10    # "below":I
    .end local v11    # "top":I
    .end local v12    # "bottom":I
    .end local v32    # "currentTextWidth":F
    .end local v34    # "moreChars":Z
    .end local v94    # "c":C
    .end local v109    # "isSpaceOrTab":Z
    :cond_28
    :goto_10
    move/from16 v136, v134

    goto/16 :goto_6

    .line 479
    .restart local v94    # "c":C
    .restart local v109    # "isSpaceOrTab":Z
    :cond_29
    const/16 v34, 0x0

    goto :goto_e

    .line 491
    .restart local v34    # "moreChars":Z
    :cond_2a
    move/from16 v0, v98

    if-eq v0, v7, :cond_31

    .line 494
    if-nez v105, :cond_30

    if-nez v19, :cond_30

    if-lez p5, :cond_30

    .line 495
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    move/from16 v0, v98

    invoke-virtual {v5, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/text/OppoStaticLayout;->currentline:Ljava/lang/String;

    .line 497
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/OppoStaticLayout;->currentline:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x50

    if-ge v5, v6, :cond_30

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/OppoStaticLayout;->currentline:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/OppoStaticLayout;->IsThaiLang(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30

    sub-int v5, v98, v29

    aget-char v5, v27, v5

    invoke-static {v5}, Landroid/text/OppoStaticLayout;->CharacterIsThai(C)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 499
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/OppoStaticLayout;->currentline:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/OppoStaticLayout;->GetBreakPos(Ljava/lang/String;)I

    move-result v128

    .line 501
    .local v128, "pos_num":I
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/OppoStaticLayout;->currentline:Ljava/lang/String;

    sub-int v6, v98, v7

    move/from16 v0, v128

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v139

    .line 502
    .local v139, "string":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v139

    invoke-virtual {v0, v1}, Landroid/text/OppoStaticLayout;->getcurrentsplitnum(Ljava/lang/String;)I

    move-result v120

    .line 509
    .local v120, "numCut":I
    const/16 v100, 0x0

    .local v100, "fit_new":I
    const/16 v107, 0x0

    .local v107, "index":I
    const/16 v116, 0x0

    .local v116, "new_pos":I
    const/16 v117, 0x0

    .line 510
    .local v117, "new_pos1":I
    const/16 v129, 0x0

    .local v129, "remainwidth":F
    const/16 v130, 0x0

    .local v130, "remainwidth_new":F
    const/16 v131, 0x0

    .line 511
    .local v131, "remainwidth_new1":F
    if-lez v120, :cond_2b

    .line 512
    add-int v5, v7, v128

    add-int v100, v5, v120

    .line 521
    :goto_11
    move/from16 v111, v100

    .local v111, "k":I
    :goto_12
    move/from16 v0, v111

    move/from16 v1, v98

    if-ge v0, v1, :cond_2c

    .line 526
    sub-int v5, v111, v29

    aget v5, v28, v5

    sub-float v99, v99, v5

    .line 521
    add-int/lit8 v111, v111, 0x1

    goto :goto_12

    .line 514
    .end local v111    # "k":I
    :cond_2b
    move/from16 v100, v98

    goto :goto_11

    .line 528
    .restart local v111    # "k":I
    :cond_2c
    move/from16 v0, v143

    int-to-float v5, v0

    sub-float v129, v5, v99

    .line 533
    sub-int v119, v134, v100

    .line 534
    .local v119, "next_num":I
    sub-int v5, v100, v7

    move/from16 v0, v119

    if-le v0, v5, :cond_2d

    .line 535
    sub-int v119, v100, v7

    .line 536
    :cond_2d
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    add-int v6, v100, v119

    move/from16 v0, v100

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/text/OppoStaticLayout;->nextline:Ljava/lang/String;

    .line 539
    const/16 v107, 0x0

    .line 540
    :goto_13
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/OppoStaticLayout;->nextline:Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, v107

    invoke-virtual {v0, v5, v1}, Landroid/text/OppoStaticLayout;->getnextsplitnum(Ljava/lang/String;I)I

    move-result v116

    .line 543
    if-lez v116, :cond_2f

    .line 544
    move/from16 v118, v100

    .local v118, "nextCut":I
    :goto_14
    add-int v5, v100, v116

    move/from16 v0, v118

    if-ge v0, v5, :cond_2e

    .line 545
    sub-int v5, v118, v29

    aget v5, v28, v5

    add-float v130, v130, v5

    .line 544
    add-int/lit8 v118, v118, 0x1

    goto :goto_14

    .line 550
    :cond_2e
    cmpg-float v5, v130, v129

    if-gez v5, :cond_2f

    .line 551
    move/from16 v117, v116

    .line 552
    move/from16 v131, v130

    .line 539
    add-int/lit8 v107, v107, 0x1

    goto :goto_13

    .line 566
    .end local v118    # "nextCut":I
    :cond_2f
    add-float v99, v99, v131

    .line 567
    add-int v98, v100, v117

    .line 571
    .end local v100    # "fit_new":I
    .end local v107    # "index":I
    .end local v111    # "k":I
    .end local v116    # "new_pos":I
    .end local v117    # "new_pos1":I
    .end local v119    # "next_num":I
    .end local v120    # "numCut":I
    .end local v128    # "pos_num":I
    .end local v129    # "remainwidth":F
    .end local v130    # "remainwidth_new":F
    .end local v131    # "remainwidth_new1":F
    .end local v139    # "string":Ljava/lang/String;
    :cond_30
    move/from16 v8, v98

    .line 572
    .restart local v8    # "endPos":I
    move/from16 v9, v39

    .line 573
    .restart local v9    # "above":I
    move/from16 v10, v40

    .line 574
    .restart local v10    # "below":I
    move/from16 v11, v41

    .line 575
    .restart local v11    # "top":I
    move/from16 v12, v42

    .line 576
    .restart local v12    # "bottom":I
    move/from16 v32, v99

    .restart local v32    # "currentTextWidth":F
    goto/16 :goto_f

    .line 578
    .end local v8    # "endPos":I
    .end local v9    # "above":I
    .end local v10    # "below":I
    .end local v11    # "top":I
    .end local v12    # "bottom":I
    .end local v32    # "currentTextWidth":F
    :cond_31
    add-int/lit8 v8, v7, 0x1

    .line 579
    .restart local v8    # "endPos":I
    move-object/from16 v0, v18

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 580
    .restart local v9    # "above":I
    move-object/from16 v0, v18

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 581
    .restart local v10    # "below":I
    move-object/from16 v0, v18

    iget v11, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 582
    .restart local v11    # "top":I
    move-object/from16 v0, v18

    iget v12, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 583
    .restart local v12    # "bottom":I
    sub-int v5, v7, v29

    aget v32, v28, v5

    .restart local v32    # "currentTextWidth":F
    goto/16 :goto_f

    .line 611
    :cond_32
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/OppoStaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/OppoStaticLayout;->mMaximumVisibleLineCount:I

    if-lt v5, v6, :cond_19

    goto/16 :goto_10

    .line 618
    .end local v8    # "endPos":I
    .end local v9    # "above":I
    .end local v10    # "below":I
    .end local v11    # "top":I
    .end local v12    # "bottom":I
    .end local v32    # "currentTextWidth":F
    .end local v34    # "moreChars":Z
    .end local v94    # "c":C
    .end local v101    # "fmAscent":I
    .end local v102    # "fmBottom":I
    .end local v103    # "fmDescent":I
    .end local v104    # "fmTop":I
    .end local v109    # "isSpaceOrTab":Z
    .end local v110    # "j":I
    .end local v134    # "spanEnd":I
    .end local v135    # "spanLen":I
    :cond_33
    move/from16 v0, v38

    if-eq v0, v7, :cond_35

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/OppoStaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/OppoStaticLayout;->mMaximumVisibleLineCount:I

    if-ge v5, v6, :cond_35

    .line 619
    or-int v5, v41, v42

    or-int v5, v5, v40

    or-int v5, v5, v39

    if-nez v5, :cond_34

    .line 620
    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 622
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v41, v0

    .line 623
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v42, v0

    .line 624
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v39, v0

    .line 625
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v40, v0

    .line 630
    :cond_34
    move/from16 v0, v38

    move/from16 v1, p3

    if-eq v0, v1, :cond_39

    const/16 v64, 0x1

    :goto_15
    move-object/from16 v35, p0

    move-object/from16 v36, p1

    move/from16 v37, v7

    move/from16 v43, v13

    move/from16 v44, p7

    move/from16 v45, p8

    move-object/from16 v46, v16

    move-object/from16 v47, v17

    move-object/from16 v48, v18

    move/from16 v49, v19

    move/from16 v50, v20

    move-object/from16 v51, v21

    move/from16 v52, v22

    move/from16 v53, v23

    move/from16 v54, p3

    move/from16 v55, p9

    move/from16 v56, p10

    move-object/from16 v57, v27

    move-object/from16 v58, v28

    move/from16 v59, v29

    move-object/from16 v60, p12

    move/from16 v61, p11

    move-object/from16 v63, p4

    invoke-direct/range {v35 .. v64}, Landroid/text/OppoStaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v13

    .line 636
    :cond_35
    move/from16 v29, v38

    .line 638
    move/from16 v0, v38

    move/from16 v1, p3

    if-ne v0, v1, :cond_3a

    .line 643
    .end local v7    # "here":I
    .end local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v19    # "hasTabOrEmoji":Z
    .end local v21    # "chdirs":[B
    .end local v22    # "dir":I
    .end local v23    # "easy":Z
    .end local v27    # "chs":[C
    .end local v28    # "widths":[F
    .end local v38    # "paraEnd":I
    .end local v39    # "fitAscent":I
    .end local v40    # "fitDescent":I
    .end local v41    # "fitTop":I
    .end local v42    # "fitBottom":I
    .end local v62    # "w":F
    .end local v96    # "firstWidth":I
    .end local v97    # "firstWidthLineLimit":I
    .end local v98    # "fit":I
    .end local v99    # "fitWidth":F
    .end local v105    # "hasTab":Z
    .end local v122    # "ok":I
    .end local v123    # "okAscent":I
    .end local v124    # "okBottom":I
    .end local v125    # "okDescent":I
    .end local v126    # "okTop":I
    .end local v127    # "okWidth":F
    .end local v132    # "restWidth":I
    .end local v136    # "spanStart":I
    .end local v140    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v143    # "width":I
    :cond_36
    move/from16 v0, p3

    move/from16 v1, p2

    if-eq v0, v1, :cond_37

    add-int/lit8 v5, p3, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_38

    :cond_37
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/OppoStaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/OppoStaticLayout;->mMaximumVisibleLineCount:I

    if-ge v5, v6, :cond_38

    .line 647
    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 649
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v67, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v68, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v69, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v70, v0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v77, 0x0

    const/16 v79, 0x0

    const/16 v81, 0x1

    const/16 v85, 0x0

    const/16 v86, 0x0

    const/16 v90, 0x0

    const/16 v92, 0x0

    move-object/from16 v63, p0

    move-object/from16 v64, p1

    move/from16 v65, p3

    move/from16 v66, p3

    move/from16 v71, v13

    move/from16 v72, p7

    move/from16 v73, p8

    move-object/from16 v76, v18

    move/from16 v78, v20

    move/from16 v82, p3

    move/from16 v83, p9

    move/from16 v84, p10

    move/from16 v87, p2

    move-object/from16 v88, p12

    move/from16 v89, p11

    move-object/from16 v91, p4

    invoke-direct/range {v63 .. v92}, Landroid/text/OppoStaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v13

    .line 654
    :cond_38
    return-void

    .line 630
    .restart local v7    # "here":I
    .restart local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v19    # "hasTabOrEmoji":Z
    .restart local v21    # "chdirs":[B
    .restart local v22    # "dir":I
    .restart local v23    # "easy":Z
    .restart local v27    # "chs":[C
    .restart local v28    # "widths":[F
    .restart local v38    # "paraEnd":I
    .restart local v39    # "fitAscent":I
    .restart local v40    # "fitDescent":I
    .restart local v41    # "fitTop":I
    .restart local v42    # "fitBottom":I
    .restart local v62    # "w":F
    .restart local v96    # "firstWidth":I
    .restart local v97    # "firstWidthLineLimit":I
    .restart local v98    # "fit":I
    .restart local v99    # "fitWidth":F
    .restart local v105    # "hasTab":Z
    .restart local v122    # "ok":I
    .restart local v123    # "okAscent":I
    .restart local v124    # "okBottom":I
    .restart local v125    # "okDescent":I
    .restart local v126    # "okTop":I
    .restart local v127    # "okWidth":F
    .restart local v132    # "restWidth":I
    .restart local v136    # "spanStart":I
    .restart local v140    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v143    # "width":I
    :cond_39
    const/16 v64, 0x0

    goto/16 :goto_15

    .line 262
    :cond_3a
    move/from16 v29, v38

    goto/16 :goto_1
.end method

.method prepare()V
    .locals 1

    .prologue
    .line 1151
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/OppoStaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 1152
    return-void
.end method
