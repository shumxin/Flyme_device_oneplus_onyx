.class public Lcom/oppo/model/lib/ModelUtils;
.super Ljava/lang/Object;
.source "ModelUtils.java"


# static fields
.field public static final ATAN2_45_DEGREE:F = 1.2071067f

.field public static final BACKGROUND_TRIANGLE_NUM:I = 0x2

.field public static final CLOCKS_PER_SEC:I = 0x3e8

.field public static final COLOR_ALPHA_COMPONENT:I = 0x3

.field public static final COLOR_BLUE_COMPONENT:I = 0x2

.field public static final COLOR_DATA_DIMENSION:I = 0x4

.field public static final COLOR_GREEN_COMPONENT:I = 0x1

.field public static final COLOR_RED_COMPONENT:I = 0x0

.field public static final GROUND_DATA_DIMENSION:I = 0x4

.field public static final GROUND_D_CEOFFICIENT:I = 0x3

.field public static final GROUND_X_CEOFFICIENT:I = 0x0

.field public static final GROUND_Y_CEOFFICIENT:I = 0x1

.field public static final GROUND_Z_CEOFFICIENT:I = 0x2

.field public static final LIGHT_DIMENSION:I = 0x4

.field public static final MATRIX_ARRAY_SIZE:I = 0x10

.field public static final MD_ANIMATION_FPS:I = 0x1e

.field public static final MD_MODEL_SCALE:F = 1.0f

.field public static final MODEL_FOVY_45_DEGREE:F = 45.0f

.field public static final PERSECTIVE_Z_FAR:I = 0x1388

.field public static final PERSECTIVE_Z_NEAR:I = 0x1

.field public static final Q_PI:F = 3.1415927f

.field public static final REGION_TRIANGLE_NUM:I = 0x2

.field public static final TEX_COORD_DIMENSION:I = 0x2

.field public static final TRIANGLE_COLOR_DATA_LEN:I = 0xc

.field public static final TRIANGLE_NORMAL_DATA_LEN:I = 0x9

.field public static final TRIANGLE_TEX_COORD_DATA_LEN:I = 0x6

.field public static final TRIANGLE_VERTEXT_DATA_LEN:I = 0x9

.field public static final TRIANGLE_VERTEXT_NUM:I = 0x3

.field public static final UP_DIRECT:Lcom/oppo/model/lib/Vector3f;

.field public static final VERTEX_COLOR_DIMENSION:I = 0x4

.field public static final VERTEX_NORMAL_DIMENSION:I = 0x3

.field public static final VERTEX_POINT_DIMENSION:I = 0x3

.field public static final VERTEX_W_AXIS_INDEX:I = 0x3

.field public static final VERTEX_X_AXIS_INDEX:I = 0x0

.field public static final VERTEX_Y_AXIS_INDEX:I = 0x1

.field public static final VERTEX_Z_AXIS_INDEX:I = 0x2

.field public static final VIEWPORT_HEIGHT:I = 0x3

.field public static final VIEWPORT_SIZE:I = 0x4

.field public static final VIEWPORT_WIDTH:I = 0x2

.field public static final VIEWPORT_X:I = 0x0

.field public static final VIEWPORT_Y:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 94
    new-instance v0, Lcom/oppo/model/lib/Vector3f;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v1, v2}, Lcom/oppo/model/lib/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/oppo/model/lib/ModelUtils;->UP_DIRECT:Lcom/oppo/model/lib/Vector3f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPowerOf2(I)Z
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 184
    if-lez p0, :cond_0

    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeSafeString([B)Ljava/lang/String;
    .locals 4
    .param p0, "buffer"    # [B

    .prologue
    .line 167
    array-length v1, p0

    .line 168
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 169
    aget-byte v2, p0, v0

    if-nez v2, :cond_0

    .line 170
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v0}, Ljava/lang/String;-><init>([BII)V

    .line 174
    :goto_1
    return-object v2

    .line 168
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V

    goto :goto_1
.end method

.method public static midPointIterator(I)I
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 224
    if-eqz p0, :cond_1

    .line 225
    add-int/lit8 v1, p0, -0x1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v1, 0x1

    .line 226
    .local v0, "tick":I
    add-int/lit8 v1, p0, -0x1

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 228
    .end local v0    # "tick":I
    :goto_0
    return v0

    .line 226
    .restart local v0    # "tick":I
    :cond_0
    neg-int v0, v0

    goto :goto_0

    .line 228
    .end local v0    # "tick":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static msPathAppend(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "more"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-static {p0}, Lcom/oppo/model/lib/ModelUtils;->msPathRemoveBackslash(Ljava/lang/String;)Z

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 136
    return-void
.end method

.method public static msPathRemoveBackslash(Ljava/lang/String;)Z
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 100
    const/4 v1, 0x0

    .line 101
    .local v1, "removed":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 102
    .local v0, "l":I
    :goto_0
    if-lez v0, :cond_1

    .line 103
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\\"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    :cond_0
    const/4 v2, 0x0

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 105
    const/4 v1, 0x1

    .line 106
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 111
    :cond_1
    return v1
.end method

.method public static msPathRemoveFileSpec(Ljava/lang/String;)Z
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 118
    const/4 v1, 0x0

    .line 119
    .local v1, "removed":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 120
    .local v0, "l":I
    :goto_0
    if-lez v0, :cond_2

    if-nez v1, :cond_2

    .line 121
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\\"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    :cond_0
    const/4 v1, 0x1

    .line 124
    :cond_1
    const/4 v2, 0x0

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 125
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 127
    :cond_2
    return v1
.end method

.method public static msPathToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "name":Ljava/lang/String;
    const-string v4, "\\"

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 144
    .local v2, "pos1":I
    const-string v4, "/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 145
    .local v3, "pos2":I
    const/4 v1, -0x1

    .line 147
    .local v1, "pos":I
    if-eq v2, v5, :cond_2

    if-eq v3, v5, :cond_2

    .line 148
    if-le v2, v3, :cond_1

    move v1, v2

    .line 155
    :cond_0
    :goto_0
    if-ne v1, v5, :cond_4

    .line 156
    move-object v0, p0

    .line 160
    :goto_1
    return-object v0

    :cond_1
    move v1, v3

    .line 148
    goto :goto_0

    .line 149
    :cond_2
    if-eq v2, v5, :cond_3

    .line 150
    move v1, v2

    goto :goto_0

    .line 151
    :cond_3
    if-eq v3, v5, :cond_0

    .line 152
    move v1, v3

    goto :goto_0

    .line 158
    :cond_4
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static nextPowerOf2(I)I
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 194
    add-int/lit8 p0, p0, -0x1

    .line 195
    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 196
    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 197
    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 198
    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 199
    ushr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 200
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method public static prevPowerOf2(I)I
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 210
    invoke-static {p0}, Lcom/oppo/model/lib/ModelUtils;->isPowerOf2(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    .end local p0    # "n":I
    :goto_0
    return p0

    .restart local p0    # "n":I
    :cond_0
    invoke-static {p0}, Lcom/oppo/model/lib/ModelUtils;->nextPowerOf2(I)I

    move-result v0

    div-int/lit8 p0, v0, 0x2

    goto :goto_0
.end method
