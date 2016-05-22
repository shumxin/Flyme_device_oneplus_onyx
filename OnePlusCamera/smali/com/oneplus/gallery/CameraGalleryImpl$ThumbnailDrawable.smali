.class final Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CameraGalleryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/CameraGalleryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ThumbnailDrawable"
.end annotation


# instance fields
.field private m_IsScrolling:Z

.field private m_LowQualityThumbnail:Landroid/graphics/Bitmap;

.field private final m_Paint:Landroid/graphics/Paint;

.field private final m_SourceRect:Landroid/graphics/Rect;

.field private m_Thumbnail:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 239
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 233
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_Paint:Landroid/graphics/Paint;

    .line 234
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_SourceRect:Landroid/graphics/Rect;

    .line 240
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_Paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 241
    return-void
.end method


# virtual methods
.method public clearThumbnails()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 245
    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_Thumbnail:Landroid/graphics/Bitmap;

    .line 246
    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_LowQualityThumbnail:Landroid/graphics/Bitmap;

    .line 247
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 252
    iget-boolean v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_IsScrolling:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_LowQualityThumbnail:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_LowQualityThumbnail:Landroid/graphics/Bitmap;

    .line 253
    .local v0, "thumb":Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v0, :cond_0

    .line 255
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_SourceRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 256
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_SourceRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 258
    :cond_0
    return-void

    .line 252
    .end local v0    # "thumb":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_Thumbnail:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getLowQualityThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_LowQualityThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 268
    const/4 v0, -0x3

    return v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_Thumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 278
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 282
    return-void
.end method

.method public setLowQualityThumbnail(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    .line 286
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_LowQualityThumbnail:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_0

    .line 288
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_LowQualityThumbnail:Landroid/graphics/Bitmap;

    .line 289
    iget-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_IsScrolling:Z

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->invalidateSelf()V

    .line 292
    :cond_0
    return-void
.end method

.method public setScrollingState(Z)V
    .locals 2
    .param p1, "isScrolling"    # Z

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_IsScrolling:Z

    if-eq v0, p1, :cond_0

    .line 298
    iput-boolean p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_IsScrolling:Z

    .line 299
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_Thumbnail:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_LowQualityThumbnail:Landroid/graphics/Bitmap;

    if-eq v0, v1, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->invalidateSelf()V

    .line 302
    :cond_0
    return-void
.end method

.method public setThumbnail(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    .line 306
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_Thumbnail:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_0

    .line 308
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_Thumbnail:Landroid/graphics/Bitmap;

    .line 309
    iget-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_IsScrolling:Z

    if-nez v0, :cond_0

    .line 310
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->invalidateSelf()V

    .line 312
    :cond_0
    return-void
.end method
