.class synthetic Lcom/meizu/media/camera/CameraThread$36;
.super Ljava/lang/Object;
.source "CameraThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/CameraThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$oneplus$base$Rotation:[I

.field static final synthetic $SwitchMap$com$oneplus$camera$Camera$State:[I

.field static final synthetic $SwitchMap$com$oneplus$camera$OperationState:[I

.field static final synthetic $SwitchMap$com$oneplus$camera$PhotoCaptureState:[I

.field static final synthetic $SwitchMap$com$oneplus$camera$VideoCaptureState:[I

.field static final synthetic $SwitchMap$com$oneplus$camera$media$MediaType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2886
    invoke-static {}, Lcom/meizu/media/camera/OperationState;->values()[Lcom/meizu/media/camera/OperationState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/meizu/media/camera/CameraThread$36;->$SwitchMap$com$oneplus$camera$OperationState:[I

    :try_start_0
    sget-object v0, Lcom/meizu/media/camera/CameraThread$36;->$SwitchMap$com$oneplus$camera$OperationState:[I

    sget-object v1, Lcom/meizu/media/camera/OperationState;->STARTING:Lcom/meizu/media/camera/OperationState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/OperationState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_17

    :goto_0
    :try_start_1
    sget-object v0, Lcom/meizu/media/camera/CameraThread$36;->$SwitchMap$com$oneplus$camera$OperationState:[I

    sget-object v1, Lcom/meizu/media/camera/OperationState;->STARTED:Lcom/meizu/media/camera/OperationState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/OperationState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_16

    :goto_1
    :try_start_2
    sget-object v0, Lcom/meizu/media/camera/CameraThread$36;->$SwitchMap$com$oneplus$camera$OperationState:[I

    sget-object v1, Lcom/meizu/media/camera/OperationState;->STOPPED:Lcom/meizu/media/camera/OperationState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/OperationState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_15

    :goto_2
    :try_start_3
    sget-object v0, Lcom/meizu/media/camera/CameraThread$36;->$SwitchMap$com$oneplus$camera$OperationState:[I

    sget-object v1, Lcom/meizu/media/camera/OperationState;->STOPPING:Lcom/meizu/media/camera/OperationState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/OperationState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_14

    .line 2423
    :goto_3
    invoke-static {}, Lcom/meizu/media/camera/Camera$State;->values()[Lcom/meizu/media/camera/Camera$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/meizu/media/camera/CameraThread$36;->$SwitchMap$com$oneplus$camera$Camera$State:[I

    :try_start_4
    sget-object v0, Lcom/meizu/media/camera/CameraThread$36;->$SwitchMap$com$oneplus$camera$Camera$State:[I

    sget-object v1, Lcom/meizu/media/camera/Camera$State;->OPENING:Lcom/meizu/media/camera/Camera$State;

    invoke-virtual {v1}, Lcom/meizu/media/camera/Camera$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_13

    :goto_4
    :try_start_5
    sget-object v0, Lcom/meizu/media/camera/CameraThread$36;->$SwitchMap$com$oneplus$camera$Camera$State:[I

    sget-object v1, Lcom/meizu/media/camera/Camera$State;->OPENED:Lcom/meizu/media/camera/Camera$State;

    invoke-virtual {v1}, Lcom/meizu/media/camera/Camera$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_12

    .line 2164
    :goto_5
    invoke-static {}, Lcom/oneplus/base/Rotation;->values()[Lcom/oneplus/base/Rotation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/meizu/media/camera/CameraThread$36;->$SwitchMap$com$oneplus$base$Rotation:[I

    :try_start_6
    sget-object v0, Lcom/meizu/media/camera/CameraThread$36;->$SwitchMap$com$oneplus$base$Rotation:[I

    sget-object v1, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_11

    :goto_6
    :try_start_7
    sget-object v0, Lcom/meizu/media/camera/CameraThread$36;->$SwitchMap$com$oneplus$base$Rotation:[I

    sget-object v1, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_10

    :goto_7
    :try_start_8
    sget-object v0, Lcom/meizu/media/camera/CameraThread$36;->$SwitchMap$com$oneplus$base$Rotation:[I

    sget-object v1, Lcom/oneplus/base/Rotation;->INVERSE_LANDSCAPE:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_f

    :goto_8
    :try_start_9
    sget-object v0, Lcom/meizu/media/camera/CameraThread$36;->$SwitchMap$com$oneplus$base$Rotation:[I

    sget-object v1, Lcom/oneplus/base/Rotation;->INVERSE_PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_e

    .line 1513
    :goto_9
    invoke-static {}, Lcom/meizu/media/camera/media/MediaType;->values()[Lcom/meizu/media/camera/media/MediaType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/meizu/media/camera/CameraThread$36;->$SwitchMap$com$oneplus$camera$media$MediaType:[I

    :try_start_a
    sget-object v0, Lcom/meizu/media/camera/CameraThread$36;->$SwitchMap$com$oneplus$camera$media$MediaType:[I

    sget-object v1, Lcom/meizu/media/camera/media/MediaType;->PHOTO:Lcom/meizu/media/camera/media/MediaType;

    invoke-virtual {v1}, Lcom/meizu/media/camera/media/MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_d

    :goto_a
    :try_start_b
    sget-object v0, Lcom/meizu/media/camera/CameraThread$36;->$SwitchMap$com$oneplus$camera$media$MediaType:[I

    sget-object v1, Lcom/meizu/media/camera/media/MediaType;->VIDEO:Lcom/meizu/media/camera/media/MediaType;

    invoke-virtual {v1}, Lcom/meizu/media/camera/media/MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_c

    .line 1133
    :goto_b
    invoke-static {}, Lcom/meizu/media/camera/VideoCaptureState;->values()[Lcom/meizu/media/camera/VideoCaptureState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/meizu/media/camera/CameraThread$36;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    :try_start_c
    sget-object v0, Lcom/meizu/media/camera/CameraThread$36;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    sget-object v1, Lcom/meizu/media/camera/VideoCaptureState;->READY:Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_b

    :goto_c
    :try_start_d
    sget-object v0, Lcom/meizu/media/camera/CameraThread$36;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    sget-object v1, Lcom/meizu/media/camera/VideoCaptureState;->STARTING:Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_a

    :goto_d
    :try_start_e
    sget-object v0, Lcom/meizu/media/camera/CameraThread$36;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    sget-object v1, Lcom/meizu/media/camera/VideoCaptureState;->PREPARING:Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_9

    :goto_e
    :try_start_f
    sget-object v0, Lcom/meizu/media/camera/CameraThread$36;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    sget-object v1, Lcom/meizu/media/camera/VideoCaptureState;->REVIEWING:Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_8

    :goto_f
    :try_start_10
    sget-object v0, Lcom/meizu/media/camera/CameraThread$36;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    sget-object v1, Lcom/meizu/media/camera/VideoCaptureState;->CAPTURING:Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_7

    :goto_10
    :try_start_11
    sget-object v0, Lcom/meizu/media/camera/CameraThread$36;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    sget-object v1, Lcom/meizu/media/camera/VideoCaptureState;->PAUSING:Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_6

    :goto_11
    :try_start_12
    sget-object v0, Lcom/meizu/media/camera/CameraThread$36;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    sget-object v1, Lcom/meizu/media/camera/VideoCaptureState;->PAUSED:Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_5

    :goto_12
    :try_start_13
    sget-object v0, Lcom/meizu/media/camera/CameraThread$36;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    sget-object v1, Lcom/meizu/media/camera/VideoCaptureState;->RESUMING:Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_4

    .line 892
    :goto_13
    invoke-static {}, Lcom/meizu/media/camera/PhotoCaptureState;->values()[Lcom/meizu/media/camera/PhotoCaptureState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/meizu/media/camera/CameraThread$36;->$SwitchMap$com$oneplus$camera$PhotoCaptureState:[I

    :try_start_14
    sget-object v0, Lcom/meizu/media/camera/CameraThread$36;->$SwitchMap$com$oneplus$camera$PhotoCaptureState:[I

    sget-object v1, Lcom/meizu/media/camera/PhotoCaptureState;->READY:Lcom/meizu/media/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_3

    :goto_14
    :try_start_15
    sget-object v0, Lcom/meizu/media/camera/CameraThread$36;->$SwitchMap$com$oneplus$camera$PhotoCaptureState:[I

    sget-object v1, Lcom/meizu/media/camera/PhotoCaptureState;->STARTING:Lcom/meizu/media/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_2

    :goto_15
    :try_start_16
    sget-object v0, Lcom/meizu/media/camera/CameraThread$36;->$SwitchMap$com$oneplus$camera$PhotoCaptureState:[I

    sget-object v1, Lcom/meizu/media/camera/PhotoCaptureState;->PREPARING:Lcom/meizu/media/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_1

    :goto_16
    :try_start_17
    sget-object v0, Lcom/meizu/media/camera/CameraThread$36;->$SwitchMap$com$oneplus$camera$PhotoCaptureState:[I

    sget-object v1, Lcom/meizu/media/camera/PhotoCaptureState;->REVIEWING:Lcom/meizu/media/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_0

    :goto_17
    return-void

    :catch_0
    move-exception v0

    goto :goto_17

    :catch_1
    move-exception v0

    goto :goto_16

    :catch_2
    move-exception v0

    goto :goto_15

    :catch_3
    move-exception v0

    goto :goto_14

    .line 1133
    :catch_4
    move-exception v0

    goto :goto_13

    :catch_5
    move-exception v0

    goto :goto_12

    :catch_6
    move-exception v0

    goto :goto_11

    :catch_7
    move-exception v0

    goto :goto_10

    :catch_8
    move-exception v0

    goto :goto_f

    :catch_9
    move-exception v0

    goto/16 :goto_e

    :catch_a
    move-exception v0

    goto/16 :goto_d

    :catch_b
    move-exception v0

    goto/16 :goto_c

    .line 1513
    :catch_c
    move-exception v0

    goto/16 :goto_b

    :catch_d
    move-exception v0

    goto/16 :goto_a

    .line 2164
    :catch_e
    move-exception v0

    goto/16 :goto_9

    :catch_f
    move-exception v0

    goto/16 :goto_8

    :catch_10
    move-exception v0

    goto/16 :goto_7

    :catch_11
    move-exception v0

    goto/16 :goto_6

    .line 2423
    :catch_12
    move-exception v0

    goto/16 :goto_5

    :catch_13
    move-exception v0

    goto/16 :goto_4

    .line 2886
    :catch_14
    move-exception v0

    goto/16 :goto_3

    :catch_15
    move-exception v0

    goto/16 :goto_2

    :catch_16
    move-exception v0

    goto/16 :goto_1

    :catch_17
    move-exception v0

    goto/16 :goto_0
.end method