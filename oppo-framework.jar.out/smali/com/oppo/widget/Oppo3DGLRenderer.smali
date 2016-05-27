.class public Lcom/oppo/widget/Oppo3DGLRenderer;
.super Ljava/lang/Object;
.source "Oppo3DGLRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;,
        Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;
    }
.end annotation


# static fields
.field protected static final CLOCKS_PER_SEC:I = 0x3e8

.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "Oppo3DGLRenderer"

.field protected static final mAmbient:[F

.field protected static final mDiffuse:[F

.field protected static final mEmission:[F

.field protected static final mShininess:F

.field protected static final mSpecular:[F


# instance fields
.field private TEXTURE_BUFFER_LEN:I

.field protected mContext:Landroid/content/Context;

.field protected mEnableTexFlag:Z

.field protected mLightPos:[F

.field protected mMatModel:Lcom/oppo/model/lib/Matrix4f;

.field protected mMatProject:Lcom/oppo/model/lib/Matrix4f;

.field protected mMatView:Lcom/oppo/model/lib/Matrix4f;

.field protected mMatrixProjectArray:[F

.field protected mModelDistance:F

.field protected mModelHeight:F

.field protected mModelWidth:F

.field protected mNeedUpdateTex:Z

.field protected mOppo3DGLView:Lcom/oppo/widget/Oppo3DGLView;

.field protected mSphereCenter:Lcom/oppo/model/lib/Vector3f;

.field protected mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

.field private mTextureInfoBufferIndex:I

.field protected mUpdateTexBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

.field protected mViewport:[I

.field protected mvCenter:Lcom/oppo/model/lib/Vector3f;

.field protected mvEye:Lcom/oppo/model/lib/Vector3f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 57
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oppo/widget/Oppo3DGLRenderer;->mAmbient:[F

    .line 58
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/oppo/widget/Oppo3DGLRenderer;->mDiffuse:[F

    .line 59
    new-array v0, v1, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/oppo/widget/Oppo3DGLRenderer;->mSpecular:[F

    .line 60
    new-array v0, v1, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/oppo/widget/Oppo3DGLRenderer;->mEmission:[F

    return-void

    .line 57
    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3e4ccccd    # 0.2f
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data

    .line 58
    :array_1
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f4ccccd    # 0.8f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    .line 59
    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 60
    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oppo/widget/Oppo3DGLView;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "oppo3DGLView"    # Lcom/oppo/widget/Oppo3DGLView;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/16 v1, 0x14

    iput v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->TEXTURE_BUFFER_LEN:I

    .line 67
    new-array v1, v4, [I

    iput-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mViewport:[I

    .line 69
    new-instance v1, Lcom/oppo/model/lib/Matrix4f;

    invoke-direct {v1}, Lcom/oppo/model/lib/Matrix4f;-><init>()V

    iput-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mMatProject:Lcom/oppo/model/lib/Matrix4f;

    .line 71
    const/16 v1, 0x10

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mMatrixProjectArray:[F

    .line 73
    new-instance v1, Lcom/oppo/model/lib/Matrix4f;

    invoke-direct {v1}, Lcom/oppo/model/lib/Matrix4f;-><init>()V

    iput-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mMatView:Lcom/oppo/model/lib/Matrix4f;

    .line 75
    new-instance v1, Lcom/oppo/model/lib/Matrix4f;

    invoke-direct {v1}, Lcom/oppo/model/lib/Matrix4f;-><init>()V

    iput-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mMatModel:Lcom/oppo/model/lib/Matrix4f;

    .line 77
    new-instance v1, Lcom/oppo/model/lib/Vector3f;

    invoke-direct {v1, v2, v2, v2}, Lcom/oppo/model/lib/Vector3f;-><init>(FFF)V

    iput-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mvEye:Lcom/oppo/model/lib/Vector3f;

    .line 79
    new-instance v1, Lcom/oppo/model/lib/Vector3f;

    invoke-direct {v1, v2, v2, v2}, Lcom/oppo/model/lib/Vector3f;-><init>(FFF)V

    iput-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mvCenter:Lcom/oppo/model/lib/Vector3f;

    .line 81
    new-array v1, v4, [F

    iput-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mLightPos:[F

    .line 98
    iput v3, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBufferIndex:I

    .line 136
    iput-object p1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mContext:Landroid/content/Context;

    .line 138
    iput-object p2, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mOppo3DGLView:Lcom/oppo/widget/Oppo3DGLView;

    .line 140
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mViewport:[I

    aput v3, v1, v3

    .line 141
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mViewport:[I

    const/4 v2, 0x1

    aput v3, v1, v2

    .line 142
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mViewport:[I

    const/4 v2, 0x2

    aput v3, v1, v2

    .line 143
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mViewport:[I

    const/4 v2, 0x3

    aput v3, v1, v2

    .line 145
    iget v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->TEXTURE_BUFFER_LEN:I

    new-array v1, v1, [Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

    iput-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

    .line 146
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->TEXTURE_BUFFER_LEN:I

    if-ge v0, v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

    new-instance v2, Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

    invoke-direct {v2, p0}, Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;-><init>(Lcom/oppo/widget/Oppo3DGLRenderer;)V

    aput-object v2, v1, v0

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_0
    iget v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->TEXTURE_BUFFER_LEN:I

    new-array v1, v1, [Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    iput-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mUpdateTexBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    .line 151
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->TEXTURE_BUFFER_LEN:I

    if-ge v0, v1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mUpdateTexBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    new-instance v2, Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    invoke-direct {v2, p0}, Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;-><init>(Lcom/oppo/widget/Oppo3DGLRenderer;)V

    aput-object v2, v1, v0

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 154
    :cond_1
    return-void
.end method

.method public static LoadMdModel(Landroid/content/Context;Ljava/lang/String;Z)Lcom/oppo/model/md2/MdModel;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "modelName"    # Ljava/lang/String;
    .param p2, "reverseNormal"    # Z

    .prologue
    const/4 v3, 0x0

    .line 164
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/oppo/widget/Oppo3DGLRenderer;->LoadMdModel(Landroid/content/Context;Ljava/lang/String;ZZZZ)Lcom/oppo/model/md2/MdModel;

    move-result-object v0

    return-object v0
.end method

.method public static LoadMdModel(Landroid/content/Context;Ljava/lang/String;ZZZZ)Lcom/oppo/model/md2/MdModel;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "modelName"    # Ljava/lang/String;
    .param p2, "reverseNormal"    # Z
    .param p3, "enableBack"    # Z
    .param p4, "enableRegion"    # Z
    .param p5, "enableShadow"    # Z

    .prologue
    .line 179
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/oppo/widget/Oppo3DGLRenderer;->LoadMdModel(Landroid/content/Context;Ljava/lang/String;ZZZZI)Lcom/oppo/model/md2/MdModel;

    move-result-object v0

    return-object v0
.end method

.method public static LoadMdModel(Landroid/content/Context;Ljava/lang/String;ZZZZI)Lcom/oppo/model/md2/MdModel;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "modelName"    # Ljava/lang/String;
    .param p2, "reverseNormal"    # Z
    .param p3, "enableBack"    # Z
    .param p4, "enableRegion"    # Z
    .param p5, "enableShadow"    # Z
    .param p6, "regionFrame"    # I

    .prologue
    .line 196
    const/4 v9, 0x0

    .line 199
    .local v9, "mdModel":Lcom/oppo/model/md2/MdModel;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    .line 200
    .local v7, "am":Landroid/content/res/AssetManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "model/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 202
    .local v1, "is":Ljava/io/InputStream;
    new-instance v0, Lcom/oppo/model/md2/MdModel;

    invoke-direct {v0}, Lcom/oppo/model/md2/MdModel;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v9    # "mdModel":Lcom/oppo/model/md2/MdModel;
    .local v0, "mdModel":Lcom/oppo/model/md2/MdModel;
    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    .line 204
    :try_start_1
    invoke-virtual/range {v0 .. v6}, Lcom/oppo/model/md2/MdModel;->Load(Ljava/io/InputStream;ZZZZI)Z

    move-result v2

    if-nez v2, :cond_0

    .line 206
    const-string v2, "Oppo3DGLRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Load Model Failed. modelName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/4 v2, 0x0

    .line 216
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v7    # "am":Landroid/content/res/AssetManager;
    :goto_0
    return-object v2

    .line 210
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local v7    # "am":Landroid/content/res/AssetManager;
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v0

    .line 216
    goto :goto_0

    .line 211
    .end local v0    # "mdModel":Lcom/oppo/model/md2/MdModel;
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v7    # "am":Landroid/content/res/AssetManager;
    .restart local v9    # "mdModel":Lcom/oppo/model/md2/MdModel;
    :catch_0
    move-exception v8

    move-object v0, v9

    .line 212
    .end local v9    # "mdModel":Lcom/oppo/model/md2/MdModel;
    .restart local v0    # "mdModel":Lcom/oppo/model/md2/MdModel;
    .local v8, "ex":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 213
    const/4 v2, 0x0

    goto :goto_0

    .line 211
    .end local v8    # "ex":Ljava/lang/Exception;
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local v7    # "am":Landroid/content/res/AssetManager;
    :catch_1
    move-exception v8

    goto :goto_1
.end method

.method public static LoadMsModel(Landroid/content/Context;Ljava/lang/String;)Lcom/oppo/model/ms3d/MsModel;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "modelName"    # Ljava/lang/String;

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/oppo/widget/Oppo3DGLRenderer;->LoadMsModel(Landroid/content/Context;Ljava/lang/String;Z)Lcom/oppo/model/ms3d/MsModel;

    move-result-object v0

    return-object v0
.end method

.method public static LoadMsModel(Landroid/content/Context;Ljava/lang/String;Z)Lcom/oppo/model/ms3d/MsModel;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "modelName"    # Ljava/lang/String;
    .param p2, "enableShadow"    # Z

    .prologue
    const/4 v5, 0x0

    .line 237
    const/4 v3, 0x0

    .line 240
    .local v3, "msModel":Lcom/oppo/model/ms3d/MsModel;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 241
    .local v0, "am":Landroid/content/res/AssetManager;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "model/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 243
    .local v2, "is":Ljava/io/InputStream;
    new-instance v4, Lcom/oppo/model/ms3d/MsModel;

    invoke-direct {v4}, Lcom/oppo/model/ms3d/MsModel;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .end local v3    # "msModel":Lcom/oppo/model/ms3d/MsModel;
    .local v4, "msModel":Lcom/oppo/model/ms3d/MsModel;
    :try_start_1
    invoke-virtual {v4, v2, p2}, Lcom/oppo/model/ms3d/MsModel;->Load(Ljava/io/InputStream;Z)Z

    move-result v6

    if-nez v6, :cond_0

    .line 246
    const-string v6, "Oppo3DGLRenderer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Load Model Failed. modelName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .end local v4    # "msModel":Lcom/oppo/model/ms3d/MsModel;
    .restart local v3    # "msModel":Lcom/oppo/model/ms3d/MsModel;
    move-object v4, v5

    .line 256
    .end local v0    # "am":Landroid/content/res/AssetManager;
    .end local v2    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v4

    .line 250
    .end local v3    # "msModel":Lcom/oppo/model/ms3d/MsModel;
    .restart local v0    # "am":Landroid/content/res/AssetManager;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v4    # "msModel":Lcom/oppo/model/ms3d/MsModel;
    :cond_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .line 256
    .end local v4    # "msModel":Lcom/oppo/model/ms3d/MsModel;
    .restart local v3    # "msModel":Lcom/oppo/model/ms3d/MsModel;
    goto :goto_0

    .line 251
    .end local v0    # "am":Landroid/content/res/AssetManager;
    .end local v2    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 252
    .local v1, "ex":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v5

    .line 253
    goto :goto_0

    .line 251
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v3    # "msModel":Lcom/oppo/model/ms3d/MsModel;
    .restart local v0    # "am":Landroid/content/res/AssetManager;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v4    # "msModel":Lcom/oppo/model/ms3d/MsModel;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4    # "msModel":Lcom/oppo/model/ms3d/MsModel;
    .restart local v3    # "msModel":Lcom/oppo/model/ms3d/MsModel;
    goto :goto_1
.end method

.method public static ReleaseModel(Lcom/oppo/model/md2/MdModel;)V
    .locals 0
    .param p0, "mdModel"    # Lcom/oppo/model/md2/MdModel;

    .prologue
    .line 268
    if-eqz p0, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/oppo/model/md2/MdModel;->releaseModel()V

    .line 271
    :cond_0
    return-void
.end method

.method public static ReleaseModel(Lcom/oppo/model/ms3d/MsModel;)V
    .locals 0
    .param p0, "msModel"    # Lcom/oppo/model/ms3d/MsModel;

    .prologue
    .line 282
    if-eqz p0, :cond_0

    .line 283
    invoke-virtual {p0}, Lcom/oppo/model/ms3d/MsModel;->releaseModel()V

    .line 285
    :cond_0
    return-void
.end method

.method private clearUpdateTexBuffer()V
    .locals 3

    .prologue
    .line 723
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->TEXTURE_BUFFER_LEN:I

    if-ge v0, v1, :cond_1

    .line 726
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mUpdateTexBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;->index:I

    .line 727
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mUpdateTexBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 728
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mUpdateTexBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 729
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mUpdateTexBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;->bitmap:Landroid/graphics/Bitmap;

    .line 723
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 732
    :cond_1
    return-void
.end method

.method private findTextureInfo(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 602
    const/4 v1, 0x0

    .line 604
    .local v1, "textureId":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->TEXTURE_BUFFER_LEN:I

    if-ge v0, v2, :cond_0

    .line 605
    iget-object v2, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;->index:I

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;->textureId:I

    if-eqz v2, :cond_1

    .line 606
    iget-object v2, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

    aget-object v2, v2, v0

    iget v1, v2, Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;->textureId:I

    .line 611
    :cond_0
    return v1

    .line 604
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private insertTextureInfo(Ljavax/microedition/khronos/opengles/GL10;ILandroid/graphics/Bitmap;)I
    .locals 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "index"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 623
    const/4 v1, 0x0

    .line 624
    .local v1, "insert":Z
    const/4 v2, 0x0

    .line 626
    .local v2, "textureId":I
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mContext:Landroid/content/Context;

    const/16 v4, 0x2100

    invoke-static {v3, p1, p3, v4}, Lcom/oppo/model/lib/TextureFactory;->getTexture(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;I)I

    move-result v2

    .line 628
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 629
    const/4 p3, 0x0

    .line 631
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->TEXTURE_BUFFER_LEN:I

    if-ge v0, v3, :cond_0

    .line 633
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;->textureId:I

    if-nez v3, :cond_2

    .line 634
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

    aget-object v3, v3, v0

    iput v2, v3, Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;->textureId:I

    .line 635
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

    aget-object v3, v3, v0

    iput p2, v3, Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;->index:I

    .line 636
    const/4 v1, 0x1

    .line 641
    :cond_0
    if-nez v1, :cond_1

    .line 642
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

    iget v4, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBufferIndex:I

    aget-object v3, v3, v4

    iget v3, v3, Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;->textureId:I

    invoke-static {p1, v3}, Lcom/oppo/model/lib/TextureFactory;->deleteTexture(Ljavax/microedition/khronos/opengles/GL10;I)Z

    .line 643
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

    iget v4, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBufferIndex:I

    aget-object v3, v3, v4

    iput v2, v3, Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;->textureId:I

    .line 644
    iget-object v3, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

    iget v4, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBufferIndex:I

    aget-object v3, v3, v4

    iput p2, v3, Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;->index:I

    .line 646
    iget v3, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBufferIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBufferIndex:I

    .line 647
    iget v3, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBufferIndex:I

    iget v4, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->TEXTURE_BUFFER_LEN:I

    if-lt v3, v4, :cond_1

    .line 648
    const/4 v3, 0x0

    iput v3, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBufferIndex:I

    .line 651
    :cond_1
    return v2

    .line 631
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private insertUpdateTexInfo(ILandroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x1

    .line 672
    const/4 v1, 0x0

    .line 673
    .local v1, "insert":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->TEXTURE_BUFFER_LEN:I

    if-ge v0, v2, :cond_0

    .line 674
    iget-object v2, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mUpdateTexBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;->index:I

    if-ne v2, p1, :cond_2

    iget-object v2, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mUpdateTexBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 675
    iget-object v2, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mUpdateTexBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 676
    iget-object v2, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mUpdateTexBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;->bitmap:Landroid/graphics/Bitmap;

    .line 677
    iget-object v2, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mUpdateTexBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    aget-object v2, v2, v0

    iput-object p2, v2, Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;->bitmap:Landroid/graphics/Bitmap;

    .line 678
    const/4 v1, 0x1

    .line 679
    iput-boolean v4, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mNeedUpdateTex:Z

    .line 684
    :cond_0
    if-nez v1, :cond_1

    .line 685
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->TEXTURE_BUFFER_LEN:I

    if-ge v0, v2, :cond_1

    .line 686
    iget-object v2, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mUpdateTexBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;->index:I

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mUpdateTexBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;->bitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_3

    .line 687
    iget-object v2, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mUpdateTexBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    aget-object v2, v2, v0

    iput p1, v2, Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;->index:I

    .line 688
    iget-object v2, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mUpdateTexBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    aget-object v2, v2, v0

    iput-object p2, v2, Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;->bitmap:Landroid/graphics/Bitmap;

    .line 689
    iput-boolean v4, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mNeedUpdateTex:Z

    .line 694
    :cond_1
    return-void

    .line 673
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 685
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private updateTextureBuffer(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v3, 0x0

    .line 702
    iget-boolean v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mNeedUpdateTex:Z

    if-nez v1, :cond_0

    .line 717
    :goto_0
    return-void

    .line 706
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->TEXTURE_BUFFER_LEN:I

    if-ge v0, v1, :cond_2

    .line 708
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mUpdateTexBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 709
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mUpdateTexBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;->index:I

    iget-object v2, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mUpdateTexBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v1, v2}, Lcom/oppo/widget/Oppo3DGLRenderer;->insertTextureInfo(Ljavax/microedition/khronos/opengles/GL10;ILandroid/graphics/Bitmap;)I

    .line 710
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mUpdateTexBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    aget-object v1, v1, v0

    iput v3, v1, Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;->index:I

    .line 711
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mUpdateTexBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 712
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mUpdateTexBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;->bitmap:Landroid/graphics/Bitmap;

    .line 706
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 716
    :cond_2
    iput-boolean v3, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mNeedUpdateTex:Z

    goto :goto_0
.end method


# virtual methods
.method protected bindMaterial(Ljavax/microedition/khronos/opengles/GL10;Lcom/oppo/model/ms3d/MsModel;I)V
    .locals 8
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "msModel"    # Lcom/oppo/model/ms3d/MsModel;
    .param p3, "materialIndex"    # I

    .prologue
    const/16 v7, 0xbc0

    const/4 v6, 0x1

    const/16 v5, 0x408

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 398
    if-ltz p3, :cond_0

    invoke-virtual {p2}, Lcom/oppo/model/ms3d/MsModel;->getNumMaterials()I

    move-result v1

    if-lt p3, v1, :cond_1

    .line 399
    :cond_0
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDepthMask(Z)V

    .line 400
    invoke-interface {p1, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 401
    const/16 v1, 0x2802

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 402
    const/16 v1, 0x2803

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 403
    invoke-interface {p1, v3, v3, v3, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 404
    const/16 v1, 0xde1

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 405
    iput-boolean v4, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mEnableTexFlag:Z

    .line 406
    const/16 v1, 0xbe2

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 407
    const/16 v1, 0xde1

    invoke-interface {p1, v1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 408
    const/16 v1, 0x1200

    sget-object v2, Lcom/oppo/widget/Oppo3DGLRenderer;->mAmbient:[F

    invoke-interface {p1, v5, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    .line 409
    const/16 v1, 0x1201

    sget-object v2, Lcom/oppo/widget/Oppo3DGLRenderer;->mDiffuse:[F

    invoke-interface {p1, v5, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    .line 410
    const/16 v1, 0x1202

    sget-object v2, Lcom/oppo/widget/Oppo3DGLRenderer;->mSpecular:[F

    invoke-interface {p1, v5, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    .line 411
    const/16 v1, 0x1600

    sget-object v2, Lcom/oppo/widget/Oppo3DGLRenderer;->mEmission:[F

    invoke-interface {p1, v5, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    .line 412
    const/16 v1, 0x1601

    const/4 v2, 0x0

    invoke-interface {p1, v5, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialf(IIF)V

    .line 444
    :goto_0
    return-void

    .line 414
    :cond_1
    invoke-virtual {p2, p3}, Lcom/oppo/model/ms3d/MsModel;->getMaterial(I)Lcom/oppo/model/ms3d/MsMaterial;

    move-result-object v0

    .line 416
    .local v0, "msMaterial":Lcom/oppo/model/ms3d/MsMaterial;
    invoke-virtual {v0}, Lcom/oppo/model/ms3d/MsMaterial;->getTransparency()F

    move-result v1

    cmpg-float v1, v1, v3

    if-ltz v1, :cond_2

    invoke-virtual {v0}, Lcom/oppo/model/ms3d/MsMaterial;->getMode()S

    move-result v1

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_5

    .line 418
    :cond_2
    const/16 v1, 0xbe2

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 419
    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-interface {p1, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 420
    invoke-virtual {v0}, Lcom/oppo/model/ms3d/MsMaterial;->getTransparency()F

    move-result v1

    invoke-interface {p1, v3, v3, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 421
    const/16 v1, 0xb52

    invoke-interface {p1, v1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelx(II)V

    .line 423
    invoke-virtual {p2}, Lcom/oppo/model/ms3d/MsModel;->getTransparencyMode()I

    move-result v1

    if-nez v1, :cond_4

    .line 424
    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDepthMask(Z)V

    .line 425
    invoke-interface {p1, v7}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 426
    const/16 v1, 0x204

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glAlphaFunc(IF)V

    .line 438
    :cond_3
    :goto_1
    const/16 v1, 0x1200

    invoke-virtual {v0}, Lcom/oppo/model/ms3d/MsMaterial;->getAmbient()[F

    move-result-object v2

    invoke-interface {p1, v5, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    .line 439
    const/16 v1, 0x1201

    invoke-virtual {v0}, Lcom/oppo/model/ms3d/MsMaterial;->getDiffuse()[F

    move-result-object v2

    invoke-interface {p1, v5, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    .line 440
    const/16 v1, 0x1202

    invoke-virtual {v0}, Lcom/oppo/model/ms3d/MsMaterial;->getSpecular()[F

    move-result-object v2

    invoke-interface {p1, v5, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    .line 441
    const/16 v1, 0x1600

    invoke-virtual {v0}, Lcom/oppo/model/ms3d/MsMaterial;->getEmissive()[F

    move-result-object v2

    invoke-interface {p1, v5, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    .line 442
    const/16 v1, 0x1601

    invoke-virtual {v0}, Lcom/oppo/model/ms3d/MsMaterial;->getShininess()F

    move-result v2

    invoke-interface {p1, v5, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialf(IIF)V

    goto :goto_0

    .line 427
    :cond_4
    invoke-virtual {p2}, Lcom/oppo/model/ms3d/MsModel;->getTransparencyMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 428
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDepthMask(Z)V

    .line 429
    invoke-interface {p1, v7}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 430
    const/16 v1, 0x204

    invoke-virtual {p2}, Lcom/oppo/model/ms3d/MsModel;->getAlphaRef()F

    move-result v2

    invoke-interface {p1, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glAlphaFunc(IF)V

    goto :goto_1

    .line 433
    :cond_5
    const/16 v1, 0xbe2

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 434
    invoke-interface {p1, v3, v3, v3, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 435
    const/16 v1, 0xb52

    invoke-interface {p1, v1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelx(II)V

    goto :goto_1
.end method

.method public clearTextureInfo(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 586
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->TEXTURE_BUFFER_LEN:I

    if-ge v0, v1, :cond_1

    .line 587
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;->index:I

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;->textureId:I

    if-eqz v1, :cond_0

    .line 588
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;->textureId:I

    invoke-static {v1}, Lcom/oppo/model/lib/TextureFactory;->deleteTexture(I)Z

    .line 589
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

    aget-object v1, v1, v0

    iput v2, v1, Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;->textureId:I

    .line 590
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

    aget-object v1, v1, v0

    iput v2, v1, Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;->index:I

    .line 586
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 593
    :cond_1
    return-void
.end method

.method public clearTextureInfoBuffer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 571
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->TEXTURE_BUFFER_LEN:I

    if-ge v0, v1, :cond_1

    .line 572
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;->textureId:I

    if-lez v1, :cond_0

    .line 573
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;->textureId:I

    invoke-static {v1}, Lcom/oppo/model/lib/TextureFactory;->deleteTexture(I)Z

    .line 575
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

    aget-object v1, v1, v0

    iput v2, v1, Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;->textureId:I

    .line 576
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

    aget-object v1, v1, v0

    iput v2, v1, Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;->index:I

    .line 571
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 578
    :cond_1
    return-void
.end method

.method protected disableClientState(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 519
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 520
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 521
    const v0, 0x8075

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 522
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 523
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mEnableTexFlag:Z

    .line 524
    return-void
.end method

.method protected disableTexture(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 482
    iget-boolean v0, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mEnableTexFlag:Z

    if-eqz v0, :cond_0

    .line 483
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 484
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 485
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mEnableTexFlag:Z

    .line 487
    :cond_0
    return-void
.end method

.method protected drawArraysData(Ljavax/microedition/khronos/opengles/GL10;ZILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "enableLight"    # Z
    .param p3, "trangles"    # I
    .param p4, "normalBuf"    # Ljava/nio/FloatBuffer;
    .param p5, "vertexBuf"    # Ljava/nio/FloatBuffer;

    .prologue
    const/16 v1, 0x1406

    const/4 v2, 0x0

    .line 496
    if-nez p5, :cond_1

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    if-eqz p2, :cond_2

    .line 501
    if-eqz p4, :cond_0

    .line 505
    invoke-interface {p1, v1, v2, p4}, Ljavax/microedition/khronos/opengles/GL10;->glNormalPointer(IILjava/nio/Buffer;)V

    .line 508
    :cond_2
    const/4 v0, 0x3

    invoke-interface {p1, v0, v1, v2, p5}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 510
    const/4 v0, 0x4

    mul-int/lit8 v1, p3, 0x3

    invoke-interface {p1, v0, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    goto :goto_0
.end method

.method protected enableLighting(Ljavax/microedition/khronos/opengles/GL10;Z)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "enable"    # Z

    .prologue
    const/16 v0, 0xb50

    const/16 v3, 0x4000

    .line 380
    if-eqz p2, :cond_0

    .line 381
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 382
    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 383
    const/16 v0, 0x1203

    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mLightPos:[F

    const/4 v2, 0x0

    invoke-interface {p1, v3, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    .line 388
    :goto_0
    return-void

    .line 385
    :cond_0
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 386
    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto :goto_0
.end method

.method protected enableTexture(Ljavax/microedition/khronos/opengles/GL10;IILjava/nio/FloatBuffer;)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "textureId"    # I
    .param p3, "texEnv"    # I
    .param p4, "texCoordBuf"    # Ljava/nio/FloatBuffer;

    .prologue
    const/16 v1, 0xde1

    .line 455
    if-gtz p2, :cond_1

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    if-eqz p4, :cond_0

    .line 461
    const/16 v0, 0x1e01

    if-eq p3, v0, :cond_2

    const/16 v0, 0x2100

    if-ne p3, v0, :cond_0

    .line 465
    :cond_2
    iget-boolean v0, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mEnableTexFlag:Z

    if-nez v0, :cond_3

    .line 466
    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 467
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 468
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mEnableTexFlag:Z

    .line 471
    :cond_3
    invoke-interface {p1, v1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 472
    const/16 v0, 0x2300

    const/16 v1, 0x2200

    int-to-float v2, p3

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 473
    const/4 v0, 0x2

    const/16 v1, 0x1406

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    goto :goto_0
.end method

.method protected getTextureId(Ljavax/microedition/khronos/opengles/GL10;I)I
    .locals 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 555
    const/4 v1, 0x0

    .line 556
    .local v1, "textureId":I
    invoke-direct {p0, p2}, Lcom/oppo/widget/Oppo3DGLRenderer;->findTextureInfo(I)I

    move-result v1

    .line 558
    if-nez v1, :cond_0

    .line 559
    iget-object v2, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mOppo3DGLView:Lcom/oppo/widget/Oppo3DGLView;

    sget-object v3, Lcom/oppo/widget/Oppo3DGLView$EventCode;->EVENT_GET_TEXTURE:Lcom/oppo/widget/Oppo3DGLView$EventCode;

    invoke-virtual {v2, v3, p2, v4, v4}, Lcom/oppo/widget/Oppo3DGLView;->invokeOn3DEvent(Lcom/oppo/widget/Oppo3DGLView$EventCode;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 562
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/Oppo3DGLRenderer;->insertTextureInfo(Ljavax/microedition/khronos/opengles/GL10;ILandroid/graphics/Bitmap;)I

    move-result v1

    .line 564
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    return v1
.end method

.method protected initTextureInfo(Lcom/oppo/model/ms3d/MsModel;[Ljava/lang/String;[I)Z
    .locals 14
    .param p1, "msModel"    # Lcom/oppo/model/ms3d/MsModel;
    .param p2, "nameArray"    # [Ljava/lang/String;
    .param p3, "indexArray"    # [I

    .prologue
    .line 743
    if-nez p1, :cond_0

    .line 744
    const-string v11, "Oppo3DGLRenderer"

    const-string v12, "initTextureInfo msModel null."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    const/4 v11, 0x0

    .line 806
    :goto_0
    return v11

    .line 747
    :cond_0
    if-nez p2, :cond_1

    .line 748
    const-string v11, "Oppo3DGLRenderer"

    const-string v12, "initTextureInfo nameArray null."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    const/4 v11, 0x0

    goto :goto_0

    .line 751
    :cond_1
    if-nez p3, :cond_2

    .line 752
    const-string v11, "Oppo3DGLRenderer"

    const-string v12, "initTextureInfo indexArray null."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    const/4 v11, 0x0

    goto :goto_0

    .line 755
    :cond_2
    move-object/from16 v0, p2

    array-length v11, v0

    move-object/from16 v0, p3

    array-length v12, v0

    if-eq v11, v12, :cond_3

    .line 756
    const-string v11, "Oppo3DGLRenderer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "initTextureInfo nameArray.length:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    array-length v13, v0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " != indexArray.length:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    array-length v13, v0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    const/4 v11, 0x0

    goto :goto_0

    .line 761
    :cond_3
    const/4 v2, 0x0

    .line 762
    .local v2, "i":I
    const/4 v3, 0x0

    .line 763
    .local v3, "j":I
    const/4 v8, -0x1

    .line 764
    .local v8, "textureIndex":I
    const/4 v5, 0x0

    .line 765
    .local v5, "materialIndex":I
    const/4 v10, 0x0

    .line 766
    .local v10, "textureName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 767
    .local v6, "msGroup":Lcom/oppo/model/ms3d/MsGroup;
    invoke-virtual {p1}, Lcom/oppo/model/ms3d/MsModel;->getNumGroups()I

    move-result v1

    .line 768
    .local v1, "groups":I
    move-object/from16 v0, p2

    array-length v4, v0

    .line 770
    .local v4, "length":I
    const/4 v7, 0x0

    .line 771
    .local v7, "size":I
    invoke-virtual {p1}, Lcom/oppo/model/ms3d/MsModel;->getTextureList()Ljava/util/ArrayList;

    move-result-object v9

    .line 772
    .local v9, "textureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oppo/model/lib/TextureInfo;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 775
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v7, :cond_4

    .line 776
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/oppo/model/lib/TextureInfo;

    invoke-virtual {v11}, Lcom/oppo/model/lib/TextureInfo;->getTextureName()Ljava/lang/String;

    move-result-object v10

    .line 775
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 781
    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_8

    .line 782
    const/4 v8, -0x1

    .line 783
    invoke-virtual {p1, v2}, Lcom/oppo/model/ms3d/MsModel;->getGroup(I)Lcom/oppo/model/ms3d/MsGroup;

    move-result-object v6

    .line 784
    invoke-virtual {v6}, Lcom/oppo/model/ms3d/MsGroup;->getMaterialIndex()B

    move-result v5

    .line 787
    const/4 v11, -0x1

    if-eq v5, v11, :cond_7

    .line 788
    invoke-virtual {p1, v5}, Lcom/oppo/model/ms3d/MsModel;->getMaterial(I)Lcom/oppo/model/ms3d/MsMaterial;

    move-result-object v11

    invoke-virtual {v11}, Lcom/oppo/model/ms3d/MsMaterial;->getTexture()Ljava/lang/String;

    move-result-object v10

    .line 791
    if-eqz v10, :cond_5

    .line 792
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v4, :cond_5

    .line 793
    aget-object v11, p2, v3

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 794
    aget v8, p3, v3

    .line 801
    :cond_5
    invoke-virtual {v6, v8}, Lcom/oppo/model/ms3d/MsGroup;->setTextureIndex(I)V

    .line 781
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 792
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 803
    :cond_7
    const/4 v11, -0x1

    invoke-virtual {v6, v11}, Lcom/oppo/model/ms3d/MsGroup;->setTextureIndex(I)V

    goto :goto_4

    .line 806
    :cond_8
    const/4 v11, 0x1

    goto/16 :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 358
    invoke-direct {p0}, Lcom/oppo/widget/Oppo3DGLRenderer;->clearUpdateTexBuffer()V

    .line 359
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 351
    const/16 v0, 0x4100

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 352
    invoke-direct {p0, p1}, Lcom/oppo/widget/Oppo3DGLRenderer;->updateTextureBuffer(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 353
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v3, 0x0

    .line 325
    int-to-float v1, p2

    int-to-float v2, p3

    div-float v0, v1, v2

    .line 327
    .local v0, "radio":F
    invoke-interface {p1, v3, v3, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 329
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mViewport:[I

    aput v3, v1, v3

    .line 330
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mViewport:[I

    const/4 v2, 0x1

    aput v3, v1, v2

    .line 331
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mViewport:[I

    const/4 v2, 0x2

    aput p2, v1, v2

    .line 332
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mViewport:[I

    const/4 v2, 0x3

    aput p3, v1, v2

    .line 334
    const/16 v1, 0x1701

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 335
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 336
    const/high16 v1, 0x42340000    # 45.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x459c4000    # 5000.0f

    iget-object v4, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mMatProject:Lcom/oppo/model/lib/Matrix4f;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/oppo/model/lib/Matrix4f;->gluPersective(FFFFLcom/oppo/model/lib/Matrix4f;)V

    .line 338
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mMatProject:Lcom/oppo/model/lib/Matrix4f;

    invoke-virtual {v1}, Lcom/oppo/model/lib/Matrix4f;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf(Ljava/nio/FloatBuffer;)V

    .line 339
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mMatProject:Lcom/oppo/model/lib/Matrix4f;

    iget-object v2, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mMatrixProjectArray:[F

    invoke-virtual {v1, v2}, Lcom/oppo/model/lib/Matrix4f;->fillFloatArray([F)V

    .line 341
    const/16 v1, 0x1700

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 342
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/4 v2, 0x0

    .line 299
    const/16 v0, 0xbd0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 300
    const/16 v0, 0xc50

    const/16 v1, 0x1102

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 301
    invoke-interface {p1, v2, v2, v2, v2}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 302
    const/16 v0, 0x1d01

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 303
    const/16 v0, 0x900

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 304
    const/16 v0, 0xb44

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 305
    const/16 v0, 0x405

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    .line 306
    const/16 v0, 0xb71

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 307
    const/16 v0, 0xb50

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 308
    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 310
    invoke-virtual {p0}, Lcom/oppo/widget/Oppo3DGLRenderer;->clearTextureInfoBuffer()V

    .line 311
    return-void
.end method

.method public setTextureBufferSize(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 818
    invoke-direct {p0}, Lcom/oppo/widget/Oppo3DGLRenderer;->clearUpdateTexBuffer()V

    .line 819
    iput p1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->TEXTURE_BUFFER_LEN:I

    .line 821
    iget v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->TEXTURE_BUFFER_LEN:I

    new-array v1, v1, [Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

    iput-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

    .line 823
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->TEXTURE_BUFFER_LEN:I

    if-ge v0, v1, :cond_0

    .line 824
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mTextureInfoBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

    new-instance v2, Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;

    invoke-direct {v2, p0}, Lcom/oppo/widget/Oppo3DGLRenderer$TextureInfoMap;-><init>(Lcom/oppo/widget/Oppo3DGLRenderer;)V

    aput-object v2, v1, v0

    .line 823
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 827
    :cond_0
    iget v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->TEXTURE_BUFFER_LEN:I

    new-array v1, v1, [Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    iput-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mUpdateTexBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    .line 828
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->TEXTURE_BUFFER_LEN:I

    if-ge v0, v1, :cond_1

    .line 829
    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mUpdateTexBuffer:[Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    new-instance v2, Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;

    invoke-direct {v2, p0}, Lcom/oppo/widget/Oppo3DGLRenderer$UpdateTexMap;-><init>(Lcom/oppo/widget/Oppo3DGLRenderer;)V

    aput-object v2, v1, v0

    .line 828
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 831
    :cond_1
    return-void
.end method

.method protected setUpCamera(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 367
    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 368
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 369
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mvEye:Lcom/oppo/model/lib/Vector3f;

    iget-object v1, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mvCenter:Lcom/oppo/model/lib/Vector3f;

    sget-object v2, Lcom/oppo/model/lib/ModelUtils;->UP_DIRECT:Lcom/oppo/model/lib/Vector3f;

    iget-object v3, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mMatView:Lcom/oppo/model/lib/Matrix4f;

    invoke-static {v0, v1, v2, v3}, Lcom/oppo/model/lib/Matrix4f;->gluLookAt(Lcom/oppo/model/lib/Vector3f;Lcom/oppo/model/lib/Vector3f;Lcom/oppo/model/lib/Vector3f;Lcom/oppo/model/lib/Matrix4f;)V

    .line 370
    iget-object v0, p0, Lcom/oppo/widget/Oppo3DGLRenderer;->mMatView:Lcom/oppo/model/lib/Matrix4f;

    invoke-virtual {v0}, Lcom/oppo/model/lib/Matrix4f;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf(Ljava/nio/FloatBuffer;)V

    .line 371
    return-void
.end method

.method protected updateRenderBuffer(Lcom/oppo/model/ms3d/MsModel;FZFF)V
    .locals 1
    .param p1, "msModel"    # Lcom/oppo/model/ms3d/MsModel;
    .param p2, "curFrame"    # F
    .param p3, "enableLight"    # Z
    .param p4, "scaleX"    # F
    .param p5, "scaleY"    # F

    .prologue
    const/4 v0, 0x1

    .line 537
    if-nez p1, :cond_0

    .line 544
    :goto_0
    return-void

    .line 541
    :cond_0
    invoke-virtual {p1, p2}, Lcom/oppo/model/ms3d/MsModel;->setFrame(F)V

    .line 542
    invoke-virtual {p1, v0}, Lcom/oppo/model/ms3d/MsModel;->setDirtFlag(I)V

    .line 543
    if-eqz p3, :cond_1

    :goto_1
    invoke-virtual {p1, v0, p4, p5}, Lcom/oppo/model/ms3d/MsModel;->fillRenderBuffer(IFF)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public updateTexture(ILandroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 661
    invoke-virtual {p0, p1}, Lcom/oppo/widget/Oppo3DGLRenderer;->clearTextureInfo(I)V

    .line 662
    invoke-direct {p0, p1, p2}, Lcom/oppo/widget/Oppo3DGLRenderer;->insertUpdateTexInfo(ILandroid/graphics/Bitmap;)V

    .line 663
    return-void
.end method
