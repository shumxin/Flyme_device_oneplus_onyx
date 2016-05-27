.class public Lcom/oppo/model/lib/TextureInfo;
.super Ljava/lang/Object;
.source "TextureInfo.java"


# instance fields
.field private mTextureId:I

.field private mTextureIndex:I

.field private mTextureName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTextureId()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/oppo/model/lib/TextureInfo;->mTextureId:I

    return v0
.end method

.method public getTextureIndex()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/oppo/model/lib/TextureInfo;->mTextureIndex:I

    return v0
.end method

.method public getTextureName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/oppo/model/lib/TextureInfo;->mTextureName:Ljava/lang/String;

    return-object v0
.end method

.method public setTextureId(I)V
    .locals 0
    .param p1, "textureId"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/oppo/model/lib/TextureInfo;->mTextureId:I

    .line 57
    return-void
.end method

.method public setTextureIndex(I)V
    .locals 0
    .param p1, "textureIndex"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/oppo/model/lib/TextureInfo;->mTextureIndex:I

    .line 75
    return-void
.end method

.method public setTextureName(Ljava/lang/String;)V
    .locals 0
    .param p1, "textureName"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/oppo/model/lib/TextureInfo;->mTextureName:Ljava/lang/String;

    .line 39
    return-void
.end method
