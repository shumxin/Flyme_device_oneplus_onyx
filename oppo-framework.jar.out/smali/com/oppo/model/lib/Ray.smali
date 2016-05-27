.class public Lcom/oppo/model/lib/Ray;
.super Ljava/lang/Object;
.source "Ray.java"


# static fields
.field private static final MAX_ABSOLUTE_ERROR:F = 1.0E-6f

.field private static gBufPosition:Ljava/nio/FloatBuffer;

.field private static tmp0:Lcom/oppo/model/lib/Vector3f;

.field private static tmp1:Lcom/oppo/model/lib/Vector3f;

.field private static tmp2:Lcom/oppo/model/lib/Vector3f;

.field private static tmp3:Lcom/oppo/model/lib/Vector3f;

.field private static tmp4:Lcom/oppo/model/lib/Vector3f;


# instance fields
.field public mvDirection:Lcom/oppo/model/lib/Vector3f;

.field public mvOrigin:Lcom/oppo/model/lib/Vector3f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/oppo/model/lib/IBufferFactory;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/oppo/model/lib/Ray;->gBufPosition:Ljava/nio/FloatBuffer;

    .line 34
    new-instance v0, Lcom/oppo/model/lib/Vector3f;

    invoke-direct {v0}, Lcom/oppo/model/lib/Vector3f;-><init>()V

    sput-object v0, Lcom/oppo/model/lib/Ray;->tmp0:Lcom/oppo/model/lib/Vector3f;

    .line 35
    new-instance v0, Lcom/oppo/model/lib/Vector3f;

    invoke-direct {v0}, Lcom/oppo/model/lib/Vector3f;-><init>()V

    sput-object v0, Lcom/oppo/model/lib/Ray;->tmp1:Lcom/oppo/model/lib/Vector3f;

    .line 36
    new-instance v0, Lcom/oppo/model/lib/Vector3f;

    invoke-direct {v0}, Lcom/oppo/model/lib/Vector3f;-><init>()V

    sput-object v0, Lcom/oppo/model/lib/Ray;->tmp2:Lcom/oppo/model/lib/Vector3f;

    .line 37
    new-instance v0, Lcom/oppo/model/lib/Vector3f;

    invoke-direct {v0}, Lcom/oppo/model/lib/Vector3f;-><init>()V

    sput-object v0, Lcom/oppo/model/lib/Ray;->tmp3:Lcom/oppo/model/lib/Vector3f;

    .line 38
    new-instance v0, Lcom/oppo/model/lib/Vector3f;

    invoke-direct {v0}, Lcom/oppo/model/lib/Vector3f;-><init>()V

    sput-object v0, Lcom/oppo/model/lib/Ray;->tmp4:Lcom/oppo/model/lib/Vector3f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/oppo/model/lib/Vector3f;

    invoke-direct {v0}, Lcom/oppo/model/lib/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/oppo/model/lib/Ray;->mvOrigin:Lcom/oppo/model/lib/Vector3f;

    .line 48
    new-instance v0, Lcom/oppo/model/lib/Vector3f;

    invoke-direct {v0}, Lcom/oppo/model/lib/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/oppo/model/lib/Ray;->mvDirection:Lcom/oppo/model/lib/Vector3f;

    return-void
.end method

.method private intersect(Lcom/oppo/model/lib/Vector3f;Lcom/oppo/model/lib/Vector3f;Lcom/oppo/model/lib/Vector3f;Lcom/oppo/model/lib/Quat4f;)Z
    .locals 17
    .param p1, "v0"    # Lcom/oppo/model/lib/Vector3f;
    .param p2, "v1"    # Lcom/oppo/model/lib/Vector3f;
    .param p3, "v2"    # Lcom/oppo/model/lib/Vector3f;
    .param p4, "loc"    # Lcom/oppo/model/lib/Quat4f;

    .prologue
    .line 136
    sget-object v2, Lcom/oppo/model/lib/Ray;->tmp0:Lcom/oppo/model/lib/Vector3f;

    .line 137
    .local v2, "diff":Lcom/oppo/model/lib/Vector3f;
    sget-object v7, Lcom/oppo/model/lib/Ray;->tmp1:Lcom/oppo/model/lib/Vector3f;

    .line 138
    .local v7, "edge1":Lcom/oppo/model/lib/Vector3f;
    sget-object v8, Lcom/oppo/model/lib/Ray;->tmp2:Lcom/oppo/model/lib/Vector3f;

    .line 139
    .local v8, "edge2":Lcom/oppo/model/lib/Vector3f;
    sget-object v10, Lcom/oppo/model/lib/Ray;->tmp3:Lcom/oppo/model/lib/Vector3f;

    .line 140
    .local v10, "norm":Lcom/oppo/model/lib/Vector3f;
    sget-object v13, Lcom/oppo/model/lib/Ray;->tmp4:Lcom/oppo/model/lib/Vector3f;

    .line 141
    .local v13, "tmp":Lcom/oppo/model/lib/Vector3f;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/model/lib/Ray;->mvOrigin:Lcom/oppo/model/lib/Vector3f;

    move-object/from16 v0, p1

    invoke-virtual {v2, v14, v0}, Lcom/oppo/model/lib/Vector3f;->sub(Lcom/oppo/model/lib/Vector3f;Lcom/oppo/model/lib/Vector3f;)V

    .line 142
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v7, v0, v1}, Lcom/oppo/model/lib/Vector3f;->sub(Lcom/oppo/model/lib/Vector3f;Lcom/oppo/model/lib/Vector3f;)V

    .line 143
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v8, v0, v1}, Lcom/oppo/model/lib/Vector3f;->sub(Lcom/oppo/model/lib/Vector3f;Lcom/oppo/model/lib/Vector3f;)V

    .line 144
    invoke-virtual {v10, v7, v8}, Lcom/oppo/model/lib/Vector3f;->cross(Lcom/oppo/model/lib/Vector3f;Lcom/oppo/model/lib/Vector3f;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/model/lib/Ray;->mvDirection:Lcom/oppo/model/lib/Vector3f;

    invoke-virtual {v14, v10}, Lcom/oppo/model/lib/Vector3f;->dot(Lcom/oppo/model/lib/Vector3f;)F

    move-result v6

    .line 147
    .local v6, "dirDotNorm":F
    const/4 v11, 0x0

    .line 149
    .local v11, "sign":F
    const v14, 0x358637bd    # 1.0E-6f

    cmpl-float v14, v6, v14

    if-lez v14, :cond_0

    .line 150
    const/high16 v11, 0x3f800000    # 1.0f

    .line 158
    :goto_0
    invoke-virtual {v13, v2, v8}, Lcom/oppo/model/lib/Vector3f;->cross(Lcom/oppo/model/lib/Vector3f;Lcom/oppo/model/lib/Vector3f;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/model/lib/Ray;->mvDirection:Lcom/oppo/model/lib/Vector3f;

    invoke-virtual {v14, v13}, Lcom/oppo/model/lib/Vector3f;->dot(Lcom/oppo/model/lib/Vector3f;)F

    move-result v14

    mul-float v4, v11, v14

    .line 160
    .local v4, "dirDotDiffxEdge2":F
    const/4 v14, 0x0

    cmpl-float v14, v4, v14

    if-ltz v14, :cond_3

    .line 161
    invoke-virtual {v13, v7, v2}, Lcom/oppo/model/lib/Vector3f;->cross(Lcom/oppo/model/lib/Vector3f;Lcom/oppo/model/lib/Vector3f;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/model/lib/Ray;->mvDirection:Lcom/oppo/model/lib/Vector3f;

    invoke-virtual {v14, v13}, Lcom/oppo/model/lib/Vector3f;->dot(Lcom/oppo/model/lib/Vector3f;)F

    move-result v14

    mul-float v5, v11, v14

    .line 163
    .local v5, "dirDotEdge1xDiff":F
    const/4 v14, 0x0

    cmpl-float v14, v5, v14

    if-ltz v14, :cond_3

    .line 164
    add-float v14, v4, v5

    cmpg-float v14, v14, v6

    if-gtz v14, :cond_3

    .line 165
    neg-float v14, v11

    invoke-virtual {v2, v10}, Lcom/oppo/model/lib/Vector3f;->dot(Lcom/oppo/model/lib/Vector3f;)F

    move-result v15

    mul-float v3, v14, v15

    .line 166
    .local v3, "diffDotNorm":F
    const/4 v14, 0x0

    cmpl-float v14, v3, v14

    if-ltz v14, :cond_3

    .line 167
    if-nez p4, :cond_2

    .line 168
    const/4 v14, 0x1

    .line 185
    .end local v3    # "diffDotNorm":F
    .end local v4    # "dirDotDiffxEdge2":F
    .end local v5    # "dirDotEdge1xDiff":F
    :goto_1
    return v14

    .line 151
    :cond_0
    const v14, -0x4a79c843    # -1.0E-6f

    cmpg-float v14, v6, v14

    if-gez v14, :cond_1

    .line 152
    const/high16 v11, -0x40800000    # -1.0f

    .line 153
    neg-float v6, v6

    goto :goto_0

    .line 155
    :cond_1
    const/4 v14, 0x0

    goto :goto_1

    .line 171
    .restart local v3    # "diffDotNorm":F
    .restart local v4    # "dirDotDiffxEdge2":F
    .restart local v5    # "dirDotEdge1xDiff":F
    :cond_2
    const/high16 v14, 0x3f800000    # 1.0f

    div-float v9, v14, v6

    .line 172
    .local v9, "inv":F
    mul-float v12, v3, v9

    .line 174
    .local v12, "t":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/model/lib/Ray;->mvOrigin:Lcom/oppo/model/lib/Vector3f;

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Lcom/oppo/model/lib/Quat4f;->set(Lcom/oppo/model/lib/Vector3f;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/model/lib/Ray;->mvDirection:Lcom/oppo/model/lib/Vector3f;

    iget v14, v14, Lcom/oppo/model/lib/Vector3f;->x:F

    mul-float/2addr v14, v12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/model/lib/Ray;->mvDirection:Lcom/oppo/model/lib/Vector3f;

    iget v15, v15, Lcom/oppo/model/lib/Vector3f;->y:F

    mul-float/2addr v15, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/model/lib/Ray;->mvDirection:Lcom/oppo/model/lib/Vector3f;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/oppo/model/lib/Vector3f;->z:F

    move/from16 v16, v0

    mul-float v16, v16, v12

    move-object/from16 v0, p4

    move/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Lcom/oppo/model/lib/Quat4f;->add(FFF)V

    .line 177
    move-object/from16 v0, p4

    iput v12, v0, Lcom/oppo/model/lib/Quat4f;->w:F

    .line 179
    const/4 v14, 0x1

    goto :goto_1

    .line 185
    .end local v3    # "diffDotNorm":F
    .end local v5    # "dirDotEdge1xDiff":F
    .end local v9    # "inv":F
    .end local v12    # "t":F
    :cond_3
    const/4 v14, 0x0

    goto :goto_1
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;Z)V
    .locals 8
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "picked"    # Z

    .prologue
    const/16 v7, 0xb71

    const/high16 v6, 0x40800000    # 4.0f

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 80
    sget-object v1, Lcom/oppo/model/lib/Ray;->gBufPosition:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 82
    sget-object v1, Lcom/oppo/model/lib/Ray;->gBufPosition:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/oppo/model/lib/Ray;->mvOrigin:Lcom/oppo/model/lib/Vector3f;

    invoke-static {v1, v2}, Lcom/oppo/model/lib/IBufferFactory;->fillBuffer(Ljava/nio/FloatBuffer;Lcom/oppo/model/lib/Vector3f;)V

    .line 84
    sget-object v1, Lcom/oppo/model/lib/Vector3f;->TEMP:Lcom/oppo/model/lib/Vector3f;

    iget-object v2, p0, Lcom/oppo/model/lib/Ray;->mvDirection:Lcom/oppo/model/lib/Vector3f;

    invoke-virtual {v1, v2}, Lcom/oppo/model/lib/Vector3f;->set(Lcom/oppo/model/lib/Vector3f;)V

    .line 85
    const/high16 v0, 0x42c80000    # 100.0f

    .line 86
    .local v0, "len":F
    sget-object v1, Lcom/oppo/model/lib/Vector3f;->TEMP:Lcom/oppo/model/lib/Vector3f;

    invoke-virtual {v1, v0}, Lcom/oppo/model/lib/Vector3f;->scale(F)V

    .line 87
    sget-object v1, Lcom/oppo/model/lib/Vector3f;->TEMP:Lcom/oppo/model/lib/Vector3f;

    iget-object v2, p0, Lcom/oppo/model/lib/Ray;->mvOrigin:Lcom/oppo/model/lib/Vector3f;

    invoke-virtual {v1, v2}, Lcom/oppo/model/lib/Vector3f;->add(Lcom/oppo/model/lib/Vector3f;)V

    .line 88
    sget-object v1, Lcom/oppo/model/lib/Ray;->gBufPosition:Ljava/nio/FloatBuffer;

    sget-object v2, Lcom/oppo/model/lib/Vector3f;->TEMP:Lcom/oppo/model/lib/Vector3f;

    invoke-static {v1, v2}, Lcom/oppo/model/lib/IBufferFactory;->fillBuffer(Ljava/nio/FloatBuffer;Lcom/oppo/model/lib/Vector3f;)V

    .line 89
    sget-object v1, Lcom/oppo/model/lib/Ray;->gBufPosition:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 91
    if-eqz p2, :cond_0

    .line 92
    invoke-interface {p1, v4, v3, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 97
    :goto_0
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glPointSize(F)V

    .line 98
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    .line 99
    invoke-interface {p1, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 101
    const v1, 0x8074

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 102
    const/4 v1, 0x3

    const/16 v2, 0x1406

    sget-object v3, Lcom/oppo/model/lib/Ray;->gBufPosition:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v1, v2, v5, v3}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 103
    const/4 v1, 0x2

    invoke-interface {p1, v5, v5, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 105
    const v1, 0x8074

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 107
    invoke-interface {p1, v7}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 108
    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glPointSize(F)V

    .line 109
    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    .line 110
    return-void

    .line 94
    :cond_0
    invoke-interface {p1, v3, v4, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    goto :goto_0
.end method

.method public intersectSphere(Lcom/oppo/model/lib/Vector3f;F)Z
    .locals 8
    .param p1, "center"    # Lcom/oppo/model/lib/Vector3f;
    .param p2, "radius"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 196
    sget-object v2, Lcom/oppo/model/lib/Ray;->tmp0:Lcom/oppo/model/lib/Vector3f;

    .line 197
    .local v2, "diff":Lcom/oppo/model/lib/Vector3f;
    iget-object v6, p0, Lcom/oppo/model/lib/Ray;->mvOrigin:Lcom/oppo/model/lib/Vector3f;

    invoke-virtual {v2, v6, p1}, Lcom/oppo/model/lib/Vector3f;->sub(Lcom/oppo/model/lib/Vector3f;Lcom/oppo/model/lib/Vector3f;)V

    .line 199
    mul-float v3, p2, p2

    .line 200
    .local v3, "r2":F
    invoke-virtual {v2, v2}, Lcom/oppo/model/lib/Vector3f;->dot(Lcom/oppo/model/lib/Vector3f;)F

    move-result v6

    sub-float v0, v6, v3

    .line 202
    .local v0, "a":F
    cmpg-float v6, v0, v7

    if-gtz v6, :cond_1

    .line 212
    :cond_0
    :goto_0
    return v4

    .line 206
    :cond_1
    iget-object v6, p0, Lcom/oppo/model/lib/Ray;->mvDirection:Lcom/oppo/model/lib/Vector3f;

    invoke-virtual {v6, v2}, Lcom/oppo/model/lib/Vector3f;->dot(Lcom/oppo/model/lib/Vector3f;)F

    move-result v1

    .line 208
    .local v1, "b":F
    cmpl-float v6, v1, v7

    if-ltz v6, :cond_2

    move v4, v5

    .line 209
    goto :goto_0

    .line 212
    :cond_2
    mul-float v6, v1, v1

    cmpl-float v6, v6, v0

    if-gez v6, :cond_0

    move v4, v5

    goto :goto_0
.end method

.method public intersectTriangle(Lcom/oppo/model/lib/Vector3f;Lcom/oppo/model/lib/Vector3f;Lcom/oppo/model/lib/Vector3f;Lcom/oppo/model/lib/Quat4f;)Z
    .locals 1
    .param p1, "v0"    # Lcom/oppo/model/lib/Vector3f;
    .param p2, "v1"    # Lcom/oppo/model/lib/Vector3f;
    .param p3, "v2"    # Lcom/oppo/model/lib/Vector3f;
    .param p4, "location"    # Lcom/oppo/model/lib/Quat4f;

    .prologue
    .line 123
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oppo/model/lib/Ray;->intersect(Lcom/oppo/model/lib/Vector3f;Lcom/oppo/model/lib/Vector3f;Lcom/oppo/model/lib/Vector3f;Lcom/oppo/model/lib/Quat4f;)Z

    move-result v0

    return v0
.end method

.method public transform(Lcom/oppo/model/lib/Matrix4f;Lcom/oppo/model/lib/Ray;)V
    .locals 3
    .param p1, "matrix"    # Lcom/oppo/model/lib/Matrix4f;
    .param p2, "out"    # Lcom/oppo/model/lib/Ray;

    .prologue
    .line 58
    sget-object v0, Lcom/oppo/model/lib/Vector3f;->TEMP:Lcom/oppo/model/lib/Vector3f;

    .line 59
    .local v0, "v0":Lcom/oppo/model/lib/Vector3f;
    sget-object v1, Lcom/oppo/model/lib/Vector3f;->TEMP1:Lcom/oppo/model/lib/Vector3f;

    .line 60
    .local v1, "v1":Lcom/oppo/model/lib/Vector3f;
    iget-object v2, p0, Lcom/oppo/model/lib/Ray;->mvOrigin:Lcom/oppo/model/lib/Vector3f;

    invoke-virtual {v0, v2}, Lcom/oppo/model/lib/Vector3f;->set(Lcom/oppo/model/lib/Vector3f;)V

    .line 61
    iget-object v2, p0, Lcom/oppo/model/lib/Ray;->mvOrigin:Lcom/oppo/model/lib/Vector3f;

    invoke-virtual {v1, v2}, Lcom/oppo/model/lib/Vector3f;->set(Lcom/oppo/model/lib/Vector3f;)V

    .line 62
    iget-object v2, p0, Lcom/oppo/model/lib/Ray;->mvDirection:Lcom/oppo/model/lib/Vector3f;

    invoke-virtual {v1, v2}, Lcom/oppo/model/lib/Vector3f;->add(Lcom/oppo/model/lib/Vector3f;)V

    .line 64
    invoke-virtual {p1, v0, v0}, Lcom/oppo/model/lib/Matrix4f;->transform(Lcom/oppo/model/lib/Vector3f;Lcom/oppo/model/lib/Vector3f;)V

    .line 65
    invoke-virtual {p1, v1, v1}, Lcom/oppo/model/lib/Matrix4f;->transform(Lcom/oppo/model/lib/Vector3f;Lcom/oppo/model/lib/Vector3f;)V

    .line 67
    iget-object v2, p2, Lcom/oppo/model/lib/Ray;->mvOrigin:Lcom/oppo/model/lib/Vector3f;

    invoke-virtual {v2, v0}, Lcom/oppo/model/lib/Vector3f;->set(Lcom/oppo/model/lib/Vector3f;)V

    .line 68
    invoke-virtual {v1, v0}, Lcom/oppo/model/lib/Vector3f;->sub(Lcom/oppo/model/lib/Vector3f;)V

    .line 69
    invoke-virtual {v1}, Lcom/oppo/model/lib/Vector3f;->normalize()V

    .line 70
    iget-object v2, p2, Lcom/oppo/model/lib/Ray;->mvDirection:Lcom/oppo/model/lib/Vector3f;

    invoke-virtual {v2, v1}, Lcom/oppo/model/lib/Vector3f;->set(Lcom/oppo/model/lib/Vector3f;)V

    .line 71
    return-void
.end method
