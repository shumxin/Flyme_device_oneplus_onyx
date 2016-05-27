.class public Lcom/oppo/model/lib/Matrix4f;
.super Ljava/lang/Object;
.source "Matrix4f.java"


# static fields
.field public static gFBMatrix:Ljava/nio/FloatBuffer;

.field private static tmpF:Lcom/oppo/model/lib/Vector3f;

.field private static tmpMat:Lcom/oppo/model/lib/Matrix4f;

.field private static tmpS:Lcom/oppo/model/lib/Vector3f;

.field private static tmpT:Lcom/oppo/model/lib/Vector3f;

.field private static tmpUp:Lcom/oppo/model/lib/Vector3f;


# instance fields
.field public m00:F

.field public m01:F

.field public m02:F

.field public m03:F

.field public m10:F

.field public m11:F

.field public m12:F

.field public m13:F

.field public m20:F

.field public m21:F

.field public m22:F

.field public m23:F

.field public m30:F

.field public m31:F

.field public m32:F

.field public m33:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/oppo/model/lib/IBufferFactory;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/oppo/model/lib/Matrix4f;->gFBMatrix:Ljava/nio/FloatBuffer;

    .line 30
    new-instance v0, Lcom/oppo/model/lib/Vector3f;

    invoke-direct {v0}, Lcom/oppo/model/lib/Vector3f;-><init>()V

    sput-object v0, Lcom/oppo/model/lib/Matrix4f;->tmpF:Lcom/oppo/model/lib/Vector3f;

    .line 31
    new-instance v0, Lcom/oppo/model/lib/Vector3f;

    invoke-direct {v0}, Lcom/oppo/model/lib/Vector3f;-><init>()V

    sput-object v0, Lcom/oppo/model/lib/Matrix4f;->tmpUp:Lcom/oppo/model/lib/Vector3f;

    .line 32
    new-instance v0, Lcom/oppo/model/lib/Vector3f;

    invoke-direct {v0}, Lcom/oppo/model/lib/Vector3f;-><init>()V

    sput-object v0, Lcom/oppo/model/lib/Matrix4f;->tmpS:Lcom/oppo/model/lib/Vector3f;

    .line 33
    new-instance v0, Lcom/oppo/model/lib/Vector3f;

    invoke-direct {v0}, Lcom/oppo/model/lib/Vector3f;-><init>()V

    sput-object v0, Lcom/oppo/model/lib/Matrix4f;->tmpT:Lcom/oppo/model/lib/Vector3f;

    .line 34
    new-instance v0, Lcom/oppo/model/lib/Matrix4f;

    invoke-direct {v0}, Lcom/oppo/model/lib/Matrix4f;-><init>()V

    sput-object v0, Lcom/oppo/model/lib/Matrix4f;->tmpMat:Lcom/oppo/model/lib/Matrix4f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p0}, Lcom/oppo/model/lib/Matrix4f;->setIdentity()V

    .line 46
    return-void
.end method

.method public static gluLookAt(Lcom/oppo/model/lib/Vector3f;Lcom/oppo/model/lib/Vector3f;Lcom/oppo/model/lib/Vector3f;Lcom/oppo/model/lib/Matrix4f;)V
    .locals 4
    .param p0, "eye"    # Lcom/oppo/model/lib/Vector3f;
    .param p1, "center"    # Lcom/oppo/model/lib/Vector3f;
    .param p2, "up"    # Lcom/oppo/model/lib/Vector3f;
    .param p3, "out"    # Lcom/oppo/model/lib/Matrix4f;

    .prologue
    const/4 v3, 0x0

    .line 765
    sget-object v0, Lcom/oppo/model/lib/Matrix4f;->tmpF:Lcom/oppo/model/lib/Vector3f;

    iget v1, p1, Lcom/oppo/model/lib/Vector3f;->x:F

    iget v2, p0, Lcom/oppo/model/lib/Vector3f;->x:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/oppo/model/lib/Vector3f;->x:F

    .line 766
    sget-object v0, Lcom/oppo/model/lib/Matrix4f;->tmpF:Lcom/oppo/model/lib/Vector3f;

    iget v1, p1, Lcom/oppo/model/lib/Vector3f;->y:F

    iget v2, p0, Lcom/oppo/model/lib/Vector3f;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/oppo/model/lib/Vector3f;->y:F

    .line 767
    sget-object v0, Lcom/oppo/model/lib/Matrix4f;->tmpF:Lcom/oppo/model/lib/Vector3f;

    iget v1, p1, Lcom/oppo/model/lib/Vector3f;->z:F

    iget v2, p0, Lcom/oppo/model/lib/Vector3f;->z:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/oppo/model/lib/Vector3f;->z:F

    .line 769
    sget-object v0, Lcom/oppo/model/lib/Matrix4f;->tmpF:Lcom/oppo/model/lib/Vector3f;

    invoke-virtual {v0}, Lcom/oppo/model/lib/Vector3f;->normalize()V

    .line 770
    sget-object v0, Lcom/oppo/model/lib/Matrix4f;->tmpUp:Lcom/oppo/model/lib/Vector3f;

    invoke-virtual {v0, p2}, Lcom/oppo/model/lib/Vector3f;->set(Lcom/oppo/model/lib/Vector3f;)V

    .line 771
    sget-object v0, Lcom/oppo/model/lib/Matrix4f;->tmpUp:Lcom/oppo/model/lib/Vector3f;

    invoke-virtual {v0}, Lcom/oppo/model/lib/Vector3f;->normalize()V

    .line 773
    sget-object v0, Lcom/oppo/model/lib/Matrix4f;->tmpS:Lcom/oppo/model/lib/Vector3f;

    sget-object v1, Lcom/oppo/model/lib/Matrix4f;->tmpF:Lcom/oppo/model/lib/Vector3f;

    sget-object v2, Lcom/oppo/model/lib/Matrix4f;->tmpUp:Lcom/oppo/model/lib/Vector3f;

    invoke-virtual {v0, v1, v2}, Lcom/oppo/model/lib/Vector3f;->cross(Lcom/oppo/model/lib/Vector3f;Lcom/oppo/model/lib/Vector3f;)V

    .line 774
    sget-object v0, Lcom/oppo/model/lib/Matrix4f;->tmpT:Lcom/oppo/model/lib/Vector3f;

    sget-object v1, Lcom/oppo/model/lib/Matrix4f;->tmpS:Lcom/oppo/model/lib/Vector3f;

    sget-object v2, Lcom/oppo/model/lib/Matrix4f;->tmpF:Lcom/oppo/model/lib/Vector3f;

    invoke-virtual {v0, v1, v2}, Lcom/oppo/model/lib/Vector3f;->cross(Lcom/oppo/model/lib/Vector3f;Lcom/oppo/model/lib/Vector3f;)V

    .line 776
    sget-object v0, Lcom/oppo/model/lib/Matrix4f;->tmpS:Lcom/oppo/model/lib/Vector3f;

    iget v0, v0, Lcom/oppo/model/lib/Vector3f;->x:F

    iput v0, p3, Lcom/oppo/model/lib/Matrix4f;->m00:F

    .line 777
    sget-object v0, Lcom/oppo/model/lib/Matrix4f;->tmpT:Lcom/oppo/model/lib/Vector3f;

    iget v0, v0, Lcom/oppo/model/lib/Vector3f;->x:F

    iput v0, p3, Lcom/oppo/model/lib/Matrix4f;->m10:F

    .line 778
    sget-object v0, Lcom/oppo/model/lib/Matrix4f;->tmpF:Lcom/oppo/model/lib/Vector3f;

    iget v0, v0, Lcom/oppo/model/lib/Vector3f;->x:F

    neg-float v0, v0

    iput v0, p3, Lcom/oppo/model/lib/Matrix4f;->m20:F

    .line 779
    iput v3, p3, Lcom/oppo/model/lib/Matrix4f;->m30:F

    .line 781
    sget-object v0, Lcom/oppo/model/lib/Matrix4f;->tmpS:Lcom/oppo/model/lib/Vector3f;

    iget v0, v0, Lcom/oppo/model/lib/Vector3f;->y:F

    iput v0, p3, Lcom/oppo/model/lib/Matrix4f;->m01:F

    .line 782
    sget-object v0, Lcom/oppo/model/lib/Matrix4f;->tmpT:Lcom/oppo/model/lib/Vector3f;

    iget v0, v0, Lcom/oppo/model/lib/Vector3f;->y:F

    iput v0, p3, Lcom/oppo/model/lib/Matrix4f;->m11:F

    .line 783
    sget-object v0, Lcom/oppo/model/lib/Matrix4f;->tmpF:Lcom/oppo/model/lib/Vector3f;

    iget v0, v0, Lcom/oppo/model/lib/Vector3f;->y:F

    neg-float v0, v0

    iput v0, p3, Lcom/oppo/model/lib/Matrix4f;->m21:F

    .line 784
    iput v3, p3, Lcom/oppo/model/lib/Matrix4f;->m31:F

    .line 786
    sget-object v0, Lcom/oppo/model/lib/Matrix4f;->tmpS:Lcom/oppo/model/lib/Vector3f;

    iget v0, v0, Lcom/oppo/model/lib/Vector3f;->z:F

    iput v0, p3, Lcom/oppo/model/lib/Matrix4f;->m02:F

    .line 787
    sget-object v0, Lcom/oppo/model/lib/Matrix4f;->tmpT:Lcom/oppo/model/lib/Vector3f;

    iget v0, v0, Lcom/oppo/model/lib/Vector3f;->z:F

    iput v0, p3, Lcom/oppo/model/lib/Matrix4f;->m12:F

    .line 788
    sget-object v0, Lcom/oppo/model/lib/Matrix4f;->tmpF:Lcom/oppo/model/lib/Vector3f;

    iget v0, v0, Lcom/oppo/model/lib/Vector3f;->z:F

    neg-float v0, v0

    iput v0, p3, Lcom/oppo/model/lib/Matrix4f;->m22:F

    .line 789
    iput v3, p3, Lcom/oppo/model/lib/Matrix4f;->m32:F

    .line 791
    iput v3, p3, Lcom/oppo/model/lib/Matrix4f;->m03:F

    .line 792
    iput v3, p3, Lcom/oppo/model/lib/Matrix4f;->m13:F

    .line 793
    iput v3, p3, Lcom/oppo/model/lib/Matrix4f;->m23:F

    .line 794
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p3, Lcom/oppo/model/lib/Matrix4f;->m33:F

    .line 796
    sget-object v0, Lcom/oppo/model/lib/Matrix4f;->tmpMat:Lcom/oppo/model/lib/Matrix4f;

    invoke-virtual {v0}, Lcom/oppo/model/lib/Matrix4f;->setIdentity()V

    .line 797
    sget-object v0, Lcom/oppo/model/lib/Matrix4f;->tmpMat:Lcom/oppo/model/lib/Matrix4f;

    iget v1, p0, Lcom/oppo/model/lib/Vector3f;->x:F

    neg-float v1, v1

    iget v2, p0, Lcom/oppo/model/lib/Vector3f;->y:F

    neg-float v2, v2

    iget v3, p0, Lcom/oppo/model/lib/Vector3f;->z:F

    neg-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/oppo/model/lib/Matrix4f;->setTranslation(FFF)V

    .line 799
    sget-object v0, Lcom/oppo/model/lib/Matrix4f;->tmpMat:Lcom/oppo/model/lib/Matrix4f;

    invoke-virtual {p3, v0}, Lcom/oppo/model/lib/Matrix4f;->mul(Lcom/oppo/model/lib/Matrix4f;)V

    .line 800
    return-void
.end method

.method public static gluPersective(FFFFLcom/oppo/model/lib/Matrix4f;)V
    .locals 9
    .param p0, "fovy"    # F
    .param p1, "aspect"    # F
    .param p2, "zNear"    # F
    .param p3, "zFar"    # F
    .param p4, "out"    # Lcom/oppo/model/lib/Matrix4f;

    .prologue
    const/4 v8, 0x0

    .line 813
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p0, v4

    float-to-double v4, v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double/2addr v4, v6

    double-to-float v2, v4

    .line 815
    .local v2, "radians":F
    sub-float v1, p3, p2

    .line 816
    .local v1, "deltaZ":F
    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 818
    .local v3, "sine":F
    cmpl-float v4, v1, v8

    if-eqz v4, :cond_0

    cmpl-float v4, v3, v8

    if-eqz v4, :cond_0

    cmpl-float v4, p1, v8

    if-nez v4, :cond_1

    .line 832
    :cond_0
    :goto_0
    return-void

    .line 822
    :cond_1
    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    div-float v0, v4, v3

    .line 824
    .local v0, "cotangent":F
    invoke-virtual {p4}, Lcom/oppo/model/lib/Matrix4f;->setIdentity()V

    .line 826
    div-float v4, v0, p1

    iput v4, p4, Lcom/oppo/model/lib/Matrix4f;->m00:F

    .line 827
    iput v0, p4, Lcom/oppo/model/lib/Matrix4f;->m11:F

    .line 828
    add-float v4, p3, p2

    neg-float v4, v4

    div-float/2addr v4, v1

    iput v4, p4, Lcom/oppo/model/lib/Matrix4f;->m22:F

    .line 829
    const/high16 v4, -0x40800000    # -1.0f

    iput v4, p4, Lcom/oppo/model/lib/Matrix4f;->m32:F

    .line 830
    const/high16 v4, -0x40000000    # -2.0f

    mul-float/2addr v4, p2

    mul-float/2addr v4, p3

    div-float/2addr v4, v1

    iput v4, p4, Lcom/oppo/model/lib/Matrix4f;->m23:F

    .line 831
    iput v8, p4, Lcom/oppo/model/lib/Matrix4f;->m33:F

    goto :goto_0
.end method

.method static luBacksubstitution([D[I[D)V
    .locals 18
    .param p0, "matrix1"    # [D
    .param p1, "row_perm"    # [I
    .param p2, "matrix2"    # [D

    .prologue
    .line 665
    const/4 v6, 0x0

    .line 668
    .local v6, "rp":I
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_0
    const/4 v10, 0x4

    if-ge v5, v10, :cond_3

    .line 670
    move v0, v5

    .line 671
    .local v0, "cv":I
    const/4 v2, -0x1

    .line 674
    .local v2, "ii":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v10, 0x4

    if-ge v1, v10, :cond_2

    .line 677
    add-int v10, v6, v1

    aget v3, p1, v10

    .line 678
    .local v3, "ip":I
    mul-int/lit8 v10, v3, 0x4

    add-int/2addr v10, v0

    aget-wide v8, p2, v10

    .line 679
    .local v8, "sum":D
    mul-int/lit8 v10, v3, 0x4

    add-int/2addr v10, v0

    mul-int/lit8 v11, v1, 0x4

    add-int/2addr v11, v0

    aget-wide v12, p2, v11

    aput-wide v12, p2, v10

    .line 680
    if-ltz v2, :cond_0

    .line 682
    mul-int/lit8 v7, v1, 0x4

    .line 683
    .local v7, "rv":I
    move v4, v2

    .local v4, "j":I
    :goto_2
    add-int/lit8 v10, v1, -0x1

    if-gt v4, v10, :cond_1

    .line 684
    add-int v10, v7, v4

    aget-wide v10, p0, v10

    mul-int/lit8 v12, v4, 0x4

    add-int/2addr v12, v0

    aget-wide v12, p2, v12

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    .line 683
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 686
    .end local v4    # "j":I
    .end local v7    # "rv":I
    :cond_0
    const-wide/16 v10, 0x0

    cmpl-double v10, v8, v10

    if-eqz v10, :cond_1

    .line 687
    move v2, v1

    .line 689
    :cond_1
    mul-int/lit8 v10, v1, 0x4

    add-int/2addr v10, v0

    aput-wide v8, p2, v10

    .line 674
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 694
    .end local v3    # "ip":I
    .end local v8    # "sum":D
    :cond_2
    const/16 v7, 0xc

    .line 695
    .restart local v7    # "rv":I
    add-int/lit8 v10, v0, 0xc

    aget-wide v12, p2, v10

    const/16 v11, 0xf

    aget-wide v14, p0, v11

    div-double/2addr v12, v14

    aput-wide v12, p2, v10

    .line 697
    add-int/lit8 v7, v7, -0x4

    .line 698
    add-int/lit8 v10, v0, 0x8

    add-int/lit8 v11, v0, 0x8

    aget-wide v12, p2, v11

    const/16 v11, 0xb

    aget-wide v14, p0, v11

    add-int/lit8 v11, v0, 0xc

    aget-wide v16, p2, v11

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    const/16 v11, 0xa

    aget-wide v14, p0, v11

    div-double/2addr v12, v14

    aput-wide v12, p2, v10

    .line 701
    add-int/lit8 v7, v7, -0x4

    .line 702
    add-int/lit8 v10, v0, 0x4

    add-int/lit8 v11, v0, 0x4

    aget-wide v12, p2, v11

    const/4 v11, 0x6

    aget-wide v14, p0, v11

    add-int/lit8 v11, v0, 0x8

    aget-wide v16, p2, v11

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    const/4 v11, 0x7

    aget-wide v14, p0, v11

    add-int/lit8 v11, v0, 0xc

    aget-wide v16, p2, v11

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    const/4 v11, 0x5

    aget-wide v14, p0, v11

    div-double/2addr v12, v14

    aput-wide v12, p2, v10

    .line 706
    add-int/lit8 v7, v7, -0x4

    .line 707
    add-int/lit8 v10, v0, 0x0

    add-int/lit8 v11, v0, 0x0

    aget-wide v12, p2, v11

    const/4 v11, 0x1

    aget-wide v14, p0, v11

    add-int/lit8 v11, v0, 0x4

    aget-wide v16, p2, v11

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    const/4 v11, 0x2

    aget-wide v14, p0, v11

    add-int/lit8 v11, v0, 0x8

    aget-wide v16, p2, v11

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    const/4 v11, 0x3

    aget-wide v14, p0, v11

    add-int/lit8 v11, v0, 0xc

    aget-wide v16, p2, v11

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    const/4 v11, 0x0

    aget-wide v14, p0, v11

    div-double/2addr v12, v14

    aput-wide v12, p2, v10

    .line 668
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 711
    .end local v0    # "cv":I
    .end local v1    # "i":I
    .end local v2    # "ii":I
    .end local v7    # "rv":I
    :cond_3
    return-void
.end method

.method static luDecomposition([D[I)Z
    .locals 30
    .param p0, "matrix0"    # [D
    .param p1, "row_perm"    # [I

    .prologue
    .line 518
    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v0, v0, [D

    move-object/from16 v18, v0

    .line 524
    .local v18, "row_scale":[D
    const/16 v16, 0x0

    .line 525
    .local v16, "ptr":I
    const/16 v19, 0x0

    .line 528
    .local v19, "rs":I
    const/4 v4, 0x4

    .local v4, "i":I
    move/from16 v20, v19

    .end local v19    # "rs":I
    .local v20, "rs":I
    move v5, v4

    .line 529
    .end local v4    # "i":I
    .local v5, "i":I
    :goto_0
    add-int/lit8 v4, v5, -0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    if-eqz v5, :cond_2

    .line 530
    const-wide/16 v2, 0x0

    .line 532
    .local v2, "big":D
    const/4 v7, 0x4

    .local v7, "j":I
    move/from16 v17, v16

    .end local v16    # "ptr":I
    .local v17, "ptr":I
    move v8, v7

    .line 533
    .end local v7    # "j":I
    .local v8, "j":I
    :goto_1
    add-int/lit8 v7, v8, -0x1

    .end local v8    # "j":I
    .restart local v7    # "j":I
    if-eqz v8, :cond_0

    .line 534
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "ptr":I
    .restart local v16    # "ptr":I
    aget-wide v24, p0, v17

    .line 535
    .local v24, "temp":D
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(D)D

    move-result-wide v24

    .line 536
    cmpl-double v26, v24, v2

    if-lez v26, :cond_e

    .line 537
    move-wide/from16 v2, v24

    move/from16 v17, v16

    .end local v16    # "ptr":I
    .restart local v17    # "ptr":I
    move v8, v7

    .end local v7    # "j":I
    .restart local v8    # "j":I
    goto :goto_1

    .line 542
    .end local v8    # "j":I
    .end local v24    # "temp":D
    .restart local v7    # "j":I
    :cond_0
    const-wide/16 v26, 0x0

    cmpl-double v26, v2, v26

    if-nez v26, :cond_1

    .line 543
    const/16 v26, 0x0

    .line 640
    .end local v2    # "big":D
    .end local v17    # "ptr":I
    :goto_2
    return v26

    .line 545
    .restart local v2    # "big":D
    .restart local v17    # "ptr":I
    :cond_1
    add-int/lit8 v19, v20, 0x1

    .end local v20    # "rs":I
    .restart local v19    # "rs":I
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    div-double v26, v26, v2

    aput-wide v26, v18, v20

    move/from16 v20, v19

    .end local v19    # "rs":I
    .restart local v20    # "rs":I
    move/from16 v16, v17

    .end local v17    # "ptr":I
    .restart local v16    # "ptr":I
    move v5, v4

    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_0

    .line 552
    .end local v2    # "big":D
    .end local v5    # "i":I
    .end local v7    # "j":I
    .restart local v4    # "i":I
    :cond_2
    const/4 v11, 0x0

    .line 555
    .local v11, "mtx":I
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_3
    const/16 v26, 0x4

    move/from16 v0, v26

    if-ge v7, v0, :cond_d

    .line 561
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v7, :cond_4

    .line 562
    mul-int/lit8 v26, v4, 0x4

    add-int v26, v26, v11

    add-int v21, v26, v7

    .line 563
    .local v21, "target":I
    aget-wide v22, p0, v21

    .line 564
    .local v22, "sum":D
    move v9, v4

    .line 565
    .local v9, "k":I
    mul-int/lit8 v26, v4, 0x4

    add-int v12, v11, v26

    .line 566
    .local v12, "p1":I
    add-int v14, v11, v7

    .local v14, "p2":I
    move v10, v9

    .line 567
    .end local v9    # "k":I
    .local v10, "k":I
    :goto_5
    add-int/lit8 v9, v10, -0x1

    .end local v10    # "k":I
    .restart local v9    # "k":I
    if-eqz v10, :cond_3

    .line 568
    aget-wide v26, p0, v12

    aget-wide v28, p0, v14

    mul-double v26, v26, v28

    sub-double v22, v22, v26

    .line 569
    add-int/lit8 v12, v12, 0x1

    .line 570
    add-int/lit8 v14, v14, 0x4

    move v10, v9

    .end local v9    # "k":I
    .restart local v10    # "k":I
    goto :goto_5

    .line 572
    .end local v10    # "k":I
    .restart local v9    # "k":I
    :cond_3
    aput-wide v22, p0, v21

    .line 561
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 577
    .end local v9    # "k":I
    .end local v12    # "p1":I
    .end local v14    # "p2":I
    .end local v21    # "target":I
    .end local v22    # "sum":D
    :cond_4
    const-wide/16 v2, 0x0

    .line 578
    .restart local v2    # "big":D
    const/4 v6, -0x1

    .line 579
    .local v6, "imax":I
    move v4, v7

    :goto_6
    const/16 v26, 0x4

    move/from16 v0, v26

    if-ge v4, v0, :cond_7

    .line 580
    mul-int/lit8 v26, v4, 0x4

    add-int v26, v26, v11

    add-int v21, v26, v7

    .line 581
    .restart local v21    # "target":I
    aget-wide v22, p0, v21

    .line 582
    .restart local v22    # "sum":D
    move v9, v7

    .line 583
    .restart local v9    # "k":I
    mul-int/lit8 v26, v4, 0x4

    add-int v12, v11, v26

    .line 584
    .restart local v12    # "p1":I
    add-int v14, v11, v7

    .restart local v14    # "p2":I
    move v10, v9

    .line 585
    .end local v9    # "k":I
    .restart local v10    # "k":I
    :goto_7
    add-int/lit8 v9, v10, -0x1

    .end local v10    # "k":I
    .restart local v9    # "k":I
    if-eqz v10, :cond_5

    .line 586
    aget-wide v26, p0, v12

    aget-wide v28, p0, v14

    mul-double v26, v26, v28

    sub-double v22, v22, v26

    .line 587
    add-int/lit8 v12, v12, 0x1

    .line 588
    add-int/lit8 v14, v14, 0x4

    move v10, v9

    .end local v9    # "k":I
    .restart local v10    # "k":I
    goto :goto_7

    .line 590
    .end local v10    # "k":I
    .restart local v9    # "k":I
    :cond_5
    aput-wide v22, p0, v21

    .line 593
    aget-wide v26, v18, v4

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(D)D

    move-result-wide v28

    mul-double v24, v26, v28

    .restart local v24    # "temp":D
    cmpl-double v26, v24, v2

    if-ltz v26, :cond_6

    .line 594
    move-wide/from16 v2, v24

    .line 595
    move v6, v4

    .line 579
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 599
    .end local v9    # "k":I
    .end local v12    # "p1":I
    .end local v14    # "p2":I
    .end local v21    # "target":I
    .end local v22    # "sum":D
    .end local v24    # "temp":D
    :cond_7
    if-gez v6, :cond_8

    .line 600
    new-instance v26, Ljava/lang/RuntimeException;

    const-string v27, "Matrix4f13"

    invoke-direct/range {v26 .. v27}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 604
    :cond_8
    if-eq v7, v6, :cond_a

    .line 606
    const/4 v9, 0x4

    .line 607
    .restart local v9    # "k":I
    mul-int/lit8 v26, v6, 0x4

    add-int v12, v11, v26

    .line 608
    .restart local v12    # "p1":I
    mul-int/lit8 v26, v7, 0x4

    add-int v14, v11, v26

    .restart local v14    # "p2":I
    move v15, v14

    .end local v14    # "p2":I
    .local v15, "p2":I
    move v13, v12

    .end local v12    # "p1":I
    .local v13, "p1":I
    move v10, v9

    .line 609
    .end local v9    # "k":I
    .restart local v10    # "k":I
    :goto_8
    add-int/lit8 v9, v10, -0x1

    .end local v10    # "k":I
    .restart local v9    # "k":I
    if-eqz v10, :cond_9

    .line 610
    aget-wide v24, p0, v13

    .line 611
    .restart local v24    # "temp":D
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "p1":I
    .restart local v12    # "p1":I
    aget-wide v26, p0, v15

    aput-wide v26, p0, v13

    .line 612
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "p2":I
    .restart local v14    # "p2":I
    aput-wide v24, p0, v15

    move v15, v14

    .end local v14    # "p2":I
    .restart local v15    # "p2":I
    move v13, v12

    .end local v12    # "p1":I
    .restart local v13    # "p1":I
    move v10, v9

    .end local v9    # "k":I
    .restart local v10    # "k":I
    goto :goto_8

    .line 616
    .end local v10    # "k":I
    .end local v24    # "temp":D
    .restart local v9    # "k":I
    :cond_9
    aget-wide v26, v18, v7

    aput-wide v26, v18, v6

    .line 620
    .end local v9    # "k":I
    .end local v13    # "p1":I
    .end local v15    # "p2":I
    :cond_a
    aput v6, p1, v7

    .line 623
    mul-int/lit8 v26, v7, 0x4

    add-int v26, v26, v11

    add-int v26, v26, v7

    aget-wide v26, p0, v26

    const-wide/16 v28, 0x0

    cmpl-double v26, v26, v28

    if-nez v26, :cond_b

    .line 624
    const/16 v26, 0x0

    goto/16 :goto_2

    .line 628
    :cond_b
    const/16 v26, 0x3

    move/from16 v0, v26

    if-eq v7, v0, :cond_c

    .line 629
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    mul-int/lit8 v28, v7, 0x4

    add-int v28, v28, v11

    add-int v28, v28, v7

    aget-wide v28, p0, v28

    div-double v24, v26, v28

    .line 630
    .restart local v24    # "temp":D
    add-int/lit8 v26, v7, 0x1

    mul-int/lit8 v26, v26, 0x4

    add-int v26, v26, v11

    add-int v21, v26, v7

    .line 631
    .restart local v21    # "target":I
    rsub-int/lit8 v4, v7, 0x3

    move v5, v4

    .line 632
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :goto_9
    add-int/lit8 v4, v5, -0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    if-eqz v5, :cond_c

    .line 633
    aget-wide v26, p0, v21

    mul-double v26, v26, v24

    aput-wide v26, p0, v21

    .line 634
    add-int/lit8 v21, v21, 0x4

    move v5, v4

    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_9

    .line 555
    .end local v5    # "i":I
    .end local v21    # "target":I
    .end local v24    # "temp":D
    .restart local v4    # "i":I
    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 640
    .end local v2    # "big":D
    .end local v6    # "imax":I
    :cond_d
    const/16 v26, 0x1

    goto/16 :goto_2

    .end local v11    # "mtx":I
    .restart local v2    # "big":D
    .restart local v24    # "temp":D
    :cond_e
    move/from16 v17, v16

    .end local v16    # "ptr":I
    .restart local v17    # "ptr":I
    move v8, v7

    .end local v7    # "j":I
    .restart local v8    # "j":I
    goto/16 :goto_1
.end method


# virtual methods
.method public asFloatBuffer()Ljava/nio/FloatBuffer;
    .locals 2

    .prologue
    .line 714
    sget-object v0, Lcom/oppo/model/lib/Matrix4f;->gFBMatrix:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 715
    sget-object v0, Lcom/oppo/model/lib/Matrix4f;->gFBMatrix:Ljava/nio/FloatBuffer;

    invoke-virtual {p0, v0}, Lcom/oppo/model/lib/Matrix4f;->fillFloatBuffer(Ljava/nio/FloatBuffer;)V

    .line 716
    sget-object v0, Lcom/oppo/model/lib/Matrix4f;->gFBMatrix:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public fillFloatArray([F)V
    .locals 2
    .param p1, "array"    # [F

    .prologue
    .line 751
    invoke-virtual {p0}, Lcom/oppo/model/lib/Matrix4f;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 752
    .local v0, "buf":Ljava/nio/FloatBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    .line 753
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 754
    return-void
.end method

.method public final fillFloatBuffer(Ljava/nio/FloatBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/FloatBuffer;

    .prologue
    const/4 v1, 0x0

    .line 725
    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 727
    iget v0, p0, Lcom/oppo/model/lib/Matrix4f;->m00:F

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 728
    iget v0, p0, Lcom/oppo/model/lib/Matrix4f;->m10:F

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 729
    iget v0, p0, Lcom/oppo/model/lib/Matrix4f;->m20:F

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 730
    iget v0, p0, Lcom/oppo/model/lib/Matrix4f;->m30:F

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 732
    iget v0, p0, Lcom/oppo/model/lib/Matrix4f;->m01:F

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 733
    iget v0, p0, Lcom/oppo/model/lib/Matrix4f;->m11:F

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 734
    iget v0, p0, Lcom/oppo/model/lib/Matrix4f;->m21:F

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 735
    iget v0, p0, Lcom/oppo/model/lib/Matrix4f;->m31:F

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 737
    iget v0, p0, Lcom/oppo/model/lib/Matrix4f;->m02:F

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 738
    iget v0, p0, Lcom/oppo/model/lib/Matrix4f;->m12:F

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 739
    iget v0, p0, Lcom/oppo/model/lib/Matrix4f;->m22:F

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 740
    iget v0, p0, Lcom/oppo/model/lib/Matrix4f;->m32:F

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 742
    iget v0, p0, Lcom/oppo/model/lib/Matrix4f;->m03:F

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 743
    iget v0, p0, Lcom/oppo/model/lib/Matrix4f;->m13:F

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 744
    iget v0, p0, Lcom/oppo/model/lib/Matrix4f;->m23:F

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 745
    iget v0, p0, Lcom/oppo/model/lib/Matrix4f;->m33:F

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 747
    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 748
    return-void
.end method

.method public final generate([F[F)V
    .locals 8
    .param p1, "ground"    # [F
    .param p2, "lightPos"    # [F

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 305
    const/4 v0, 0x0

    .line 306
    .local v0, "dot":F
    const/4 v1, 0x0

    .line 308
    .local v1, "i":I
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 309
    aget v2, p1, v1

    aget v3, p2, v1

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    .line 308
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 312
    :cond_0
    aget v2, p1, v4

    aget v3, p2, v4

    mul-float/2addr v2, v3

    sub-float v2, v0, v2

    iput v2, p0, Lcom/oppo/model/lib/Matrix4f;->m00:F

    .line 313
    aget v2, p1, v4

    neg-float v2, v2

    aget v3, p2, v5

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/oppo/model/lib/Matrix4f;->m10:F

    .line 314
    aget v2, p1, v4

    neg-float v2, v2

    aget v3, p2, v6

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/oppo/model/lib/Matrix4f;->m20:F

    .line 315
    aget v2, p1, v4

    neg-float v2, v2

    aget v3, p2, v7

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/oppo/model/lib/Matrix4f;->m30:F

    .line 317
    aget v2, p1, v5

    neg-float v2, v2

    aget v3, p2, v4

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/oppo/model/lib/Matrix4f;->m01:F

    .line 318
    aget v2, p1, v5

    aget v3, p2, v5

    mul-float/2addr v2, v3

    sub-float v2, v0, v2

    iput v2, p0, Lcom/oppo/model/lib/Matrix4f;->m11:F

    .line 319
    aget v2, p1, v5

    neg-float v2, v2

    aget v3, p2, v6

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/oppo/model/lib/Matrix4f;->m21:F

    .line 320
    aget v2, p1, v5

    neg-float v2, v2

    aget v3, p2, v7

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/oppo/model/lib/Matrix4f;->m31:F

    .line 322
    aget v2, p1, v6

    neg-float v2, v2

    aget v3, p2, v4

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/oppo/model/lib/Matrix4f;->m02:F

    .line 323
    aget v2, p1, v6

    neg-float v2, v2

    aget v3, p2, v5

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/oppo/model/lib/Matrix4f;->m12:F

    .line 324
    aget v2, p1, v6

    aget v3, p2, v6

    mul-float/2addr v2, v3

    sub-float v2, v0, v2

    iput v2, p0, Lcom/oppo/model/lib/Matrix4f;->m22:F

    .line 325
    aget v2, p1, v6

    neg-float v2, v2

    aget v3, p2, v7

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/oppo/model/lib/Matrix4f;->m32:F

    .line 327
    aget v2, p1, v7

    neg-float v2, v2

    aget v3, p2, v4

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/oppo/model/lib/Matrix4f;->m03:F

    .line 328
    aget v2, p1, v7

    neg-float v2, v2

    aget v3, p2, v5

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/oppo/model/lib/Matrix4f;->m13:F

    .line 329
    aget v2, p1, v7

    neg-float v2, v2

    aget v3, p2, v6

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/oppo/model/lib/Matrix4f;->m23:F

    .line 330
    aget v2, p1, v7

    aget v3, p2, v7

    mul-float/2addr v2, v3

    sub-float v2, v0, v2

    iput v2, p0, Lcom/oppo/model/lib/Matrix4f;->m33:F

    .line 331
    return-void
.end method

.method public final invTransform(Lcom/oppo/model/lib/Vector3f;Lcom/oppo/model/lib/Vector3f;)V
    .locals 3
    .param p1, "point"    # Lcom/oppo/model/lib/Vector3f;
    .param p2, "pointOut"    # Lcom/oppo/model/lib/Vector3f;

    .prologue
    .line 357
    new-instance v0, Lcom/oppo/model/lib/Vector3f;

    invoke-direct {v0}, Lcom/oppo/model/lib/Vector3f;-><init>()V

    .line 358
    .local v0, "tmp":Lcom/oppo/model/lib/Vector3f;
    iget v1, p1, Lcom/oppo/model/lib/Vector3f;->x:F

    iget v2, p0, Lcom/oppo/model/lib/Matrix4f;->m03:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/oppo/model/lib/Vector3f;->x:F

    .line 359
    iget v1, p1, Lcom/oppo/model/lib/Vector3f;->y:F

    iget v2, p0, Lcom/oppo/model/lib/Matrix4f;->m13:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/oppo/model/lib/Vector3f;->y:F

    .line 360
    iget v1, p1, Lcom/oppo/model/lib/Vector3f;->z:F

    iget v2, p0, Lcom/oppo/model/lib/Matrix4f;->m23:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/oppo/model/lib/Vector3f;->z:F

    .line 363
    invoke-virtual {p0, v0, p2}, Lcom/oppo/model/lib/Matrix4f;->invTransformRotate(Lcom/oppo/model/lib/Vector3f;Lcom/oppo/model/lib/Vector3f;)V

    .line 364
    return-void
.end method

.method public final invTransformRotate(Lcom/oppo/model/lib/Vector3f;Lcom/oppo/model/lib/Vector3f;)V
    .locals 5
    .param p1, "normal"    # Lcom/oppo/model/lib/Vector3f;
    .param p2, "normalOut"    # Lcom/oppo/model/lib/Vector3f;

    .prologue
    .line 368
    iget v2, p0, Lcom/oppo/model/lib/Matrix4f;->m00:F

    iget v3, p1, Lcom/oppo/model/lib/Vector3f;->x:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/oppo/model/lib/Matrix4f;->m10:F

    iget v4, p1, Lcom/oppo/model/lib/Vector3f;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/oppo/model/lib/Matrix4f;->m20:F

    iget v4, p1, Lcom/oppo/model/lib/Vector3f;->z:F

    mul-float/2addr v3, v4

    add-float v0, v2, v3

    .line 369
    .local v0, "x":F
    iget v2, p0, Lcom/oppo/model/lib/Matrix4f;->m01:F

    iget v3, p1, Lcom/oppo/model/lib/Vector3f;->x:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/oppo/model/lib/Matrix4f;->m11:F

    iget v4, p1, Lcom/oppo/model/lib/Vector3f;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/oppo/model/lib/Matrix4f;->m21:F

    iget v4, p1, Lcom/oppo/model/lib/Vector3f;->z:F

    mul-float/2addr v3, v4

    add-float v1, v2, v3

    .line 370
    .local v1, "y":F
    iget v2, p0, Lcom/oppo/model/lib/Matrix4f;->m02:F

    iget v3, p1, Lcom/oppo/model/lib/Vector3f;->x:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/oppo/model/lib/Matrix4f;->m12:F

    iget v4, p1, Lcom/oppo/model/lib/Vector3f;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/oppo/model/lib/Matrix4f;->m22:F

    iget v4, p1, Lcom/oppo/model/lib/Vector3f;->z:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p2, Lcom/oppo/model/lib/Vector3f;->z:F

    .line 371
    iput v0, p2, Lcom/oppo/model/lib/Vector3f;->x:F

    .line 372
    iput v1, p2, Lcom/oppo/model/lib/Vector3f;->y:F

    .line 373
    return-void
.end method

.method public final invert()V
    .locals 0

    .prologue
    .line 419
    invoke-virtual {p0, p0}, Lcom/oppo/model/lib/Matrix4f;->invertGeneral(Lcom/oppo/model/lib/Matrix4f;)V

    .line 420
    return-void
.end method

.method final invertGeneral(Lcom/oppo/model/lib/Matrix4f;)V
    .locals 14
    .param p1, "m1"    # Lcom/oppo/model/lib/Matrix4f;

    .prologue
    const/16 v13, 0xa

    const/4 v12, 0x5

    const/4 v11, 0x4

    const/4 v10, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 430
    const/16 v4, 0x10

    new-array v3, v4, [D

    .line 431
    .local v3, "temp":[D
    const/16 v4, 0x10

    new-array v1, v4, [D

    .line 432
    .local v1, "result":[D
    new-array v2, v11, [I

    .line 439
    .local v2, "row_perm":[I
    iget v4, p1, Lcom/oppo/model/lib/Matrix4f;->m00:F

    float-to-double v4, v4

    aput-wide v4, v3, v10

    .line 440
    const/4 v4, 0x1

    iget v5, p1, Lcom/oppo/model/lib/Matrix4f;->m01:F

    float-to-double v6, v5

    aput-wide v6, v3, v4

    .line 441
    const/4 v4, 0x2

    iget v5, p1, Lcom/oppo/model/lib/Matrix4f;->m02:F

    float-to-double v6, v5

    aput-wide v6, v3, v4

    .line 442
    const/4 v4, 0x3

    iget v5, p1, Lcom/oppo/model/lib/Matrix4f;->m03:F

    float-to-double v6, v5

    aput-wide v6, v3, v4

    .line 444
    iget v4, p1, Lcom/oppo/model/lib/Matrix4f;->m10:F

    float-to-double v4, v4

    aput-wide v4, v3, v11

    .line 445
    iget v4, p1, Lcom/oppo/model/lib/Matrix4f;->m11:F

    float-to-double v4, v4

    aput-wide v4, v3, v12

    .line 446
    const/4 v4, 0x6

    iget v5, p1, Lcom/oppo/model/lib/Matrix4f;->m12:F

    float-to-double v6, v5

    aput-wide v6, v3, v4

    .line 447
    const/4 v4, 0x7

    iget v5, p1, Lcom/oppo/model/lib/Matrix4f;->m13:F

    float-to-double v6, v5

    aput-wide v6, v3, v4

    .line 449
    const/16 v4, 0x8

    iget v5, p1, Lcom/oppo/model/lib/Matrix4f;->m20:F

    float-to-double v6, v5

    aput-wide v6, v3, v4

    .line 450
    const/16 v4, 0x9

    iget v5, p1, Lcom/oppo/model/lib/Matrix4f;->m21:F

    float-to-double v6, v5

    aput-wide v6, v3, v4

    .line 451
    iget v4, p1, Lcom/oppo/model/lib/Matrix4f;->m22:F

    float-to-double v4, v4

    aput-wide v4, v3, v13

    .line 452
    const/16 v4, 0xb

    iget v5, p1, Lcom/oppo/model/lib/Matrix4f;->m23:F

    float-to-double v6, v5

    aput-wide v6, v3, v4

    .line 454
    const/16 v4, 0xc

    iget v5, p1, Lcom/oppo/model/lib/Matrix4f;->m30:F

    float-to-double v6, v5

    aput-wide v6, v3, v4

    .line 455
    const/16 v4, 0xd

    iget v5, p1, Lcom/oppo/model/lib/Matrix4f;->m31:F

    float-to-double v6, v5

    aput-wide v6, v3, v4

    .line 456
    const/16 v4, 0xe

    iget v5, p1, Lcom/oppo/model/lib/Matrix4f;->m32:F

    float-to-double v6, v5

    aput-wide v6, v3, v4

    .line 457
    const/16 v4, 0xf

    iget v5, p1, Lcom/oppo/model/lib/Matrix4f;->m33:F

    float-to-double v6, v5

    aput-wide v6, v3, v4

    .line 460
    invoke-static {v3, v2}, Lcom/oppo/model/lib/Matrix4f;->luDecomposition([D[I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 462
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Matrix4f12"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 466
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v4, 0x10

    if-ge v0, v4, :cond_1

    .line 467
    const-wide/16 v4, 0x0

    aput-wide v4, v1, v0

    .line 466
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 469
    :cond_1
    aput-wide v8, v1, v10

    .line 470
    aput-wide v8, v1, v12

    .line 471
    aput-wide v8, v1, v13

    .line 472
    const/16 v4, 0xf

    aput-wide v8, v1, v4

    .line 473
    invoke-static {v3, v2, v1}, Lcom/oppo/model/lib/Matrix4f;->luBacksubstitution([D[I[D)V

    .line 475
    aget-wide v4, v1, v10

    double-to-float v4, v4

    iput v4, p0, Lcom/oppo/model/lib/Matrix4f;->m00:F

    .line 476
    const/4 v4, 0x1

    aget-wide v4, v1, v4

    double-to-float v4, v4

    iput v4, p0, Lcom/oppo/model/lib/Matrix4f;->m01:F

    .line 477
    const/4 v4, 0x2

    aget-wide v4, v1, v4

    double-to-float v4, v4

    iput v4, p0, Lcom/oppo/model/lib/Matrix4f;->m02:F

    .line 478
    const/4 v4, 0x3

    aget-wide v4, v1, v4

    double-to-float v4, v4

    iput v4, p0, Lcom/oppo/model/lib/Matrix4f;->m03:F

    .line 480
    aget-wide v4, v1, v11

    double-to-float v4, v4

    iput v4, p0, Lcom/oppo/model/lib/Matrix4f;->m10:F

    .line 481
    aget-wide v4, v1, v12

    double-to-float v4, v4

    iput v4, p0, Lcom/oppo/model/lib/Matrix4f;->m11:F

    .line 482
    const/4 v4, 0x6

    aget-wide v4, v1, v4

    double-to-float v4, v4

    iput v4, p0, Lcom/oppo/model/lib/Matrix4f;->m12:F

    .line 483
    const/4 v4, 0x7

    aget-wide v4, v1, v4

    double-to-float v4, v4

    iput v4, p0, Lcom/oppo/model/lib/Matrix4f;->m13:F

    .line 485
    const/16 v4, 0x8

    aget-wide v4, v1, v4

    double-to-float v4, v4

    iput v4, p0, Lcom/oppo/model/lib/Matrix4f;->m20:F

    .line 486
    const/16 v4, 0x9

    aget-wide v4, v1, v4

    double-to-float v4, v4

    iput v4, p0, Lcom/oppo/model/lib/Matrix4f;->m21:F

    .line 487
    aget-wide v4, v1, v13

    double-to-float v4, v4

    iput v4, p0, Lcom/oppo/model/lib/Matrix4f;->m22:F

    .line 488
    const/16 v4, 0xb

    aget-wide v4, v1, v4

    double-to-float v4, v4

    iput v4, p0, Lcom/oppo/model/lib/Matrix4f;->m23:F

    .line 490
    const/16 v4, 0xc

    aget-wide v4, v1, v4

    double-to-float v4, v4

    iput v4, p0, Lcom/oppo/model/lib/Matrix4f;->m30:F

    .line 491
    const/16 v4, 0xd

    aget-wide v4, v1, v4

    double-to-float v4, v4

    iput v4, p0, Lcom/oppo/model/lib/Matrix4f;->m31:F

    .line 492
    const/16 v4, 0xe

    aget-wide v4, v1, v4

    double-to-float v4, v4

    iput v4, p0, Lcom/oppo/model/lib/Matrix4f;->m32:F

    .line 493
    const/16 v4, 0xf

    aget-wide v4, v1, v4

    double-to-float v4, v4

    iput v4, p0, Lcom/oppo/model/lib/Matrix4f;->m33:F

    .line 495
    return-void
.end method

.method public final mul(Lcom/oppo/model/lib/Matrix4f;)V
    .locals 21
    .param p1, "m1"    # Lcom/oppo/model/lib/Matrix4f;

    .prologue
    .line 197
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m00:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m00:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m01:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m10:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m02:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m20:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m03:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m30:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v2, v18, v19

    .line 198
    .local v2, "m00":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m00:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m01:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m01:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m11:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m02:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m21:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m03:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m31:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v3, v18, v19

    .line 199
    .local v3, "m01":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m00:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m02:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m01:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m12:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m02:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m22:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m03:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m32:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v4, v18, v19

    .line 200
    .local v4, "m02":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m00:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m03:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m01:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m13:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m02:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m23:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m03:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m33:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v5, v18, v19

    .line 202
    .local v5, "m03":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m10:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m00:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m11:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m10:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m12:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m20:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m13:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m30:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v6, v18, v19

    .line 203
    .local v6, "m10":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m10:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m01:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m11:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m11:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m12:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m21:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m13:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m31:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v7, v18, v19

    .line 204
    .local v7, "m11":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m10:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m02:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m11:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m12:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m12:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m22:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m13:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m32:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v8, v18, v19

    .line 205
    .local v8, "m12":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m10:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m03:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m11:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m13:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m12:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m23:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m13:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m33:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v9, v18, v19

    .line 207
    .local v9, "m13":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m20:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m00:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m21:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m10:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m22:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m20:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m23:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m30:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v10, v18, v19

    .line 208
    .local v10, "m20":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m20:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m01:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m21:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m11:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m22:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m21:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m23:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m31:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v11, v18, v19

    .line 209
    .local v11, "m21":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m20:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m02:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m21:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m12:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m22:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m22:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m23:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m32:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v12, v18, v19

    .line 210
    .local v12, "m22":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m20:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m03:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m21:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m13:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m22:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m23:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m23:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m33:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v13, v18, v19

    .line 212
    .local v13, "m23":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m30:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m00:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m31:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m10:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m32:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m20:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m33:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m30:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v14, v18, v19

    .line 213
    .local v14, "m30":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m30:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m01:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m31:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m11:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m32:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m21:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m33:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m31:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v15, v18, v19

    .line 214
    .local v15, "m31":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m30:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m02:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m31:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m12:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m32:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m22:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m33:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m32:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v16, v18, v19

    .line 215
    .local v16, "m32":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m30:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m03:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m31:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m13:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m32:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m23:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m33:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m33:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v17, v18, v19

    .line 217
    .local v17, "m33":F
    move-object/from16 v0, p0

    iput v2, v0, Lcom/oppo/model/lib/Matrix4f;->m00:F

    .line 218
    move-object/from16 v0, p0

    iput v3, v0, Lcom/oppo/model/lib/Matrix4f;->m01:F

    .line 219
    move-object/from16 v0, p0

    iput v4, v0, Lcom/oppo/model/lib/Matrix4f;->m02:F

    .line 220
    move-object/from16 v0, p0

    iput v5, v0, Lcom/oppo/model/lib/Matrix4f;->m03:F

    .line 221
    move-object/from16 v0, p0

    iput v6, v0, Lcom/oppo/model/lib/Matrix4f;->m10:F

    .line 222
    move-object/from16 v0, p0

    iput v7, v0, Lcom/oppo/model/lib/Matrix4f;->m11:F

    .line 223
    move-object/from16 v0, p0

    iput v8, v0, Lcom/oppo/model/lib/Matrix4f;->m12:F

    .line 224
    move-object/from16 v0, p0

    iput v9, v0, Lcom/oppo/model/lib/Matrix4f;->m13:F

    .line 225
    move-object/from16 v0, p0

    iput v10, v0, Lcom/oppo/model/lib/Matrix4f;->m20:F

    .line 226
    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/model/lib/Matrix4f;->m21:F

    .line 227
    move-object/from16 v0, p0

    iput v12, v0, Lcom/oppo/model/lib/Matrix4f;->m22:F

    .line 228
    move-object/from16 v0, p0

    iput v13, v0, Lcom/oppo/model/lib/Matrix4f;->m23:F

    .line 229
    move-object/from16 v0, p0

    iput v14, v0, Lcom/oppo/model/lib/Matrix4f;->m30:F

    .line 230
    move-object/from16 v0, p0

    iput v15, v0, Lcom/oppo/model/lib/Matrix4f;->m31:F

    .line 231
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/model/lib/Matrix4f;->m32:F

    .line 232
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/model/lib/Matrix4f;->m33:F

    .line 233
    return-void
.end method

.method public final mul(Lcom/oppo/model/lib/Matrix4f;Lcom/oppo/model/lib/Matrix4f;)V
    .locals 21
    .param p1, "m1"    # Lcom/oppo/model/lib/Matrix4f;
    .param p2, "m2"    # Lcom/oppo/model/lib/Matrix4f;

    .prologue
    .line 242
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_0

    .line 243
    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m00:F

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m00:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m01:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m10:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m02:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m20:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m03:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m30:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/model/lib/Matrix4f;->m00:F

    .line 244
    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m00:F

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m01:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m01:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m11:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m02:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m21:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m03:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m31:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/model/lib/Matrix4f;->m01:F

    .line 245
    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m00:F

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m02:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m01:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m12:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m02:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m22:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m03:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m32:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/model/lib/Matrix4f;->m02:F

    .line 246
    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m00:F

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m03:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m01:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m13:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m02:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m23:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m03:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m33:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/model/lib/Matrix4f;->m03:F

    .line 248
    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m10:F

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m00:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m11:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m10:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m12:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m20:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m13:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m30:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/model/lib/Matrix4f;->m10:F

    .line 249
    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m10:F

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m01:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m11:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m11:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m12:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m21:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m13:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m31:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/model/lib/Matrix4f;->m11:F

    .line 250
    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m10:F

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m02:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m11:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m12:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m12:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m22:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m13:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m32:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/model/lib/Matrix4f;->m12:F

    .line 251
    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m10:F

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m03:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m11:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m13:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m12:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m23:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m13:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m33:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/model/lib/Matrix4f;->m13:F

    .line 253
    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m20:F

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m00:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m21:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m10:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m22:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m20:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m23:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m30:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/model/lib/Matrix4f;->m20:F

    .line 254
    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m20:F

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m01:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m21:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m11:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m22:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m21:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m23:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m31:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/model/lib/Matrix4f;->m21:F

    .line 255
    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m20:F

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m02:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m21:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m12:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m22:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m22:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m23:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m32:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/model/lib/Matrix4f;->m22:F

    .line 256
    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m20:F

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m03:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m21:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m13:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m22:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m23:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m23:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m33:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/model/lib/Matrix4f;->m23:F

    .line 258
    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m30:F

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m00:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m31:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m10:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m32:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m20:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m33:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m30:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/model/lib/Matrix4f;->m30:F

    .line 259
    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m30:F

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m01:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m31:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m11:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m32:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m21:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m33:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m31:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/model/lib/Matrix4f;->m31:F

    .line 260
    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m30:F

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m02:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m31:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m12:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m32:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m22:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m33:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m32:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/model/lib/Matrix4f;->m32:F

    .line 261
    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m30:F

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m03:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m31:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m13:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m32:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m23:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m33:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m33:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/model/lib/Matrix4f;->m33:F

    .line 302
    :goto_0
    return-void

    .line 265
    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m00:F

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m00:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m01:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m10:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m02:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m20:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m03:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m30:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v2, v18, v19

    .line 266
    .local v2, "m00":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m00:F

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m01:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m01:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m11:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m02:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m21:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m03:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m31:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v3, v18, v19

    .line 267
    .local v3, "m01":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m00:F

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m02:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m01:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m12:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m02:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m22:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m03:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m32:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v4, v18, v19

    .line 268
    .local v4, "m02":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m00:F

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m03:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m01:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m13:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m02:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m23:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m03:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m33:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v5, v18, v19

    .line 270
    .local v5, "m03":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m10:F

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m00:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m11:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m10:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m12:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m20:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m13:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m30:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v6, v18, v19

    .line 271
    .local v6, "m10":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m10:F

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m01:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m11:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m11:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m12:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m21:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m13:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m31:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v7, v18, v19

    .line 272
    .local v7, "m11":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m10:F

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m02:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m11:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m12:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m12:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m22:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m13:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m32:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v8, v18, v19

    .line 273
    .local v8, "m12":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m10:F

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m03:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m11:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m13:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m12:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m23:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m13:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m33:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v9, v18, v19

    .line 275
    .local v9, "m13":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m20:F

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m00:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m21:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m10:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m22:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m20:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m23:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m30:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v10, v18, v19

    .line 276
    .local v10, "m20":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m20:F

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m01:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m21:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m11:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m22:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m21:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m23:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m31:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v11, v18, v19

    .line 277
    .local v11, "m21":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m20:F

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m02:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m21:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m12:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m22:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m22:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m23:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m32:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v12, v18, v19

    .line 278
    .local v12, "m22":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m20:F

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m03:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m21:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m13:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m22:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m23:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m23:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m33:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v13, v18, v19

    .line 280
    .local v13, "m23":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m30:F

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m00:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m31:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m10:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m32:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m20:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m33:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m30:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v14, v18, v19

    .line 281
    .local v14, "m30":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m30:F

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m01:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m31:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m11:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m32:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m21:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m33:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m31:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v15, v18, v19

    .line 282
    .local v15, "m31":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m30:F

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m02:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m31:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m12:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m32:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m22:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m33:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m32:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v16, v18, v19

    .line 283
    .local v16, "m32":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m30:F

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m03:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m31:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m13:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m32:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m23:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m33:F

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/oppo/model/lib/Matrix4f;->m33:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v17, v18, v19

    .line 285
    .local v17, "m33":F
    move-object/from16 v0, p0

    iput v2, v0, Lcom/oppo/model/lib/Matrix4f;->m00:F

    .line 286
    move-object/from16 v0, p0

    iput v3, v0, Lcom/oppo/model/lib/Matrix4f;->m01:F

    .line 287
    move-object/from16 v0, p0

    iput v4, v0, Lcom/oppo/model/lib/Matrix4f;->m02:F

    .line 288
    move-object/from16 v0, p0

    iput v5, v0, Lcom/oppo/model/lib/Matrix4f;->m03:F

    .line 289
    move-object/from16 v0, p0

    iput v6, v0, Lcom/oppo/model/lib/Matrix4f;->m10:F

    .line 290
    move-object/from16 v0, p0

    iput v7, v0, Lcom/oppo/model/lib/Matrix4f;->m11:F

    .line 291
    move-object/from16 v0, p0

    iput v8, v0, Lcom/oppo/model/lib/Matrix4f;->m12:F

    .line 292
    move-object/from16 v0, p0

    iput v9, v0, Lcom/oppo/model/lib/Matrix4f;->m13:F

    .line 293
    move-object/from16 v0, p0

    iput v10, v0, Lcom/oppo/model/lib/Matrix4f;->m20:F

    .line 294
    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/model/lib/Matrix4f;->m21:F

    .line 295
    move-object/from16 v0, p0

    iput v12, v0, Lcom/oppo/model/lib/Matrix4f;->m22:F

    .line 296
    move-object/from16 v0, p0

    iput v13, v0, Lcom/oppo/model/lib/Matrix4f;->m23:F

    .line 297
    move-object/from16 v0, p0

    iput v14, v0, Lcom/oppo/model/lib/Matrix4f;->m30:F

    .line 298
    move-object/from16 v0, p0

    iput v15, v0, Lcom/oppo/model/lib/Matrix4f;->m31:F

    .line 299
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/model/lib/Matrix4f;->m32:F

    .line 300
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/model/lib/Matrix4f;->m33:F

    goto/16 :goto_0
.end method

.method public final rotX(F)V
    .locals 6
    .param p1, "angle"    # F

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 105
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 106
    .local v1, "sinAngle":F
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 108
    .local v0, "cosAngle":F
    iput v5, p0, Lcom/oppo/model/lib/Matrix4f;->m00:F

    .line 109
    iput v4, p0, Lcom/oppo/model/lib/Matrix4f;->m01:F

    .line 110
    iput v4, p0, Lcom/oppo/model/lib/Matrix4f;->m02:F

    .line 111
    iput v4, p0, Lcom/oppo/model/lib/Matrix4f;->m03:F

    .line 113
    iput v4, p0, Lcom/oppo/model/lib/Matrix4f;->m10:F

    .line 114
    iput v0, p0, Lcom/oppo/model/lib/Matrix4f;->m11:F

    .line 115
    neg-float v2, v1

    iput v2, p0, Lcom/oppo/model/lib/Matrix4f;->m12:F

    .line 116
    iput v4, p0, Lcom/oppo/model/lib/Matrix4f;->m13:F

    .line 118
    iput v4, p0, Lcom/oppo/model/lib/Matrix4f;->m20:F

    .line 119
    iput v1, p0, Lcom/oppo/model/lib/Matrix4f;->m21:F

    .line 120
    iput v0, p0, Lcom/oppo/model/lib/Matrix4f;->m22:F

    .line 121
    iput v4, p0, Lcom/oppo/model/lib/Matrix4f;->m23:F

    .line 123
    iput v4, p0, Lcom/oppo/model/lib/Matrix4f;->m30:F

    .line 124
    iput v4, p0, Lcom/oppo/model/lib/Matrix4f;->m31:F

    .line 125
    iput v4, p0, Lcom/oppo/model/lib/Matrix4f;->m32:F

    .line 126
    iput v5, p0, Lcom/oppo/model/lib/Matrix4f;->m33:F

    .line 127
    return-void
.end method

.method public final rotY(F)V
    .locals 6
    .param p1, "angle"    # F

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 137
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 138
    .local v1, "sinAngle":F
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 140
    .local v0, "cosAngle":F
    iput v0, p0, Lcom/oppo/model/lib/Matrix4f;->m00:F

    .line 141
    iput v4, p0, Lcom/oppo/model/lib/Matrix4f;->m01:F

    .line 142
    iput v1, p0, Lcom/oppo/model/lib/Matrix4f;->m02:F

    .line 143
    iput v4, p0, Lcom/oppo/model/lib/Matrix4f;->m03:F

    .line 145
    iput v4, p0, Lcom/oppo/model/lib/Matrix4f;->m10:F

    .line 146
    iput v5, p0, Lcom/oppo/model/lib/Matrix4f;->m11:F

    .line 147
    iput v4, p0, Lcom/oppo/model/lib/Matrix4f;->m12:F

    .line 148
    iput v4, p0, Lcom/oppo/model/lib/Matrix4f;->m13:F

    .line 150
    neg-float v2, v1

    iput v2, p0, Lcom/oppo/model/lib/Matrix4f;->m20:F

    .line 151
    iput v4, p0, Lcom/oppo/model/lib/Matrix4f;->m21:F

    .line 152
    iput v0, p0, Lcom/oppo/model/lib/Matrix4f;->m22:F

    .line 153
    iput v4, p0, Lcom/oppo/model/lib/Matrix4f;->m23:F

    .line 155
    iput v4, p0, Lcom/oppo/model/lib/Matrix4f;->m30:F

    .line 156
    iput v4, p0, Lcom/oppo/model/lib/Matrix4f;->m31:F

    .line 157
    iput v4, p0, Lcom/oppo/model/lib/Matrix4f;->m32:F

    .line 158
    iput v5, p0, Lcom/oppo/model/lib/Matrix4f;->m33:F

    .line 159
    return-void
.end method

.method public final set(Lcom/oppo/model/lib/Matrix4f;)V
    .locals 1
    .param p1, "m1"    # Lcom/oppo/model/lib/Matrix4f;

    .prologue
    .line 167
    iget v0, p1, Lcom/oppo/model/lib/Matrix4f;->m00:F

    iput v0, p0, Lcom/oppo/model/lib/Matrix4f;->m00:F

    .line 168
    iget v0, p1, Lcom/oppo/model/lib/Matrix4f;->m01:F

    iput v0, p0, Lcom/oppo/model/lib/Matrix4f;->m01:F

    .line 169
    iget v0, p1, Lcom/oppo/model/lib/Matrix4f;->m02:F

    iput v0, p0, Lcom/oppo/model/lib/Matrix4f;->m02:F

    .line 170
    iget v0, p1, Lcom/oppo/model/lib/Matrix4f;->m03:F

    iput v0, p0, Lcom/oppo/model/lib/Matrix4f;->m03:F

    .line 172
    iget v0, p1, Lcom/oppo/model/lib/Matrix4f;->m10:F

    iput v0, p0, Lcom/oppo/model/lib/Matrix4f;->m10:F

    .line 173
    iget v0, p1, Lcom/oppo/model/lib/Matrix4f;->m11:F

    iput v0, p0, Lcom/oppo/model/lib/Matrix4f;->m11:F

    .line 174
    iget v0, p1, Lcom/oppo/model/lib/Matrix4f;->m12:F

    iput v0, p0, Lcom/oppo/model/lib/Matrix4f;->m12:F

    .line 175
    iget v0, p1, Lcom/oppo/model/lib/Matrix4f;->m13:F

    iput v0, p0, Lcom/oppo/model/lib/Matrix4f;->m13:F

    .line 177
    iget v0, p1, Lcom/oppo/model/lib/Matrix4f;->m20:F

    iput v0, p0, Lcom/oppo/model/lib/Matrix4f;->m20:F

    .line 178
    iget v0, p1, Lcom/oppo/model/lib/Matrix4f;->m21:F

    iput v0, p0, Lcom/oppo/model/lib/Matrix4f;->m21:F

    .line 179
    iget v0, p1, Lcom/oppo/model/lib/Matrix4f;->m22:F

    iput v0, p0, Lcom/oppo/model/lib/Matrix4f;->m22:F

    .line 180
    iget v0, p1, Lcom/oppo/model/lib/Matrix4f;->m23:F

    iput v0, p0, Lcom/oppo/model/lib/Matrix4f;->m23:F

    .line 182
    iget v0, p1, Lcom/oppo/model/lib/Matrix4f;->m30:F

    iput v0, p0, Lcom/oppo/model/lib/Matrix4f;->m30:F

    .line 183
    iget v0, p1, Lcom/oppo/model/lib/Matrix4f;->m31:F

    iput v0, p0, Lcom/oppo/model/lib/Matrix4f;->m31:F

    .line 184
    iget v0, p1, Lcom/oppo/model/lib/Matrix4f;->m32:F

    iput v0, p0, Lcom/oppo/model/lib/Matrix4f;->m32:F

    .line 185
    iget v0, p1, Lcom/oppo/model/lib/Matrix4f;->m33:F

    iput v0, p0, Lcom/oppo/model/lib/Matrix4f;->m33:F

    .line 186
    return-void
.end method

.method public final set(Lcom/oppo/model/lib/Quat4f;)V
    .locals 6
    .param p1, "q1"    # Lcom/oppo/model/lib/Quat4f;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    .line 334
    iget v0, p1, Lcom/oppo/model/lib/Quat4f;->y:F

    mul-float/2addr v0, v3

    iget v1, p1, Lcom/oppo/model/lib/Quat4f;->y:F

    mul-float/2addr v0, v1

    sub-float v0, v5, v0

    iget v1, p1, Lcom/oppo/model/lib/Quat4f;->z:F

    mul-float/2addr v1, v3

    iget v2, p1, Lcom/oppo/model/lib/Quat4f;->z:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/oppo/model/lib/Matrix4f;->m00:F

    .line 335
    iget v0, p1, Lcom/oppo/model/lib/Quat4f;->x:F

    iget v1, p1, Lcom/oppo/model/lib/Quat4f;->y:F

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/oppo/model/lib/Quat4f;->w:F

    iget v2, p1, Lcom/oppo/model/lib/Quat4f;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/oppo/model/lib/Matrix4f;->m10:F

    .line 336
    iget v0, p1, Lcom/oppo/model/lib/Quat4f;->x:F

    iget v1, p1, Lcom/oppo/model/lib/Quat4f;->z:F

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/oppo/model/lib/Quat4f;->w:F

    iget v2, p1, Lcom/oppo/model/lib/Quat4f;->y:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/oppo/model/lib/Matrix4f;->m20:F

    .line 338
    iget v0, p1, Lcom/oppo/model/lib/Quat4f;->x:F

    iget v1, p1, Lcom/oppo/model/lib/Quat4f;->y:F

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/oppo/model/lib/Quat4f;->w:F

    iget v2, p1, Lcom/oppo/model/lib/Quat4f;->z:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/oppo/model/lib/Matrix4f;->m01:F

    .line 339
    iget v0, p1, Lcom/oppo/model/lib/Quat4f;->x:F

    mul-float/2addr v0, v3

    iget v1, p1, Lcom/oppo/model/lib/Quat4f;->x:F

    mul-float/2addr v0, v1

    sub-float v0, v5, v0

    iget v1, p1, Lcom/oppo/model/lib/Quat4f;->z:F

    mul-float/2addr v1, v3

    iget v2, p1, Lcom/oppo/model/lib/Quat4f;->z:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/oppo/model/lib/Matrix4f;->m11:F

    .line 340
    iget v0, p1, Lcom/oppo/model/lib/Quat4f;->y:F

    iget v1, p1, Lcom/oppo/model/lib/Quat4f;->z:F

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/oppo/model/lib/Quat4f;->w:F

    iget v2, p1, Lcom/oppo/model/lib/Quat4f;->x:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/oppo/model/lib/Matrix4f;->m21:F

    .line 342
    iget v0, p1, Lcom/oppo/model/lib/Quat4f;->x:F

    iget v1, p1, Lcom/oppo/model/lib/Quat4f;->z:F

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/oppo/model/lib/Quat4f;->w:F

    iget v2, p1, Lcom/oppo/model/lib/Quat4f;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/oppo/model/lib/Matrix4f;->m02:F

    .line 343
    iget v0, p1, Lcom/oppo/model/lib/Quat4f;->y:F

    iget v1, p1, Lcom/oppo/model/lib/Quat4f;->z:F

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/oppo/model/lib/Quat4f;->w:F

    iget v2, p1, Lcom/oppo/model/lib/Quat4f;->x:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/oppo/model/lib/Matrix4f;->m12:F

    .line 344
    iget v0, p1, Lcom/oppo/model/lib/Quat4f;->x:F

    mul-float/2addr v0, v3

    iget v1, p1, Lcom/oppo/model/lib/Quat4f;->x:F

    mul-float/2addr v0, v1

    sub-float v0, v5, v0

    iget v1, p1, Lcom/oppo/model/lib/Quat4f;->y:F

    mul-float/2addr v1, v3

    iget v2, p1, Lcom/oppo/model/lib/Quat4f;->y:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/oppo/model/lib/Matrix4f;->m22:F

    .line 346
    iput v4, p0, Lcom/oppo/model/lib/Matrix4f;->m03:F

    .line 347
    iput v4, p0, Lcom/oppo/model/lib/Matrix4f;->m13:F

    .line 348
    iput v4, p0, Lcom/oppo/model/lib/Matrix4f;->m23:F

    .line 350
    iput v4, p0, Lcom/oppo/model/lib/Matrix4f;->m30:F

    .line 351
    iput v4, p0, Lcom/oppo/model/lib/Matrix4f;->m31:F

    .line 352
    iput v4, p0, Lcom/oppo/model/lib/Matrix4f;->m32:F

    .line 353
    iput v5, p0, Lcom/oppo/model/lib/Matrix4f;->m33:F

    .line 354
    return-void
.end method

.method public setIdentity()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 52
    iput v1, p0, Lcom/oppo/model/lib/Matrix4f;->m00:F

    .line 53
    iput v0, p0, Lcom/oppo/model/lib/Matrix4f;->m01:F

    .line 54
    iput v0, p0, Lcom/oppo/model/lib/Matrix4f;->m02:F

    .line 55
    iput v0, p0, Lcom/oppo/model/lib/Matrix4f;->m03:F

    .line 57
    iput v0, p0, Lcom/oppo/model/lib/Matrix4f;->m10:F

    .line 58
    iput v1, p0, Lcom/oppo/model/lib/Matrix4f;->m11:F

    .line 59
    iput v0, p0, Lcom/oppo/model/lib/Matrix4f;->m12:F

    .line 60
    iput v0, p0, Lcom/oppo/model/lib/Matrix4f;->m13:F

    .line 62
    iput v0, p0, Lcom/oppo/model/lib/Matrix4f;->m20:F

    .line 63
    iput v0, p0, Lcom/oppo/model/lib/Matrix4f;->m21:F

    .line 64
    iput v1, p0, Lcom/oppo/model/lib/Matrix4f;->m22:F

    .line 65
    iput v0, p0, Lcom/oppo/model/lib/Matrix4f;->m23:F

    .line 67
    iput v0, p0, Lcom/oppo/model/lib/Matrix4f;->m30:F

    .line 68
    iput v0, p0, Lcom/oppo/model/lib/Matrix4f;->m31:F

    .line 69
    iput v0, p0, Lcom/oppo/model/lib/Matrix4f;->m32:F

    .line 70
    iput v1, p0, Lcom/oppo/model/lib/Matrix4f;->m33:F

    .line 71
    return-void
.end method

.method public final setTranslation(FFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 92
    iput p1, p0, Lcom/oppo/model/lib/Matrix4f;->m03:F

    .line 93
    iput p2, p0, Lcom/oppo/model/lib/Matrix4f;->m13:F

    .line 94
    iput p3, p0, Lcom/oppo/model/lib/Matrix4f;->m23:F

    .line 95
    return-void
.end method

.method public final setTranslation(Lcom/oppo/model/lib/Vector3f;)V
    .locals 1
    .param p1, "trans"    # Lcom/oppo/model/lib/Vector3f;

    .prologue
    .line 79
    iget v0, p1, Lcom/oppo/model/lib/Vector3f;->x:F

    iput v0, p0, Lcom/oppo/model/lib/Matrix4f;->m03:F

    .line 80
    iget v0, p1, Lcom/oppo/model/lib/Vector3f;->y:F

    iput v0, p0, Lcom/oppo/model/lib/Matrix4f;->m13:F

    .line 81
    iget v0, p1, Lcom/oppo/model/lib/Vector3f;->z:F

    iput v0, p0, Lcom/oppo/model/lib/Matrix4f;->m23:F

    .line 82
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 840
    const/4 v0, 0x0

    .line 841
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m00="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/model/lib/Matrix4f;->m00:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m01="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/model/lib/Matrix4f;->m01:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m02="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/model/lib/Matrix4f;->m02:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m03="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/model/lib/Matrix4f;->m03:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m10="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/model/lib/Matrix4f;->m10:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m11="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/model/lib/Matrix4f;->m11:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m12="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/model/lib/Matrix4f;->m12:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m13="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/model/lib/Matrix4f;->m13:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m20="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/model/lib/Matrix4f;->m20:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m21="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/model/lib/Matrix4f;->m21:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m22="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/model/lib/Matrix4f;->m22:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m23="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/model/lib/Matrix4f;->m23:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m30="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/model/lib/Matrix4f;->m30:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m31="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/model/lib/Matrix4f;->m31:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m32="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/model/lib/Matrix4f;->m32:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m33="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/model/lib/Matrix4f;->m33:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 846
    return-object v0
.end method

.method public final transform(Lcom/oppo/model/lib/Vector3f;Lcom/oppo/model/lib/Vector3f;)V
    .locals 5
    .param p1, "point"    # Lcom/oppo/model/lib/Vector3f;
    .param p2, "pointOut"    # Lcom/oppo/model/lib/Vector3f;

    .prologue
    .line 377
    iget v2, p0, Lcom/oppo/model/lib/Matrix4f;->m00:F

    iget v3, p1, Lcom/oppo/model/lib/Vector3f;->x:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/oppo/model/lib/Matrix4f;->m01:F

    iget v4, p1, Lcom/oppo/model/lib/Vector3f;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/oppo/model/lib/Matrix4f;->m02:F

    iget v4, p1, Lcom/oppo/model/lib/Vector3f;->z:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/oppo/model/lib/Matrix4f;->m03:F

    add-float v0, v2, v3

    .line 378
    .local v0, "x":F
    iget v2, p0, Lcom/oppo/model/lib/Matrix4f;->m10:F

    iget v3, p1, Lcom/oppo/model/lib/Vector3f;->x:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/oppo/model/lib/Matrix4f;->m11:F

    iget v4, p1, Lcom/oppo/model/lib/Vector3f;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/oppo/model/lib/Matrix4f;->m12:F

    iget v4, p1, Lcom/oppo/model/lib/Vector3f;->z:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/oppo/model/lib/Matrix4f;->m13:F

    add-float v1, v2, v3

    .line 379
    .local v1, "y":F
    iget v2, p0, Lcom/oppo/model/lib/Matrix4f;->m20:F

    iget v3, p1, Lcom/oppo/model/lib/Vector3f;->x:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/oppo/model/lib/Matrix4f;->m21:F

    iget v4, p1, Lcom/oppo/model/lib/Vector3f;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/oppo/model/lib/Matrix4f;->m22:F

    iget v4, p1, Lcom/oppo/model/lib/Vector3f;->z:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/oppo/model/lib/Matrix4f;->m23:F

    add-float/2addr v2, v3

    iput v2, p2, Lcom/oppo/model/lib/Vector3f;->z:F

    .line 380
    iput v0, p2, Lcom/oppo/model/lib/Vector3f;->x:F

    .line 381
    iput v1, p2, Lcom/oppo/model/lib/Vector3f;->y:F

    .line 382
    return-void
.end method

.method public final transpose()V
    .locals 2

    .prologue
    .line 390
    iget v0, p0, Lcom/oppo/model/lib/Matrix4f;->m10:F

    .line 391
    .local v0, "temp":F
    iget v1, p0, Lcom/oppo/model/lib/Matrix4f;->m01:F

    iput v1, p0, Lcom/oppo/model/lib/Matrix4f;->m10:F

    .line 392
    iput v0, p0, Lcom/oppo/model/lib/Matrix4f;->m01:F

    .line 394
    iget v0, p0, Lcom/oppo/model/lib/Matrix4f;->m20:F

    .line 395
    iget v1, p0, Lcom/oppo/model/lib/Matrix4f;->m02:F

    iput v1, p0, Lcom/oppo/model/lib/Matrix4f;->m20:F

    .line 396
    iput v0, p0, Lcom/oppo/model/lib/Matrix4f;->m02:F

    .line 398
    iget v0, p0, Lcom/oppo/model/lib/Matrix4f;->m30:F

    .line 399
    iget v1, p0, Lcom/oppo/model/lib/Matrix4f;->m03:F

    iput v1, p0, Lcom/oppo/model/lib/Matrix4f;->m30:F

    .line 400
    iput v0, p0, Lcom/oppo/model/lib/Matrix4f;->m03:F

    .line 402
    iget v0, p0, Lcom/oppo/model/lib/Matrix4f;->m21:F

    .line 403
    iget v1, p0, Lcom/oppo/model/lib/Matrix4f;->m12:F

    iput v1, p0, Lcom/oppo/model/lib/Matrix4f;->m21:F

    .line 404
    iput v0, p0, Lcom/oppo/model/lib/Matrix4f;->m12:F

    .line 406
    iget v0, p0, Lcom/oppo/model/lib/Matrix4f;->m31:F

    .line 407
    iget v1, p0, Lcom/oppo/model/lib/Matrix4f;->m13:F

    iput v1, p0, Lcom/oppo/model/lib/Matrix4f;->m31:F

    .line 408
    iput v0, p0, Lcom/oppo/model/lib/Matrix4f;->m13:F

    .line 410
    iget v0, p0, Lcom/oppo/model/lib/Matrix4f;->m32:F

    .line 411
    iget v1, p0, Lcom/oppo/model/lib/Matrix4f;->m23:F

    iput v1, p0, Lcom/oppo/model/lib/Matrix4f;->m32:F

    .line 412
    iput v0, p0, Lcom/oppo/model/lib/Matrix4f;->m23:F

    .line 413
    return-void
.end method
