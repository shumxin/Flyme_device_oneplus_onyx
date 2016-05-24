.class public Lcom/meizu/media/camera/manual/WhiteBalanceKnobView;
.super Lcom/meizu/media/camera/manual/KnobView;
.source "WhiteBalanceKnobView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/media/camera/manual/WhiteBalanceKnobView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/meizu/media/camera/manual/KnobView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected onSetupIcons()Z
    .locals 25

    .prologue
    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/media/camera/manual/WhiteBalanceKnobView;->getContext()Landroid/content/Context;

    move-result-object v21

    check-cast v21, Lcom/meizu/media/camera/CameraActivity;

    .line 36
    .local v21, "cameraActivity":Lcom/meizu/media/camera/CameraActivity;
    invoke-virtual/range {v21 .. v21}, Lcom/meizu/media/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f080000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 37
    .local v4, "angle":I
    invoke-virtual/range {v21 .. v21}, Lcom/meizu/media/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 38
    .local v7, "autoAngle":I
    new-instance v2, Lcom/meizu/media/camera/manual/KnobInfo;

    neg-int v3, v4

    const/4 v5, -0x2

    const/4 v6, 0x2

    invoke-direct/range {v2 .. v7}, Lcom/meizu/media/camera/manual/KnobInfo;-><init>(IIIII)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/media/camera/manual/WhiteBalanceKnobView;->setKnobInfo(Lcom/meizu/media/camera/manual/KnobInfo;)V

    .line 41
    invoke-virtual/range {v21 .. v21}, Lcom/meizu/media/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070082

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    .line 42
    .local v24, "padding":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/manual/WhiteBalanceKnobView;->setIconPadding(I)V

    .line 45
    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/meizu/media/camera/Camera;

    .line 46
    .local v20, "camera":Lcom/meizu/media/camera/Camera;
    if-nez v20, :cond_0

    .line 47
    const/4 v2, 0x0

    .line 93
    :goto_0
    return v2

    .line 49
    :cond_0
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v23, "items":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/manual/KnobItemInfo;>;"
    sget-object v2, Lcom/meizu/media/camera/Camera;->PROP_AWB_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lcom/meizu/media/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    .line 51
    .local v18, "availabeAwbModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v18, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_2

    .line 52
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 54
    :cond_2
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    .line 56
    .local v19, "awb":Ljava/lang/Integer;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 60
    :pswitch_1
    new-instance v16, Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-direct/range {v16 .. v16}, Lcom/oneplus/drawable/ShadowTextDrawable;-><init>()V

    .line 61
    .local v16, "autoDrawable":Lcom/oneplus/drawable/ShadowTextDrawable;
    const v2, 0x7f090049

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/meizu/media/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/oneplus/drawable/ShadowTextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 62
    const v2, 0x7f0a0015

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/drawable/ShadowTextDrawable;->setTextAppearance(Landroid/content/Context;I)V

    .line 63
    new-instance v17, Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-direct/range {v17 .. v17}, Lcom/oneplus/drawable/ShadowTextDrawable;-><init>()V

    .line 64
    .local v17, "autoDrawableSelected":Lcom/oneplus/drawable/ShadowTextDrawable;
    const v2, 0x7f090049

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/meizu/media/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/oneplus/drawable/ShadowTextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 65
    const v2, 0x7f0a0016

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/drawable/ShadowTextDrawable;->setTextAppearance(Landroid/content/Context;I)V

    .line 66
    new-instance v9, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v9}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 67
    .local v9, "autoStateDrawable":Landroid/graphics/drawable/StateListDrawable;
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const v5, -0x10100a1

    aput v5, v2, v3

    move-object/from16 v0, v16

    invoke-virtual {v9, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 68
    sget-object v2, Lcom/meizu/media/camera/manual/WhiteBalanceKnobView;->SELECTED_STATE_SET:[I

    move-object/from16 v0, v17

    invoke-virtual {v9, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 69
    new-instance v8, Lcom/meizu/media/camera/manual/KnobItemInfo;

    const v2, 0x7f090049

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/meizu/media/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v8 .. v13}, Lcom/meizu/media/camera/manual/KnobItemInfo;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ID)V

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 73
    .end local v9    # "autoStateDrawable":Landroid/graphics/drawable/StateListDrawable;
    .end local v16    # "autoDrawable":Lcom/oneplus/drawable/ShadowTextDrawable;
    .end local v17    # "autoDrawableSelected":Lcom/oneplus/drawable/ShadowTextDrawable;
    :pswitch_2
    new-instance v10, Lcom/meizu/media/camera/manual/KnobItemInfo;

    const v2, 0x7f02005b

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/meizu/media/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const v2, 0x7f09004e

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/meizu/media/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, -0x2

    const-wide/high16 v14, 0x4018000000000000L    # 6.0

    invoke-direct/range {v10 .. v15}, Lcom/meizu/media/camera/manual/KnobItemInfo;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ID)V

    move-object/from16 v0, v23

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 76
    :pswitch_3
    new-instance v10, Lcom/meizu/media/camera/manual/KnobItemInfo;

    const v2, 0x7f02005e

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/meizu/media/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const v2, 0x7f09004d

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/meizu/media/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, -0x1

    const-wide/high16 v14, 0x4014000000000000L    # 5.0

    invoke-direct/range {v10 .. v15}, Lcom/meizu/media/camera/manual/KnobItemInfo;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ID)V

    move-object/from16 v0, v23

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 79
    :pswitch_4
    new-instance v10, Lcom/meizu/media/camera/manual/KnobItemInfo;

    const v2, 0x7f020061

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/meizu/media/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const v2, 0x7f09004c

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/meizu/media/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    invoke-direct/range {v10 .. v15}, Lcom/meizu/media/camera/manual/KnobItemInfo;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ID)V

    move-object/from16 v0, v23

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 82
    :pswitch_5
    new-instance v10, Lcom/meizu/media/camera/manual/KnobItemInfo;

    const v2, 0x7f020064

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/meizu/media/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const v2, 0x7f09004b

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/meizu/media/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x2

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-direct/range {v10 .. v15}, Lcom/meizu/media/camera/manual/KnobItemInfo;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ID)V

    move-object/from16 v0, v23

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 88
    .end local v19    # "awb":Ljava/lang/Integer;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/manual/WhiteBalanceKnobView;->setKnobItems(Ljava/util/List;)V

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/media/camera/manual/WhiteBalanceKnobView;->invalidate()V

    .line 93
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
