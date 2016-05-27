.class public Lcom/oppo/model/lib/PickFactory;
.super Ljava/lang/Object;
.source "PickFactory.java"


# static fields
.field private static gPickRay:Lcom/oppo/model/lib/Ray;

.field private static gProjector:Lcom/oppo/model/lib/Projector;

.field private static gpObjPosArray:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/oppo/model/lib/Ray;

    invoke-direct {v0}, Lcom/oppo/model/lib/Ray;-><init>()V

    sput-object v0, Lcom/oppo/model/lib/PickFactory;->gPickRay:Lcom/oppo/model/lib/Ray;

    .line 32
    new-instance v0, Lcom/oppo/model/lib/Projector;

    invoke-direct {v0}, Lcom/oppo/model/lib/Projector;-><init>()V

    sput-object v0, Lcom/oppo/model/lib/PickFactory;->gProjector:Lcom/oppo/model/lib/Projector;

    .line 34
    const/4 v0, 0x4

    new-array v0, v0, [F

    sput-object v0, Lcom/oppo/model/lib/PickFactory;->gpObjPosArray:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPickRay()Lcom/oppo/model/lib/Ray;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/oppo/model/lib/PickFactory;->gPickRay:Lcom/oppo/model/lib/Ray;

    return-object v0
.end method

.method public static update(FF[F[F[I)V
    .locals 12
    .param p0, "screenX"    # F
    .param p1, "screenY"    # F
    .param p2, "matrixProjectArray"    # [F
    .param p3, "matrixViewArray"    # [F
    .param p4, "viewport"    # [I

    .prologue
    .line 45
    const/4 v0, 0x3

    aget v0, p4, v0

    int-to-float v0, v0

    sub-float v2, v0, p1

    .line 47
    .local v2, "openglY":F
    sget-object v0, Lcom/oppo/model/lib/PickFactory;->gProjector:Lcom/oppo/model/lib/Projector;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    sget-object v10, Lcom/oppo/model/lib/PickFactory;->gpObjPosArray:[F

    const/4 v11, 0x0

    move v1, p0

    move-object v4, p3

    move-object v6, p2

    move-object/from16 v8, p4

    invoke-virtual/range {v0 .. v11}, Lcom/oppo/model/lib/Projector;->gluUnProject(FFF[FI[FI[II[FI)Z

    .line 50
    sget-object v0, Lcom/oppo/model/lib/PickFactory;->gPickRay:Lcom/oppo/model/lib/Ray;

    iget-object v0, v0, Lcom/oppo/model/lib/Ray;->mvOrigin:Lcom/oppo/model/lib/Vector3f;

    sget-object v1, Lcom/oppo/model/lib/PickFactory;->gpObjPosArray:[F

    const/4 v3, 0x0

    aget v1, v1, v3

    sget-object v3, Lcom/oppo/model/lib/PickFactory;->gpObjPosArray:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    sget-object v4, Lcom/oppo/model/lib/PickFactory;->gpObjPosArray:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-virtual {v0, v1, v3, v4}, Lcom/oppo/model/lib/Vector3f;->set(FFF)V

    .line 53
    sget-object v0, Lcom/oppo/model/lib/PickFactory;->gProjector:Lcom/oppo/model/lib/Projector;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    sget-object v10, Lcom/oppo/model/lib/PickFactory;->gpObjPosArray:[F

    const/4 v11, 0x0

    move v1, p0

    move-object v4, p3

    move-object v6, p2

    move-object/from16 v8, p4

    invoke-virtual/range {v0 .. v11}, Lcom/oppo/model/lib/Projector;->gluUnProject(FFF[FI[FI[II[FI)Z

    .line 56
    sget-object v0, Lcom/oppo/model/lib/PickFactory;->gPickRay:Lcom/oppo/model/lib/Ray;

    iget-object v0, v0, Lcom/oppo/model/lib/Ray;->mvDirection:Lcom/oppo/model/lib/Vector3f;

    sget-object v1, Lcom/oppo/model/lib/PickFactory;->gpObjPosArray:[F

    const/4 v3, 0x0

    aget v1, v1, v3

    sget-object v3, Lcom/oppo/model/lib/PickFactory;->gpObjPosArray:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    sget-object v4, Lcom/oppo/model/lib/PickFactory;->gpObjPosArray:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-virtual {v0, v1, v3, v4}, Lcom/oppo/model/lib/Vector3f;->set(FFF)V

    .line 57
    sget-object v0, Lcom/oppo/model/lib/PickFactory;->gPickRay:Lcom/oppo/model/lib/Ray;

    iget-object v0, v0, Lcom/oppo/model/lib/Ray;->mvDirection:Lcom/oppo/model/lib/Vector3f;

    sget-object v1, Lcom/oppo/model/lib/PickFactory;->gPickRay:Lcom/oppo/model/lib/Ray;

    iget-object v1, v1, Lcom/oppo/model/lib/Ray;->mvOrigin:Lcom/oppo/model/lib/Vector3f;

    invoke-virtual {v0, v1}, Lcom/oppo/model/lib/Vector3f;->sub(Lcom/oppo/model/lib/Vector3f;)V

    .line 59
    sget-object v0, Lcom/oppo/model/lib/PickFactory;->gPickRay:Lcom/oppo/model/lib/Ray;

    iget-object v0, v0, Lcom/oppo/model/lib/Ray;->mvDirection:Lcom/oppo/model/lib/Vector3f;

    invoke-virtual {v0}, Lcom/oppo/model/lib/Vector3f;->normalize()V

    .line 60
    return-void
.end method
