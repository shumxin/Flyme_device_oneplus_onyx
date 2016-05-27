.class public Lcom/oppo/model/lib/Projector;
.super Ljava/lang/Object;
.source "Projector.java"


# static fields
.field private static final IDENTITY_MATRIX:[F


# instance fields
.field private final in:[F

.field private final matrix:[F

.field private final out:[F

.field private final tempMatrix:[[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oppo/model/lib/Projector;->IDENTITY_MATRIX:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oppo/model/lib/Projector;->matrix:[F

    .line 31
    filled-new-array {v2, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/oppo/model/lib/Projector;->tempMatrix:[[F

    .line 32
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/oppo/model/lib/Projector;->in:[F

    .line 33
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/oppo/model/lib/Projector;->out:[F

    return-void
.end method

.method private __gluInvertMatrixd([F[F)Z
    .locals 10
    .param p1, "src"    # [F
    .param p2, "inverse"    # [F

    .prologue
    const/4 v9, 0x4

    .line 179
    iget-object v5, p0, Lcom/oppo/model/lib/Projector;->tempMatrix:[[F

    .line 181
    .local v5, "temp":[[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v9, :cond_1

    .line 182
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v9, :cond_0

    .line 183
    aget-object v6, v5, v0

    mul-int/lit8 v7, v0, 0x4

    add-int/2addr v7, v1

    aget v7, p1, v7

    aput v7, v6, v1

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 181
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    .end local v1    # "j":I
    :cond_1
    invoke-direct {p0, p2}, Lcom/oppo/model/lib/Projector;->__gluMakeIdentityd([F)V

    .line 188
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v9, :cond_9

    .line 192
    move v3, v0

    .line 193
    .local v3, "swap":I
    add-int/lit8 v1, v0, 0x1

    .restart local v1    # "j":I
    :goto_3
    if-ge v1, v9, :cond_3

    .line 194
    aget-object v6, v5, v1

    aget v6, v6, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    aget-object v7, v5, v0

    aget v7, v7, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    .line 195
    move v3, v1

    .line 193
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 199
    :cond_3
    if-eq v3, v0, :cond_4

    .line 203
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_4
    if-ge v2, v9, :cond_4

    .line 204
    aget-object v6, v5, v0

    aget v4, v6, v2

    .line 205
    .local v4, "t":F
    aget-object v6, v5, v0

    aget-object v7, v5, v3

    aget v7, v7, v2

    aput v7, v6, v2

    .line 206
    aget-object v6, v5, v3

    aput v4, v6, v2

    .line 208
    mul-int/lit8 v6, v0, 0x4

    add-int/2addr v6, v2

    aget v4, p2, v6

    .line 209
    mul-int/lit8 v6, v0, 0x4

    add-int/2addr v6, v2

    mul-int/lit8 v7, v3, 0x4

    add-int/2addr v7, v2

    aget v7, p2, v7

    aput v7, p2, v6

    .line 210
    mul-int/lit8 v6, v3, 0x4

    add-int/2addr v6, v2

    aput v4, p2, v6

    .line 203
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 214
    .end local v2    # "k":I
    .end local v4    # "t":F
    :cond_4
    aget-object v6, v5, v0

    aget v6, v6, v0

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_5

    .line 219
    const/4 v6, 0x0

    .line 238
    .end local v1    # "j":I
    .end local v3    # "swap":I
    :goto_5
    return v6

    .line 222
    .restart local v1    # "j":I
    .restart local v3    # "swap":I
    :cond_5
    aget-object v6, v5, v0

    aget v4, v6, v0

    .line 223
    .restart local v4    # "t":F
    const/4 v2, 0x0

    .restart local v2    # "k":I
    :goto_6
    if-ge v2, v9, :cond_6

    .line 224
    aget-object v6, v5, v0

    aget v7, v6, v2

    div-float/2addr v7, v4

    aput v7, v6, v2

    .line 225
    mul-int/lit8 v6, v0, 0x4

    add-int/2addr v6, v2

    aget v7, p2, v6

    div-float/2addr v7, v4

    aput v7, p2, v6

    .line 223
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 227
    :cond_6
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v9, :cond_8

    .line 228
    if-eq v1, v0, :cond_7

    .line 229
    aget-object v6, v5, v1

    aget v4, v6, v0

    .line 230
    const/4 v2, 0x0

    :goto_8
    if-ge v2, v9, :cond_7

    .line 231
    aget-object v6, v5, v1

    aget v7, v6, v2

    aget-object v8, v5, v0

    aget v8, v8, v2

    mul-float/2addr v8, v4

    sub-float/2addr v7, v8

    aput v7, v6, v2

    .line 232
    mul-int/lit8 v6, v1, 0x4

    add-int/2addr v6, v2

    aget v7, p2, v6

    mul-int/lit8 v8, v0, 0x4

    add-int/2addr v8, v2

    aget v8, p2, v8

    mul-float/2addr v8, v4

    sub-float/2addr v7, v8

    aput v7, p2, v6

    .line 230
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 227
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 188
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 238
    .end local v1    # "j":I
    .end local v2    # "k":I
    .end local v3    # "swap":I
    .end local v4    # "t":F
    :cond_9
    const/4 v6, 0x1

    goto :goto_5
.end method

.method private __gluMakeIdentityd([F)V
    .locals 2
    .param p1, "m"    # [F

    .prologue
    .line 245
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 246
    sget-object v1, Lcom/oppo/model/lib/Projector;->IDENTITY_MATRIX:[F

    aget v1, v1, v0

    aput v1, p1, v0

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    :cond_0
    return-void
.end method

.method private __gluMultMatricesd([FI[FI[F)V
    .locals 7
    .param p1, "a"    # [F
    .param p2, "a_offset"    # I
    .param p3, "b"    # [F
    .param p4, "b_offset"    # I
    .param p5, "r"    # [F

    .prologue
    const/4 v6, 0x4

    .line 145
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_1

    .line 146
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v6, :cond_0

    .line 147
    mul-int/lit8 v2, v0, 0x4

    add-int/2addr v2, v1

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x0

    add-int/2addr v3, p2

    aget v3, p1, v3

    add-int/lit8 v4, v1, 0x0

    add-int/2addr v4, p4

    aget v4, p3, v4

    mul-float/2addr v3, v4

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, p2

    aget v4, p1, v4

    add-int/lit8 v5, v1, 0x4

    add-int/2addr v5, p4

    aget v5, p3, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p2

    aget v4, p1, v4

    add-int/lit8 v5, v1, 0x8

    add-int/2addr v5, p4

    aget v5, p3, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x3

    add-int/2addr v4, p2

    aget v4, p1, v4

    add-int/lit8 v5, v1, 0xc

    add-int/2addr v5, p4

    aget v5, p3, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, p5, v2

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 145
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    .end local v1    # "j":I
    :cond_1
    return-void
.end method

.method private __gluMultMatrixVecd([FI[F[F)V
    .locals 4
    .param p1, "matrix"    # [F
    .param p2, "matrix_offset"    # I
    .param p3, "in"    # [F
    .param p4, "out"    # [F

    .prologue
    .line 163
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 164
    const/4 v1, 0x0

    aget v1, p3, v1

    add-int/lit8 v2, v0, 0x0

    add-int/2addr v2, p2

    aget v2, p1, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x1

    aget v2, p3, v2

    add-int/lit8 v3, v0, 0x4

    add-int/2addr v3, p2

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x2

    aget v2, p3, v2

    add-int/lit8 v3, v0, 0x8

    add-int/2addr v3, p2

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x3

    aget v2, p3, v2

    add-int/lit8 v3, v0, 0xc

    add-int/2addr v3, p2

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p4, v0

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_0
    return-void
.end method


# virtual methods
.method public gluProject(FFF[FI[FI[II[FI)Z
    .locals 6
    .param p1, "objx"    # F
    .param p2, "objy"    # F
    .param p3, "objz"    # F
    .param p4, "modelMatrix"    # [F
    .param p5, "modelMatrix_offset"    # I
    .param p6, "projMatrix"    # [F
    .param p7, "projMatrix_offset"    # I
    .param p8, "viewport"    # [I
    .param p9, "viewport_offset"    # I
    .param p10, "win_pos"    # [F
    .param p11, "win_pos_offset"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oppo/model/lib/Projector;->in:[F

    .line 53
    .local v0, "in":[F
    iget-object v1, p0, Lcom/oppo/model/lib/Projector;->out:[F

    .line 55
    .local v1, "out":[F
    const/4 v2, 0x0

    aput p1, v0, v2

    .line 56
    const/4 v2, 0x1

    aput p2, v0, v2

    .line 57
    const/4 v2, 0x2

    aput p3, v0, v2

    .line 58
    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v0, v2

    .line 60
    invoke-direct {p0, p4, p5, v0, v1}, Lcom/oppo/model/lib/Projector;->__gluMultMatrixVecd([FI[F[F)V

    .line 61
    invoke-direct {p0, p6, p7, v1, v0}, Lcom/oppo/model/lib/Projector;->__gluMultMatrixVecd([FI[F[F)V

    .line 63
    const/4 v2, 0x3

    aget v2, v0, v2

    float-to-double v2, v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    .line 64
    const/4 v2, 0x0

    .line 81
    :goto_0
    return v2

    .line 67
    :cond_0
    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x3

    aget v4, v0, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    aput v3, v0, v2

    .line 70
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x3

    aget v4, v0, v4

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    aput v3, v0, v2

    .line 71
    const/4 v2, 0x1

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x3

    aget v4, v0, v4

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    aput v3, v0, v2

    .line 72
    const/4 v2, 0x2

    const/4 v3, 0x2

    aget v3, v0, v3

    const/4 v4, 0x3

    aget v4, v0, v4

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    aput v3, v0, v2

    .line 75
    add-int/lit8 v2, p11, 0x0

    const/4 v3, 0x0

    aget v3, v0, v3

    add-int/lit8 v4, p9, 0x2

    aget v4, p8, v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-int/lit8 v4, p9, 0x0

    aget v4, p8, v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    aput v3, p10, v2

    .line 77
    add-int/lit8 v2, p11, 0x1

    const/4 v3, 0x1

    aget v3, v0, v3

    add-int/lit8 v4, p9, 0x3

    aget v4, p8, v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-int/lit8 v4, p9, 0x1

    aget v4, p8, v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    aput v3, p10, v2

    .line 79
    add-int/lit8 v2, p11, 0x2

    const/4 v3, 0x2

    aget v3, v0, v3

    aput v3, p10, v2

    .line 81
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public gluUnProject(FFF[FI[FI[II[FI)Z
    .locals 8
    .param p1, "winx"    # F
    .param p2, "winy"    # F
    .param p3, "winz"    # F
    .param p4, "modelMatrix"    # [F
    .param p5, "modelMatrix_offset"    # I
    .param p6, "projMatrix"    # [F
    .param p7, "projMatrix_offset"    # I
    .param p8, "viewport"    # [I
    .param p9, "viewport_offset"    # I
    .param p10, "obj_pos"    # [F
    .param p11, "obj_pos_offset"    # I

    .prologue
    .line 101
    iget-object v6, p0, Lcom/oppo/model/lib/Projector;->in:[F

    .line 102
    .local v6, "in":[F
    iget-object v7, p0, Lcom/oppo/model/lib/Projector;->out:[F

    .line 104
    .local v7, "out":[F
    iget-object v5, p0, Lcom/oppo/model/lib/Projector;->matrix:[F

    move-object v0, p0

    move-object v1, p4

    move v2, p5

    move-object v3, p6

    move v4, p7

    invoke-direct/range {v0 .. v5}, Lcom/oppo/model/lib/Projector;->__gluMultMatricesd([FI[FI[F)V

    .line 106
    iget-object v0, p0, Lcom/oppo/model/lib/Projector;->matrix:[F

    iget-object v1, p0, Lcom/oppo/model/lib/Projector;->matrix:[F

    invoke-direct {p0, v0, v1}, Lcom/oppo/model/lib/Projector;->__gluInvertMatrixd([F[F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    const/4 v0, 0x0

    .line 136
    :goto_0
    return v0

    .line 110
    :cond_0
    const/4 v0, 0x0

    aput p1, v6, v0

    .line 111
    const/4 v0, 0x1

    aput p2, v6, v0

    .line 112
    const/4 v0, 0x2

    aput p3, v6, v0

    .line 113
    const/4 v0, 0x3

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v6, v0

    .line 116
    const/4 v0, 0x0

    const/4 v1, 0x0

    aget v1, v6, v1

    add-int/lit8 v2, p9, 0x0

    aget v2, p8, v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    add-int/lit8 v2, p9, 0x2

    aget v2, p8, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    aput v1, v6, v0

    .line 117
    const/4 v0, 0x1

    const/4 v1, 0x1

    aget v1, v6, v1

    add-int/lit8 v2, p9, 0x1

    aget v2, p8, v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    add-int/lit8 v2, p9, 0x3

    aget v2, p8, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    aput v1, v6, v0

    .line 120
    const/4 v0, 0x0

    const/4 v1, 0x0

    aget v1, v6, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    aput v1, v6, v0

    .line 121
    const/4 v0, 0x1

    const/4 v1, 0x1

    aget v1, v6, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    aput v1, v6, v0

    .line 122
    const/4 v0, 0x2

    const/4 v1, 0x2

    aget v1, v6, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    aput v1, v6, v0

    .line 124
    iget-object v0, p0, Lcom/oppo/model/lib/Projector;->matrix:[F

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v6, v7}, Lcom/oppo/model/lib/Projector;->__gluMultMatrixVecd([FI[F[F)V

    .line 126
    const/4 v0, 0x3

    aget v0, v7, v0

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 127
    const/4 v0, 0x0

    goto :goto_0

    .line 130
    :cond_1
    const/4 v0, 0x3

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x3

    aget v2, v7, v2

    div-float/2addr v1, v2

    aput v1, v7, v0

    .line 132
    add-int/lit8 v0, p11, 0x0

    const/4 v1, 0x0

    aget v1, v7, v1

    const/4 v2, 0x3

    aget v2, v7, v2

    mul-float/2addr v1, v2

    aput v1, p10, v0

    .line 133
    add-int/lit8 v0, p11, 0x1

    const/4 v1, 0x1

    aget v1, v7, v1

    const/4 v2, 0x3

    aget v2, v7, v2

    mul-float/2addr v1, v2

    aput v1, p10, v0

    .line 134
    add-int/lit8 v0, p11, 0x2

    const/4 v1, 0x2

    aget v1, v7, v1

    const/4 v2, 0x3

    aget v2, v7, v2

    mul-float/2addr v1, v2

    aput v1, p10, v0

    .line 136
    const/4 v0, 0x1

    goto/16 :goto_0
.end method
