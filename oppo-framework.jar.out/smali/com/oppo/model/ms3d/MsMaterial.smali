.class public Lcom/oppo/model/ms3d/MsMaterial;
.super Ljava/lang/Object;
.source "MsMaterial.java"


# instance fields
.field private mAlphamap:Ljava/lang/String;

.field private mAmbient:[F

.field private mComment:[B

.field private mDiffuse:[F

.field private mEmissive:[F

.field private mId:I

.field private mMode:S

.field private mName:Ljava/lang/String;

.field private mShininess:F

.field private mSpecular:[F

.field private mTexture:Ljava/lang/String;

.field private mTransparency:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlphamap()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/oppo/model/ms3d/MsMaterial;->mAlphamap:Ljava/lang/String;

    return-object v0
.end method

.method public getAmbient()[F
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/oppo/model/ms3d/MsMaterial;->mAmbient:[F

    return-object v0
.end method

.method public getComment()[B
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/oppo/model/ms3d/MsMaterial;->mComment:[B

    return-object v0
.end method

.method public getDiffuse()[F
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/oppo/model/ms3d/MsMaterial;->mDiffuse:[F

    return-object v0
.end method

.method public getEmissive()[F
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/oppo/model/ms3d/MsMaterial;->mEmissive:[F

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/oppo/model/ms3d/MsMaterial;->mId:I

    return v0
.end method

.method public getMode()S
    .locals 1

    .prologue
    .line 180
    iget-short v0, p0, Lcom/oppo/model/ms3d/MsMaterial;->mMode:S

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/oppo/model/ms3d/MsMaterial;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getShininess()F
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/oppo/model/ms3d/MsMaterial;->mShininess:F

    return v0
.end method

.method public getSpecular()[F
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/oppo/model/ms3d/MsMaterial;->mSpecular:[F

    return-object v0
.end method

.method public getTexture()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/oppo/model/ms3d/MsMaterial;->mTexture:Ljava/lang/String;

    return-object v0
.end method

.method public getTransparency()F
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/oppo/model/ms3d/MsMaterial;->mTransparency:F

    return v0
.end method

.method public setAlphamap(Ljava/lang/String;)V
    .locals 0
    .param p1, "alphamap"    # Ljava/lang/String;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/oppo/model/ms3d/MsMaterial;->mAlphamap:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setAmbient([F)V
    .locals 0
    .param p1, "ambient"    # [F

    .prologue
    .line 63
    iput-object p1, p0, Lcom/oppo/model/ms3d/MsMaterial;->mAmbient:[F

    .line 64
    return-void
.end method

.method public setComment([B)V
    .locals 0
    .param p1, "comment"    # [B

    .prologue
    .line 243
    iput-object p1, p0, Lcom/oppo/model/ms3d/MsMaterial;->mComment:[B

    .line 244
    return-void
.end method

.method public setDiffuse([F)V
    .locals 0
    .param p1, "diffuse"    # [F

    .prologue
    .line 81
    iput-object p1, p0, Lcom/oppo/model/ms3d/MsMaterial;->mDiffuse:[F

    .line 82
    return-void
.end method

.method public setEmissive([F)V
    .locals 0
    .param p1, "emissive"    # [F

    .prologue
    .line 117
    iput-object p1, p0, Lcom/oppo/model/ms3d/MsMaterial;->mEmissive:[F

    .line 118
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 225
    iput p1, p0, Lcom/oppo/model/ms3d/MsMaterial;->mId:I

    .line 226
    return-void
.end method

.method public setMode(S)V
    .locals 0
    .param p1, "mode"    # S

    .prologue
    .line 171
    iput-short p1, p0, Lcom/oppo/model/ms3d/MsMaterial;->mMode:S

    .line 172
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/oppo/model/ms3d/MsMaterial;->mName:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setShininess(F)V
    .locals 0
    .param p1, "shininess"    # F

    .prologue
    .line 135
    iput p1, p0, Lcom/oppo/model/ms3d/MsMaterial;->mShininess:F

    .line 136
    return-void
.end method

.method public setSpecular([F)V
    .locals 0
    .param p1, "specular"    # [F

    .prologue
    .line 99
    iput-object p1, p0, Lcom/oppo/model/ms3d/MsMaterial;->mSpecular:[F

    .line 100
    return-void
.end method

.method public setTexture(Ljava/lang/String;)V
    .locals 0
    .param p1, "texture"    # Ljava/lang/String;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/oppo/model/ms3d/MsMaterial;->mTexture:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setTransparency(F)V
    .locals 0
    .param p1, "transparency"    # F

    .prologue
    .line 153
    iput p1, p0, Lcom/oppo/model/ms3d/MsMaterial;->mTransparency:F

    .line 154
    return-void
.end method
