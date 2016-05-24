.class public abstract Lcom/meizu/media/camera/BaseCamera;
.super Lcom/oneplus/base/HandlerBaseObject;
.source "BaseCamera.java"

# interfaces
.implements Lcom/meizu/media/camera/Camera;


# instance fields
.field private m_Context:Landroid/content/Context;

.field private final m_HardwareLevel:Lcom/meizu/media/camera/Camera$HardwareLevel;

.field private final m_LensFacing:Lcom/meizu/media/camera/Camera$LensFacing;

.field private m_SceneModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final m_SensorOrientation:I

.field private final m_SensorPhysicalSize:Landroid/util/SizeF;

.field private final m_SensorPixelSize:Landroid/util/Size;

.field private final m_SensorPixelSizeFull:Landroid/util/Size;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/meizu/media/camera/CameraInfo;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cameraInfo"    # Lcom/meizu/media/camera/CameraInfo;

    .prologue
    .line 39
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/oneplus/base/HandlerBaseObject;-><init>(Z)V

    .line 42
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/media/camera/BaseCamera;->m_Context:Landroid/content/Context;

    .line 45
    sget-object v17, Lcom/meizu/media/camera/CameraInfo;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    packed-switch v17, :pswitch_data_0

    .line 54
    new-instance v17, Ljava/lang/RuntimeException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unknown lens facing : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/meizu/media/camera/CameraInfo;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 48
    :pswitch_0
    sget-object v17, Lcom/meizu/media/camera/Camera$LensFacing;->BACK:Lcom/meizu/media/camera/Camera$LensFacing;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/media/camera/BaseCamera;->m_LensFacing:Lcom/meizu/media/camera/Camera$LensFacing;

    .line 58
    :goto_0
    const/4 v12, 0x0

    .line 59
    .local v12, "isManualSupported":Z
    sget-object v17, Lcom/meizu/media/camera/CameraInfo;->PROP_CAPABILITIES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 60
    .local v5, "capabilities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 62
    const/4 v12, 0x1

    .line 63
    sget-object v17, Lcom/meizu/media/camera/BaseCamera;->PROP_IS_MANUAL_CONTROL_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 65
    :cond_0
    const/16 v17, 0x3

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 66
    sget-object v17, Lcom/meizu/media/camera/BaseCamera;->PROP_IS_RAW_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 67
    :cond_1
    sget-object v17, Lcom/meizu/media/camera/BaseCamera;->PROP_IS_BURST_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 70
    sget-object v17, Lcom/meizu/media/camera/CameraInfo;->PROP_SENSOR_RECT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/graphics/Rect;

    .line 71
    .local v16, "sensorRect":Landroid/graphics/Rect;
    new-instance v17, Landroid/util/Size;

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v18

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v19

    invoke-direct/range {v17 .. v19}, Landroid/util/Size;-><init>(II)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/media/camera/BaseCamera;->m_SensorPixelSize:Landroid/util/Size;

    .line 72
    sget-object v17, Lcom/meizu/media/camera/CameraInfo;->PROP_SENSOR_PIXEL_SIZE_FULL:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/util/Size;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/media/camera/BaseCamera;->m_SensorPixelSizeFull:Landroid/util/Size;

    .line 73
    sget-object v17, Lcom/meizu/media/camera/CameraInfo;->PROP_SENSOR_PHYSICAL_SIZE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/util/SizeF;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/media/camera/BaseCamera;->m_SensorPhysicalSize:Landroid/util/SizeF;

    .line 76
    sget-object v17, Lcom/meizu/media/camera/CameraInfo;->PROP_SURFACE_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    .line 77
    .local v15, "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    sget-object v17, Lcom/meizu/media/camera/BaseCamera;->PROP_PREVIEW_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Lcom/meizu/media/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 80
    sget-object v17, Lcom/meizu/media/camera/BaseCamera;->PROP_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    sget-object v18, Lcom/meizu/media/camera/CameraInfo;->PROP_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 83
    sget-object v17, Lcom/meizu/media/camera/BaseCamera;->PROP_VIDEO_SIZES:Lcom/oneplus/base/PropertyKey;

    sget-object v18, Lcom/meizu/media/camera/CameraInfo;->PROP_VIDEO_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 86
    sget-object v17, Lcom/meizu/media/camera/CameraInfo;->PROP_SENSOR_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/media/camera/BaseCamera;->m_SensorOrientation:I

    .line 89
    sget-object v17, Lcom/meizu/media/camera/BaseCamera;->PROP_HAS_FLASH:Lcom/oneplus/base/PropertyKey;

    sget-object v18, Lcom/meizu/media/camera/CameraInfo;->PROP_FLASH_AVAILABLE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 92
    sget-object v17, Lcom/meizu/media/camera/BaseCamera;->PROP_MAX_AE_REGION_COUNT:Lcom/oneplus/base/PropertyKey;

    sget-object v18, Lcom/meizu/media/camera/CameraInfo;->PROP_MAX_AE_COUNT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 95
    sget-object v17, Lcom/meizu/media/camera/BaseCamera;->PROP_MAX_AF_REGION_COUNT:Lcom/oneplus/base/PropertyKey;

    sget-object v18, Lcom/meizu/media/camera/CameraInfo;->PROP_MAX_AF_COUNT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 98
    sget-object v17, Lcom/meizu/media/camera/CameraInfo;->PROP_AF_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 99
    .local v3, "afModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v9, "focusModes":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/FocusMode;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v17

    add-int/lit8 v11, v17, -0x1

    .local v11, "i":I
    :goto_1
    if-ltz v11, :cond_3

    .line 102
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    packed-switch v17, :pswitch_data_1

    .line 100
    :cond_2
    :goto_2
    :pswitch_1
    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    .line 51
    .end local v3    # "afModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "capabilities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "focusModes":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/FocusMode;>;"
    .end local v11    # "i":I
    .end local v12    # "isManualSupported":Z
    .end local v15    # "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v16    # "sensorRect":Landroid/graphics/Rect;
    :pswitch_2
    sget-object v17, Lcom/meizu/media/camera/Camera$LensFacing;->FRONT:Lcom/meizu/media/camera/Camera$LensFacing;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/media/camera/BaseCamera;->m_LensFacing:Lcom/meizu/media/camera/Camera$LensFacing;

    goto/16 :goto_0

    .line 105
    .restart local v3    # "afModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v5    # "capabilities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v9    # "focusModes":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/media/camera/FocusMode;>;"
    .restart local v11    # "i":I
    .restart local v12    # "isManualSupported":Z
    .restart local v15    # "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .restart local v16    # "sensorRect":Landroid/graphics/Rect;
    :pswitch_3
    sget-object v17, Lcom/meizu/media/camera/FocusMode;->NORMAL_AF:Lcom/meizu/media/camera/FocusMode;

    move-object/from16 v0, v17

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 109
    :pswitch_4
    sget-object v17, Lcom/meizu/media/camera/FocusMode;->CONTINUOUS_AF:Lcom/meizu/media/camera/FocusMode;

    move-object/from16 v0, v17

    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 110
    sget-object v17, Lcom/meizu/media/camera/FocusMode;->CONTINUOUS_AF:Lcom/meizu/media/camera/FocusMode;

    move-object/from16 v0, v17

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 113
    :pswitch_5
    if-eqz v12, :cond_2

    .line 114
    sget-object v17, Lcom/meizu/media/camera/FocusMode;->MANUAL:Lcom/meizu/media/camera/FocusMode;

    move-object/from16 v0, v17

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 118
    :cond_3
    sget-object v17, Lcom/meizu/media/camera/FocusMode;->DISABLED:Lcom/meizu/media/camera/FocusMode;

    move-object/from16 v0, v17

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v17, Lcom/meizu/media/camera/BaseCamera;->PROP_FOCUS_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 122
    sget-object v17, Lcom/meizu/media/camera/CameraInfo;->PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/List;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/media/camera/BaseCamera;->m_SceneModes:Ljava/util/List;

    .line 123
    sget-object v17, Lcom/meizu/media/camera/BaseCamera;->PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/BaseCamera;->m_SceneModes:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 126
    sget-object v17, Lcom/meizu/media/camera/CameraInfo;->PROP_EV_STEP:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/util/Rational;

    invoke-virtual/range {v17 .. v17}, Landroid/util/Rational;->floatValue()F

    move-result v6

    .line 127
    .local v6, "evStep":F
    sget-object v17, Lcom/meizu/media/camera/CameraInfo;->PROP_EXPOSURE_COMP_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Range;

    .line 128
    .local v7, "exposureCompRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    sget-object v18, Lcom/meizu/media/camera/BaseCamera;->PROP_EXPOSURE_COMPENSATION_RANGE:Lcom/oneplus/base/PropertyKey;

    new-instance v19, Landroid/util/Range;

    invoke-virtual {v7}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v6

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    invoke-virtual {v7}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v6

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 129
    sget-object v17, Lcom/meizu/media/camera/BaseCamera;->PROP_EXPOSURE_COMPENSATION_STEP:Lcom/oneplus/base/PropertyKey;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 132
    sget-object v17, Lcom/meizu/media/camera/CameraInfo;->PROP_MAX_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Float;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v14

    .line 133
    .local v14, "maxDigitalZoom":F
    sget-object v17, Lcom/meizu/media/camera/BaseCamera;->PROP_MAX_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 136
    sget-object v17, Lcom/meizu/media/camera/CameraInfo;->PROP_HARDWARE_LEVEL:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    packed-switch v17, :pswitch_data_2

    .line 146
    sget-object v17, Lcom/meizu/media/camera/Camera$HardwareLevel;->LEGACY:Lcom/meizu/media/camera/Camera$HardwareLevel;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/media/camera/BaseCamera;->m_HardwareLevel:Lcom/meizu/media/camera/Camera$HardwareLevel;

    .line 149
    :goto_3
    sget-object v17, Lcom/meizu/media/camera/BaseCamera;->PROP_HARDWARE_LEVEL:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/BaseCamera;->m_HardwareLevel:Lcom/meizu/media/camera/Camera$HardwareLevel;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/BaseCamera;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "BaseCamera() - Camera hardwareLevel: "

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/BaseCamera;->m_HardwareLevel:Lcom/meizu/media/camera/Camera$HardwareLevel;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 153
    sget-object v17, Lcom/meizu/media/camera/CameraInfo;->PROP_FOCUS_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Range;

    .line 154
    .local v10, "focusRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    sget-object v17, Lcom/meizu/media/camera/BaseCamera;->PROP_FOCUS_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v10}, Lcom/meizu/media/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/BaseCamera;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "BaseCamera() - Focus range: "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v10}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    sget-object v17, Lcom/meizu/media/camera/CameraInfo;->PROP_EXPOSURE_TIME_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Range;

    .line 159
    .local v8, "exposureTimeRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    sget-object v17, Lcom/meizu/media/camera/BaseCamera;->PROP_EXPOSURE_TIME_NANOS_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Lcom/meizu/media/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/BaseCamera;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "BaseCamera() - Exposure time range: "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 163
    sget-object v17, Lcom/meizu/media/camera/CameraInfo;->PROP_AWB_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 164
    .local v4, "awbModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v17, Lcom/meizu/media/camera/BaseCamera;->PROP_AWB_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Lcom/meizu/media/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/BaseCamera;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "BaseCamera() - AWB modes: "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    sget-object v17, Lcom/meizu/media/camera/CameraInfo;->PROP_ISO_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Range;

    .line 169
    .local v13, "isoRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    sget-object v17, Lcom/meizu/media/camera/BaseCamera;->PROP_ISO_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v13}, Lcom/meizu/media/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/media/camera/BaseCamera;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "BaseCamera() - ISO range: "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v13}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    sget-object v17, Lcom/meizu/media/camera/BaseCamera;->PROP_IS_MIRROR_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    sget-object v18, Lcom/meizu/media/camera/CameraInfo;->PROP_IS_MIRROR_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/meizu/media/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 176
    sget-object v17, Lcom/meizu/media/camera/BaseCamera;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/BaseCamera;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 177
    sget-object v17, Lcom/meizu/media/camera/BaseCamera;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/BaseCamera;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 178
    sget-object v17, Lcom/meizu/media/camera/BaseCamera;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/BaseCamera;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 179
    sget-object v17, Lcom/meizu/media/camera/BaseCamera;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/BaseCamera;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 180
    sget-object v17, Lcom/meizu/media/camera/BaseCamera;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/BaseCamera;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 181
    sget-object v17, Lcom/meizu/media/camera/BaseCamera;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/BaseCamera;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 182
    return-void

    .line 139
    .end local v4    # "awbModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8    # "exposureTimeRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    .end local v10    # "focusRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    .end local v13    # "isoRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :pswitch_6
    sget-object v17, Lcom/meizu/media/camera/Camera$HardwareLevel;->FULL:Lcom/meizu/media/camera/Camera$HardwareLevel;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/media/camera/BaseCamera;->m_HardwareLevel:Lcom/meizu/media/camera/Camera$HardwareLevel;

    goto/16 :goto_3

    .line 142
    :pswitch_7
    sget-object v17, Lcom/meizu/media/camera/Camera$HardwareLevel;->LIMITED:Lcom/meizu/media/camera/Camera$HardwareLevel;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/media/camera/BaseCamera;->m_HardwareLevel:Lcom/meizu/media/camera/Camera$HardwareLevel;

    goto/16 :goto_3

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 102
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 136
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;)TTValue;"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/meizu/media/camera/BaseCamera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/meizu/media/camera/BaseCamera;->m_LensFacing:Lcom/meizu/media/camera/Camera$LensFacing;

    .line 202
    :goto_0
    return-object v0

    .line 192
    :cond_0
    sget-object v0, Lcom/meizu/media/camera/BaseCamera;->PROP_SENSOR_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1

    .line 193
    iget v0, p0, Lcom/meizu/media/camera/BaseCamera;->m_SensorOrientation:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 194
    :cond_1
    sget-object v0, Lcom/meizu/media/camera/BaseCamera;->PROP_SENSOR_PHYSICAL_SIZE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_2

    .line 195
    iget-object v0, p0, Lcom/meizu/media/camera/BaseCamera;->m_SensorPhysicalSize:Landroid/util/SizeF;

    goto :goto_0

    .line 196
    :cond_2
    sget-object v0, Lcom/meizu/media/camera/BaseCamera;->PROP_SENSOR_RATIO:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_3

    .line 197
    iget-object v0, p0, Lcom/meizu/media/camera/BaseCamera;->m_SensorPixelSize:Landroid/util/Size;

    invoke-static {v0}, Lcom/oneplus/util/AspectRatio;->get(Landroid/util/Size;)Lcom/oneplus/util/AspectRatio;

    move-result-object v0

    goto :goto_0

    .line 198
    :cond_3
    sget-object v0, Lcom/meizu/media/camera/BaseCamera;->PROP_SENSOR_SIZE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_4

    .line 199
    iget-object v0, p0, Lcom/meizu/media/camera/BaseCamera;->m_SensorPixelSize:Landroid/util/Size;

    goto :goto_0

    .line 200
    :cond_4
    sget-object v0, Lcom/meizu/media/camera/BaseCamera;->PROP_SENSOR_SIZE_FULL:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_5

    .line 201
    iget-object v0, p0, Lcom/meizu/media/camera/BaseCamera;->m_SensorPixelSizeFull:Landroid/util/Size;

    goto :goto_0

    .line 202
    :cond_5
    invoke-super {p0, p1}, Lcom/oneplus/base/HandlerBaseObject;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/meizu/media/camera/BaseCamera;->m_Context:Landroid/content/Context;

    return-object v0
.end method
