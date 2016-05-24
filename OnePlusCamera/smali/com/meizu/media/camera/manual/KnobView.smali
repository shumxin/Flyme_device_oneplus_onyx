.class public Lcom/meizu/media/camera/manual/KnobView;
.super Landroid/view/View;
.source "KnobView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/media/camera/manual/KnobView$2;,
        Lcom/meizu/media/camera/manual/KnobView$RotationState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final THRESHOLD_DISTANCE_ROTATION_CENTER:I = 0x32


# instance fields
.field private m_BackgroundPaint:Landroid/graphics/Paint;

.field private m_DashAroundAutoEnabled:Z

.field private m_DashBounds:Landroid/graphics/Rect;

.field private m_DashLength:I

.field private m_DashPadding:I

.field private m_DrawableCurrentDegree:D

.field private m_DrawableLastDegree:D

.field private m_IconPadding:I

.field private m_InitRadius:D

.field private m_IsSetupIcons:Z

.field private m_IsTouching:Z

.field private m_KnobInfo:Lcom/meizu/media/camera/manual/KnobInfo;

.field private m_KnobItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/media/camera/manual/KnobItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_KnobItemsSelfRotation:F

.field private m_KnobViewChangedListener:Lcom/meizu/media/camera/manual/KnobViewChangedListener;

.field private m_Paint:Landroid/graphics/Paint;

.field private m_RotationCenter:Landroid/graphics/PointF;

.field private m_RotationState:Lcom/meizu/media/camera/manual/KnobView$RotationState;

.field private m_Tick:I

.field private m_Value:Lcom/meizu/media/camera/manual/KnobItemInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/meizu/media/camera/manual/KnobView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/media/camera/manual/KnobView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/media/camera/manual/KnobView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-boolean v3, p0, Lcom/meizu/media/camera/manual/KnobView;->m_DashAroundAutoEnabled:Z

    .line 34
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/camera/manual/KnobView;->m_DashBounds:Landroid/graphics/Rect;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobItems:Ljava/util/List;

    .line 48
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/camera/manual/KnobView;->m_RotationCenter:Landroid/graphics/PointF;

    .line 49
    sget-object v0, Lcom/meizu/media/camera/manual/KnobView$RotationState;->IDLE:Lcom/meizu/media/camera/manual/KnobView$RotationState;

    iput-object v0, p0, Lcom/meizu/media/camera/manual/KnobView;->m_RotationState:Lcom/meizu/media/camera/manual/KnobView$RotationState;

    .line 50
    iput v2, p0, Lcom/meizu/media/camera/manual/KnobView;->m_Tick:I

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/camera/manual/KnobView;->m_BackgroundPaint:Landroid/graphics/Paint;

    .line 75
    iget-object v0, p0, Lcom/meizu/media/camera/manual/KnobView;->m_BackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 76
    iget-object v0, p0, Lcom/meizu/media/camera/manual/KnobView;->m_BackgroundPaint:Landroid/graphics/Paint;

    const/16 v1, 0xc8

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    iget-object v0, p0, Lcom/meizu/media/camera/manual/KnobView;->m_BackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 78
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/media/camera/manual/KnobView;->m_Paint:Landroid/graphics/Paint;

    .line 79
    iget-object v0, p0, Lcom/meizu/media/camera/manual/KnobView;->m_Paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 80
    iget-object v0, p0, Lcom/meizu/media/camera/manual/KnobView;->m_Paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 81
    iget-object v0, p0, Lcom/meizu/media/camera/manual/KnobView;->m_Paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    iget-object v0, p0, Lcom/meizu/media/camera/manual/KnobView;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/media/camera/manual/KnobView;->m_DashLength:I

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/media/camera/manual/KnobView;->m_DashPadding:I

    .line 89
    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/KnobView;->setupIcons()Z

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/media/camera/manual/KnobView;D)V
    .locals 1
    .param p0, "x0"    # Lcom/meizu/media/camera/manual/KnobView;
    .param p1, "x1"    # D

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/meizu/media/camera/manual/KnobView;->setKnobViewRotation(D)V

    return-void
.end method

.method private evaluateRotation(FF)D
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 190
    iget-object v2, p0, Lcom/meizu/media/camera/manual/KnobView;->m_RotationCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float v2, p2, v2

    neg-float v0, v2

    .line 191
    .local v0, "xx":F
    iget-object v2, p0, Lcom/meizu/media/camera/manual/KnobView;->m_RotationCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float v1, p1, v2

    .line 194
    .local v1, "yy":F
    float-to-double v2, v1

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    return-wide v2
.end method

.method private evaluateRotationCenter()Landroid/graphics/PointF;
    .locals 13

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 201
    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/KnobView;->getWidth()I

    move-result v3

    .line 202
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/KnobView;->getHeight()I

    move-result v2

    .line 203
    .local v2, "height":I
    int-to-float v6, v3

    div-float/2addr v6, v12

    float-to-double v6, v6

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    int-to-double v8, v2

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 204
    .local v0, "fanEdge":D
    div-double v6, v0, v10

    int-to-double v8, v2

    div-double/2addr v8, v0

    div-double v4, v6, v8

    .line 205
    .local v4, "y":D
    new-instance v6, Landroid/graphics/PointF;

    int-to-float v7, v3

    div-float/2addr v7, v12

    double-to-float v8, v4

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v6
.end method

.method private getKnobItemFromTick(I)Lcom/meizu/media/camera/manual/KnobItemInfo;
    .locals 4
    .param p1, "tick"    # I

    .prologue
    const/4 v2, 0x0

    .line 219
    iget-object v3, p0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobItems:Ljava/util/List;

    if-nez v3, :cond_0

    move-object v1, v2

    .line 226
    :goto_0
    return-object v1

    .line 221
    :cond_0
    iget-object v3, p0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/manual/KnobItemInfo;

    .line 223
    .local v1, "item":Lcom/meizu/media/camera/manual/KnobItemInfo;
    iget v3, v1, Lcom/meizu/media/camera/manual/KnobItemInfo;->tick:I

    if-ne v3, p1, :cond_1

    goto :goto_0

    .end local v1    # "item":Lcom/meizu/media/camera/manual/KnobItemInfo;
    :cond_2
    move-object v1, v2

    .line 226
    goto :goto_0
.end method

.method private isTooCloseToCenter(FF)Z
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 240
    iget-object v2, p0, Lcom/meizu/media/camera/manual/KnobView;->m_RotationCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float v2, p1, v2

    float-to-double v2, v2

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget-object v4, p0, Lcom/meizu/media/camera/manual/KnobView;->m_RotationCenter:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float v4, p2, v4

    float-to-double v4, v4

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 241
    .local v0, "result":D
    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private mapRotationToTick(D)I
    .locals 19
    .param p1, "rotation"    # D

    .prologue
    .line 248
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobInfo:Lcom/meizu/media/camera/manual/KnobInfo;

    if-nez v5, :cond_0

    .line 249
    const/4 v5, 0x0

    .line 263
    :goto_0
    return v5

    .line 250
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobInfo:Lcom/meizu/media/camera/manual/KnobInfo;

    iget v5, v5, Lcom/meizu/media/camera/manual/KnobInfo;->angleMax:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobInfo:Lcom/meizu/media/camera/manual/KnobInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/meizu/media/camera/manual/KnobInfo;->angleMin:I

    move/from16 v16, v0

    sub-int v5, v5, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobInfo:Lcom/meizu/media/camera/manual/KnobInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/meizu/media/camera/manual/KnobInfo;->autoAngle:I

    move/from16 v16, v0

    sub-int v5, v5, v16

    int-to-double v8, v5

    .line 251
    .local v8, "knobAngle":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobInfo:Lcom/meizu/media/camera/manual/KnobInfo;

    iget v5, v5, Lcom/meizu/media/camera/manual/KnobInfo;->tickMax:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobInfo:Lcom/meizu/media/camera/manual/KnobInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/meizu/media/camera/manual/KnobInfo;->tickMin:I

    move/from16 v16, v0

    sub-int v5, v5, v16

    int-to-double v10, v5

    .line 252
    .local v10, "knobSteps":D
    div-double v6, v8, v10

    .line 253
    .local v6, "includedAngle":D
    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 254
    .local v12, "preDiffAngle":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobInfo:Lcom/meizu/media/camera/manual/KnobInfo;

    iget v4, v5, Lcom/meizu/media/camera/manual/KnobInfo;->tickMin:I

    .local v4, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobInfo:Lcom/meizu/media/camera/manual/KnobInfo;

    iget v5, v5, Lcom/meizu/media/camera/manual/KnobInfo;->tickMax:I

    if-gt v4, v5, :cond_3

    .line 256
    invoke-static {v4}, Ljava/lang/Integer;->signum(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobInfo:Lcom/meizu/media/camera/manual/KnobInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/meizu/media/camera/manual/KnobInfo;->autoAngle:I

    move/from16 v16, v0

    mul-int v5, v5, v16

    div-int/lit8 v5, v5, 0x2

    int-to-double v14, v5

    .line 257
    .local v14, "shiftAngle":D
    int-to-float v5, v4

    float-to-double v0, v5

    move-wide/from16 v16, v0

    mul-double v16, v16, v6

    add-double v16, v16, v14

    sub-double v16, v16, p1

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 258
    .local v2, "diff":D
    cmpg-double v5, v2, v12

    if-gez v5, :cond_2

    .line 259
    move-wide v12, v2

    .line 254
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 260
    :cond_2
    cmpl-double v5, v2, v12

    if-ltz v5, :cond_1

    .line 261
    add-int/lit8 v5, v4, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/meizu/media/camera/manual/KnobView;->validateTick(I)I

    move-result v5

    goto/16 :goto_0

    .line 263
    .end local v2    # "diff":D
    .end local v14    # "shiftAngle":D
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobInfo:Lcom/meizu/media/camera/manual/KnobInfo;

    iget v5, v5, Lcom/meizu/media/camera/manual/KnobInfo;->tickMax:I

    goto/16 :goto_0
.end method

.method private mapTickToRotation(I)D
    .locals 10
    .param p1, "tick"    # I

    .prologue
    .line 298
    iget-object v8, p0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobInfo:Lcom/meizu/media/camera/manual/KnobInfo;

    if-nez v8, :cond_0

    .line 299
    const-wide/16 v8, 0x0

    .line 304
    :goto_0
    return-wide v8

    .line 300
    :cond_0
    iget-object v8, p0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobInfo:Lcom/meizu/media/camera/manual/KnobInfo;

    iget v8, v8, Lcom/meizu/media/camera/manual/KnobInfo;->angleMax:I

    iget-object v9, p0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobInfo:Lcom/meizu/media/camera/manual/KnobInfo;

    iget v9, v9, Lcom/meizu/media/camera/manual/KnobInfo;->angleMin:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobInfo:Lcom/meizu/media/camera/manual/KnobInfo;

    iget v9, v9, Lcom/meizu/media/camera/manual/KnobInfo;->autoAngle:I

    sub-int/2addr v8, v9

    int-to-double v2, v8

    .line 301
    .local v2, "knobAngle":D
    iget-object v8, p0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobInfo:Lcom/meizu/media/camera/manual/KnobInfo;

    iget v8, v8, Lcom/meizu/media/camera/manual/KnobInfo;->tickMax:I

    iget-object v9, p0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobInfo:Lcom/meizu/media/camera/manual/KnobInfo;

    iget v9, v9, Lcom/meizu/media/camera/manual/KnobInfo;->tickMin:I

    sub-int/2addr v8, v9

    int-to-double v4, v8

    .line 302
    .local v4, "knobSteps":D
    div-double v0, v2, v4

    .line 303
    .local v0, "includedAngle":D
    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result v8

    iget-object v9, p0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobInfo:Lcom/meizu/media/camera/manual/KnobInfo;

    iget v9, v9, Lcom/meizu/media/camera/manual/KnobInfo;->autoAngle:I

    mul-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    int-to-double v6, v8

    .line 304
    .local v6, "shiftAngle":D
    int-to-double v8, p1

    mul-double/2addr v8, v0

    add-double/2addr v8, v6

    invoke-direct {p0, v8, v9}, Lcom/meizu/media/camera/manual/KnobView;->validateRotation(D)D

    move-result-wide v8

    goto :goto_0
.end method

.method private mapTickToValue(I)D
    .locals 5
    .param p1, "tick"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 270
    iget-object v4, p0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobItems:Ljava/util/List;

    if-nez v4, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-wide v2

    .line 272
    :cond_1
    iget-object v4, p0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/manual/KnobItemInfo;

    .line 274
    .local v1, "item":Lcom/meizu/media/camera/manual/KnobItemInfo;
    iget v4, v1, Lcom/meizu/media/camera/manual/KnobItemInfo;->tick:I

    if-ne v4, p1, :cond_2

    .line 275
    iget-wide v2, v1, Lcom/meizu/media/camera/manual/KnobItemInfo;->value:D

    goto :goto_0
.end method

.method private mapToKnobRotationDegree(D)D
    .locals 3
    .param p1, "rotation"    # D

    .prologue
    .line 291
    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    neg-double v0, v0

    return-wide v0
.end method

.method private onActionDown(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 311
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 312
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 313
    .local v1, "y":F
    invoke-direct {p0, v0, v1}, Lcom/meizu/media/camera/manual/KnobView;->isTooCloseToCenter(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 315
    sget-object v2, Lcom/meizu/media/camera/manual/KnobView;->TAG:Ljava/lang/String;

    const-string v3, "onActionDown() - Too close to center"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :goto_0
    return-void

    .line 318
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/meizu/media/camera/manual/KnobView;->evaluateRotation(FF)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/meizu/media/camera/manual/KnobView;->m_InitRadius:D

    .line 319
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/meizu/media/camera/manual/KnobView;->m_IsTouching:Z

    .line 322
    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/KnobView;->onRotationStartFromTouch()V

    goto :goto_0
.end method

.method private onActionMove(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 329
    iget-boolean v6, p0, Lcom/meizu/media/camera/manual/KnobView;->m_IsTouching:Z

    if-nez v6, :cond_0

    .line 349
    :goto_0
    return-void

    .line 332
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 333
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 334
    .local v5, "y":F
    invoke-direct {p0, v4, v5}, Lcom/meizu/media/camera/manual/KnobView;->isTooCloseToCenter(FF)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 336
    sget-object v6, Lcom/meizu/media/camera/manual/KnobView;->TAG:Ljava/lang/String;

    const-string v7, "onActionMove() - Too close to center, stop running"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/meizu/media/camera/manual/KnobView;->m_IsTouching:Z

    .line 339
    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/KnobView;->onRotationEndFromTouch()V

    goto :goto_0

    .line 342
    :cond_1
    invoke-direct {p0, v4, v5}, Lcom/meizu/media/camera/manual/KnobView;->evaluateRotation(FF)D

    move-result-wide v0

    .line 345
    .local v0, "radius":D
    iget-wide v6, p0, Lcom/meizu/media/camera/manual/KnobView;->m_InitRadius:D

    sub-double v2, v0, v6

    .line 348
    .local v2, "radiusDiff":D
    invoke-virtual {p0, v2, v3}, Lcom/meizu/media/camera/manual/KnobView;->onRotationUpdateFromTouch(D)V

    goto :goto_0
.end method

.method private onActionUp(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/meizu/media/camera/manual/KnobView;->m_IsTouching:Z

    if-nez v0, :cond_0

    .line 362
    :goto_0
    return-void

    .line 358
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/media/camera/manual/KnobView;->m_IsTouching:Z

    .line 361
    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/KnobView;->onRotationEndFromTouch()V

    goto :goto_0
.end method

.method private onSelectedKnobItemChanged(Lcom/meizu/media/camera/manual/KnobItemInfo;Lcom/meizu/media/camera/manual/KnobItemInfo;)V
    .locals 1
    .param p1, "oldItem"    # Lcom/meizu/media/camera/manual/KnobItemInfo;
    .param p2, "newItem"    # Lcom/meizu/media/camera/manual/KnobItemInfo;

    .prologue
    .line 432
    if-nez p2, :cond_1

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    iput-object p2, p0, Lcom/meizu/media/camera/manual/KnobView;->m_Value:Lcom/meizu/media/camera/manual/KnobItemInfo;

    .line 435
    iget-object v0, p0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobViewChangedListener:Lcom/meizu/media/camera/manual/KnobViewChangedListener;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobViewChangedListener:Lcom/meizu/media/camera/manual/KnobViewChangedListener;

    invoke-interface {v0, p1, p2}, Lcom/meizu/media/camera/manual/KnobViewChangedListener;->onSelectedKnobItemChanged(Lcom/meizu/media/camera/manual/KnobItemInfo;Lcom/meizu/media/camera/manual/KnobItemInfo;)V

    goto :goto_0
.end method

.method private setKnobViewRotation(D)V
    .locals 1
    .param p1, "rotation"    # D

    .prologue
    .line 568
    iput-wide p1, p0, Lcom/meizu/media/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    .line 569
    iput-wide p1, p0, Lcom/meizu/media/camera/manual/KnobView;->m_DrawableLastDegree:D

    .line 570
    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/KnobView;->invalidate()V

    .line 571
    return-void
.end method

.method private setKnobViewRotationSmooth(D)V
    .locals 7
    .param p1, "rotation"    # D

    .prologue
    .line 577
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/meizu/media/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    double-to-float v3, v4

    aput v3, v1, v2

    const/4 v2, 0x1

    double-to-float v3, p1

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 578
    .local v0, "animation":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 579
    new-instance v1, Lcom/meizu/media/camera/manual/KnobView$1;

    invoke-direct {v1, p0}, Lcom/meizu/media/camera/manual/KnobView$1;-><init>(Lcom/meizu/media/camera/manual/KnobView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 588
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 589
    return-void
.end method

.method private setRotationState(Lcom/meizu/media/camera/manual/KnobView$RotationState;)V
    .locals 1
    .param p1, "state"    # Lcom/meizu/media/camera/manual/KnobView$RotationState;

    .prologue
    .line 595
    iget-object v0, p0, Lcom/meizu/media/camera/manual/KnobView;->m_RotationState:Lcom/meizu/media/camera/manual/KnobView$RotationState;

    if-ne v0, p1, :cond_1

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 599
    :cond_1
    iput-object p1, p0, Lcom/meizu/media/camera/manual/KnobView;->m_RotationState:Lcom/meizu/media/camera/manual/KnobView$RotationState;

    .line 602
    iget-object v0, p0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobViewChangedListener:Lcom/meizu/media/camera/manual/KnobViewChangedListener;

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobViewChangedListener:Lcom/meizu/media/camera/manual/KnobViewChangedListener;

    invoke-interface {v0, p1}, Lcom/meizu/media/camera/manual/KnobViewChangedListener;->onRotationStateChanged(Lcom/meizu/media/camera/manual/KnobView$RotationState;)V

    goto :goto_0
.end method

.method private setTick(I)V
    .locals 3
    .param p1, "tick"    # I

    .prologue
    .line 610
    iget v1, p0, Lcom/meizu/media/camera/manual/KnobView;->m_Tick:I

    if-ne v1, p1, :cond_0

    .line 615
    :goto_0
    return-void

    .line 612
    :cond_0
    iget v0, p0, Lcom/meizu/media/camera/manual/KnobView;->m_Tick:I

    .line 613
    .local v0, "oldTick":I
    iput p1, p0, Lcom/meizu/media/camera/manual/KnobView;->m_Tick:I

    .line 614
    invoke-direct {p0, v0}, Lcom/meizu/media/camera/manual/KnobView;->getKnobItemFromTick(I)Lcom/meizu/media/camera/manual/KnobItemInfo;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/meizu/media/camera/manual/KnobView;->getKnobItemFromTick(I)Lcom/meizu/media/camera/manual/KnobItemInfo;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/meizu/media/camera/manual/KnobView;->onSelectedKnobItemChanged(Lcom/meizu/media/camera/manual/KnobItemInfo;Lcom/meizu/media/camera/manual/KnobItemInfo;)V

    goto :goto_0
.end method

.method private updateDashBounds()V
    .locals 6

    .prologue
    .line 635
    iget-object v0, p0, Lcom/meizu/media/camera/manual/KnobView;->m_DashBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/KnobView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/meizu/media/camera/manual/KnobView;->m_DashPadding:I

    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/KnobView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/meizu/media/camera/manual/KnobView;->m_DashPadding:I

    iget v5, p0, Lcom/meizu/media/camera/manual/KnobView;->m_DashLength:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 636
    return-void
.end method

.method private updateKnobItemSelection()V
    .locals 4

    .prologue
    .line 684
    iget-object v2, p0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobItems:Ljava/util/List;

    if-nez v2, :cond_1

    .line 696
    :cond_0
    return-void

    .line 686
    :cond_1
    iget-object v2, p0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/camera/manual/KnobItemInfo;

    .line 688
    .local v1, "item":Lcom/meizu/media/camera/manual/KnobItemInfo;
    iget v2, v1, Lcom/meizu/media/camera/manual/KnobItemInfo;->tick:I

    iget v3, p0, Lcom/meizu/media/camera/manual/KnobView;->m_Tick:I

    if-ne v2, v3, :cond_2

    .line 690
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/meizu/media/camera/manual/KnobItemInfo;->isSelected:Z

    .line 691
    iput-object v1, p0, Lcom/meizu/media/camera/manual/KnobView;->m_Value:Lcom/meizu/media/camera/manual/KnobItemInfo;

    goto :goto_0

    .line 694
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/meizu/media/camera/manual/KnobItemInfo;->isSelected:Z

    goto :goto_0
.end method

.method private updateKnobItemsBounds()V
    .locals 32

    .prologue
    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobItems:Ljava/util/List;

    move-object/from16 v28, v0

    if-nez v28, :cond_1

    .line 678
    :cond_0
    :goto_0
    return-void

    .line 644
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobItems:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/meizu/media/camera/manual/KnobItemInfo;

    .line 646
    .local v14, "item":Lcom/meizu/media/camera/manual/KnobItemInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/media/camera/manual/KnobView;->getWidth()I

    move-result v28

    div-int/lit8 v28, v28, 0x2

    iget-object v0, v14, Lcom/meizu/media/camera/manual/KnobItemInfo;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v29

    div-int/lit8 v29, v29, 0x2

    sub-int v15, v28, v29

    .line 647
    .local v15, "left":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/media/camera/manual/KnobView;->m_IconPadding:I

    move/from16 v25, v0

    .line 648
    .local v25, "top":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobItemsSelfRotation:F

    move/from16 v28, v0

    const/high16 v29, 0x43340000    # 180.0f

    rem-float v28, v28, v29

    const/16 v29, 0x0

    cmpl-float v28, v28, v29

    if-eqz v28, :cond_2

    .line 649
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/media/camera/manual/KnobView;->m_IconPadding:I

    move/from16 v28, v0

    iget-object v0, v14, Lcom/meizu/media/camera/manual/KnobItemInfo;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v29

    div-int/lit8 v29, v29, 0x2

    add-int v28, v28, v29

    iget-object v0, v14, Lcom/meizu/media/camera/manual/KnobItemInfo;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v29

    div-int/lit8 v29, v29, 0x2

    sub-int v25, v28, v29

    .line 650
    :cond_2
    iget-object v0, v14, Lcom/meizu/media/camera/manual/KnobItemInfo;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v28

    add-int v24, v15, v28

    .line 651
    .local v24, "right":I
    iget-object v0, v14, Lcom/meizu/media/camera/manual/KnobItemInfo;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v28

    add-int v4, v25, v28

    .line 652
    .local v4, "bottom":I
    iget-object v0, v14, Lcom/meizu/media/camera/manual/KnobItemInfo;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v25

    move/from16 v2, v24

    invoke-virtual {v0, v15, v1, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobInfo:Lcom/meizu/media/camera/manual/KnobInfo;

    move-object/from16 v28, v0

    if-eqz v28, :cond_0

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobInfo:Lcom/meizu/media/camera/manual/KnobInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/meizu/media/camera/manual/KnobInfo;->angleMax:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobInfo:Lcom/meizu/media/camera/manual/KnobInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/meizu/media/camera/manual/KnobInfo;->angleMin:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobInfo:Lcom/meizu/media/camera/manual/KnobInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/meizu/media/camera/manual/KnobInfo;->autoAngle:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v16, v0

    .line 658
    .local v16, "knobAngle":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobInfo:Lcom/meizu/media/camera/manual/KnobInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/meizu/media/camera/manual/KnobInfo;->tickMax:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobInfo:Lcom/meizu/media/camera/manual/KnobInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/meizu/media/camera/manual/KnobInfo;->tickMin:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v18, v0

    .line 659
    .local v18, "knobSteps":D
    div-double v12, v16, v18

    .line 660
    .local v12, "includedAngle":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/manual/KnobView;->m_RotationCenter:Landroid/graphics/PointF;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v28, v0

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v22, v0

    .line 661
    .local v22, "radius":D
    iget-object v0, v14, Lcom/meizu/media/camera/manual/KnobItemInfo;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v28

    div-int/lit8 v28, v28, 0x2

    move/from16 v0, v28

    int-to-double v10, v0

    .line 662
    .local v10, "edgeY":D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/media/camera/manual/KnobView;->m_IconPadding:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    sub-double v28, v22, v28

    iget-object v0, v14, Lcom/meizu/media/camera/manual/KnobItemInfo;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v30

    div-int/lit8 v30, v30, 0x2

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v30, v0

    sub-double v8, v28, v30

    .line 663
    .local v8, "edgeX":D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobItemsSelfRotation:F

    move/from16 v28, v0

    const/high16 v29, 0x43340000    # 180.0f

    rem-float v28, v28, v29

    const/16 v29, 0x0

    cmpl-float v28, v28, v29

    if-eqz v28, :cond_3

    .line 665
    iget-object v0, v14, Lcom/meizu/media/camera/manual/KnobItemInfo;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v28

    div-int/lit8 v28, v28, 0x2

    move/from16 v0, v28

    int-to-double v10, v0

    .line 666
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/media/camera/manual/KnobView;->m_IconPadding:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    sub-double v28, v22, v28

    iget-object v0, v14, Lcom/meizu/media/camera/manual/KnobItemInfo;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v30

    div-int/lit8 v30, v30, 0x2

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v30, v0

    sub-double v8, v28, v30

    .line 668
    :cond_3
    div-double v28, v10, v8

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->atan(D)D

    move-result-wide v20

    .line 669
    .local v20, "radian":D
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    .line 670
    .local v6, "drawableAngleHalf":D
    iget v0, v14, Lcom/meizu/media/camera/manual/KnobItemInfo;->tick:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->signum(I)I

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobInfo:Lcom/meizu/media/camera/manual/KnobInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/meizu/media/camera/manual/KnobInfo;->autoAngle:I

    move/from16 v29, v0

    mul-int v28, v28, v29

    div-int/lit8 v28, v28, 0x2

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v26, v0

    .line 671
    .local v26, "shiftAngle":D
    iget v0, v14, Lcom/meizu/media/camera/manual/KnobItemInfo;->tick:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v28, v28, v12

    add-double v28, v28, v26

    move-wide/from16 v0, v28

    iput-wide v0, v14, Lcom/meizu/media/camera/manual/KnobItemInfo;->rotationCenter:D

    .line 672
    iget-wide v0, v14, Lcom/meizu/media/camera/manual/KnobItemInfo;->rotationCenter:D

    move-wide/from16 v28, v0

    sub-double v28, v28, v6

    move-wide/from16 v0, v28

    iput-wide v0, v14, Lcom/meizu/media/camera/manual/KnobItemInfo;->rotationLeft:D

    .line 673
    iget-wide v0, v14, Lcom/meizu/media/camera/manual/KnobItemInfo;->rotationCenter:D

    move-wide/from16 v28, v0

    add-double v28, v28, v6

    move-wide/from16 v0, v28

    iput-wide v0, v14, Lcom/meizu/media/camera/manual/KnobItemInfo;->rotationRight:D

    goto/16 :goto_1

    .line 677
    .end local v4    # "bottom":I
    .end local v6    # "drawableAngleHalf":D
    .end local v8    # "edgeX":D
    .end local v10    # "edgeY":D
    .end local v12    # "includedAngle":D
    .end local v14    # "item":Lcom/meizu/media/camera/manual/KnobItemInfo;
    .end local v15    # "left":I
    .end local v16    # "knobAngle":D
    .end local v18    # "knobSteps":D
    .end local v20    # "radian":D
    .end local v22    # "radius":D
    .end local v24    # "right":I
    .end local v25    # "top":I
    .end local v26    # "shiftAngle":D
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobItems:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method private validateRotation(D)D
    .locals 5
    .param p1, "rotation"    # D

    .prologue
    .line 702
    iget-object v2, p0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobInfo:Lcom/meizu/media/camera/manual/KnobInfo;

    if-nez v2, :cond_0

    move-wide v0, p1

    .line 708
    .end local p1    # "rotation":D
    .local v0, "rotation":D
    :goto_0
    return-wide v0

    .line 704
    .end local v0    # "rotation":D
    .restart local p1    # "rotation":D
    :cond_0
    iget-object v2, p0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobInfo:Lcom/meizu/media/camera/manual/KnobInfo;

    iget v2, v2, Lcom/meizu/media/camera/manual/KnobInfo;->angleMax:I

    int-to-double v2, v2

    cmpl-double v2, p1, v2

    if-lez v2, :cond_2

    .line 705
    iget-object v2, p0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobInfo:Lcom/meizu/media/camera/manual/KnobInfo;

    iget v2, v2, Lcom/meizu/media/camera/manual/KnobInfo;->angleMax:I

    int-to-double p1, v2

    :cond_1
    :goto_1
    move-wide v0, p1

    .line 708
    .end local p1    # "rotation":D
    .restart local v0    # "rotation":D
    goto :goto_0

    .line 706
    .end local v0    # "rotation":D
    .restart local p1    # "rotation":D
    :cond_2
    iget-object v2, p0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobInfo:Lcom/meizu/media/camera/manual/KnobInfo;

    iget v2, v2, Lcom/meizu/media/camera/manual/KnobInfo;->angleMin:I

    int-to-double v2, v2

    cmpg-double v2, p1, v2

    if-gez v2, :cond_1

    .line 707
    iget-object v2, p0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobInfo:Lcom/meizu/media/camera/manual/KnobInfo;

    iget v2, v2, Lcom/meizu/media/camera/manual/KnobInfo;->angleMin:I

    int-to-double p1, v2

    goto :goto_1
.end method

.method private validateTick(I)I
    .locals 2
    .param p1, "tick"    # I

    .prologue
    .line 715
    iget-object v1, p0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobInfo:Lcom/meizu/media/camera/manual/KnobInfo;

    if-nez v1, :cond_0

    move v0, p1

    .line 721
    .end local p1    # "tick":I
    .local v0, "tick":I
    :goto_0
    return v0

    .line 717
    .end local v0    # "tick":I
    .restart local p1    # "tick":I
    :cond_0
    iget-object v1, p0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobInfo:Lcom/meizu/media/camera/manual/KnobInfo;

    iget v1, v1, Lcom/meizu/media/camera/manual/KnobInfo;->tickMax:I

    if-le p1, v1, :cond_2

    .line 718
    iget-object v1, p0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobInfo:Lcom/meizu/media/camera/manual/KnobInfo;

    iget p1, v1, Lcom/meizu/media/camera/manual/KnobInfo;->tickMax:I

    :cond_1
    :goto_1
    move v0, p1

    .line 721
    .end local p1    # "tick":I
    .restart local v0    # "tick":I
    goto :goto_0

    .line 719
    .end local v0    # "tick":I
    .restart local p1    # "tick":I
    :cond_2
    iget-object v1, p0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobInfo:Lcom/meizu/media/camera/manual/KnobInfo;

    iget v1, v1, Lcom/meizu/media/camera/manual/KnobInfo;->tickMin:I

    if-ge p1, v1, :cond_1

    .line 720
    iget-object v1, p0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobInfo:Lcom/meizu/media/camera/manual/KnobInfo;

    iget p1, v1, Lcom/meizu/media/camera/manual/KnobInfo;->tickMin:I

    goto :goto_1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 96
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/media/camera/manual/KnobView;->m_RotationCenter:Landroid/graphics/PointF;

    if-nez v2, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobInfo:Lcom/meizu/media/camera/manual/KnobInfo;

    if-eqz v2, :cond_0

    .line 101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/media/camera/manual/KnobView;->m_RotationCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/manual/KnobView;->m_RotationCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/media/camera/manual/KnobView;->m_RotationCenter:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/media/camera/manual/KnobView;->m_BackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 103
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobItems:Ljava/util/List;

    if-eqz v2, :cond_8

    .line 106
    const-wide/high16 v18, 0x7ff8000000000000L    # NaN

    .line 107
    .local v18, "startAngle":D
    const-wide/high16 v12, 0x7ff8000000000000L    # NaN

    .line 108
    .local v12, "endAngle":D
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v14, v2, :cond_8

    .line 110
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobItems:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/meizu/media/camera/manual/KnobItemInfo;

    .line 111
    .local v15, "item":Lcom/meizu/media/camera/manual/KnobItemInfo;
    add-int/lit8 v2, v14, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobItems:Ljava/util/List;

    add-int/lit8 v3, v14, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/media/camera/manual/KnobItemInfo;

    move-object/from16 v16, v2

    .line 112
    .local v16, "nextItem":Lcom/meizu/media/camera/manual/KnobItemInfo;
    :goto_2
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/meizu/media/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    neg-double v2, v2

    iget-wide v4, v15, Lcom/meizu/media/camera/manual/KnobItemInfo;->rotationCenter:D

    add-double v10, v2, v4

    .line 113
    .local v10, "drawRotation":D
    double-to-float v2, v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/manual/KnobView;->m_RotationCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/media/camera/manual/KnobView;->m_RotationCenter:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 114
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobItemsSelfRotation:F

    neg-float v2, v2

    iget-object v3, v15, Lcom/meizu/media/camera/manual/KnobItemInfo;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    iget-object v4, v15, Lcom/meizu/media/camera/manual/KnobItemInfo;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 115
    iget-object v2, v15, Lcom/meizu/media/camera/manual/KnobItemInfo;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 116
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobItemsSelfRotation:F

    iget-object v3, v15, Lcom/meizu/media/camera/manual/KnobItemInfo;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    iget-object v4, v15, Lcom/meizu/media/camera/manual/KnobItemInfo;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 117
    neg-double v2, v10

    double-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/manual/KnobView;->m_RotationCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/media/camera/manual/KnobView;->m_RotationCenter:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/media/camera/manual/KnobView;->m_DashBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_2

    if-eqz v16, :cond_2

    .line 123
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/meizu/media/camera/manual/KnobView;->m_DashAroundAutoEnabled:Z

    if-nez v2, :cond_4

    iget v2, v15, Lcom/meizu/media/camera/manual/KnobItemInfo;->tick:I

    if-eqz v2, :cond_2

    move-object/from16 v0, v16

    iget v2, v0, Lcom/meizu/media/camera/manual/KnobItemInfo;->tick:I

    if-nez v2, :cond_4

    .line 108
    :cond_2
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 111
    .end local v10    # "drawRotation":D
    .end local v16    # "nextItem":Lcom/meizu/media/camera/manual/KnobItemInfo;
    :cond_3
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 125
    .restart local v10    # "drawRotation":D
    .restart local v16    # "nextItem":Lcom/meizu/media/camera/manual/KnobItemInfo;
    :cond_4
    iget-wide v2, v15, Lcom/meizu/media/camera/manual/KnobItemInfo;->rotationRight:D

    iget-wide v4, v15, Lcom/meizu/media/camera/manual/KnobItemInfo;->rotationLeft:D

    sub-double/2addr v2, v4

    const-wide v4, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v2, v2, v4

    if-lez v2, :cond_5

    .line 126
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/meizu/media/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    neg-double v2, v2

    iget-wide v4, v15, Lcom/meizu/media/camera/manual/KnobItemInfo;->rotationRight:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    add-double v18, v2, v4

    .line 127
    :cond_5
    move-object/from16 v0, v16

    iget-wide v2, v0, Lcom/meizu/media/camera/manual/KnobItemInfo;->rotationRight:D

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/meizu/media/camera/manual/KnobItemInfo;->rotationLeft:D

    sub-double/2addr v2, v4

    const-wide v4, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v2, v2, v4

    if-lez v2, :cond_6

    .line 128
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/meizu/media/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    neg-double v2, v2

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/meizu/media/camera/manual/KnobItemInfo;->rotationLeft:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    sub-double v12, v2, v4

    .line 129
    :cond_6
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_2

    .line 131
    move-wide/from16 v8, v18

    .line 132
    .local v8, "currentAngle":D
    :goto_4
    cmpg-double v2, v8, v12

    if-gez v2, :cond_7

    .line 134
    double-to-float v2, v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/manual/KnobView;->m_RotationCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/media/camera/manual/KnobView;->m_RotationCenter:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/media/camera/manual/KnobView;->m_DashBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/media/camera/manual/KnobView;->m_DashBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/media/camera/manual/KnobView;->m_DashBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/media/camera/manual/KnobView;->m_DashBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/meizu/media/camera/manual/KnobView;->m_Paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 136
    neg-double v2, v8

    double-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/media/camera/manual/KnobView;->m_RotationCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/media/camera/manual/KnobView;->m_RotationCenter:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 137
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v2

    goto :goto_4

    .line 139
    :cond_7
    const-wide/high16 v18, 0x7ff8000000000000L    # NaN

    .line 140
    const-wide/high16 v12, 0x7ff8000000000000L    # NaN

    goto/16 :goto_3

    .line 144
    .end local v8    # "currentAngle":D
    .end local v10    # "drawRotation":D
    .end local v12    # "endAngle":D
    .end local v14    # "i":I
    .end local v15    # "item":Lcom/meizu/media/camera/manual/KnobItemInfo;
    .end local v16    # "nextItem":Lcom/meizu/media/camera/manual/KnobItemInfo;
    .end local v18    # "startAngle":D
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0
.end method

.method public getCurrentKnobItem()Lcom/meizu/media/camera/manual/KnobItemInfo;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/meizu/media/camera/manual/KnobView;->m_Value:Lcom/meizu/media/camera/manual/KnobItemInfo;

    return-object v0
.end method

.method public isSetupIcons()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/meizu/media/camera/manual/KnobView;->m_IsSetupIcons:Z

    return v0
.end method

.method public onCancelPendingInputEvents()V
    .locals 1

    .prologue
    .line 370
    invoke-super {p0}, Landroid/view/View;->onCancelPendingInputEvents()V

    .line 372
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/manual/KnobView;->onActionUp(Landroid/view/MotionEvent;)V

    .line 373
    return-void
.end method

.method public onRotationEndFromTouch()V
    .locals 4

    .prologue
    .line 380
    sget-object v2, Lcom/meizu/media/camera/manual/KnobView$RotationState;->STOPPING:Lcom/meizu/media/camera/manual/KnobView$RotationState;

    invoke-direct {p0, v2}, Lcom/meizu/media/camera/manual/KnobView;->setRotationState(Lcom/meizu/media/camera/manual/KnobView$RotationState;)V

    .line 382
    iget-wide v2, p0, Lcom/meizu/media/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    iput-wide v2, p0, Lcom/meizu/media/camera/manual/KnobView;->m_DrawableLastDegree:D

    .line 383
    iget-wide v2, p0, Lcom/meizu/media/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    invoke-direct {p0, v2, v3}, Lcom/meizu/media/camera/manual/KnobView;->mapRotationToTick(D)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/meizu/media/camera/manual/KnobView;->setTick(I)V

    .line 384
    iget v2, p0, Lcom/meizu/media/camera/manual/KnobView;->m_Tick:I

    invoke-direct {p0, v2}, Lcom/meizu/media/camera/manual/KnobView;->mapTickToRotation(I)D

    move-result-wide v0

    .line 385
    .local v0, "candRotation":D
    invoke-direct {p0, v0, v1}, Lcom/meizu/media/camera/manual/KnobView;->setKnobViewRotationSmooth(D)V

    .line 386
    iget v2, p0, Lcom/meizu/media/camera/manual/KnobView;->m_Tick:I

    invoke-direct {p0, v2}, Lcom/meizu/media/camera/manual/KnobView;->getKnobItemFromTick(I)Lcom/meizu/media/camera/manual/KnobItemInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/meizu/media/camera/manual/KnobItemInfo;->drawable:Landroid/graphics/drawable/Drawable;

    sget-object v3, Lcom/meizu/media/camera/manual/KnobView;->SELECTED_STATE_SET:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 389
    sget-object v2, Lcom/meizu/media/camera/manual/KnobView$RotationState;->IDLE:Lcom/meizu/media/camera/manual/KnobView$RotationState;

    invoke-direct {p0, v2}, Lcom/meizu/media/camera/manual/KnobView;->setRotationState(Lcom/meizu/media/camera/manual/KnobView$RotationState;)V

    .line 390
    return-void
.end method

.method public onRotationStartFromTouch()V
    .locals 4

    .prologue
    .line 397
    sget-object v0, Lcom/meizu/media/camera/manual/KnobView$RotationState;->STARTING:Lcom/meizu/media/camera/manual/KnobView$RotationState;

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/manual/KnobView;->setRotationState(Lcom/meizu/media/camera/manual/KnobView$RotationState;)V

    .line 399
    iget-wide v0, p0, Lcom/meizu/media/camera/manual/KnobView;->m_DrawableLastDegree:D

    iput-wide v0, p0, Lcom/meizu/media/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    .line 400
    iget v0, p0, Lcom/meizu/media/camera/manual/KnobView;->m_Tick:I

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/manual/KnobView;->getKnobItemFromTick(I)Lcom/meizu/media/camera/manual/KnobItemInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/meizu/media/camera/manual/KnobItemInfo;->drawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, -0x10100a1

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 401
    return-void
.end method

.method public onRotationUpdateFromTouch(D)V
    .locals 7
    .param p1, "radiusDiff"    # D

    .prologue
    const-wide v4, 0x4076800000000000L    # 360.0

    .line 407
    iget-object v0, p0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobInfo:Lcom/meizu/media/camera/manual/KnobInfo;

    if-nez v0, :cond_0

    .line 426
    :goto_0
    return-void

    .line 411
    :cond_0
    sget-object v0, Lcom/meizu/media/camera/manual/KnobView$RotationState;->ROTATING:Lcom/meizu/media/camera/manual/KnobView$RotationState;

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/manual/KnobView;->setRotationState(Lcom/meizu/media/camera/manual/KnobView$RotationState;)V

    .line 414
    iget-wide v0, p0, Lcom/meizu/media/camera/manual/KnobView;->m_DrawableLastDegree:D

    invoke-direct {p0, p1, p2}, Lcom/meizu/media/camera/manual/KnobView;->mapToKnobRotationDegree(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/meizu/media/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    .line 415
    iget-wide v0, p0, Lcom/meizu/media/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    cmpl-double v0, v0, v4

    if-ltz v0, :cond_2

    .line 416
    iget-wide v0, p0, Lcom/meizu/media/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    sub-double/2addr v0, v4

    iput-wide v0, p0, Lcom/meizu/media/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    .line 419
    :cond_1
    :goto_1
    iget-wide v0, p0, Lcom/meizu/media/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    invoke-direct {p0, v0, v1}, Lcom/meizu/media/camera/manual/KnobView;->validateRotation(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/media/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    .line 422
    iget-wide v0, p0, Lcom/meizu/media/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    invoke-direct {p0, v0, v1}, Lcom/meizu/media/camera/manual/KnobView;->mapRotationToTick(D)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/manual/KnobView;->setTick(I)V

    .line 425
    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/KnobView;->invalidate()V

    goto :goto_0

    .line 417
    :cond_2
    iget-wide v0, p0, Lcom/meizu/media/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    const-wide v2, -0x3f89800000000000L    # -360.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    .line 418
    iget-wide v0, p0, Lcom/meizu/media/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    add-double/2addr v0, v4

    iput-wide v0, p0, Lcom/meizu/media/camera/manual/KnobView;->m_DrawableCurrentDegree:D

    goto :goto_1
.end method

.method protected onSetupIcons()Z
    .locals 1

    .prologue
    .line 628
    const/4 v0, 0x1

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 444
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 447
    invoke-direct {p0}, Lcom/meizu/media/camera/manual/KnobView;->evaluateRotationCenter()Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/media/camera/manual/KnobView;->m_RotationCenter:Landroid/graphics/PointF;

    .line 448
    invoke-direct {p0}, Lcom/meizu/media/camera/manual/KnobView;->updateDashBounds()V

    .line 449
    invoke-direct {p0}, Lcom/meizu/media/camera/manual/KnobView;->updateKnobItemsBounds()V

    .line 450
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 458
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 460
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/manual/KnobView;->onActionUp(Landroid/view/MotionEvent;)V

    .line 483
    :goto_0
    return v1

    .line 465
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 482
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 468
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/manual/KnobView;->onActionDown(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 472
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/manual/KnobView;->onActionMove(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 477
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/manual/KnobView;->onActionUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 465
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setDashAroundAutoEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 490
    iput-boolean p1, p0, Lcom/meizu/media/camera/manual/KnobView;->m_DashAroundAutoEnabled:Z

    .line 491
    return-void
.end method

.method public setIconPadding(I)V
    .locals 0
    .param p1, "padding"    # I

    .prologue
    .line 497
    iput p1, p0, Lcom/meizu/media/camera/manual/KnobView;->m_IconPadding:I

    .line 498
    invoke-direct {p0}, Lcom/meizu/media/camera/manual/KnobView;->updateKnobItemsBounds()V

    .line 499
    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/KnobView;->invalidate()V

    .line 500
    return-void
.end method

.method public setKnobInfo(Lcom/meizu/media/camera/manual/KnobInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/meizu/media/camera/manual/KnobInfo;

    .prologue
    .line 506
    iput-object p1, p0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobInfo:Lcom/meizu/media/camera/manual/KnobInfo;

    .line 507
    invoke-direct {p0}, Lcom/meizu/media/camera/manual/KnobView;->updateKnobItemsBounds()V

    .line 508
    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/KnobView;->invalidate()V

    .line 509
    return-void
.end method

.method public setKnobItems(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/media/camera/manual/KnobItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 515
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/manual/KnobItemInfo;>;"
    iput-object p1, p0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobItems:Ljava/util/List;

    .line 516
    invoke-direct {p0}, Lcom/meizu/media/camera/manual/KnobView;->updateKnobItemsBounds()V

    .line 517
    invoke-direct {p0}, Lcom/meizu/media/camera/manual/KnobView;->updateKnobItemSelection()V

    .line 518
    iget v0, p0, Lcom/meizu/media/camera/manual/KnobView;->m_Tick:I

    invoke-direct {p0, v0}, Lcom/meizu/media/camera/manual/KnobView;->getKnobItemFromTick(I)Lcom/meizu/media/camera/manual/KnobItemInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/meizu/media/camera/manual/KnobItemInfo;->drawable:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lcom/meizu/media/camera/manual/KnobView;->SELECTED_STATE_SET:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 519
    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/KnobView;->invalidate()V

    .line 520
    return-void
.end method

.method public setKnobItemsRotation(Lcom/oneplus/base/Rotation;)V
    .locals 3
    .param p1, "rotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    .line 526
    iget v0, p0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobItemsSelfRotation:F

    .line 527
    .local v0, "oldSelfRotation":F
    sget-object v1, Lcom/meizu/media/camera/manual/KnobView$2;->$SwitchMap$com$oneplus$base$Rotation:[I

    invoke-virtual {p1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 542
    :goto_0
    iget v1, p0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobItemsSelfRotation:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 544
    invoke-direct {p0}, Lcom/meizu/media/camera/manual/KnobView;->updateKnobItemsBounds()V

    .line 545
    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/KnobView;->invalidate()V

    .line 547
    :cond_0
    return-void

    .line 530
    :pswitch_0
    const/high16 v1, 0x43870000    # 270.0f

    iput v1, p0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobItemsSelfRotation:F

    goto :goto_0

    .line 533
    :pswitch_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobItemsSelfRotation:F

    goto :goto_0

    .line 536
    :pswitch_2
    const/high16 v1, 0x42b40000    # 90.0f

    iput v1, p0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobItemsSelfRotation:F

    goto :goto_0

    .line 539
    :pswitch_3
    const/high16 v1, 0x43340000    # 180.0f

    iput v1, p0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobItemsSelfRotation:F

    goto :goto_0

    .line 527
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setKnobViewBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 553
    iget-object v0, p0, Lcom/meizu/media/camera/manual/KnobView;->m_BackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 554
    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/KnobView;->invalidate()V

    .line 555
    return-void
.end method

.method public setKnobViewChangedListener(Lcom/meizu/media/camera/manual/KnobViewChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/meizu/media/camera/manual/KnobViewChangedListener;

    .prologue
    .line 561
    iput-object p1, p0, Lcom/meizu/media/camera/manual/KnobView;->m_KnobViewChangedListener:Lcom/meizu/media/camera/manual/KnobViewChangedListener;

    .line 562
    return-void
.end method

.method public setupIcons()Z
    .locals 1

    .prologue
    .line 621
    iget-boolean v0, p0, Lcom/meizu/media/camera/manual/KnobView;->m_IsSetupIcons:Z

    if-eqz v0, :cond_0

    .line 622
    const/4 v0, 0x1

    .line 624
    :goto_0
    return v0

    .line 623
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/media/camera/manual/KnobView;->onSetupIcons()Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/media/camera/manual/KnobView;->m_IsSetupIcons:Z

    .line 624
    iget-boolean v0, p0, Lcom/meizu/media/camera/manual/KnobView;->m_IsSetupIcons:Z

    goto :goto_0
.end method
