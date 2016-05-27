.class public Lcom/oppo/model/ms3d/MsGroup;
.super Ljava/lang/Object;
.source "MsGroup.java"


# instance fields
.field private mComment:[B

.field public mCoordBuffer:Ljava/nio/FloatBuffer;

.field public mCoordInit:Z

.field private mFlags:S

.field private mMaterialIndex:B

.field private mName:Ljava/lang/String;

.field public mNormalBuffer:Ljava/nio/FloatBuffer;

.field public mShadowColorBuffer:Ljava/nio/FloatBuffer;

.field public mShadowColorInit:Z

.field public mShadowVertexBuffer:Ljava/nio/FloatBuffer;

.field private mTextureId:I

.field private mTextureIndex:I

.field private mTriangleIndices:[I

.field public mVertexBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComment()[B
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/oppo/model/ms3d/MsGroup;->mComment:[B

    return-object v0
.end method

.method public getCoordBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/oppo/model/ms3d/MsGroup;->mCoordBuffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getFlags()S
    .locals 1

    .prologue
    .line 88
    iget-short v0, p0, Lcom/oppo/model/ms3d/MsGroup;->mFlags:S

    return v0
.end method

.method public getMaterialIndex()B
    .locals 1

    .prologue
    .line 142
    iget-byte v0, p0, Lcom/oppo/model/ms3d/MsGroup;->mMaterialIndex:B

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/oppo/model/ms3d/MsGroup;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNormalBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/oppo/model/ms3d/MsGroup;->mNormalBuffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getTextureId()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/oppo/model/ms3d/MsGroup;->mTextureId:I

    return v0
.end method

.method public getTextureIndex()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/oppo/model/ms3d/MsGroup;->mTextureIndex:I

    return v0
.end method

.method public getTriangleIndices()[I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/oppo/model/ms3d/MsGroup;->mTriangleIndices:[I

    return-object v0
.end method

.method public getVertixBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/oppo/model/ms3d/MsGroup;->mVertexBuffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public setComment([B)V
    .locals 0
    .param p1, "comment"    # [B

    .prologue
    .line 151
    iput-object p1, p0, Lcom/oppo/model/ms3d/MsGroup;->mComment:[B

    .line 152
    return-void
.end method

.method public setCoordBuffer(Ljava/nio/FloatBuffer;)V
    .locals 0
    .param p1, "coordBuffer"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/oppo/model/ms3d/MsGroup;->mCoordBuffer:Ljava/nio/FloatBuffer;

    .line 224
    return-void
.end method

.method public setFlags(S)V
    .locals 0
    .param p1, "flags"    # S

    .prologue
    .line 79
    iput-short p1, p0, Lcom/oppo/model/ms3d/MsGroup;->mFlags:S

    .line 80
    return-void
.end method

.method public setMaterialIndex(B)V
    .locals 0
    .param p1, "materialIndex"    # B

    .prologue
    .line 133
    iput-byte p1, p0, Lcom/oppo/model/ms3d/MsGroup;->mMaterialIndex:B

    .line 134
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/oppo/model/ms3d/MsGroup;->mName:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setNormalBuffer(Ljava/nio/FloatBuffer;)V
    .locals 0
    .param p1, "normalBuffer"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/oppo/model/ms3d/MsGroup;->mNormalBuffer:Ljava/nio/FloatBuffer;

    .line 242
    return-void
.end method

.method public setTextureId(I)V
    .locals 0
    .param p1, "textureId"    # I

    .prologue
    .line 169
    iput p1, p0, Lcom/oppo/model/ms3d/MsGroup;->mTextureId:I

    .line 170
    return-void
.end method

.method public setTextureIndex(I)V
    .locals 0
    .param p1, "textureIndex"    # I

    .prologue
    .line 187
    iput p1, p0, Lcom/oppo/model/ms3d/MsGroup;->mTextureIndex:I

    .line 188
    return-void
.end method

.method public setTriangleIndices([I)V
    .locals 0
    .param p1, "triangleIndices"    # [I

    .prologue
    .line 115
    iput-object p1, p0, Lcom/oppo/model/ms3d/MsGroup;->mTriangleIndices:[I

    .line 116
    return-void
.end method

.method public setVertixBuffer(Ljava/nio/FloatBuffer;)V
    .locals 0
    .param p1, "vertexBuffer"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/oppo/model/ms3d/MsGroup;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 206
    return-void
.end method
