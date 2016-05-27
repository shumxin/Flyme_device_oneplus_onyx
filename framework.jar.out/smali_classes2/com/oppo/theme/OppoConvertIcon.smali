.class public final Lcom/oppo/theme/OppoConvertIcon;
.super Ljava/lang/Object;
.source "OppoConvertIcon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/theme/OppoConvertIcon$IconBgTpye;
    }
.end annotation


# static fields
.field private static final DEBUG_ENABLE:Z = false

.field private static final DEBUG_NORMAL:Z = false

.field private static final IPHONE_STYLE_BG_NAME:Ljava/lang/String; = "iphone_style_bg.png"

.field private static final IPHONE_STYLE_FG_NAME:Ljava/lang/String; = "iphone_style_fg.png"

.field private static final NEW_IPHONE_STYLE_BG_NAME:Ljava/lang/String; = "new_iphone_style_bg.png"

.field private static final NEW_IPHONE_STYLE_MASK:Ljava/lang/String; = "new_iphone_style_mask.png"

.field private static final TAG:Ljava/lang/String; = "OppoConvertIcon"

.field private static drawForeground:Z

.field private static final drawabledirs:[Ljava/lang/String;

.field private static mIconBackground:Landroid/graphics/drawable/Drawable;

.field private static mIconBgTpye:Lcom/oppo/theme/OppoConvertIcon$IconBgTpye;

.field private static mIconForeground:Landroid/graphics/drawable/Drawable;

.field public static mMaskBitmap:Landroid/graphics/Bitmap;

.field private static final sCanvas:Landroid/graphics/Canvas;

.field private static sCoverBackgroundPic:Ljava/lang/String;

.field private static sIconHeight:I

.field private static sIconSize:I

.field private static sIconWidth:I

.field private static sMaskBackgroundPic:Ljava/lang/String;

.field private static sMaskForegroundPic:Ljava/lang/String;

.field private static final sOldBounds:Landroid/graphics/Rect;

.field private static sThemeParamScale:I

.field private static sThemeParamXOffset:I

.field private static sThemeParamYOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 50
    const/16 v0, 0x80

    sput v0, Lcom/oppo/theme/OppoConvertIcon;->sThemeParamScale:I

    .line 51
    sput v2, Lcom/oppo/theme/OppoConvertIcon;->sThemeParamXOffset:I

    .line 52
    sput v2, Lcom/oppo/theme/OppoConvertIcon;->sThemeParamYOffset:I

    .line 54
    sput v1, Lcom/oppo/theme/OppoConvertIcon;->sIconSize:I

    .line 55
    sput v1, Lcom/oppo/theme/OppoConvertIcon;->sIconWidth:I

    .line 56
    sput v1, Lcom/oppo/theme/OppoConvertIcon;->sIconHeight:I

    .line 63
    sput-object v3, Lcom/oppo/theme/OppoConvertIcon;->sMaskBackgroundPic:Ljava/lang/String;

    .line 64
    sput-object v3, Lcom/oppo/theme/OppoConvertIcon;->sMaskForegroundPic:Ljava/lang/String;

    .line 65
    sput-object v3, Lcom/oppo/theme/OppoConvertIcon;->sCoverBackgroundPic:Ljava/lang/String;

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/oppo/theme/OppoConvertIcon;->sOldBounds:Landroid/graphics/Rect;

    .line 68
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/oppo/theme/OppoConvertIcon;->sCanvas:Landroid/graphics/Canvas;

    .line 69
    sput-object v3, Lcom/oppo/theme/OppoConvertIcon;->mIconBackground:Landroid/graphics/drawable/Drawable;

    .line 70
    sput-object v3, Lcom/oppo/theme/OppoConvertIcon;->mIconForeground:Landroid/graphics/drawable/Drawable;

    .line 71
    sput-boolean v2, Lcom/oppo/theme/OppoConvertIcon;->drawForeground:Z

    .line 73
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "res/drawable-hdpi/"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "res/drawable-xhdpi/"

    aput-object v2, v0, v1

    const-string v1, "res/drawable-xxhdpi/"

    aput-object v1, v0, v4

    sput-object v0, Lcom/oppo/theme/OppoConvertIcon;->drawabledirs:[Ljava/lang/String;

    .line 83
    sget-object v0, Lcom/oppo/theme/OppoConvertIcon;->sCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v4}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 95
    sput-object v3, Lcom/oppo/theme/OppoConvertIcon;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 101
    sget-object v0, Lcom/oppo/theme/OppoConvertIcon$IconBgTpye;->MASK:Lcom/oppo/theme/OppoConvertIcon$IconBgTpye;

    sput-object v0, Lcom/oppo/theme/OppoConvertIcon;->mIconBgTpye:Lcom/oppo/theme/OppoConvertIcon$IconBgTpye;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method

.method public static convertIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Z)Landroid/graphics/Bitmap;
    .locals 22
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "isThirdPart"    # Z

    .prologue
    .line 104
    if-nez p0, :cond_0

    .line 105
    const/4 v5, 0x0

    .line 192
    :goto_0
    return-object v5

    .line 108
    :cond_0
    sget-object v18, Lcom/oppo/theme/OppoConvertIcon;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v18

    .line 109
    :try_start_0
    sget v17, Lcom/oppo/theme/OppoConvertIcon;->sIconWidth:I

    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 110
    invoke-static/range {p1 .. p1}, Lcom/oppo/theme/OppoConvertIcon;->initIconSize(Landroid/content/res/Resources;)V

    .line 113
    :cond_1
    sget v16, Lcom/oppo/theme/OppoConvertIcon;->sIconWidth:I

    .line 114
    .local v16, "width":I
    sget v8, Lcom/oppo/theme/OppoConvertIcon;->sIconHeight:I

    .line 115
    .local v8, "height":I
    const/4 v10, 0x0

    .line 116
    .local v10, "originalBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/graphics/drawable/PaintDrawable;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 118
    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v11, v0

    .line 119
    .local v11, "painter":Landroid/graphics/drawable/PaintDrawable;
    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 120
    invoke-virtual {v11, v8}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 145
    .end local v11    # "painter":Landroid/graphics/drawable/PaintDrawable;
    :cond_2
    :goto_1
    sget v17, Lcom/oppo/theme/OppoConvertIcon;->sIconWidth:I

    if-gtz v17, :cond_6

    .line 146
    const/4 v5, 0x0

    monitor-exit v18

    goto :goto_0

    .line 193
    .end local v8    # "height":I
    .end local v10    # "originalBitmap":Landroid/graphics/Bitmap;
    .end local v16    # "width":I
    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v17

    .line 121
    .restart local v8    # "height":I
    .restart local v10    # "originalBitmap":Landroid/graphics/Bitmap;
    .restart local v16    # "width":I
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 124
    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v6, v0

    .line 125
    .local v6, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 132
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    if-eqz p2, :cond_2

    .line 133
    move-object v10, v5

    goto :goto_1

    .line 136
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_4
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/graphics/drawable/NinePatchDrawable;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 137
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v17

    const/16 v21, -0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_5

    sget-object v17, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_2
    move/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 141
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 142
    .local v7, "canvas":Landroid/graphics/Canvas;
    const/16 v17, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 143
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 137
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    :cond_5
    sget-object v17, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_2

    .line 148
    :cond_6
    sget v17, Lcom/oppo/theme/OppoConvertIcon;->sIconWidth:I

    sget v19, Lcom/oppo/theme/OppoConvertIcon;->sIconHeight:I

    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 150
    .restart local v5    # "bitmap":Landroid/graphics/Bitmap;
    sget-object v7, Lcom/oppo/theme/OppoConvertIcon;->sCanvas:Landroid/graphics/Canvas;

    .line 151
    .restart local v7    # "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v7, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 153
    if-eqz p2, :cond_a

    .line 154
    sget-object v17, Lcom/oppo/theme/OppoConvertIcon;->mIconBgTpye:Lcom/oppo/theme/OppoConvertIcon$IconBgTpye;

    sget-object v19, Lcom/oppo/theme/OppoConvertIcon$IconBgTpye;->COVER:Lcom/oppo/theme/OppoConvertIcon$IconBgTpye;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 155
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v10, v1, v7}, Lcom/oppo/theme/OppoConvertIcon;->coverBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/content/res/Resources;Landroid/graphics/Canvas;)V

    .line 156
    sget-boolean v17, Lcom/oppo/theme/OppoConvertIcon;->drawForeground:Z

    if-eqz v17, :cond_7

    .line 157
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/oppo/theme/OppoConvertIcon;->drawForeground(Landroid/content/res/Resources;Landroid/graphics/Canvas;)V

    .line 192
    :cond_7
    :goto_3
    monitor-exit v18

    goto/16 :goto_0

    .line 159
    :cond_8
    sget-object v17, Lcom/oppo/theme/OppoConvertIcon;->mIconBgTpye:Lcom/oppo/theme/OppoConvertIcon$IconBgTpye;

    sget-object v19, Lcom/oppo/theme/OppoConvertIcon$IconBgTpye;->MASK:Lcom/oppo/theme/OppoConvertIcon$IconBgTpye;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 160
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v10, v1, v7}, Lcom/oppo/theme/OppoConvertIcon;->maskBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/content/res/Resources;Landroid/graphics/Canvas;)V

    .line 161
    sget-boolean v17, Lcom/oppo/theme/OppoConvertIcon;->drawForeground:Z

    if-eqz v17, :cond_7

    .line 162
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/oppo/theme/OppoConvertIcon;->drawForeground(Landroid/content/res/Resources;Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 165
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v10, v1, v7}, Lcom/oppo/theme/OppoConvertIcon;->cutAndScaleBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/content/res/Resources;Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 169
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 170
    .local v14, "sourceWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .line 171
    .local v13, "sourceHeight":I
    if-lez v14, :cond_b

    if-lez v13, :cond_b

    .line 172
    int-to-float v0, v14

    move/from16 v17, v0

    int-to-float v0, v13

    move/from16 v19, v0

    div-float v12, v17, v19

    .line 173
    .local v12, "ratio":F
    if-le v14, v13, :cond_c

    .line 175
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v17, v17, v12

    move/from16 v0, v17

    float-to-int v8, v0

    .line 182
    .end local v12    # "ratio":F
    :cond_b
    :goto_4
    sget v17, Lcom/oppo/theme/OppoConvertIcon;->sIconWidth:I

    sub-int v17, v17, v16

    div-int/lit8 v9, v17, 0x2

    .line 183
    .local v9, "left":I
    sget v17, Lcom/oppo/theme/OppoConvertIcon;->sIconHeight:I

    sub-int v17, v17, v8

    div-int/lit8 v15, v17, 0x2

    .line 185
    .local v15, "top":I
    sget-object v17, Lcom/oppo/theme/OppoConvertIcon;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 186
    add-int v17, v9, v16

    add-int v19, v15, v8

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v9, v15, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 187
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 188
    sget-object v17, Lcom/oppo/theme/OppoConvertIcon;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 189
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 176
    .end local v9    # "left":I
    .end local v15    # "top":I
    .restart local v12    # "ratio":F
    :cond_c
    if-le v13, v14, :cond_b

    .line 178
    int-to-float v0, v8

    move/from16 v17, v0

    mul-float v17, v17, v12

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    goto :goto_4
.end method

.method static coverBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/content/res/Resources;Landroid/graphics/Canvas;)V
    .locals 8
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "originalBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 226
    if-eqz p1, :cond_3

    .line 228
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v4

    if-nez v4, :cond_0

    .line 229
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 231
    :cond_0
    sget-object v4, Lcom/oppo/theme/OppoConvertIcon;->mIconBackground:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    .line 232
    sget-object v4, Lcom/oppo/theme/OppoConvertIcon;->sCoverBackgroundPic:Ljava/lang/String;

    invoke-static {p2, v4}, Lcom/oppo/theme/OppoThirdPartUtil;->getLauncherDrawableByName(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sput-object v4, Lcom/oppo/theme/OppoConvertIcon;->mIconBackground:Landroid/graphics/drawable/Drawable;

    .line 235
    :cond_1
    sget-object v4, Lcom/oppo/theme/OppoConvertIcon;->mIconBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    .line 236
    sget-object v4, Lcom/oppo/theme/OppoConvertIcon;->sOldBounds:Landroid/graphics/Rect;

    sget-object v5, Lcom/oppo/theme/OppoConvertIcon;->mIconBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 237
    sget-object v4, Lcom/oppo/theme/OppoConvertIcon;->mIconBackground:Landroid/graphics/drawable/Drawable;

    sget v5, Lcom/oppo/theme/OppoConvertIcon;->sIconWidth:I

    sget v6, Lcom/oppo/theme/OppoConvertIcon;->sIconHeight:I

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 238
    sget-object v4, Lcom/oppo/theme/OppoConvertIcon;->mIconBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 239
    sget-object v4, Lcom/oppo/theme/OppoConvertIcon;->mIconBackground:Landroid/graphics/drawable/Drawable;

    sget-object v5, Lcom/oppo/theme/OppoConvertIcon;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 241
    :cond_2
    invoke-static {}, Lcom/oppo/theme/OppoMaskBitmapUtilities;->getInstance()Lcom/oppo/theme/OppoMaskBitmapUtilities;

    move-result-object v1

    .line 242
    .local v1, "mbu":Lcom/oppo/theme/OppoMaskBitmapUtilities;
    invoke-virtual {v1, p1}, Lcom/oppo/theme/OppoMaskBitmapUtilities;->cutAndScaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 243
    .local v2, "scale":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_4

    .line 244
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 245
    .local v3, "w":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 246
    .local v0, "h":I
    sget v4, Lcom/oppo/theme/OppoConvertIcon;->sIconWidth:I

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    sget v5, Lcom/oppo/theme/OppoConvertIcon;->sThemeParamXOffset:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/oppo/theme/OppoConvertIcon;->sIconHeight:I

    sub-int/2addr v5, v0

    div-int/lit8 v5, v5, 0x2

    sget v6, Lcom/oppo/theme/OppoConvertIcon;->sThemeParamYOffset:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {p3, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 252
    .end local v0    # "h":I
    .end local v1    # "mbu":Lcom/oppo/theme/OppoMaskBitmapUtilities;
    .end local v2    # "scale":Landroid/graphics/Bitmap;
    .end local v3    # "w":I
    :cond_3
    :goto_0
    return-void

    .line 249
    .restart local v1    # "mbu":Lcom/oppo/theme/OppoMaskBitmapUtilities;
    .restart local v2    # "scale":Landroid/graphics/Bitmap;
    :cond_4
    const-string v4, "OppoConvertIcon"

    const-string v5, "coverBitmap -- scale == null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static coverBitmapNoCut(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/content/res/Resources;Landroid/graphics/Canvas;)V
    .locals 12
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "originalBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v11, 0x0

    .line 197
    if-eqz p1, :cond_2

    .line 198
    sget-object v9, Lcom/oppo/theme/OppoConvertIcon;->sCoverBackgroundPic:Ljava/lang/String;

    invoke-static {p2, v9}, Lcom/oppo/theme/OppoThirdPartUtil;->getLauncherDrawableByName(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 200
    .local v4, "mIconBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_0

    .line 201
    sget-object v9, Lcom/oppo/theme/OppoConvertIcon;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 202
    sget v9, Lcom/oppo/theme/OppoConvertIcon;->sIconWidth:I

    sget v10, Lcom/oppo/theme/OppoConvertIcon;->sIconHeight:I

    invoke-virtual {v4, v11, v11, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 203
    invoke-virtual {v4, p3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 204
    sget-object v9, Lcom/oppo/theme/OppoConvertIcon;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 207
    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 208
    .local v0, "f":D
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 v10, 0x43c80000    # 400.0f

    cmpl-float v9, v9, v10

    if-lez v9, :cond_1

    sget-boolean v9, Lcom/oppo/theme/OppoThirdPartUtil;->mIsDefaultTheme:Z

    if-eqz v9, :cond_1

    .line 209
    const-wide v0, 0x3ff0e147ae147ae1L    # 1.055

    .line 211
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 212
    .local v6, "sourceWidth":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 214
    .local v5, "sourceHeight":I
    int-to-double v10, v6

    mul-double/2addr v10, v0

    double-to-int v8, v10

    .line 215
    .local v8, "width":I
    int-to-double v10, v5

    mul-double/2addr v10, v0

    double-to-int v2, v10

    .line 217
    .local v2, "height":I
    sget v9, Lcom/oppo/theme/OppoConvertIcon;->sIconWidth:I

    sub-int/2addr v9, v8

    div-int/lit8 v3, v9, 0x2

    .line 218
    .local v3, "l":I
    sget v9, Lcom/oppo/theme/OppoConvertIcon;->sIconHeight:I

    sub-int/2addr v9, v2

    div-int/lit8 v7, v9, 0x2

    .line 219
    .local v7, "t":I
    add-int v9, v3, v8

    add-int v10, v7, v2

    invoke-virtual {p0, v3, v7, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 220
    invoke-virtual {p0, p3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 222
    .end local v0    # "f":D
    .end local v2    # "height":I
    .end local v3    # "l":I
    .end local v4    # "mIconBackground":Landroid/graphics/drawable/Drawable;
    .end local v5    # "sourceHeight":I
    .end local v6    # "sourceWidth":I
    .end local v7    # "t":I
    .end local v8    # "width":I
    :cond_2
    return-void
.end method

.method static cutAndScaleBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/content/res/Resources;Landroid/graphics/Canvas;)V
    .locals 7
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "originalBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 256
    if-eqz p1, :cond_1

    .line 258
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v4

    if-nez v4, :cond_0

    .line 259
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 261
    :cond_0
    invoke-static {}, Lcom/oppo/theme/OppoMaskBitmapUtilities;->getInstance()Lcom/oppo/theme/OppoMaskBitmapUtilities;

    move-result-object v1

    .line 262
    .local v1, "mbu":Lcom/oppo/theme/OppoMaskBitmapUtilities;
    invoke-virtual {v1, p1}, Lcom/oppo/theme/OppoMaskBitmapUtilities;->cutAndScaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 263
    .local v2, "scale":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_2

    .line 264
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 265
    .local v3, "w":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 266
    .local v0, "h":I
    sget v4, Lcom/oppo/theme/OppoConvertIcon;->sIconWidth:I

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sget v5, Lcom/oppo/theme/OppoConvertIcon;->sIconHeight:I

    sub-int/2addr v5, v0

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {p3, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 271
    .end local v0    # "h":I
    .end local v1    # "mbu":Lcom/oppo/theme/OppoMaskBitmapUtilities;
    .end local v2    # "scale":Landroid/graphics/Bitmap;
    .end local v3    # "w":I
    :cond_1
    :goto_0
    return-void

    .line 268
    .restart local v1    # "mbu":Lcom/oppo/theme/OppoMaskBitmapUtilities;
    .restart local v2    # "scale":Landroid/graphics/Bitmap;
    :cond_2
    const-string v4, "OppoConvertIcon"

    const-string v5, "cutAndScaleBitmap -- scale == null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static drawForeground(Landroid/content/res/Resources;Landroid/graphics/Canvas;)V
    .locals 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 333
    sget-object v0, Lcom/oppo/theme/OppoConvertIcon;->mIconForeground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 334
    sget-object v0, Lcom/oppo/theme/OppoConvertIcon;->sMaskForegroundPic:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/oppo/theme/OppoThirdPartUtil;->getLauncherDrawableByName(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/oppo/theme/OppoConvertIcon;->mIconForeground:Landroid/graphics/drawable/Drawable;

    .line 336
    :cond_0
    sget-object v0, Lcom/oppo/theme/OppoConvertIcon;->mIconForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 337
    sget-object v0, Lcom/oppo/theme/OppoConvertIcon;->sOldBounds:Landroid/graphics/Rect;

    sget-object v1, Lcom/oppo/theme/OppoConvertIcon;->mIconForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 338
    sget-object v0, Lcom/oppo/theme/OppoConvertIcon;->mIconForeground:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/oppo/theme/OppoConvertIcon;->sIconWidth:I

    sget v2, Lcom/oppo/theme/OppoConvertIcon;->sIconHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 339
    sget-object v0, Lcom/oppo/theme/OppoConvertIcon;->mIconForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 340
    sget-object v0, Lcom/oppo/theme/OppoConvertIcon;->mIconForeground:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lcom/oppo/theme/OppoConvertIcon;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 342
    :cond_1
    return-void
.end method

.method public static getIconBgTpye()Lcom/oppo/theme/OppoConvertIcon$IconBgTpye;
    .locals 5

    .prologue
    .line 410
    const-string v1, "/data/theme/"

    .line 413
    .local v1, "path":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "com.oppo.launcher"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 414
    .local v2, "zipFile":Ljava/util/zip/ZipFile;
    const-string v3, "iphone_style_bg.png"

    invoke-static {v2, v3}, Lcom/oppo/theme/OppoConvertIcon;->judgePicExist(Ljava/util/zip/ZipFile;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 415
    const-string v3, "iphone_style_fg.png"

    invoke-static {v2, v3}, Lcom/oppo/theme/OppoConvertIcon;->judgePicExist(Ljava/util/zip/ZipFile;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 416
    const/4 v3, 0x1

    sput-boolean v3, Lcom/oppo/theme/OppoConvertIcon;->drawForeground:Z

    .line 418
    :cond_0
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    .line 419
    sget-object v3, Lcom/oppo/theme/OppoConvertIcon$IconBgTpye;->COVER:Lcom/oppo/theme/OppoConvertIcon$IconBgTpye;

    sput-object v3, Lcom/oppo/theme/OppoConvertIcon;->mIconBgTpye:Lcom/oppo/theme/OppoConvertIcon$IconBgTpye;

    .line 436
    .end local v2    # "zipFile":Ljava/util/zip/ZipFile;
    :goto_0
    return-object v3

    .line 421
    .restart local v2    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_1
    const-string v3, "new_iphone_style_bg.png"

    invoke-static {v2, v3}, Lcom/oppo/theme/OppoConvertIcon;->judgePicExist(Ljava/util/zip/ZipFile;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "new_iphone_style_mask.png"

    invoke-static {v2, v3}, Lcom/oppo/theme/OppoConvertIcon;->judgePicExist(Ljava/util/zip/ZipFile;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 423
    const-string v3, "iphone_style_fg.png"

    invoke-static {v2, v3}, Lcom/oppo/theme/OppoConvertIcon;->judgePicExist(Ljava/util/zip/ZipFile;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 424
    const/4 v3, 0x1

    sput-boolean v3, Lcom/oppo/theme/OppoConvertIcon;->drawForeground:Z

    .line 426
    :cond_2
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    .line 427
    sget-object v3, Lcom/oppo/theme/OppoConvertIcon$IconBgTpye;->MASK:Lcom/oppo/theme/OppoConvertIcon$IconBgTpye;

    sput-object v3, Lcom/oppo/theme/OppoConvertIcon;->mIconBgTpye:Lcom/oppo/theme/OppoConvertIcon$IconBgTpye;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 429
    .end local v2    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v0

    .line 433
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/oppo/theme/OppoConvertIcon$IconBgTpye;->SCALE:Lcom/oppo/theme/OppoConvertIcon$IconBgTpye;

    sput-object v3, Lcom/oppo/theme/OppoConvertIcon;->mIconBgTpye:Lcom/oppo/theme/OppoConvertIcon$IconBgTpye;

    goto :goto_0

    .line 436
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_3
    sget-object v3, Lcom/oppo/theme/OppoConvertIcon$IconBgTpye;->SCALE:Lcom/oppo/theme/OppoConvertIcon$IconBgTpye;

    sput-object v3, Lcom/oppo/theme/OppoConvertIcon;->mIconBgTpye:Lcom/oppo/theme/OppoConvertIcon$IconBgTpye;

    goto :goto_0
.end method

.method public static getIconSize()I
    .locals 1

    .prologue
    .line 503
    sget v0, Lcom/oppo/theme/OppoConvertIcon;->sIconSize:I

    return v0
.end method

.method public static getMaskBitmap(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "picName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 480
    sget-object v2, Lcom/oppo/theme/OppoConvertIcon;->mMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 481
    sget-object v2, Lcom/oppo/theme/OppoConvertIcon;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 482
    sput-object v6, Lcom/oppo/theme/OppoConvertIcon;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 484
    :cond_0
    invoke-static {p0, p1}, Lcom/oppo/theme/OppoThirdPartUtil;->getLauncherDrawableByName(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 486
    .local v1, "mask":Landroid/graphics/drawable/Drawable;
    sget v2, Lcom/oppo/theme/OppoConvertIcon;->sIconWidth:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 487
    invoke-static {p0}, Lcom/oppo/theme/OppoConvertIcon;->initIconSize(Landroid/content/res/Resources;)V

    .line 489
    :cond_1
    sget v2, Lcom/oppo/theme/OppoConvertIcon;->sIconWidth:I

    sget v3, Lcom/oppo/theme/OppoConvertIcon;->sIconHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/oppo/theme/OppoConvertIcon;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 490
    sget v2, Lcom/oppo/theme/OppoConvertIcon;->sIconWidth:I

    sget v3, Lcom/oppo/theme/OppoConvertIcon;->sIconHeight:I

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 491
    sget-object v0, Lcom/oppo/theme/OppoConvertIcon;->sCanvas:Landroid/graphics/Canvas;

    .line 492
    .local v0, "canvas":Landroid/graphics/Canvas;
    sget-object v2, Lcom/oppo/theme/OppoConvertIcon;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 493
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 494
    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 495
    sget-object v2, Lcom/oppo/theme/OppoConvertIcon;->mMaskBitmap:Landroid/graphics/Bitmap;

    return-object v2
.end method

.method public static getThemeParamScale()I
    .locals 1

    .prologue
    .line 499
    sget v0, Lcom/oppo/theme/OppoConvertIcon;->sThemeParamScale:I

    return v0
.end method

.method public static hasInit()Z
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/oppo/theme/OppoConvertIcon;->sCoverBackgroundPic:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oppo/theme/OppoConvertIcon;->sMaskBackgroundPic:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oppo/theme/OppoConvertIcon;->sMaskForegroundPic:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 91
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static initConvertIcon(Landroid/content/res/Resources;)V
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 507
    invoke-static {}, Lcom/oppo/theme/OppoThirdPartUtil;->setDefaultTheme()V

    .line 508
    invoke-static {}, Lcom/oppo/theme/OppoConvertIcon;->getIconBgTpye()Lcom/oppo/theme/OppoConvertIcon$IconBgTpye;

    move-result-object v0

    sget-object v1, Lcom/oppo/theme/OppoConvertIcon$IconBgTpye;->MASK:Lcom/oppo/theme/OppoConvertIcon$IconBgTpye;

    if-ne v0, v1, :cond_0

    .line 509
    invoke-static {}, Lcom/oppo/theme/OppoMaskBitmapUtilities;->getInstance()Lcom/oppo/theme/OppoMaskBitmapUtilities;

    move-result-object v0

    const-string v1, "new_iphone_style_mask.png"

    invoke-static {p0, v1}, Lcom/oppo/theme/OppoConvertIcon;->getMaskBitmap(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/theme/OppoMaskBitmapUtilities;->setMaskBitmap(Landroid/graphics/Bitmap;)V

    .line 512
    :cond_0
    const-string v0, "new_iphone_style_bg.png"

    const-string v1, "iphone_style_fg.png"

    const-string v2, "iphone_style_bg.png"

    invoke-static {p0, v0, v1, v2}, Lcom/oppo/theme/OppoConvertIcon;->initThemeParam(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    invoke-static {}, Lcom/oppo/theme/OppoMaskBitmapUtilities;->getInstance()Lcom/oppo/theme/OppoMaskBitmapUtilities;

    move-result-object v0

    invoke-static {}, Lcom/oppo/theme/OppoConvertIcon;->getIconSize()I

    move-result v1

    invoke-static {}, Lcom/oppo/theme/OppoConvertIcon;->getThemeParamScale()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/oppo/theme/OppoMaskBitmapUtilities;->setCutAndScalePram(II)V

    .line 515
    return-void
.end method

.method private static initIconSize(Landroid/content/res/Resources;)V
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 353
    const/16 v1, 0xd2

    .line 354
    .local v1, "width":I
    if-eqz p0, :cond_0

    .line 355
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 356
    .local v0, "dm":Landroid/util/DisplayMetrics;
    if-eqz v0, :cond_0

    .line 357
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v2, v2, 0x6

    div-int/lit8 v1, v2, 0x24

    .line 360
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    :cond_0
    sput v1, Lcom/oppo/theme/OppoConvertIcon;->sIconHeight:I

    sput v1, Lcom/oppo/theme/OppoConvertIcon;->sIconWidth:I

    sput v1, Lcom/oppo/theme/OppoConvertIcon;->sIconSize:I

    .line 361
    return-void
.end method

.method public static initThemeParam(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "maskBg"    # Ljava/lang/String;
    .param p2, "MaskFg"    # Ljava/lang/String;
    .param p3, "coverBg"    # Ljava/lang/String;

    .prologue
    .line 364
    new-instance v0, Lcom/oppo/theme/OppoIconParam;

    const-string v2, "themeInfo.xml"

    invoke-direct {v0, v2}, Lcom/oppo/theme/OppoIconParam;-><init>(Ljava/lang/String;)V

    .line 365
    .local v0, "oppoIconParam":Lcom/oppo/theme/OppoIconParam;
    invoke-virtual {v0}, Lcom/oppo/theme/OppoIconParam;->parseXml()Z

    .line 367
    invoke-virtual {v0}, Lcom/oppo/theme/OppoIconParam;->getScale()F

    move-result v1

    .line 368
    .local v1, "tempRatio":F
    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    .line 369
    sget-object v2, Lcom/oppo/theme/OppoConvertIcon;->mIconBgTpye:Lcom/oppo/theme/OppoConvertIcon$IconBgTpye;

    sget-object v3, Lcom/oppo/theme/OppoConvertIcon$IconBgTpye;->COVER:Lcom/oppo/theme/OppoConvertIcon$IconBgTpye;

    if-ne v2, v3, :cond_2

    .line 370
    const v1, 0x3f1eb852    # 0.62f

    .line 377
    :cond_0
    :goto_0
    sget v2, Lcom/oppo/theme/OppoConvertIcon;->sIconSize:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 378
    invoke-static {p0}, Lcom/oppo/theme/OppoConvertIcon;->initIconSize(Landroid/content/res/Resources;)V

    .line 380
    :cond_1
    sget v2, Lcom/oppo/theme/OppoConvertIcon;->sIconSize:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    sput v2, Lcom/oppo/theme/OppoConvertIcon;->sThemeParamScale:I

    .line 386
    invoke-virtual {v0}, Lcom/oppo/theme/OppoIconParam;->getXOffset()F

    move-result v1

    .line 387
    sget v2, Lcom/oppo/theme/OppoConvertIcon;->sIconSize:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    sput v2, Lcom/oppo/theme/OppoConvertIcon;->sThemeParamXOffset:I

    .line 392
    invoke-virtual {v0}, Lcom/oppo/theme/OppoIconParam;->getYOffset()F

    move-result v1

    .line 393
    sget v2, Lcom/oppo/theme/OppoConvertIcon;->sIconSize:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    sput v2, Lcom/oppo/theme/OppoConvertIcon;->sThemeParamYOffset:I

    .line 399
    invoke-static {p1, p2, p3}, Lcom/oppo/theme/OppoConvertIcon;->setIconBgFgRes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    return-void

    .line 371
    :cond_2
    sget-object v2, Lcom/oppo/theme/OppoConvertIcon;->mIconBgTpye:Lcom/oppo/theme/OppoConvertIcon$IconBgTpye;

    sget-object v3, Lcom/oppo/theme/OppoConvertIcon$IconBgTpye;->SCALE:Lcom/oppo/theme/OppoConvertIcon$IconBgTpye;

    if-ne v2, v3, :cond_3

    .line 372
    const v1, 0x3f533333    # 0.825f

    goto :goto_0

    .line 373
    :cond_3
    sget-object v2, Lcom/oppo/theme/OppoConvertIcon;->mIconBgTpye:Lcom/oppo/theme/OppoConvertIcon$IconBgTpye;

    sget-object v3, Lcom/oppo/theme/OppoConvertIcon$IconBgTpye;->MASK:Lcom/oppo/theme/OppoConvertIcon$IconBgTpye;

    if-ne v2, v3, :cond_0

    .line 374
    const v1, 0x3f35c28f    # 0.71f

    goto :goto_0
.end method

.method public static judgePicExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "zipFilePath"    # Ljava/lang/String;
    .param p1, "picName"    # Ljava/lang/String;

    .prologue
    .line 450
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 451
    .local v1, "file":Ljava/util/zip/ZipFile;
    invoke-static {v1, p1}, Lcom/oppo/theme/OppoConvertIcon;->judgePicExist(Ljava/util/zip/ZipFile;Ljava/lang/String;)Z

    move-result v2

    .line 452
    .local v2, "flag":Z
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    .end local v1    # "file":Ljava/util/zip/ZipFile;
    .end local v2    # "flag":Z
    :goto_0
    return v2

    .line 454
    :catch_0
    move-exception v0

    .line 457
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static judgePicExist(Ljava/util/zip/ZipFile;Ljava/lang/String;)Z
    .locals 4
    .param p0, "zipFile"    # Ljava/util/zip/ZipFile;
    .param p1, "picName"    # Ljava/lang/String;

    .prologue
    .line 470
    sget-object v2, Lcom/oppo/theme/OppoConvertIcon;->drawabledirs:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 471
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/oppo/theme/OppoConvertIcon;->drawabledirs:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 472
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v0, :cond_0

    .line 473
    const/4 v2, 0x1

    .line 476
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    :goto_1
    return v2

    .line 470
    .restart local v0    # "entry":Ljava/util/zip/ZipEntry;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 476
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method static maskBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/content/res/Resources;Landroid/graphics/Canvas;)V
    .locals 10
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "originalBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 274
    if-nez p1, :cond_0

    .line 275
    sget v5, Lcom/oppo/theme/OppoConvertIcon;->sIconWidth:I

    sget v6, Lcom/oppo/theme/OppoConvertIcon;->sIconHeight:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 277
    invoke-virtual {p3, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 278
    sget-object v5, Lcom/oppo/theme/OppoConvertIcon;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 279
    sget v5, Lcom/oppo/theme/OppoConvertIcon;->sIconWidth:I

    sget v6, Lcom/oppo/theme/OppoConvertIcon;->sIconHeight:I

    invoke-virtual {p0, v8, v8, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 280
    invoke-virtual {p0, p3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 281
    sget-object v5, Lcom/oppo/theme/OppoConvertIcon;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 284
    :cond_0
    if-eqz p1, :cond_6

    .line 286
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v5

    if-nez v5, :cond_1

    .line 287
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 289
    :cond_1
    invoke-static {}, Lcom/oppo/theme/OppoMaskBitmapUtilities;->getInstance()Lcom/oppo/theme/OppoMaskBitmapUtilities;

    move-result-object v1

    .line 290
    .local v1, "mbu":Lcom/oppo/theme/OppoMaskBitmapUtilities;
    invoke-virtual {v1, p1}, Lcom/oppo/theme/OppoMaskBitmapUtilities;->scaleAndMaskBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 292
    .local v2, "scale":Landroid/graphics/Bitmap;
    sget-object v5, Lcom/oppo/theme/OppoConvertIcon;->mIconBackground:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_2

    .line 293
    sget-object v5, Lcom/oppo/theme/OppoConvertIcon;->sMaskBackgroundPic:Ljava/lang/String;

    invoke-static {p2, v5}, Lcom/oppo/theme/OppoThirdPartUtil;->getLauncherDrawableByName(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sput-object v5, Lcom/oppo/theme/OppoConvertIcon;->mIconBackground:Landroid/graphics/drawable/Drawable;

    .line 297
    :cond_2
    sget-object v5, Lcom/oppo/theme/OppoConvertIcon;->mIconBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_3

    .line 298
    sget-object v5, Lcom/oppo/theme/OppoConvertIcon;->sOldBounds:Landroid/graphics/Rect;

    sget-object v6, Lcom/oppo/theme/OppoConvertIcon;->mIconBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 299
    sget-object v5, Lcom/oppo/theme/OppoConvertIcon;->mIconBackground:Landroid/graphics/drawable/Drawable;

    sget v6, Lcom/oppo/theme/OppoConvertIcon;->sIconWidth:I

    sget v7, Lcom/oppo/theme/OppoConvertIcon;->sIconHeight:I

    invoke-virtual {v5, v8, v8, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 300
    sget-object v5, Lcom/oppo/theme/OppoConvertIcon;->mIconBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 301
    sget-object v5, Lcom/oppo/theme/OppoConvertIcon;->mIconBackground:Landroid/graphics/drawable/Drawable;

    sget-object v6, Lcom/oppo/theme/OppoConvertIcon;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 305
    :goto_0
    if-eqz v2, :cond_5

    .line 306
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 307
    .local v3, "w":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 309
    .local v0, "h":I
    sget v5, Lcom/oppo/theme/OppoConvertIcon;->sIconWidth:I

    sub-int v5, v3, v5

    div-int/lit8 v5, v5, 0x2

    sget v6, Lcom/oppo/theme/OppoConvertIcon;->sThemeParamXOffset:I

    add-int v4, v5, v6

    .line 310
    .local v4, "xEndPosDiffer":I
    const/4 v5, -0x1

    if-le v4, v5, :cond_4

    .line 311
    sget v5, Lcom/oppo/theme/OppoConvertIcon;->sIconWidth:I

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sget v6, Lcom/oppo/theme/OppoConvertIcon;->sIconHeight:I

    sub-int/2addr v6, v0

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {p3, v2, v5, v6, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 323
    .end local v0    # "h":I
    .end local v1    # "mbu":Lcom/oppo/theme/OppoMaskBitmapUtilities;
    .end local v2    # "scale":Landroid/graphics/Bitmap;
    .end local v3    # "w":I
    .end local v4    # "xEndPosDiffer":I
    :goto_1
    return-void

    .line 303
    .restart local v1    # "mbu":Lcom/oppo/theme/OppoMaskBitmapUtilities;
    .restart local v2    # "scale":Landroid/graphics/Bitmap;
    :cond_3
    const-string v5, "OppoConvertIcon"

    const-string v6, "maskBitmap -- mIconBackground == null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 313
    .restart local v0    # "h":I
    .restart local v3    # "w":I
    .restart local v4    # "xEndPosDiffer":I
    :cond_4
    sget v5, Lcom/oppo/theme/OppoConvertIcon;->sIconWidth:I

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    sget v6, Lcom/oppo/theme/OppoConvertIcon;->sThemeParamXOffset:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    sget v6, Lcom/oppo/theme/OppoConvertIcon;->sIconHeight:I

    sub-int/2addr v6, v0

    div-int/lit8 v6, v6, 0x2

    sget v7, Lcom/oppo/theme/OppoConvertIcon;->sThemeParamYOffset:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p3, v2, v5, v6, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 317
    .end local v0    # "h":I
    .end local v3    # "w":I
    .end local v4    # "xEndPosDiffer":I
    :cond_5
    const-string v5, "OppoConvertIcon"

    const-string v6, "maskBitmap -- scale == null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 321
    .end local v1    # "mbu":Lcom/oppo/theme/OppoMaskBitmapUtilities;
    .end local v2    # "scale":Landroid/graphics/Bitmap;
    :cond_6
    const-string v5, "OppoConvertIcon"

    const-string v6, "maskBitmap -- originalBitmap == null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static setIconBgFgRes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "maskBg"    # Ljava/lang/String;
    .param p1, "MaskFg"    # Ljava/lang/String;
    .param p2, "coverBg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 345
    sput-object p0, Lcom/oppo/theme/OppoConvertIcon;->sMaskBackgroundPic:Ljava/lang/String;

    .line 346
    sput-object p1, Lcom/oppo/theme/OppoConvertIcon;->sMaskForegroundPic:Ljava/lang/String;

    .line 347
    sput-object p2, Lcom/oppo/theme/OppoConvertIcon;->sCoverBackgroundPic:Ljava/lang/String;

    .line 348
    sput-object v0, Lcom/oppo/theme/OppoConvertIcon;->mIconBackground:Landroid/graphics/drawable/Drawable;

    .line 349
    sput-object v0, Lcom/oppo/theme/OppoConvertIcon;->mIconForeground:Landroid/graphics/drawable/Drawable;

    .line 350
    return-void
.end method
