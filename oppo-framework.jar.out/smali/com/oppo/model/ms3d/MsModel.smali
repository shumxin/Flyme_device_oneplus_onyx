.class public Lcom/oppo/model/ms3d/MsModel;
.super Ljava/lang/Object;
.source "MsModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/model/ms3d/MsModel$RenderBuffer;,
        Lcom/oppo/model/ms3d/MsModel$Config;
    }
.end annotation


# static fields
.field public static final COMBINEALPHA:I = 0x20

.field public static final HASALPHA:I = 0x40

.field public static final LEN_FILENAME:I = 0x80

.field public static final LEN_NAME:I = 0x20

.field private static final LOGD:Z = false

.field public static final SPHEREMAP:I = 0x80

.field private static final TAG:Ljava/lang/String; = "MsModel"

.field public static final TRANSPARENCY_MODE_ALPHAREF:I = 0x2

.field public static final TRANSPARENCY_MODE_DEPTHSORTEDTRIANGLES:I = 0x1

.field public static final TRANSPARENCY_MODE_SIMPLE:I

.field private static mBackgroundCoordsData:[F

.field private static mBackgroundNormalsData:[F


# instance fields
.field private mAlphaRef:F

.field private mAnimationFps:F

.field private mBackgroundCoordInit:Z

.field private mBackgroundNormalInit:Z

.field private mBackgroundVertexInit:Z

.field private mComment:[B

.field private mConfig:Lcom/oppo/model/ms3d/MsModel$Config;

.field private mCurrentTime:F

.field private mJointSize:F

.field private mMsGroup:[Lcom/oppo/model/ms3d/MsGroup;

.field private mMsMaterial:[Lcom/oppo/model/ms3d/MsMaterial;

.field private mNumGroups:I

.field private mRef:J

.field private mRenderBufferArray:[Lcom/oppo/model/ms3d/MsModel$RenderBuffer;

.field private mTextureList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/model/lib/TextureInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalFrames:I

.field private mTransparencyMode:I

.field private mbDirtFlag:Z

.field private mbInitBoundingBox:Z

.field private mpBackgroundBufCoords:Ljava/nio/FloatBuffer;

.field private mpBackgroundBufNormals:Ljava/nio/FloatBuffer;

.field private mpBackgroundBufVertices:Ljava/nio/FloatBuffer;

.field private mvCenter:Lcom/oppo/model/lib/Vector3f;

.field private mvMax:Lcom/oppo/model/lib/Vector3f;

.field private mvMin:Lcom/oppo/model/lib/Vector3f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oppo/model/ms3d/MsModel;->mBackgroundCoordsData:[F

    .line 77
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/oppo/model/ms3d/MsModel;->mBackgroundNormalsData:[F

    .line 110
    const-string v0, "model_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 111
    return-void

    .line 76
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 77
    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/oppo/model/ms3d/MsModel$Config;

    invoke-direct {v0}, Lcom/oppo/model/ms3d/MsModel$Config;-><init>()V

    iput-object v0, p0, Lcom/oppo/model/ms3d/MsModel;->mConfig:Lcom/oppo/model/ms3d/MsModel$Config;

    .line 68
    iput-boolean v1, p0, Lcom/oppo/model/ms3d/MsModel;->mbDirtFlag:Z

    .line 71
    new-instance v0, Lcom/oppo/model/lib/Vector3f;

    invoke-direct {v0}, Lcom/oppo/model/lib/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/oppo/model/ms3d/MsModel;->mvCenter:Lcom/oppo/model/lib/Vector3f;

    .line 72
    new-instance v0, Lcom/oppo/model/lib/Vector3f;

    invoke-direct {v0}, Lcom/oppo/model/lib/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/oppo/model/ms3d/MsModel;->mvMax:Lcom/oppo/model/lib/Vector3f;

    .line 73
    new-instance v0, Lcom/oppo/model/lib/Vector3f;

    invoke-direct {v0}, Lcom/oppo/model/lib/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/oppo/model/ms3d/MsModel;->mvMin:Lcom/oppo/model/lib/Vector3f;

    .line 81
    iput-boolean v1, p0, Lcom/oppo/model/ms3d/MsModel;->mBackgroundVertexInit:Z

    .line 82
    iput-boolean v1, p0, Lcom/oppo/model/ms3d/MsModel;->mBackgroundCoordInit:Z

    .line 83
    iput-boolean v1, p0, Lcom/oppo/model/ms3d/MsModel;->mBackgroundNormalInit:Z

    .line 100
    return-void
.end method

.method private initGroups(Z)V
    .locals 4
    .param p1, "enableShadow"    # Z

    .prologue
    .line 545
    const/4 v0, 0x0

    .line 546
    .local v0, "i":I
    const/4 v1, 0x0

    .line 548
    .local v1, "triangleCount":I
    iget v2, p0, Lcom/oppo/model/ms3d/MsModel;->mNumGroups:I

    new-array v2, v2, [Lcom/oppo/model/ms3d/MsGroup;

    iput-object v2, p0, Lcom/oppo/model/ms3d/MsModel;->mMsGroup:[Lcom/oppo/model/ms3d/MsGroup;

    .line 549
    iget v2, p0, Lcom/oppo/model/ms3d/MsModel;->mNumGroups:I

    new-array v2, v2, [Lcom/oppo/model/ms3d/MsModel$RenderBuffer;

    iput-object v2, p0, Lcom/oppo/model/ms3d/MsModel;->mRenderBufferArray:[Lcom/oppo/model/ms3d/MsModel$RenderBuffer;

    .line 551
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/oppo/model/ms3d/MsModel;->mNumGroups:I

    if-ge v0, v2, :cond_1

    .line 552
    invoke-virtual {p0, v0}, Lcom/oppo/model/ms3d/MsModel;->getNumTriangles(I)I

    move-result v1

    .line 553
    iget-object v2, p0, Lcom/oppo/model/ms3d/MsModel;->mMsGroup:[Lcom/oppo/model/ms3d/MsGroup;

    new-instance v3, Lcom/oppo/model/ms3d/MsGroup;

    invoke-direct {v3}, Lcom/oppo/model/ms3d/MsGroup;-><init>()V

    aput-object v3, v2, v0

    .line 554
    iget-object v2, p0, Lcom/oppo/model/ms3d/MsModel;->mMsGroup:[Lcom/oppo/model/ms3d/MsGroup;

    aget-object v2, v2, v0

    invoke-virtual {p0, v0}, Lcom/oppo/model/ms3d/MsModel;->getMaterialIndex(I)B

    move-result v3

    invoke-virtual {v2, v3}, Lcom/oppo/model/ms3d/MsGroup;->setMaterialIndex(B)V

    .line 555
    iget-object v2, p0, Lcom/oppo/model/ms3d/MsModel;->mRenderBufferArray:[Lcom/oppo/model/ms3d/MsModel$RenderBuffer;

    new-instance v3, Lcom/oppo/model/ms3d/MsModel$RenderBuffer;

    invoke-direct {v3}, Lcom/oppo/model/ms3d/MsModel$RenderBuffer;-><init>()V

    aput-object v3, v2, v0

    .line 556
    iget-object v2, p0, Lcom/oppo/model/ms3d/MsModel;->mMsGroup:[Lcom/oppo/model/ms3d/MsGroup;

    aget-object v2, v2, v0

    mul-int/lit8 v3, v1, 0x9

    invoke-static {v3}, Lcom/oppo/model/lib/IBufferFactory;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, v2, Lcom/oppo/model/ms3d/MsGroup;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 558
    iget-object v2, p0, Lcom/oppo/model/ms3d/MsModel;->mRenderBufferArray:[Lcom/oppo/model/ms3d/MsModel$RenderBuffer;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/oppo/model/ms3d/MsModel;->mMsGroup:[Lcom/oppo/model/ms3d/MsGroup;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/oppo/model/ms3d/MsGroup;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iput-object v3, v2, Lcom/oppo/model/ms3d/MsModel$RenderBuffer;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 560
    iget-object v2, p0, Lcom/oppo/model/ms3d/MsModel;->mMsGroup:[Lcom/oppo/model/ms3d/MsGroup;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/oppo/model/ms3d/MsGroup;->mCoordInit:Z

    .line 561
    iget-object v2, p0, Lcom/oppo/model/ms3d/MsModel;->mMsGroup:[Lcom/oppo/model/ms3d/MsGroup;

    aget-object v2, v2, v0

    mul-int/lit8 v3, v1, 0x6

    invoke-static {v3}, Lcom/oppo/model/lib/IBufferFactory;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, v2, Lcom/oppo/model/ms3d/MsGroup;->mCoordBuffer:Ljava/nio/FloatBuffer;

    .line 563
    iget-object v2, p0, Lcom/oppo/model/ms3d/MsModel;->mRenderBufferArray:[Lcom/oppo/model/ms3d/MsModel$RenderBuffer;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/oppo/model/ms3d/MsModel;->mMsGroup:[Lcom/oppo/model/ms3d/MsGroup;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/oppo/model/ms3d/MsGroup;->mCoordBuffer:Ljava/nio/FloatBuffer;

    iput-object v3, v2, Lcom/oppo/model/ms3d/MsModel$RenderBuffer;->texCoordBuffer:Ljava/nio/FloatBuffer;

    .line 565
    iget-object v2, p0, Lcom/oppo/model/ms3d/MsModel;->mMsGroup:[Lcom/oppo/model/ms3d/MsGroup;

    aget-object v2, v2, v0

    mul-int/lit8 v3, v1, 0x9

    invoke-static {v3}, Lcom/oppo/model/lib/IBufferFactory;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, v2, Lcom/oppo/model/ms3d/MsGroup;->mNormalBuffer:Ljava/nio/FloatBuffer;

    .line 567
    iget-object v2, p0, Lcom/oppo/model/ms3d/MsModel;->mRenderBufferArray:[Lcom/oppo/model/ms3d/MsModel$RenderBuffer;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/oppo/model/ms3d/MsModel;->mMsGroup:[Lcom/oppo/model/ms3d/MsGroup;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/oppo/model/ms3d/MsGroup;->mNormalBuffer:Ljava/nio/FloatBuffer;

    iput-object v3, v2, Lcom/oppo/model/ms3d/MsModel$RenderBuffer;->normalBuffer:Ljava/nio/FloatBuffer;

    .line 569
    if-eqz p1, :cond_0

    .line 570
    iget-object v2, p0, Lcom/oppo/model/ms3d/MsModel;->mMsGroup:[Lcom/oppo/model/ms3d/MsGroup;

    aget-object v2, v2, v0

    mul-int/lit8 v3, v1, 0x9

    invoke-static {v3}, Lcom/oppo/model/lib/IBufferFactory;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, v2, Lcom/oppo/model/ms3d/MsGroup;->mShadowVertexBuffer:Ljava/nio/FloatBuffer;

    .line 572
    iget-object v2, p0, Lcom/oppo/model/ms3d/MsModel;->mRenderBufferArray:[Lcom/oppo/model/ms3d/MsModel$RenderBuffer;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/oppo/model/ms3d/MsModel;->mMsGroup:[Lcom/oppo/model/ms3d/MsGroup;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/oppo/model/ms3d/MsGroup;->mShadowVertexBuffer:Ljava/nio/FloatBuffer;

    iput-object v3, v2, Lcom/oppo/model/ms3d/MsModel$RenderBuffer;->vertexShadowBuffer:Ljava/nio/FloatBuffer;

    .line 573
    iget-object v2, p0, Lcom/oppo/model/ms3d/MsModel;->mMsGroup:[Lcom/oppo/model/ms3d/MsGroup;

    aget-object v2, v2, v0

    mul-int/lit8 v3, v1, 0xc

    invoke-static {v3}, Lcom/oppo/model/lib/IBufferFactory;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, v2, Lcom/oppo/model/ms3d/MsGroup;->mShadowColorBuffer:Ljava/nio/FloatBuffer;

    .line 575
    iget-object v2, p0, Lcom/oppo/model/ms3d/MsModel;->mRenderBufferArray:[Lcom/oppo/model/ms3d/MsModel$RenderBuffer;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/oppo/model/ms3d/MsModel;->mMsGroup:[Lcom/oppo/model/ms3d/MsGroup;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/oppo/model/ms3d/MsGroup;->mShadowColorBuffer:Ljava/nio/FloatBuffer;

    iput-object v3, v2, Lcom/oppo/model/ms3d/MsModel$RenderBuffer;->colorShadowBuffer:Ljava/nio/FloatBuffer;

    .line 551
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 578
    :cond_1
    return-void
.end method

.method private initMaterials()V
    .locals 13

    .prologue
    .line 584
    const/4 v4, 0x0

    .line 585
    .local v4, "i":I
    invoke-virtual {p0}, Lcom/oppo/model/ms3d/MsModel;->getNumMaterials()I

    move-result v0

    .line 586
    .local v0, "materials":I
    const/4 v5, 0x0

    .line 587
    .local v5, "ambient":[F
    const/4 v6, 0x0

    .line 588
    .local v6, "diffuse":[F
    const/4 v7, 0x0

    .line 589
    .local v7, "specular":[F
    const/4 v8, 0x0

    .line 590
    .local v8, "emissive":[F
    const/4 v9, 0x0

    .line 591
    .local v9, "shininess":[F
    const/4 v10, 0x0

    .line 592
    .local v10, "transparency":[F
    const/4 v11, 0x0

    .line 593
    .local v11, "mode":[S
    const/4 v12, 0x0

    .line 595
    .local v12, "texture":[B
    new-array v1, v0, [Lcom/oppo/model/ms3d/MsMaterial;

    iput-object v1, p0, Lcom/oppo/model/ms3d/MsModel;->mMsMaterial:[Lcom/oppo/model/ms3d/MsMaterial;

    .line 597
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    .line 598
    const/4 v1, 0x4

    new-array v5, v1, [F

    .line 599
    const/4 v1, 0x4

    new-array v6, v1, [F

    .line 600
    const/4 v1, 0x4

    new-array v7, v1, [F

    .line 601
    const/4 v1, 0x4

    new-array v8, v1, [F

    .line 602
    const/4 v1, 0x1

    new-array v9, v1, [F

    .line 603
    const/4 v1, 0x1

    new-array v10, v1, [F

    .line 604
    const/4 v1, 0x1

    new-array v11, v1, [S

    .line 605
    const/16 v1, 0x80

    new-array v12, v1, [B

    .line 606
    iget-object v1, p0, Lcom/oppo/model/ms3d/MsModel;->mMsMaterial:[Lcom/oppo/model/ms3d/MsMaterial;

    new-instance v2, Lcom/oppo/model/ms3d/MsMaterial;

    invoke-direct {v2}, Lcom/oppo/model/ms3d/MsMaterial;-><init>()V

    aput-object v2, v1, v4

    .line 608
    iget-wide v2, p0, Lcom/oppo/model/ms3d/MsModel;->mRef:J

    move-object v1, p0

    invoke-direct/range {v1 .. v12}, Lcom/oppo/model/ms3d/MsModel;->ms3dGetMaterial(JI[F[F[F[F[F[F[S[B)V

    .line 611
    iget-object v1, p0, Lcom/oppo/model/ms3d/MsModel;->mMsMaterial:[Lcom/oppo/model/ms3d/MsMaterial;

    aget-object v1, v1, v4

    invoke-virtual {v1, v5}, Lcom/oppo/model/ms3d/MsMaterial;->setAmbient([F)V

    .line 612
    iget-object v1, p0, Lcom/oppo/model/ms3d/MsModel;->mMsMaterial:[Lcom/oppo/model/ms3d/MsMaterial;

    aget-object v1, v1, v4

    invoke-virtual {v1, v6}, Lcom/oppo/model/ms3d/MsMaterial;->setDiffuse([F)V

    .line 613
    iget-object v1, p0, Lcom/oppo/model/ms3d/MsModel;->mMsMaterial:[Lcom/oppo/model/ms3d/MsMaterial;

    aget-object v1, v1, v4

    invoke-virtual {v1, v7}, Lcom/oppo/model/ms3d/MsMaterial;->setSpecular([F)V

    .line 614
    iget-object v1, p0, Lcom/oppo/model/ms3d/MsModel;->mMsMaterial:[Lcom/oppo/model/ms3d/MsMaterial;

    aget-object v1, v1, v4

    invoke-virtual {v1, v8}, Lcom/oppo/model/ms3d/MsMaterial;->setEmissive([F)V

    .line 615
    iget-object v1, p0, Lcom/oppo/model/ms3d/MsModel;->mMsMaterial:[Lcom/oppo/model/ms3d/MsMaterial;

    aget-object v1, v1, v4

    const/4 v2, 0x0

    aget v2, v9, v2

    invoke-virtual {v1, v2}, Lcom/oppo/model/ms3d/MsMaterial;->setShininess(F)V

    .line 616
    iget-object v1, p0, Lcom/oppo/model/ms3d/MsModel;->mMsMaterial:[Lcom/oppo/model/ms3d/MsMaterial;

    aget-object v1, v1, v4

    const/4 v2, 0x0

    aget v2, v10, v2

    invoke-virtual {v1, v2}, Lcom/oppo/model/ms3d/MsMaterial;->setTransparency(F)V

    .line 617
    iget-object v1, p0, Lcom/oppo/model/ms3d/MsModel;->mMsMaterial:[Lcom/oppo/model/ms3d/MsMaterial;

    aget-object v1, v1, v4

    const/4 v2, 0x0

    aget-short v2, v11, v2

    invoke-virtual {v1, v2}, Lcom/oppo/model/ms3d/MsMaterial;->setMode(S)V

    .line 618
    iget-object v1, p0, Lcom/oppo/model/ms3d/MsModel;->mMsMaterial:[Lcom/oppo/model/ms3d/MsMaterial;

    aget-object v1, v1, v4

    invoke-static {v12}, Lcom/oppo/model/lib/ModelUtils;->makeSafeString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oppo/model/ms3d/MsMaterial;->setTexture(Ljava/lang/String;)V

    .line 597
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 620
    :cond_0
    return-void
.end method

.method private initTextureList()V
    .locals 6

    .prologue
    .line 626
    const/4 v1, 0x0

    .line 627
    .local v1, "i":I
    const/4 v0, 0x1

    .line 628
    .local v0, "hasNext":I
    const/4 v3, 0x0

    .line 629
    .local v3, "texture":[B
    const/4 v4, 0x0

    .line 630
    .local v4, "textureInfo":Lcom/oppo/model/lib/TextureInfo;
    const/4 v2, 0x0

    .line 632
    .local v2, "name":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/oppo/model/ms3d/MsModel;->mTextureList:Ljava/util/ArrayList;

    .line 634
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 635
    const/16 v5, 0x80

    new-array v3, v5, [B

    .line 636
    invoke-virtual {p0, v1, v3}, Lcom/oppo/model/ms3d/MsModel;->getTextureInfo(I[B)I

    move-result v0

    .line 637
    if-lez v0, :cond_0

    .line 638
    new-instance v4, Lcom/oppo/model/lib/TextureInfo;

    .end local v4    # "textureInfo":Lcom/oppo/model/lib/TextureInfo;
    invoke-direct {v4}, Lcom/oppo/model/lib/TextureInfo;-><init>()V

    .line 639
    .restart local v4    # "textureInfo":Lcom/oppo/model/lib/TextureInfo;
    invoke-static {v3}, Lcom/oppo/model/lib/ModelUtils;->makeSafeString([B)Ljava/lang/String;

    move-result-object v2

    .line 640
    invoke-virtual {v4, v2}, Lcom/oppo/model/lib/TextureInfo;->setTextureName(Ljava/lang/String;)V

    .line 641
    iget-object v5, p0, Lcom/oppo/model/ms3d/MsModel;->mTextureList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 645
    :cond_1
    return-void
.end method

.method private native ms3dContainsAnimation(J)I
.end method

.method private native ms3dFillRenderBuffer(JLcom/oppo/model/ms3d/MsModel$Config;[Lcom/oppo/model/ms3d/MsModel$RenderBuffer;)V
.end method

.method private native ms3dGetAlphaRef(J)F
.end method

.method private native ms3dGetAnimationFps(J)F
.end method

.method private native ms3dGetGroupTexture(JI[B)I
.end method

.method private native ms3dGetMaterial(JI[F[F[F[F[F[F[S[B)V
.end method

.method private native ms3dGetMaterialIndex(JI)B
.end method

.method private native ms3dGetNumGroups(J)I
.end method

.method private native ms3dGetNumMaterials(J)I
.end method

.method private native ms3dGetNumTriangles(JI)I
.end method

.method private native ms3dGetShadowColorBuffer(JILjava/nio/Buffer;)V
.end method

.method private native ms3dGetShadowVertexBuffer(JILjava/nio/Buffer;)V
.end method

.method private native ms3dGetSphereCenter(J[F)V
.end method

.method private native ms3dGetSphereMax(J[F)V
.end method

.method private native ms3dGetSphereMin(J[F)V
.end method

.method private native ms3dGetSphereRadius(J)F
.end method

.method private native ms3dGetTextureCoordsBuffer(JILjava/nio/Buffer;)V
.end method

.method private native ms3dGetTextureInfo(JI[B)I
.end method

.method private native ms3dGetTotalFrames(J)I
.end method

.method private native ms3dGetTransparencyMode(J)I
.end method

.method private native ms3dIntersect(J[F[F)I
.end method

.method private native ms3dLoadModel(I[BLcom/oppo/model/ms3d/MsModel$Config;[J)I
.end method

.method private native ms3dReleaseModel(J)V
.end method

.method private native ms3dSetDirtFlag(JI)V
.end method

.method private native ms3dSetFrame(JF)V
.end method

.method private native ms3dSetShadowHeight(JF)V
.end method

.method private native ms3dSetShadowParameters(JFF)V
.end method

.method private native ms3dSetupJoints(J)V
.end method


# virtual methods
.method public Load(Ljava/io/InputStream;)Z
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oppo/model/ms3d/MsModel;->Load(Ljava/io/InputStream;Z)Z

    move-result v0

    return v0
.end method

.method public Load(Ljava/io/InputStream;Z)Z
    .locals 10
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "enableShadow"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 184
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 185
    .local v1, "dataLen":I
    new-array v0, v1, [B

    .line 186
    .local v0, "data":[B
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 187
    const/4 v7, 0x1

    new-array v3, v7, [J

    .line 188
    .local v3, "ref":[J
    const/4 v4, -0x1

    .line 190
    .local v4, "result":I
    iget-object v7, p0, Lcom/oppo/model/ms3d/MsModel;->mConfig:Lcom/oppo/model/ms3d/MsModel$Config;

    iput-boolean p2, v7, Lcom/oppo/model/ms3d/MsModel$Config;->enableShadow:Z

    .line 192
    iget-object v7, p0, Lcom/oppo/model/ms3d/MsModel;->mConfig:Lcom/oppo/model/ms3d/MsModel$Config;

    invoke-direct {p0, v1, v0, v7, v3}, Lcom/oppo/model/ms3d/MsModel;->ms3dLoadModel(I[BLcom/oppo/model/ms3d/MsModel$Config;[J)I

    move-result v4

    .line 202
    if-nez v4, :cond_0

    .line 203
    const/4 v7, 0x0

    aget-wide v8, v3, v7

    iput-wide v8, p0, Lcom/oppo/model/ms3d/MsModel;->mRef:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    iget-wide v6, p0, Lcom/oppo/model/ms3d/MsModel;->mRef:J

    invoke-direct {p0, v6, v7}, Lcom/oppo/model/ms3d/MsModel;->ms3dGetNumGroups(J)I

    move-result v6

    iput v6, p0, Lcom/oppo/model/ms3d/MsModel;->mNumGroups:I

    .line 216
    invoke-direct {p0, p2}, Lcom/oppo/model/ms3d/MsModel;->initGroups(Z)V

    .line 218
    invoke-direct {p0}, Lcom/oppo/model/ms3d/MsModel;->initMaterials()V

    .line 220
    invoke-direct {p0}, Lcom/oppo/model/ms3d/MsModel;->initTextureList()V

    .line 222
    .end local v0    # "data":[B
    .end local v1    # "dataLen":I
    .end local v3    # "ref":[J
    .end local v4    # "result":I
    :goto_0
    return v5

    .restart local v0    # "data":[B
    .restart local v1    # "dataLen":I
    .restart local v3    # "ref":[J
    .restart local v4    # "result":I
    :cond_0
    move v5, v6

    .line 205
    goto :goto_0

    .line 207
    .end local v0    # "data":[B
    .end local v1    # "dataLen":I
    .end local v3    # "ref":[J
    .end local v4    # "result":I
    :catch_0
    move-exception v2

    .line 208
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move v5, v6

    .line 209
    goto :goto_0
.end method

.method public containsAnimation()I
    .locals 2

    .prologue
    .line 275
    iget-wide v0, p0, Lcom/oppo/model/ms3d/MsModel;->mRef:J

    invoke-direct {p0, v0, v1}, Lcom/oppo/model/ms3d/MsModel;->ms3dContainsAnimation(J)I

    move-result v0

    return v0
.end method

.method public fillRenderBuffer(IFF)V
    .locals 4
    .param p1, "enableNormal"    # I
    .param p2, "scaleX"    # F
    .param p3, "scaleY"    # F

    .prologue
    const/4 v0, 0x1

    .line 243
    iget-object v1, p0, Lcom/oppo/model/ms3d/MsModel;->mConfig:Lcom/oppo/model/ms3d/MsModel$Config;

    if-ne p1, v0, :cond_0

    :goto_0
    iput-boolean v0, v1, Lcom/oppo/model/ms3d/MsModel$Config;->enableNormal:Z

    .line 245
    iget-object v0, p0, Lcom/oppo/model/ms3d/MsModel;->mConfig:Lcom/oppo/model/ms3d/MsModel$Config;

    iput p2, v0, Lcom/oppo/model/ms3d/MsModel$Config;->scaleX:F

    .line 246
    iget-object v0, p0, Lcom/oppo/model/ms3d/MsModel;->mConfig:Lcom/oppo/model/ms3d/MsModel$Config;

    iput p3, v0, Lcom/oppo/model/ms3d/MsModel$Config;->scaleY:F

    .line 247
    iget-wide v0, p0, Lcom/oppo/model/ms3d/MsModel;->mRef:J

    iget-object v2, p0, Lcom/oppo/model/ms3d/MsModel;->mConfig:Lcom/oppo/model/ms3d/MsModel$Config;

    iget-object v3, p0, Lcom/oppo/model/ms3d/MsModel;->mRenderBufferArray:[Lcom/oppo/model/ms3d/MsModel$RenderBuffer;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oppo/model/ms3d/MsModel;->ms3dFillRenderBuffer(JLcom/oppo/model/ms3d/MsModel$Config;[Lcom/oppo/model/ms3d/MsModel$RenderBuffer;)V

    .line 248
    return-void

    .line 243
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlphaRef()F
    .locals 2

    .prologue
    .line 398
    iget-wide v0, p0, Lcom/oppo/model/ms3d/MsModel;->mRef:J

    invoke-direct {p0, v0, v1}, Lcom/oppo/model/ms3d/MsModel;->ms3dGetAlphaRef(J)F

    move-result v0

    return v0
.end method

.method public getAnimationFps()F
    .locals 2

    .prologue
    .line 261
    iget-wide v0, p0, Lcom/oppo/model/ms3d/MsModel;->mRef:J

    invoke-direct {p0, v0, v1}, Lcom/oppo/model/ms3d/MsModel;->ms3dGetAnimationFps(J)F

    move-result v0

    return v0
.end method

.method public getBackgroundCoordsBuf()Ljava/nio/FloatBuffer;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 514
    iget-boolean v0, p0, Lcom/oppo/model/ms3d/MsModel;->mBackgroundCoordInit:Z

    if-nez v0, :cond_0

    .line 515
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/oppo/model/lib/IBufferFactory;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/model/ms3d/MsModel;->mpBackgroundBufCoords:Ljava/nio/FloatBuffer;

    .line 516
    iget-object v0, p0, Lcom/oppo/model/ms3d/MsModel;->mpBackgroundBufCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 517
    iget-object v0, p0, Lcom/oppo/model/ms3d/MsModel;->mpBackgroundBufCoords:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/oppo/model/ms3d/MsModel;->mBackgroundCoordsData:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 518
    iget-object v0, p0, Lcom/oppo/model/ms3d/MsModel;->mpBackgroundBufCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 519
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/model/ms3d/MsModel;->mBackgroundCoordInit:Z

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/oppo/model/ms3d/MsModel;->mpBackgroundBufCoords:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getBackgroundNormalBuf()Ljava/nio/FloatBuffer;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 528
    iget-boolean v2, p0, Lcom/oppo/model/ms3d/MsModel;->mBackgroundNormalInit:Z

    if-nez v2, :cond_1

    .line 529
    const/16 v2, 0x12

    invoke-static {v2}, Lcom/oppo/model/lib/IBufferFactory;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/model/ms3d/MsModel;->mpBackgroundBufNormals:Ljava/nio/FloatBuffer;

    .line 530
    iget-object v2, p0, Lcom/oppo/model/ms3d/MsModel;->mpBackgroundBufNormals:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 531
    const/4 v0, 0x6

    .line 532
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 533
    iget-object v2, p0, Lcom/oppo/model/ms3d/MsModel;->mpBackgroundBufNormals:Ljava/nio/FloatBuffer;

    sget-object v3, Lcom/oppo/model/ms3d/MsModel;->mBackgroundNormalsData:[F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 532
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 535
    :cond_0
    iget-object v2, p0, Lcom/oppo/model/ms3d/MsModel;->mpBackgroundBufNormals:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 536
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oppo/model/ms3d/MsModel;->mBackgroundNormalInit:Z

    .line 538
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/oppo/model/ms3d/MsModel;->mpBackgroundBufNormals:Ljava/nio/FloatBuffer;

    return-object v2
.end method

.method public getBackgroundVertexBuf()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/oppo/model/ms3d/MsModel;->mpBackgroundBufVertices:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getGroup(I)Lcom/oppo/model/ms3d/MsGroup;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 433
    iget-object v0, p0, Lcom/oppo/model/ms3d/MsModel;->mMsGroup:[Lcom/oppo/model/ms3d/MsGroup;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getGroupTexture(I[B)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "texture"    # [B

    .prologue
    .line 412
    iget-wide v0, p0, Lcom/oppo/model/ms3d/MsModel;->mRef:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/oppo/model/ms3d/MsModel;->ms3dGetGroupTexture(JI[B)I

    move-result v0

    return v0
.end method

.method public getMaterial(I)Lcom/oppo/model/ms3d/MsMaterial;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 440
    iget-object v0, p0, Lcom/oppo/model/ms3d/MsModel;->mMsMaterial:[Lcom/oppo/model/ms3d/MsMaterial;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getMaterialIndex(I)B
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 384
    iget-wide v0, p0, Lcom/oppo/model/ms3d/MsModel;->mRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/oppo/model/ms3d/MsModel;->ms3dGetMaterialIndex(JI)B

    move-result v0

    return v0
.end method

.method public getNormalBuf(I)Ljava/nio/FloatBuffer;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 351
    iget v0, p0, Lcom/oppo/model/ms3d/MsModel;->mNumGroups:I

    if-lt p1, v0, :cond_0

    .line 352
    const-string v0, "MsModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNormalBuf() error index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const/4 v0, 0x0

    .line 356
    :goto_0
    return-object v0

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/oppo/model/ms3d/MsModel;->mRenderBufferArray:[Lcom/oppo/model/ms3d/MsModel$RenderBuffer;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/oppo/model/ms3d/MsModel$RenderBuffer;->normalBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 356
    iget-object v0, p0, Lcom/oppo/model/ms3d/MsModel;->mRenderBufferArray:[Lcom/oppo/model/ms3d/MsModel$RenderBuffer;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/oppo/model/ms3d/MsModel$RenderBuffer;->normalBuffer:Ljava/nio/FloatBuffer;

    goto :goto_0
.end method

.method public getNumGroups()I
    .locals 1

    .prologue
    .line 363
    iget v0, p0, Lcom/oppo/model/ms3d/MsModel;->mNumGroups:I

    return v0
.end method

.method public getNumMaterials()I
    .locals 2

    .prologue
    .line 377
    iget-wide v0, p0, Lcom/oppo/model/ms3d/MsModel;->mRef:J

    invoke-direct {p0, v0, v1}, Lcom/oppo/model/ms3d/MsModel;->ms3dGetNumMaterials(J)I

    move-result v0

    return v0
.end method

.method public getNumTriangles(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 370
    iget-wide v0, p0, Lcom/oppo/model/ms3d/MsModel;->mRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/oppo/model/ms3d/MsModel;->ms3dGetNumTriangles(JI)I

    move-result v0

    return v0
.end method

.method public getShadowColorBuf(I)Ljava/nio/FloatBuffer;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 307
    iget v0, p0, Lcom/oppo/model/ms3d/MsModel;->mNumGroups:I

    if-lt p1, v0, :cond_0

    .line 308
    const-string v0, "MsModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getShadowColorBuf() error index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/4 v0, 0x0

    .line 317
    :goto_0
    return-object v0

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/oppo/model/ms3d/MsModel;->mMsGroup:[Lcom/oppo/model/ms3d/MsGroup;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/oppo/model/ms3d/MsGroup;->mShadowColorInit:Z

    if-nez v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/oppo/model/ms3d/MsModel;->mMsGroup:[Lcom/oppo/model/ms3d/MsGroup;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/oppo/model/ms3d/MsGroup;->mShadowColorBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 314
    iget-wide v0, p0, Lcom/oppo/model/ms3d/MsModel;->mRef:J

    iget-object v2, p0, Lcom/oppo/model/ms3d/MsModel;->mMsGroup:[Lcom/oppo/model/ms3d/MsGroup;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/oppo/model/ms3d/MsGroup;->mShadowColorBuffer:Ljava/nio/FloatBuffer;

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/oppo/model/ms3d/MsModel;->ms3dGetShadowColorBuffer(JILjava/nio/Buffer;)V

    .line 315
    iget-object v0, p0, Lcom/oppo/model/ms3d/MsModel;->mMsGroup:[Lcom/oppo/model/ms3d/MsGroup;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oppo/model/ms3d/MsGroup;->mShadowColorInit:Z

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/oppo/model/ms3d/MsModel;->mMsGroup:[Lcom/oppo/model/ms3d/MsGroup;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/oppo/model/ms3d/MsGroup;->mShadowColorBuffer:Ljava/nio/FloatBuffer;

    goto :goto_0
.end method

.method public getShadowVertexBuf(I)Ljava/nio/FloatBuffer;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 294
    iget v0, p0, Lcom/oppo/model/ms3d/MsModel;->mNumGroups:I

    if-lt p1, v0, :cond_0

    .line 295
    const-string v0, "MsModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getShadowVertexBuf() error index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/4 v0, 0x0

    .line 300
    :goto_0
    return-object v0

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/oppo/model/ms3d/MsModel;->mMsGroup:[Lcom/oppo/model/ms3d/MsGroup;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/oppo/model/ms3d/MsGroup;->mShadowVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 299
    iget-wide v0, p0, Lcom/oppo/model/ms3d/MsModel;->mRef:J

    iget-object v2, p0, Lcom/oppo/model/ms3d/MsModel;->mMsGroup:[Lcom/oppo/model/ms3d/MsGroup;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/oppo/model/ms3d/MsGroup;->mShadowVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/oppo/model/ms3d/MsModel;->ms3dGetShadowVertexBuffer(JILjava/nio/Buffer;)V

    .line 300
    iget-object v0, p0, Lcom/oppo/model/ms3d/MsModel;->mMsGroup:[Lcom/oppo/model/ms3d/MsGroup;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/oppo/model/ms3d/MsGroup;->mShadowVertexBuffer:Ljava/nio/FloatBuffer;

    goto :goto_0
.end method

.method public getSphereCenter()Lcom/oppo/model/lib/Vector3f;
    .locals 4

    .prologue
    .line 447
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 448
    .local v0, "centerArray":[F
    iget-wide v2, p0, Lcom/oppo/model/ms3d/MsModel;->mRef:J

    invoke-direct {p0, v2, v3, v0}, Lcom/oppo/model/ms3d/MsModel;->ms3dGetSphereCenter(J[F)V

    .line 449
    iget-object v1, p0, Lcom/oppo/model/ms3d/MsModel;->mvCenter:Lcom/oppo/model/lib/Vector3f;

    invoke-virtual {v1, v0}, Lcom/oppo/model/lib/Vector3f;->set([F)V

    .line 450
    iget-object v1, p0, Lcom/oppo/model/ms3d/MsModel;->mvCenter:Lcom/oppo/model/lib/Vector3f;

    return-object v1
.end method

.method public getSphereMax()Lcom/oppo/model/lib/Vector3f;
    .locals 4

    .prologue
    .line 457
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 458
    .local v0, "maxArray":[F
    iget-wide v2, p0, Lcom/oppo/model/ms3d/MsModel;->mRef:J

    invoke-direct {p0, v2, v3, v0}, Lcom/oppo/model/ms3d/MsModel;->ms3dGetSphereMax(J[F)V

    .line 459
    iget-object v1, p0, Lcom/oppo/model/ms3d/MsModel;->mvMax:Lcom/oppo/model/lib/Vector3f;

    invoke-virtual {v1, v0}, Lcom/oppo/model/lib/Vector3f;->set([F)V

    .line 460
    iget-object v1, p0, Lcom/oppo/model/ms3d/MsModel;->mvMax:Lcom/oppo/model/lib/Vector3f;

    return-object v1
.end method

.method public getSphereMin()Lcom/oppo/model/lib/Vector3f;
    .locals 4

    .prologue
    .line 467
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 468
    .local v0, "minArray":[F
    iget-wide v2, p0, Lcom/oppo/model/ms3d/MsModel;->mRef:J

    invoke-direct {p0, v2, v3, v0}, Lcom/oppo/model/ms3d/MsModel;->ms3dGetSphereMin(J[F)V

    .line 469
    iget-object v1, p0, Lcom/oppo/model/ms3d/MsModel;->mvMin:Lcom/oppo/model/lib/Vector3f;

    invoke-virtual {v1, v0}, Lcom/oppo/model/lib/Vector3f;->set([F)V

    .line 470
    iget-object v1, p0, Lcom/oppo/model/ms3d/MsModel;->mvMin:Lcom/oppo/model/lib/Vector3f;

    return-object v1
.end method

.method public getSphereRadius()F
    .locals 2

    .prologue
    .line 405
    iget-wide v0, p0, Lcom/oppo/model/ms3d/MsModel;->mRef:J

    invoke-direct {p0, v0, v1}, Lcom/oppo/model/ms3d/MsModel;->ms3dGetSphereRadius(J)F

    move-result v0

    return v0
.end method

.method public getTextureCoordsBuf(I)Ljava/nio/FloatBuffer;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 335
    iget v0, p0, Lcom/oppo/model/ms3d/MsModel;->mNumGroups:I

    if-lt p1, v0, :cond_0

    .line 336
    const-string v0, "MsModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTextureCoordsBuf() error index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const/4 v0, 0x0

    .line 344
    :goto_0
    return-object v0

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/oppo/model/ms3d/MsModel;->mMsGroup:[Lcom/oppo/model/ms3d/MsGroup;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/oppo/model/ms3d/MsGroup;->mCoordInit:Z

    if-nez v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/oppo/model/ms3d/MsModel;->mMsGroup:[Lcom/oppo/model/ms3d/MsGroup;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/oppo/model/ms3d/MsGroup;->mCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 341
    iget-wide v0, p0, Lcom/oppo/model/ms3d/MsModel;->mRef:J

    iget-object v2, p0, Lcom/oppo/model/ms3d/MsModel;->mMsGroup:[Lcom/oppo/model/ms3d/MsGroup;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/oppo/model/ms3d/MsGroup;->mCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/oppo/model/ms3d/MsModel;->ms3dGetTextureCoordsBuffer(JILjava/nio/Buffer;)V

    .line 342
    iget-object v0, p0, Lcom/oppo/model/ms3d/MsModel;->mMsGroup:[Lcom/oppo/model/ms3d/MsGroup;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oppo/model/ms3d/MsGroup;->mCoordInit:Z

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/oppo/model/ms3d/MsModel;->mMsGroup:[Lcom/oppo/model/ms3d/MsGroup;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/oppo/model/ms3d/MsGroup;->mCoordBuffer:Ljava/nio/FloatBuffer;

    goto :goto_0
.end method

.method public getTextureInfo(I[B)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "textureInfo"    # [B

    .prologue
    .line 419
    iget-wide v0, p0, Lcom/oppo/model/ms3d/MsModel;->mRef:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/oppo/model/ms3d/MsModel;->ms3dGetTextureInfo(JI[B)I

    move-result v0

    return v0
.end method

.method public getTextureList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/model/lib/TextureInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 477
    iget-object v0, p0, Lcom/oppo/model/ms3d/MsModel;->mTextureList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTotalFrames()I
    .locals 2

    .prologue
    .line 268
    iget-wide v0, p0, Lcom/oppo/model/ms3d/MsModel;->mRef:J

    invoke-direct {p0, v0, v1}, Lcom/oppo/model/ms3d/MsModel;->ms3dGetTotalFrames(J)I

    move-result v0

    return v0
.end method

.method public getTransparencyMode()I
    .locals 2

    .prologue
    .line 391
    iget-wide v0, p0, Lcom/oppo/model/ms3d/MsModel;->mRef:J

    invoke-direct {p0, v0, v1}, Lcom/oppo/model/ms3d/MsModel;->ms3dGetTransparencyMode(J)I

    move-result v0

    return v0
.end method

.method public getVertexBuf(I)Ljava/nio/FloatBuffer;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 282
    iget v0, p0, Lcom/oppo/model/ms3d/MsModel;->mNumGroups:I

    if-lt p1, v0, :cond_0

    .line 283
    const-string v0, "MsModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVertexBuf() error index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const/4 v0, 0x0

    .line 287
    :goto_0
    return-object v0

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/oppo/model/ms3d/MsModel;->mRenderBufferArray:[Lcom/oppo/model/ms3d/MsModel$RenderBuffer;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/oppo/model/ms3d/MsModel$RenderBuffer;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 287
    iget-object v0, p0, Lcom/oppo/model/ms3d/MsModel;->mRenderBufferArray:[Lcom/oppo/model/ms3d/MsModel$RenderBuffer;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/oppo/model/ms3d/MsModel$RenderBuffer;->vertexBuffer:Ljava/nio/FloatBuffer;

    goto :goto_0
.end method

.method public releaseModel()V
    .locals 2

    .prologue
    .line 426
    iget-wide v0, p0, Lcom/oppo/model/ms3d/MsModel;->mRef:J

    invoke-direct {p0, v0, v1}, Lcom/oppo/model/ms3d/MsModel;->ms3dReleaseModel(J)V

    .line 427
    return-void
.end method

.method public setBackgroundVertexBuf(FFF)V
    .locals 7
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "distance"    # F

    .prologue
    const/16 v6, 0x12

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    .line 485
    new-array v0, v6, [F

    neg-float v1, p1

    div-float/2addr v1, v3

    aput v1, v0, v4

    div-float v1, p2, v3

    aput v1, v0, v5

    const/4 v1, 0x2

    neg-float v2, p3

    aput v2, v0, v1

    const/4 v1, 0x3

    neg-float v2, p1

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x4

    neg-float v2, p2

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x5

    neg-float v2, p3

    aput v2, v0, v1

    const/4 v1, 0x6

    div-float v2, p1, v3

    aput v2, v0, v1

    const/4 v1, 0x7

    div-float v2, p2, v3

    aput v2, v0, v1

    const/16 v1, 0x8

    neg-float v2, p3

    aput v2, v0, v1

    const/16 v1, 0x9

    div-float v2, p1, v3

    aput v2, v0, v1

    const/16 v1, 0xa

    div-float v2, p2, v3

    aput v2, v0, v1

    const/16 v1, 0xb

    neg-float v2, p3

    aput v2, v0, v1

    const/16 v1, 0xc

    neg-float v2, p1

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0xd

    neg-float v2, p2

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0xe

    neg-float v2, p3

    aput v2, v0, v1

    const/16 v1, 0xf

    div-float v2, p1, v3

    aput v2, v0, v1

    const/16 v1, 0x10

    neg-float v2, p2

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0x11

    neg-float v2, p3

    aput v2, v0, v1

    .line 495
    .local v0, "coords":[F
    invoke-static {v6}, Lcom/oppo/model/lib/IBufferFactory;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/model/ms3d/MsModel;->mpBackgroundBufVertices:Ljava/nio/FloatBuffer;

    .line 496
    iget-object v1, p0, Lcom/oppo/model/ms3d/MsModel;->mpBackgroundBufVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 497
    iget-object v1, p0, Lcom/oppo/model/ms3d/MsModel;->mpBackgroundBufVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 498
    iget-object v1, p0, Lcom/oppo/model/ms3d/MsModel;->mpBackgroundBufVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 500
    iput-boolean v5, p0, Lcom/oppo/model/ms3d/MsModel;->mBackgroundVertexInit:Z

    .line 501
    return-void
.end method

.method public setDirtFlag(I)V
    .locals 2
    .param p1, "dirtyFlag"    # I

    .prologue
    .line 254
    iget-wide v0, p0, Lcom/oppo/model/ms3d/MsModel;->mRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/oppo/model/ms3d/MsModel;->ms3dSetDirtFlag(JI)V

    .line 255
    return-void
.end method

.method public setFrame(F)V
    .locals 2
    .param p1, "currentFrame"    # F

    .prologue
    .line 236
    iget-wide v0, p0, Lcom/oppo/model/ms3d/MsModel;->mRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/oppo/model/ms3d/MsModel;->ms3dSetFrame(JF)V

    .line 237
    return-void
.end method

.method public setShadowHeight(F)V
    .locals 2
    .param p1, "height"    # F

    .prologue
    .line 324
    iget-wide v0, p0, Lcom/oppo/model/ms3d/MsModel;->mRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/oppo/model/ms3d/MsModel;->ms3dSetShadowHeight(JF)V

    .line 325
    return-void
.end method

.method public setShadowParameters(FF)V
    .locals 2
    .param p1, "color"    # F
    .param p2, "alpha"    # F

    .prologue
    .line 328
    iget-wide v0, p0, Lcom/oppo/model/ms3d/MsModel;->mRef:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/oppo/model/ms3d/MsModel;->ms3dSetShadowParameters(JFF)V

    .line 329
    return-void
.end method

.method public setupJoints()V
    .locals 2

    .prologue
    .line 229
    iget-wide v0, p0, Lcom/oppo/model/ms3d/MsModel;->mRef:J

    invoke-direct {p0, v0, v1}, Lcom/oppo/model/ms3d/MsModel;->ms3dSetupJoints(J)V

    .line 230
    return-void
.end method
