.class public Lcom/oppo/model/lib/Quat4f;
.super Ljava/lang/Object;
.source "Quat4f.java"


# instance fields
.field public w:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "w"    # F

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oppo/model/lib/Quat4f;->set(FFFF)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/oppo/model/lib/Quat4f;)V
    .locals 0
    .param p1, "q"    # Lcom/oppo/model/lib/Quat4f;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p0, p1}, Lcom/oppo/model/lib/Quat4f;->set(Lcom/oppo/model/lib/Quat4f;)V

    .line 49
    return-void
.end method

.method public static create(I)[Lcom/oppo/model/lib/Quat4f;
    .locals 3
    .param p0, "num"    # I

    .prologue
    .line 104
    new-array v0, p0, [Lcom/oppo/model/lib/Quat4f;

    .line 105
    .local v0, "Quat4fs":[Lcom/oppo/model/lib/Quat4f;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 106
    new-instance v2, Lcom/oppo/model/lib/Quat4f;

    invoke-direct {v2}, Lcom/oppo/model/lib/Quat4f;-><init>()V

    aput-object v2, v0, v1

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    :cond_0
    return-object v0
.end method


# virtual methods
.method public add(FFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 92
    iget v0, p0, Lcom/oppo/model/lib/Quat4f;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/oppo/model/lib/Quat4f;->x:F

    .line 93
    iget v0, p0, Lcom/oppo/model/lib/Quat4f;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/oppo/model/lib/Quat4f;->y:F

    .line 94
    iget v0, p0, Lcom/oppo/model/lib/Quat4f;->z:F

    add-float/2addr v0, p3

    iput v0, p0, Lcom/oppo/model/lib/Quat4f;->z:F

    .line 95
    return-void
.end method

.method public set(FFFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "w"    # F

    .prologue
    .line 60
    iput p1, p0, Lcom/oppo/model/lib/Quat4f;->x:F

    .line 61
    iput p2, p0, Lcom/oppo/model/lib/Quat4f;->y:F

    .line 62
    iput p3, p0, Lcom/oppo/model/lib/Quat4f;->z:F

    .line 63
    iput p4, p0, Lcom/oppo/model/lib/Quat4f;->w:F

    .line 64
    return-void
.end method

.method public set(Lcom/oppo/model/lib/Quat4f;)V
    .locals 4
    .param p1, "q"    # Lcom/oppo/model/lib/Quat4f;

    .prologue
    .line 72
    iget v0, p1, Lcom/oppo/model/lib/Quat4f;->x:F

    iget v1, p1, Lcom/oppo/model/lib/Quat4f;->y:F

    iget v2, p1, Lcom/oppo/model/lib/Quat4f;->z:F

    iget v3, p1, Lcom/oppo/model/lib/Quat4f;->w:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/oppo/model/lib/Quat4f;->set(FFFF)V

    .line 73
    return-void
.end method

.method public set(Lcom/oppo/model/lib/Vector3f;)V
    .locals 4
    .param p1, "v"    # Lcom/oppo/model/lib/Vector3f;

    .prologue
    .line 81
    iget v0, p1, Lcom/oppo/model/lib/Vector3f;->x:F

    iget v1, p1, Lcom/oppo/model/lib/Vector3f;->y:F

    iget v2, p1, Lcom/oppo/model/lib/Vector3f;->z:F

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/oppo/model/lib/Quat4f;->set(FFFF)V

    .line 82
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Quat4f x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oppo/model/lib/Quat4f;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oppo/model/lib/Quat4f;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oppo/model/lib/Quat4f;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oppo/model/lib/Quat4f;->w:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
