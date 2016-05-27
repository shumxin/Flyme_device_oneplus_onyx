.class public Lcom/oppo/model/lib/Vector3f;
.super Ljava/lang/Object;
.source "Vector3f.java"


# static fields
.field public static TEMP:Lcom/oppo/model/lib/Vector3f;

.field public static TEMP1:Lcom/oppo/model/lib/Vector3f;

.field public static final UP:Lcom/oppo/model/lib/Vector3f;

.field public static final ZERO:Lcom/oppo/model/lib/Vector3f;


# instance fields
.field public x:F

.field public y:F

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/oppo/model/lib/Vector3f;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v1, v2}, Lcom/oppo/model/lib/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/oppo/model/lib/Vector3f;->UP:Lcom/oppo/model/lib/Vector3f;

    .line 36
    new-instance v0, Lcom/oppo/model/lib/Vector3f;

    invoke-direct {v0, v2, v2, v2}, Lcom/oppo/model/lib/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/oppo/model/lib/Vector3f;->ZERO:Lcom/oppo/model/lib/Vector3f;

    .line 38
    new-instance v0, Lcom/oppo/model/lib/Vector3f;

    invoke-direct {v0}, Lcom/oppo/model/lib/Vector3f;-><init>()V

    sput-object v0, Lcom/oppo/model/lib/Vector3f;->TEMP:Lcom/oppo/model/lib/Vector3f;

    .line 39
    new-instance v0, Lcom/oppo/model/lib/Vector3f;

    invoke-direct {v0}, Lcom/oppo/model/lib/Vector3f;-><init>()V

    sput-object v0, Lcom/oppo/model/lib/Vector3f;->TEMP1:Lcom/oppo/model/lib/Vector3f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p0, p1, p2, p3}, Lcom/oppo/model/lib/Vector3f;->set(FFF)V

    .line 54
    return-void
.end method

.method public static distance(Lcom/oppo/model/lib/Vector3f;Lcom/oppo/model/lib/Vector3f;)F
    .locals 6
    .param p0, "v0"    # Lcom/oppo/model/lib/Vector3f;
    .param p1, "v1"    # Lcom/oppo/model/lib/Vector3f;

    .prologue
    .line 183
    iget v3, p0, Lcom/oppo/model/lib/Vector3f;->x:F

    iget v4, p1, Lcom/oppo/model/lib/Vector3f;->x:F

    sub-float v0, v3, v4

    .line 184
    .local v0, "dx":F
    iget v3, p0, Lcom/oppo/model/lib/Vector3f;->y:F

    iget v4, p1, Lcom/oppo/model/lib/Vector3f;->y:F

    sub-float v1, v3, v4

    .line 185
    .local v1, "dy":F
    iget v3, p0, Lcom/oppo/model/lib/Vector3f;->z:F

    iget v4, p1, Lcom/oppo/model/lib/Vector3f;->z:F

    sub-float v2, v3, v4

    .line 186
    .local v2, "dz":F
    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    return v3
.end method


# virtual methods
.method public final add(Lcom/oppo/model/lib/Vector3f;)V
    .locals 2
    .param p1, "t1"    # Lcom/oppo/model/lib/Vector3f;

    .prologue
    .line 96
    iget v0, p0, Lcom/oppo/model/lib/Vector3f;->x:F

    iget v1, p1, Lcom/oppo/model/lib/Vector3f;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/oppo/model/lib/Vector3f;->x:F

    .line 97
    iget v0, p0, Lcom/oppo/model/lib/Vector3f;->y:F

    iget v1, p1, Lcom/oppo/model/lib/Vector3f;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/oppo/model/lib/Vector3f;->y:F

    .line 98
    iget v0, p0, Lcom/oppo/model/lib/Vector3f;->z:F

    iget v1, p1, Lcom/oppo/model/lib/Vector3f;->z:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/oppo/model/lib/Vector3f;->z:F

    .line 99
    return-void
.end method

.method public final cross(Lcom/oppo/model/lib/Vector3f;Lcom/oppo/model/lib/Vector3f;)V
    .locals 5
    .param p1, "v1"    # Lcom/oppo/model/lib/Vector3f;
    .param p2, "v2"    # Lcom/oppo/model/lib/Vector3f;

    .prologue
    .line 151
    iget v2, p1, Lcom/oppo/model/lib/Vector3f;->y:F

    iget v3, p2, Lcom/oppo/model/lib/Vector3f;->z:F

    mul-float/2addr v2, v3

    iget v3, p1, Lcom/oppo/model/lib/Vector3f;->z:F

    iget v4, p2, Lcom/oppo/model/lib/Vector3f;->y:F

    mul-float/2addr v3, v4

    sub-float v0, v2, v3

    .line 152
    .local v0, "x":F
    iget v2, p2, Lcom/oppo/model/lib/Vector3f;->x:F

    iget v3, p1, Lcom/oppo/model/lib/Vector3f;->z:F

    mul-float/2addr v2, v3

    iget v3, p2, Lcom/oppo/model/lib/Vector3f;->z:F

    iget v4, p1, Lcom/oppo/model/lib/Vector3f;->x:F

    mul-float/2addr v3, v4

    sub-float v1, v2, v3

    .line 153
    .local v1, "y":F
    iget v2, p1, Lcom/oppo/model/lib/Vector3f;->x:F

    iget v3, p2, Lcom/oppo/model/lib/Vector3f;->y:F

    mul-float/2addr v2, v3

    iget v3, p1, Lcom/oppo/model/lib/Vector3f;->y:F

    iget v4, p2, Lcom/oppo/model/lib/Vector3f;->x:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/oppo/model/lib/Vector3f;->z:F

    .line 154
    iput v0, p0, Lcom/oppo/model/lib/Vector3f;->x:F

    .line 155
    iput v1, p0, Lcom/oppo/model/lib/Vector3f;->y:F

    .line 156
    return-void
.end method

.method public final dot(Lcom/oppo/model/lib/Vector3f;)F
    .locals 3
    .param p1, "v1"    # Lcom/oppo/model/lib/Vector3f;

    .prologue
    .line 141
    iget v0, p0, Lcom/oppo/model/lib/Vector3f;->x:F

    iget v1, p1, Lcom/oppo/model/lib/Vector3f;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/oppo/model/lib/Vector3f;->y:F

    iget v2, p1, Lcom/oppo/model/lib/Vector3f;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/oppo/model/lib/Vector3f;->z:F

    iget v2, p1, Lcom/oppo/model/lib/Vector3f;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public normalize()V
    .locals 4

    .prologue
    .line 169
    iget v1, p0, Lcom/oppo/model/lib/Vector3f;->x:F

    iget v2, p0, Lcom/oppo/model/lib/Vector3f;->x:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/oppo/model/lib/Vector3f;->y:F

    iget v3, p0, Lcom/oppo/model/lib/Vector3f;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/oppo/model/lib/Vector3f;->z:F

    iget v3, p0, Lcom/oppo/model/lib/Vector3f;->z:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 170
    .local v0, "len":F
    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    .line 171
    iget v1, p0, Lcom/oppo/model/lib/Vector3f;->x:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/oppo/model/lib/Vector3f;->x:F

    .line 172
    iget v1, p0, Lcom/oppo/model/lib/Vector3f;->y:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/oppo/model/lib/Vector3f;->y:F

    .line 173
    iget v1, p0, Lcom/oppo/model/lib/Vector3f;->z:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/oppo/model/lib/Vector3f;->z:F

    .line 174
    return-void
.end method

.method public final scale(F)V
    .locals 1
    .param p1, "s"    # F

    .prologue
    .line 129
    iget v0, p0, Lcom/oppo/model/lib/Vector3f;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/oppo/model/lib/Vector3f;->x:F

    .line 130
    iget v0, p0, Lcom/oppo/model/lib/Vector3f;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/oppo/model/lib/Vector3f;->y:F

    .line 131
    iget v0, p0, Lcom/oppo/model/lib/Vector3f;->z:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/oppo/model/lib/Vector3f;->z:F

    .line 132
    return-void
.end method

.method public set(FFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 64
    iput p1, p0, Lcom/oppo/model/lib/Vector3f;->x:F

    .line 65
    iput p2, p0, Lcom/oppo/model/lib/Vector3f;->y:F

    .line 66
    iput p3, p0, Lcom/oppo/model/lib/Vector3f;->z:F

    .line 67
    return-void
.end method

.method public set(Lcom/oppo/model/lib/Vector3f;)V
    .locals 3
    .param p1, "v"    # Lcom/oppo/model/lib/Vector3f;

    .prologue
    .line 75
    iget v0, p1, Lcom/oppo/model/lib/Vector3f;->x:F

    iget v1, p1, Lcom/oppo/model/lib/Vector3f;->y:F

    iget v2, p1, Lcom/oppo/model/lib/Vector3f;->z:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/oppo/model/lib/Vector3f;->set(FFF)V

    .line 76
    return-void
.end method

.method public set([F)V
    .locals 3
    .param p1, "a"    # [F

    .prologue
    .line 84
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget v2, p1, v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/oppo/model/lib/Vector3f;->set(FFF)V

    goto :goto_0
.end method

.method public final sub(Lcom/oppo/model/lib/Vector3f;)V
    .locals 0
    .param p1, "t1"    # Lcom/oppo/model/lib/Vector3f;

    .prologue
    .line 107
    invoke-virtual {p0, p0, p1}, Lcom/oppo/model/lib/Vector3f;->sub(Lcom/oppo/model/lib/Vector3f;Lcom/oppo/model/lib/Vector3f;)V

    .line 108
    return-void
.end method

.method public final sub(Lcom/oppo/model/lib/Vector3f;Lcom/oppo/model/lib/Vector3f;)V
    .locals 2
    .param p1, "t1"    # Lcom/oppo/model/lib/Vector3f;
    .param p2, "t2"    # Lcom/oppo/model/lib/Vector3f;

    .prologue
    .line 118
    iget v0, p1, Lcom/oppo/model/lib/Vector3f;->x:F

    iget v1, p2, Lcom/oppo/model/lib/Vector3f;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/oppo/model/lib/Vector3f;->x:F

    .line 119
    iget v0, p1, Lcom/oppo/model/lib/Vector3f;->y:F

    iget v1, p2, Lcom/oppo/model/lib/Vector3f;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/oppo/model/lib/Vector3f;->y:F

    .line 120
    iget v0, p1, Lcom/oppo/model/lib/Vector3f;->z:F

    iget v1, p2, Lcom/oppo/model/lib/Vector3f;->z:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/oppo/model/lib/Vector3f;->z:F

    .line 121
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vector3f x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oppo/model/lib/Vector3f;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oppo/model/lib/Vector3f;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oppo/model/lib/Vector3f;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zero()V
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/model/lib/Vector3f;->z:F

    iput v0, p0, Lcom/oppo/model/lib/Vector3f;->y:F

    iput v0, p0, Lcom/oppo/model/lib/Vector3f;->x:F

    .line 163
    return-void
.end method
