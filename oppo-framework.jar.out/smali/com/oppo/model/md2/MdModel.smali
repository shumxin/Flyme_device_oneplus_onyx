.class public Lcom/oppo/model/md2/MdModel;
.super Ljava/lang/Object;
.source "MdModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/model/md2/MdModel$RenderBuffer;,
        Lcom/oppo/model/md2/MdModel$Config;
    }
.end annotation


# static fields
.field public static final KEY_FRAME_RIGHT_BOTTOM:I = 0x0

.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "MdModel"


# instance fields
.field private mCenter:[F

.field private mConfig:Lcom/oppo/model/md2/MdModel$Config;

.field private mCoordInit:Z

.field private mRef:J

.field private mRegionCoordData:[F

.field private mRegionCoordInit:Z

.field private mRegionNormalInit:Z

.field private mRegionVertexInit:Z

.field private mRenderBuffer:Lcom/oppo/model/md2/MdModel$RenderBuffer;

.field private mShadowColorInit:Z

.field private mTextureId:I

.field private mfRadius:F

.field private mpRegionBufNormal:Ljava/nio/FloatBuffer;

.field private mpRegionBufTextureCoords:Ljava/nio/FloatBuffer;

.field private mpRegionBufVertices:Ljava/nio/FloatBuffer;

.field private mvCenter:Lcom/oppo/model/lib/Vector3f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    const-string v0, "model_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/oppo/model/md2/MdModel$Config;

    invoke-direct {v0}, Lcom/oppo/model/md2/MdModel$Config;-><init>()V

    iput-object v0, p0, Lcom/oppo/model/md2/MdModel;->mConfig:Lcom/oppo/model/md2/MdModel$Config;

    .line 47
    new-instance v0, Lcom/oppo/model/md2/MdModel$RenderBuffer;

    invoke-direct {v0}, Lcom/oppo/model/md2/MdModel$RenderBuffer;-><init>()V

    iput-object v0, p0, Lcom/oppo/model/md2/MdModel;->mRenderBuffer:Lcom/oppo/model/md2/MdModel$RenderBuffer;

    .line 59
    new-instance v0, Lcom/oppo/model/lib/Vector3f;

    invoke-direct {v0}, Lcom/oppo/model/lib/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/oppo/model/md2/MdModel;->mvCenter:Lcom/oppo/model/lib/Vector3f;

    .line 60
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oppo/model/md2/MdModel;->mCenter:[F

    .line 65
    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/oppo/model/md2/MdModel;->mRegionCoordData:[F

    .line 101
    return-void

    .line 65
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private native md2FillRenderBuffer(JLcom/oppo/model/md2/MdModel$Config;Lcom/oppo/model/md2/MdModel$RenderBuffer;)V
.end method

.method private native md2FillRenderBufferII(JLcom/oppo/model/md2/MdModel$Config;Lcom/oppo/model/md2/MdModel$RenderBuffer;)V
.end method

.method private native md2GetCurrentFrames(J)F
.end method

.method private native md2GetFrame(JIIF)F
.end method

.method private native md2GetMaxCoordinate(JFI[I)F
.end method

.method private native md2GetMinCoordinate(JFI[I)F
.end method

.method private native md2GetNumTriangles(J)I
.end method

.method private native md2GetRegionNormalBuffer(JLjava/nio/Buffer;)V
.end method

.method private native md2GetRegionVertexBuffer(JLjava/nio/Buffer;)V
.end method

.method private native md2GetShadowColorBuffer(JLjava/nio/Buffer;)V
.end method

.method private native md2GetSphereCenter(J[F)V
.end method

.method private native md2GetSphereRadius(J)F
.end method

.method private native md2GetTextureCoordsBuffer(JLjava/nio/Buffer;)V
.end method

.method private native md2GetTotalFrames(J)I
.end method

.method private native md2LoadModel(I[BLcom/oppo/model/md2/MdModel$Config;[J)I
.end method

.method private native md2ReleaseModel(J)V
.end method

.method private native md2SetDirtFlag(JZ)V
.end method

.method private native md2SetFrame(JF)V
.end method

.method private native md2SetKeyPosition(JFF)V
.end method

.method private native md2SetKeyVertex(JI)V
.end method

.method private native md2SetShadowHeight(JF)V
.end method

.method private native md2SetShadowParameters(JFF)V
.end method


# virtual methods
.method public Load(Ljava/io/InputStream;Z)Z
    .locals 7
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "reverseNormal"    # Z

    .prologue
    const/4 v3, 0x0

    .line 169
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/oppo/model/md2/MdModel;->Load(Ljava/io/InputStream;ZZZZI)Z

    move-result v0

    return v0
.end method

.method public Load(Ljava/io/InputStream;ZZZZ)Z
    .locals 7
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "reverseNormal"    # Z
    .param p3, "enableBack"    # Z
    .param p4, "enableRegion"    # Z
    .param p5, "enableShadow"    # Z

    .prologue
    .line 177
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/oppo/model/md2/MdModel;->Load(Ljava/io/InputStream;ZZZZI)Z

    move-result v0

    return v0
.end method

.method public Load(Ljava/io/InputStream;ZZZZI)Z
    .locals 8
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "reverseNormal"    # Z
    .param p3, "enableBack"    # Z
    .param p4, "enableRegion"    # Z
    .param p5, "enableShadow"    # Z
    .param p6, "regionFrame"    # I

    .prologue
    .line 185
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/oppo/model/md2/MdModel;->Load(Ljava/io/InputStream;ZZZZZI)Z

    move-result v0

    return v0
.end method

.method public Load(Ljava/io/InputStream;ZZZZZI)Z
    .locals 8
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "compressed"    # Z
    .param p3, "reverseNormal"    # Z
    .param p4, "enableBack"    # Z
    .param p5, "enableRegion"    # Z
    .param p6, "enableShadow"    # Z
    .param p7, "regionFrame"    # I

    .prologue
    .line 194
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 195
    .local v1, "dataLen":I
    new-array v0, v1, [B

    .line 196
    .local v0, "data":[B
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 197
    const/4 v6, 0x1

    new-array v3, v6, [J

    .line 198
    .local v3, "ref":[J
    const/4 v4, -0x1

    .line 200
    .local v4, "result":I
    iget-object v6, p0, Lcom/oppo/model/md2/MdModel;->mConfig:Lcom/oppo/model/md2/MdModel$Config;

    iput-boolean p2, v6, Lcom/oppo/model/md2/MdModel$Config;->compressed:Z

    .line 201
    iget-object v6, p0, Lcom/oppo/model/md2/MdModel;->mConfig:Lcom/oppo/model/md2/MdModel$Config;

    iput-boolean p3, v6, Lcom/oppo/model/md2/MdModel$Config;->reverseNormal:Z

    .line 202
    iget-object v6, p0, Lcom/oppo/model/md2/MdModel;->mConfig:Lcom/oppo/model/md2/MdModel$Config;

    iput-boolean p6, v6, Lcom/oppo/model/md2/MdModel$Config;->enableShadow:Z

    .line 203
    iget-object v6, p0, Lcom/oppo/model/md2/MdModel;->mConfig:Lcom/oppo/model/md2/MdModel$Config;

    iput-boolean p4, v6, Lcom/oppo/model/md2/MdModel$Config;->enableBack:Z

    .line 204
    iget-object v6, p0, Lcom/oppo/model/md2/MdModel;->mConfig:Lcom/oppo/model/md2/MdModel$Config;

    iput p7, v6, Lcom/oppo/model/md2/MdModel$Config;->regionFrame:I

    .line 206
    iget-object v6, p0, Lcom/oppo/model/md2/MdModel;->mConfig:Lcom/oppo/model/md2/MdModel$Config;

    invoke-direct {p0, v1, v0, v6, v3}, Lcom/oppo/model/md2/MdModel;->md2LoadModel(I[BLcom/oppo/model/md2/MdModel$Config;[J)I

    move-result v4

    .line 210
    if-nez v4, :cond_3

    .line 211
    const/4 v6, 0x0

    aget-wide v6, v3, v6

    iput-wide v6, p0, Lcom/oppo/model/md2/MdModel;->mRef:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    invoke-virtual {p0}, Lcom/oppo/model/md2/MdModel;->getNumTriangles()I

    move-result v5

    .line 225
    .local v5, "triangleCount":I
    iget-object v6, p0, Lcom/oppo/model/md2/MdModel;->mRenderBuffer:Lcom/oppo/model/md2/MdModel$RenderBuffer;

    mul-int/lit8 v7, v5, 0x9

    invoke-static {v7}, Lcom/oppo/model/lib/IBufferFactory;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v7

    iput-object v7, v6, Lcom/oppo/model/md2/MdModel$RenderBuffer;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 226
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/oppo/model/md2/MdModel;->mCoordInit:Z

    .line 227
    iget-object v6, p0, Lcom/oppo/model/md2/MdModel;->mRenderBuffer:Lcom/oppo/model/md2/MdModel$RenderBuffer;

    mul-int/lit8 v7, v5, 0x6

    invoke-static {v7}, Lcom/oppo/model/lib/IBufferFactory;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v7

    iput-object v7, v6, Lcom/oppo/model/md2/MdModel$RenderBuffer;->texCoordBuffer:Ljava/nio/FloatBuffer;

    .line 228
    iget-object v6, p0, Lcom/oppo/model/md2/MdModel;->mRenderBuffer:Lcom/oppo/model/md2/MdModel$RenderBuffer;

    mul-int/lit8 v7, v5, 0x9

    invoke-static {v7}, Lcom/oppo/model/lib/IBufferFactory;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v7

    iput-object v7, v6, Lcom/oppo/model/md2/MdModel$RenderBuffer;->normalBuffer:Ljava/nio/FloatBuffer;

    .line 230
    if-eqz p4, :cond_0

    .line 231
    iget-object v6, p0, Lcom/oppo/model/md2/MdModel;->mRenderBuffer:Lcom/oppo/model/md2/MdModel$RenderBuffer;

    mul-int/lit8 v7, v5, 0x9

    invoke-static {v7}, Lcom/oppo/model/lib/IBufferFactory;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v7

    iput-object v7, v6, Lcom/oppo/model/md2/MdModel$RenderBuffer;->normalBackBuffer:Ljava/nio/FloatBuffer;

    .line 234
    :cond_0
    if-eqz p5, :cond_1

    .line 235
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/oppo/model/md2/MdModel;->mRegionVertexInit:Z

    .line 236
    const/16 v6, 0x12

    invoke-static {v6}, Lcom/oppo/model/lib/IBufferFactory;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v6

    iput-object v6, p0, Lcom/oppo/model/md2/MdModel;->mpRegionBufVertices:Ljava/nio/FloatBuffer;

    .line 237
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/oppo/model/md2/MdModel;->mRegionNormalInit:Z

    .line 238
    const/16 v6, 0x12

    invoke-static {v6}, Lcom/oppo/model/lib/IBufferFactory;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v6

    iput-object v6, p0, Lcom/oppo/model/md2/MdModel;->mpRegionBufNormal:Ljava/nio/FloatBuffer;

    .line 239
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/oppo/model/md2/MdModel;->mRegionCoordInit:Z

    .line 240
    const/16 v6, 0xc

    invoke-static {v6}, Lcom/oppo/model/lib/IBufferFactory;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v6

    iput-object v6, p0, Lcom/oppo/model/md2/MdModel;->mpRegionBufTextureCoords:Ljava/nio/FloatBuffer;

    .line 243
    :cond_1
    if-eqz p6, :cond_2

    .line 244
    iget-object v6, p0, Lcom/oppo/model/md2/MdModel;->mRenderBuffer:Lcom/oppo/model/md2/MdModel$RenderBuffer;

    mul-int/lit8 v7, v5, 0x9

    invoke-static {v7}, Lcom/oppo/model/lib/IBufferFactory;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v7

    iput-object v7, v6, Lcom/oppo/model/md2/MdModel$RenderBuffer;->vertexShadowBuffer:Ljava/nio/FloatBuffer;

    .line 245
    iget-object v6, p0, Lcom/oppo/model/md2/MdModel;->mRenderBuffer:Lcom/oppo/model/md2/MdModel$RenderBuffer;

    mul-int/lit8 v7, v5, 0xc

    invoke-static {v7}, Lcom/oppo/model/lib/IBufferFactory;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v7

    iput-object v7, v6, Lcom/oppo/model/md2/MdModel$RenderBuffer;->colorShadowBuffer:Ljava/nio/FloatBuffer;

    .line 250
    :cond_2
    const/4 v6, 0x1

    .end local v0    # "data":[B
    .end local v1    # "dataLen":I
    .end local v3    # "ref":[J
    .end local v4    # "result":I
    .end local v5    # "triangleCount":I
    :goto_0
    return v6

    .line 213
    .restart local v0    # "data":[B
    .restart local v1    # "dataLen":I
    .restart local v3    # "ref":[J
    .restart local v4    # "result":I
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 215
    .end local v0    # "data":[B
    .end local v1    # "dataLen":I
    .end local v3    # "ref":[J
    .end local v4    # "result":I
    :catch_0
    move-exception v2

    .line 216
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 217
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public clearRegionBuffer()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 395
    iput-boolean v0, p0, Lcom/oppo/model/md2/MdModel;->mRegionVertexInit:Z

    .line 396
    iput-boolean v0, p0, Lcom/oppo/model/md2/MdModel;->mRegionNormalInit:Z

    .line 397
    iput-boolean v0, p0, Lcom/oppo/model/md2/MdModel;->mRegionCoordInit:Z

    .line 398
    return-void
.end method

.method public containsAnimation()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 307
    invoke-virtual {p0}, Lcom/oppo/model/md2/MdModel;->getTotalFrames()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fillRenderBuffer(ZFF)V
    .locals 4
    .param p1, "enableNormal"    # Z
    .param p2, "scaleX"    # F
    .param p3, "scaleY"    # F

    .prologue
    .line 285
    iget-object v0, p0, Lcom/oppo/model/md2/MdModel;->mConfig:Lcom/oppo/model/md2/MdModel$Config;

    iput-boolean p1, v0, Lcom/oppo/model/md2/MdModel$Config;->enableNormal:Z

    .line 286
    iget-object v0, p0, Lcom/oppo/model/md2/MdModel;->mConfig:Lcom/oppo/model/md2/MdModel$Config;

    iput p2, v0, Lcom/oppo/model/md2/MdModel$Config;->scaleX:F

    .line 287
    iget-object v0, p0, Lcom/oppo/model/md2/MdModel;->mConfig:Lcom/oppo/model/md2/MdModel$Config;

    iput p3, v0, Lcom/oppo/model/md2/MdModel$Config;->scaleY:F

    .line 288
    iget-wide v0, p0, Lcom/oppo/model/md2/MdModel;->mRef:J

    iget-object v2, p0, Lcom/oppo/model/md2/MdModel;->mConfig:Lcom/oppo/model/md2/MdModel$Config;

    iget-object v3, p0, Lcom/oppo/model/md2/MdModel;->mRenderBuffer:Lcom/oppo/model/md2/MdModel$RenderBuffer;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oppo/model/md2/MdModel;->md2FillRenderBuffer(JLcom/oppo/model/md2/MdModel$Config;Lcom/oppo/model/md2/MdModel$RenderBuffer;)V

    .line 289
    return-void
.end method

.method public fillRenderBuffer(ZZFFF)V
    .locals 4
    .param p1, "enableNormal"    # Z
    .param p2, "init"    # Z
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "scale"    # F

    .prologue
    .line 295
    iget-object v0, p0, Lcom/oppo/model/md2/MdModel;->mConfig:Lcom/oppo/model/md2/MdModel$Config;

    iput-boolean p1, v0, Lcom/oppo/model/md2/MdModel$Config;->enableNormal:Z

    .line 296
    iget-object v0, p0, Lcom/oppo/model/md2/MdModel;->mConfig:Lcom/oppo/model/md2/MdModel$Config;

    iput-boolean p2, v0, Lcom/oppo/model/md2/MdModel$Config;->init:Z

    .line 297
    iget-object v0, p0, Lcom/oppo/model/md2/MdModel;->mConfig:Lcom/oppo/model/md2/MdModel$Config;

    iput p3, v0, Lcom/oppo/model/md2/MdModel$Config;->width:F

    .line 298
    iget-object v0, p0, Lcom/oppo/model/md2/MdModel;->mConfig:Lcom/oppo/model/md2/MdModel$Config;

    iput p4, v0, Lcom/oppo/model/md2/MdModel$Config;->height:F

    .line 299
    iget-object v0, p0, Lcom/oppo/model/md2/MdModel;->mConfig:Lcom/oppo/model/md2/MdModel$Config;

    iput p5, v0, Lcom/oppo/model/md2/MdModel$Config;->scale:F

    .line 300
    iget-wide v0, p0, Lcom/oppo/model/md2/MdModel;->mRef:J

    iget-object v2, p0, Lcom/oppo/model/md2/MdModel;->mConfig:Lcom/oppo/model/md2/MdModel$Config;

    iget-object v3, p0, Lcom/oppo/model/md2/MdModel;->mRenderBuffer:Lcom/oppo/model/md2/MdModel$RenderBuffer;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oppo/model/md2/MdModel;->md2FillRenderBufferII(JLcom/oppo/model/md2/MdModel$Config;Lcom/oppo/model/md2/MdModel$RenderBuffer;)V

    .line 301
    return-void
.end method

.method public getBackNormalBuf()Ljava/nio/FloatBuffer;
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/oppo/model/md2/MdModel;->mRenderBuffer:Lcom/oppo/model/md2/MdModel$RenderBuffer;

    iget-object v0, v0, Lcom/oppo/model/md2/MdModel$RenderBuffer;->normalBackBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 351
    iget-object v0, p0, Lcom/oppo/model/md2/MdModel;->mRenderBuffer:Lcom/oppo/model/md2/MdModel$RenderBuffer;

    iget-object v0, v0, Lcom/oppo/model/md2/MdModel$RenderBuffer;->normalBackBuffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getCurrentFrames()F
    .locals 2

    .prologue
    .line 271
    iget-wide v0, p0, Lcom/oppo/model/md2/MdModel;->mRef:J

    invoke-direct {p0, v0, v1}, Lcom/oppo/model/md2/MdModel;->md2GetCurrentFrames(J)F

    move-result v0

    return v0
.end method

.method public getFrame(IIF)F
    .locals 7
    .param p1, "dimension"    # I
    .param p2, "index"    # I
    .param p3, "coordinate"    # F

    .prologue
    .line 504
    iget-wide v2, p0, Lcom/oppo/model/md2/MdModel;->mRef:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/oppo/model/md2/MdModel;->md2GetFrame(JIIF)F

    move-result v0

    return v0
.end method

.method public getMaxCoordinate(FI[I)F
    .locals 7
    .param p1, "frame"    # F
    .param p2, "dimension"    # I
    .param p3, "indexData"    # [I

    .prologue
    .line 492
    iget-wide v2, p0, Lcom/oppo/model/md2/MdModel;->mRef:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/oppo/model/md2/MdModel;->md2GetMaxCoordinate(JFI[I)F

    move-result v0

    return v0
.end method

.method public getMinCoordinate(FI[I)F
    .locals 7
    .param p1, "frame"    # F
    .param p2, "dimension"    # I
    .param p3, "indexData"    # [I

    .prologue
    .line 485
    iget-wide v2, p0, Lcom/oppo/model/md2/MdModel;->mRef:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/oppo/model/md2/MdModel;->md2GetMinCoordinate(JFI[I)F

    move-result v0

    return v0
.end method

.method public getNormalBuf()Ljava/nio/FloatBuffer;
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/oppo/model/md2/MdModel;->mRenderBuffer:Lcom/oppo/model/md2/MdModel$RenderBuffer;

    iget-object v0, v0, Lcom/oppo/model/md2/MdModel$RenderBuffer;->normalBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 343
    iget-object v0, p0, Lcom/oppo/model/md2/MdModel;->mRenderBuffer:Lcom/oppo/model/md2/MdModel$RenderBuffer;

    iget-object v0, v0, Lcom/oppo/model/md2/MdModel$RenderBuffer;->normalBuffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getNumTriangles()I
    .locals 2

    .prologue
    .line 257
    iget-wide v0, p0, Lcom/oppo/model/md2/MdModel;->mRef:J

    invoke-direct {p0, v0, v1}, Lcom/oppo/model/md2/MdModel;->md2GetNumTriangles(J)I

    move-result v0

    return v0
.end method

.method public getRegionNormalBuf()Ljava/nio/FloatBuffer;
    .locals 3

    .prologue
    .line 370
    iget-boolean v0, p0, Lcom/oppo/model/md2/MdModel;->mRegionNormalInit:Z

    if-nez v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/oppo/model/md2/MdModel;->mpRegionBufNormal:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 372
    iget-wide v0, p0, Lcom/oppo/model/md2/MdModel;->mRef:J

    iget-object v2, p0, Lcom/oppo/model/md2/MdModel;->mpRegionBufNormal:Ljava/nio/FloatBuffer;

    invoke-direct {p0, v0, v1, v2}, Lcom/oppo/model/md2/MdModel;->md2GetRegionNormalBuffer(JLjava/nio/Buffer;)V

    .line 373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/model/md2/MdModel;->mRegionNormalInit:Z

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/oppo/model/md2/MdModel;->mpRegionBufNormal:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getRegionTextureCoordsBuf()Ljava/nio/FloatBuffer;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 382
    iget-boolean v0, p0, Lcom/oppo/model/md2/MdModel;->mRegionCoordInit:Z

    if-nez v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/oppo/model/md2/MdModel;->mpRegionBufTextureCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 384
    iget-object v0, p0, Lcom/oppo/model/md2/MdModel;->mpRegionBufTextureCoords:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/oppo/model/md2/MdModel;->mRegionCoordData:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 385
    iget-object v0, p0, Lcom/oppo/model/md2/MdModel;->mpRegionBufTextureCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 386
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/model/md2/MdModel;->mRegionCoordInit:Z

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/oppo/model/md2/MdModel;->mpRegionBufTextureCoords:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getRegionVertexBuf()Ljava/nio/FloatBuffer;
    .locals 3

    .prologue
    .line 358
    iget-boolean v0, p0, Lcom/oppo/model/md2/MdModel;->mRegionVertexInit:Z

    if-nez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/oppo/model/md2/MdModel;->mpRegionBufVertices:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 360
    iget-wide v0, p0, Lcom/oppo/model/md2/MdModel;->mRef:J

    iget-object v2, p0, Lcom/oppo/model/md2/MdModel;->mpRegionBufVertices:Ljava/nio/FloatBuffer;

    invoke-direct {p0, v0, v1, v2}, Lcom/oppo/model/md2/MdModel;->md2GetRegionVertexBuffer(JLjava/nio/Buffer;)V

    .line 361
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/model/md2/MdModel;->mRegionVertexInit:Z

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/oppo/model/md2/MdModel;->mpRegionBufVertices:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getShadowColorBuf()Ljava/nio/FloatBuffer;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 412
    iget-boolean v0, p0, Lcom/oppo/model/md2/MdModel;->mShadowColorInit:Z

    if-nez v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/oppo/model/md2/MdModel;->mRenderBuffer:Lcom/oppo/model/md2/MdModel$RenderBuffer;

    iget-object v0, v0, Lcom/oppo/model/md2/MdModel$RenderBuffer;->colorShadowBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 414
    iget-wide v0, p0, Lcom/oppo/model/md2/MdModel;->mRef:J

    iget-object v2, p0, Lcom/oppo/model/md2/MdModel;->mRenderBuffer:Lcom/oppo/model/md2/MdModel$RenderBuffer;

    iget-object v2, v2, Lcom/oppo/model/md2/MdModel$RenderBuffer;->colorShadowBuffer:Ljava/nio/FloatBuffer;

    invoke-direct {p0, v0, v1, v2}, Lcom/oppo/model/md2/MdModel;->md2GetShadowColorBuffer(JLjava/nio/Buffer;)V

    .line 415
    iget-object v0, p0, Lcom/oppo/model/md2/MdModel;->mRenderBuffer:Lcom/oppo/model/md2/MdModel$RenderBuffer;

    iget-object v0, v0, Lcom/oppo/model/md2/MdModel$RenderBuffer;->colorShadowBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 416
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/model/md2/MdModel;->mShadowColorInit:Z

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/oppo/model/md2/MdModel;->mRenderBuffer:Lcom/oppo/model/md2/MdModel$RenderBuffer;

    iget-object v0, v0, Lcom/oppo/model/md2/MdModel$RenderBuffer;->colorShadowBuffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getShadowVertexBuf()Ljava/nio/FloatBuffer;
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/oppo/model/md2/MdModel;->mRenderBuffer:Lcom/oppo/model/md2/MdModel$RenderBuffer;

    iget-object v0, v0, Lcom/oppo/model/md2/MdModel$RenderBuffer;->vertexShadowBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 405
    iget-object v0, p0, Lcom/oppo/model/md2/MdModel;->mRenderBuffer:Lcom/oppo/model/md2/MdModel$RenderBuffer;

    iget-object v0, v0, Lcom/oppo/model/md2/MdModel$RenderBuffer;->vertexShadowBuffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getSphereCenter()Lcom/oppo/model/lib/Vector3f;
    .locals 3

    .prologue
    .line 441
    iget-wide v0, p0, Lcom/oppo/model/md2/MdModel;->mRef:J

    iget-object v2, p0, Lcom/oppo/model/md2/MdModel;->mCenter:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/oppo/model/md2/MdModel;->md2GetSphereCenter(J[F)V

    .line 442
    iget-object v0, p0, Lcom/oppo/model/md2/MdModel;->mvCenter:Lcom/oppo/model/lib/Vector3f;

    iget-object v1, p0, Lcom/oppo/model/md2/MdModel;->mCenter:[F

    invoke-virtual {v0, v1}, Lcom/oppo/model/lib/Vector3f;->set([F)V

    .line 443
    iget-object v0, p0, Lcom/oppo/model/md2/MdModel;->mvCenter:Lcom/oppo/model/lib/Vector3f;

    return-object v0
.end method

.method public getSphereRadius()F
    .locals 2

    .prologue
    .line 450
    iget-wide v0, p0, Lcom/oppo/model/md2/MdModel;->mRef:J

    invoke-direct {p0, v0, v1}, Lcom/oppo/model/md2/MdModel;->md2GetSphereRadius(J)F

    move-result v0

    return v0
.end method

.method public getTextureCoordsBuf()Ljava/nio/FloatBuffer;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 329
    iget-boolean v0, p0, Lcom/oppo/model/md2/MdModel;->mCoordInit:Z

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/oppo/model/md2/MdModel;->mRenderBuffer:Lcom/oppo/model/md2/MdModel$RenderBuffer;

    iget-object v0, v0, Lcom/oppo/model/md2/MdModel$RenderBuffer;->texCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 331
    iget-wide v0, p0, Lcom/oppo/model/md2/MdModel;->mRef:J

    iget-object v2, p0, Lcom/oppo/model/md2/MdModel;->mRenderBuffer:Lcom/oppo/model/md2/MdModel$RenderBuffer;

    iget-object v2, v2, Lcom/oppo/model/md2/MdModel$RenderBuffer;->texCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-direct {p0, v0, v1, v2}, Lcom/oppo/model/md2/MdModel;->md2GetTextureCoordsBuffer(JLjava/nio/Buffer;)V

    .line 332
    iget-object v0, p0, Lcom/oppo/model/md2/MdModel;->mRenderBuffer:Lcom/oppo/model/md2/MdModel$RenderBuffer;

    iget-object v0, v0, Lcom/oppo/model/md2/MdModel$RenderBuffer;->texCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/model/md2/MdModel;->mCoordInit:Z

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/oppo/model/md2/MdModel;->mRenderBuffer:Lcom/oppo/model/md2/MdModel$RenderBuffer;

    iget-object v0, v0, Lcom/oppo/model/md2/MdModel$RenderBuffer;->texCoordBuffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getTextureId()I
    .locals 1

    .prologue
    .line 464
    iget v0, p0, Lcom/oppo/model/md2/MdModel;->mTextureId:I

    return v0
.end method

.method public getTotalFrames()I
    .locals 2

    .prologue
    .line 278
    iget-wide v0, p0, Lcom/oppo/model/md2/MdModel;->mRef:J

    invoke-direct {p0, v0, v1}, Lcom/oppo/model/md2/MdModel;->md2GetTotalFrames(J)I

    move-result v0

    return v0
.end method

.method public getVertexBuf()Ljava/nio/FloatBuffer;
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/oppo/model/md2/MdModel;->mRenderBuffer:Lcom/oppo/model/md2/MdModel$RenderBuffer;

    iget-object v0, v0, Lcom/oppo/model/md2/MdModel$RenderBuffer;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 322
    iget-object v0, p0, Lcom/oppo/model/md2/MdModel;->mRenderBuffer:Lcom/oppo/model/md2/MdModel$RenderBuffer;

    iget-object v0, v0, Lcom/oppo/model/md2/MdModel$RenderBuffer;->vertexBuffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public releaseModel()V
    .locals 2

    .prologue
    .line 511
    iget-wide v0, p0, Lcom/oppo/model/md2/MdModel;->mRef:J

    invoke-direct {p0, v0, v1}, Lcom/oppo/model/md2/MdModel;->md2ReleaseModel(J)V

    .line 512
    return-void
.end method

.method public setDirtFlag(Z)V
    .locals 2
    .param p1, "dirtFlag"    # Z

    .prologue
    .line 314
    iget-wide v0, p0, Lcom/oppo/model/md2/MdModel;->mRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/oppo/model/md2/MdModel;->md2SetDirtFlag(JZ)V

    .line 315
    return-void
.end method

.method public setFrame(F)V
    .locals 2
    .param p1, "frame"    # F

    .prologue
    .line 264
    iget-wide v0, p0, Lcom/oppo/model/md2/MdModel;->mRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/oppo/model/md2/MdModel;->md2SetFrame(JF)V

    .line 265
    return-void
.end method

.method public setKeyPosition(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 478
    iget-wide v0, p0, Lcom/oppo/model/md2/MdModel;->mRef:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/oppo/model/md2/MdModel;->md2SetKeyPosition(JFF)V

    .line 479
    return-void
.end method

.method public setKeyVertex(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 471
    iget-wide v0, p0, Lcom/oppo/model/md2/MdModel;->mRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/oppo/model/md2/MdModel;->md2SetKeyVertex(JI)V

    .line 472
    return-void
.end method

.method public setShadowHeight(F)V
    .locals 2
    .param p1, "height"    # F

    .prologue
    .line 425
    iget-wide v0, p0, Lcom/oppo/model/md2/MdModel;->mRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/oppo/model/md2/MdModel;->md2SetShadowHeight(JF)V

    .line 426
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/model/md2/MdModel;->mShadowColorInit:Z

    .line 427
    return-void
.end method

.method public setShadowParameters(FF)V
    .locals 2
    .param p1, "color"    # F
    .param p2, "alpha"    # F

    .prologue
    .line 433
    iget-wide v0, p0, Lcom/oppo/model/md2/MdModel;->mRef:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/oppo/model/md2/MdModel;->md2SetShadowParameters(JFF)V

    .line 434
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/model/md2/MdModel;->mShadowColorInit:Z

    .line 435
    return-void
.end method

.method public setTextureId(I)V
    .locals 0
    .param p1, "textureId"    # I

    .prologue
    .line 457
    iput p1, p0, Lcom/oppo/model/md2/MdModel;->mTextureId:I

    .line 458
    return-void
.end method
