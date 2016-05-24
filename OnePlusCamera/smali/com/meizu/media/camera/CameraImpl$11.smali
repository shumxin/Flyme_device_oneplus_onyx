.class synthetic Lcom/meizu/media/camera/CameraImpl$11;
.super Ljava/lang/Object;
.source "CameraImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/CameraImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$oneplus$camera$Camera$State:[I

.field static final synthetic $SwitchMap$com$oneplus$camera$FlashMode:[I

.field static final synthetic $SwitchMap$com$oneplus$camera$FocusMode:[I

.field static final synthetic $SwitchMap$com$oneplus$camera$FocusState:[I

.field static final synthetic $SwitchMap$com$oneplus$camera$OperationState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 3306
    invoke-static {}, Lcom/meizu/media/camera/FocusState;->values()[Lcom/meizu/media/camera/FocusState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/meizu/media/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$FocusState:[I

    :try_start_0
    sget-object v0, Lcom/meizu/media/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$FocusState:[I

    sget-object v1, Lcom/meizu/media/camera/FocusState;->STARTING:Lcom/meizu/media/camera/FocusState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/FocusState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_12

    :goto_0
    :try_start_1
    sget-object v0, Lcom/meizu/media/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$FocusState:[I

    sget-object v1, Lcom/meizu/media/camera/FocusState;->SCANNING:Lcom/meizu/media/camera/FocusState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/FocusState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_11

    .line 2811
    :goto_1
    invoke-static {}, Lcom/meizu/media/camera/FlashMode;->values()[Lcom/meizu/media/camera/FlashMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/meizu/media/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$FlashMode:[I

    :try_start_2
    sget-object v0, Lcom/meizu/media/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$FlashMode:[I

    sget-object v1, Lcom/meizu/media/camera/FlashMode;->AUTO:Lcom/meizu/media/camera/FlashMode;

    invoke-virtual {v1}, Lcom/meizu/media/camera/FlashMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_10

    :goto_2
    :try_start_3
    sget-object v0, Lcom/meizu/media/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$FlashMode:[I

    sget-object v1, Lcom/meizu/media/camera/FlashMode;->OFF:Lcom/meizu/media/camera/FlashMode;

    invoke-virtual {v1}, Lcom/meizu/media/camera/FlashMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_f

    :goto_3
    :try_start_4
    sget-object v0, Lcom/meizu/media/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$FlashMode:[I

    sget-object v1, Lcom/meizu/media/camera/FlashMode;->ON:Lcom/meizu/media/camera/FlashMode;

    invoke-virtual {v1}, Lcom/meizu/media/camera/FlashMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_e

    :goto_4
    :try_start_5
    sget-object v0, Lcom/meizu/media/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$FlashMode:[I

    sget-object v1, Lcom/meizu/media/camera/FlashMode;->TORCH:Lcom/meizu/media/camera/FlashMode;

    invoke-virtual {v1}, Lcom/meizu/media/camera/FlashMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_d

    .line 839
    :goto_5
    invoke-static {}, Lcom/meizu/media/camera/OperationState;->values()[Lcom/meizu/media/camera/OperationState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/meizu/media/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$OperationState:[I

    :try_start_6
    sget-object v0, Lcom/meizu/media/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$OperationState:[I

    sget-object v1, Lcom/meizu/media/camera/OperationState;->STARTED:Lcom/meizu/media/camera/OperationState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/OperationState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_c

    :goto_6
    :try_start_7
    sget-object v0, Lcom/meizu/media/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$OperationState:[I

    sget-object v1, Lcom/meizu/media/camera/OperationState;->STARTING:Lcom/meizu/media/camera/OperationState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/OperationState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_b

    :goto_7
    :try_start_8
    sget-object v0, Lcom/meizu/media/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$OperationState:[I

    sget-object v1, Lcom/meizu/media/camera/OperationState;->STOPPING:Lcom/meizu/media/camera/OperationState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/OperationState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_a

    :goto_8
    :try_start_9
    sget-object v0, Lcom/meizu/media/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$OperationState:[I

    sget-object v1, Lcom/meizu/media/camera/OperationState;->STOPPED:Lcom/meizu/media/camera/OperationState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/OperationState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    .line 827
    :goto_9
    invoke-static {}, Lcom/meizu/media/camera/Camera$State;->values()[Lcom/meizu/media/camera/Camera$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/meizu/media/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$Camera$State:[I

    :try_start_a
    sget-object v0, Lcom/meizu/media/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$Camera$State:[I

    sget-object v1, Lcom/meizu/media/camera/Camera$State;->OPENED:Lcom/meizu/media/camera/Camera$State;

    invoke-virtual {v1}, Lcom/meizu/media/camera/Camera$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_8

    :goto_a
    :try_start_b
    sget-object v0, Lcom/meizu/media/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$Camera$State:[I

    sget-object v1, Lcom/meizu/media/camera/Camera$State;->OPENING:Lcom/meizu/media/camera/Camera$State;

    invoke-virtual {v1}, Lcom/meizu/media/camera/Camera$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_7

    :goto_b
    :try_start_c
    sget-object v0, Lcom/meizu/media/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$Camera$State:[I

    sget-object v1, Lcom/meizu/media/camera/Camera$State;->CLOSED:Lcom/meizu/media/camera/Camera$State;

    invoke-virtual {v1}, Lcom/meizu/media/camera/Camera$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_6

    :goto_c
    :try_start_d
    sget-object v0, Lcom/meizu/media/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$Camera$State:[I

    sget-object v1, Lcom/meizu/media/camera/Camera$State;->CLOSING:Lcom/meizu/media/camera/Camera$State;

    invoke-virtual {v1}, Lcom/meizu/media/camera/Camera$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_5

    :goto_d
    :try_start_e
    sget-object v0, Lcom/meizu/media/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$Camera$State:[I

    sget-object v1, Lcom/meizu/media/camera/Camera$State;->UNAVAILABLE:Lcom/meizu/media/camera/Camera$State;

    invoke-virtual {v1}, Lcom/meizu/media/camera/Camera$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_4

    .line 453
    :goto_e
    invoke-static {}, Lcom/meizu/media/camera/FocusMode;->values()[Lcom/meizu/media/camera/FocusMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/meizu/media/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$FocusMode:[I

    :try_start_f
    sget-object v0, Lcom/meizu/media/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$FocusMode:[I

    sget-object v1, Lcom/meizu/media/camera/FocusMode;->CONTINUOUS_AF:Lcom/meizu/media/camera/FocusMode;

    invoke-virtual {v1}, Lcom/meizu/media/camera/FocusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_3

    :goto_f
    :try_start_10
    sget-object v0, Lcom/meizu/media/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$FocusMode:[I

    sget-object v1, Lcom/meizu/media/camera/FocusMode;->NORMAL_AF:Lcom/meizu/media/camera/FocusMode;

    invoke-virtual {v1}, Lcom/meizu/media/camera/FocusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_2

    :goto_10
    :try_start_11
    sget-object v0, Lcom/meizu/media/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$FocusMode:[I

    sget-object v1, Lcom/meizu/media/camera/FocusMode;->DISABLED:Lcom/meizu/media/camera/FocusMode;

    invoke-virtual {v1}, Lcom/meizu/media/camera/FocusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_1

    :goto_11
    :try_start_12
    sget-object v0, Lcom/meizu/media/camera/CameraImpl$11;->$SwitchMap$com$oneplus$camera$FocusMode:[I

    sget-object v1, Lcom/meizu/media/camera/FocusMode;->MANUAL:Lcom/meizu/media/camera/FocusMode;

    invoke-virtual {v1}, Lcom/meizu/media/camera/FocusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_0

    :goto_12
    return-void

    :catch_0
    move-exception v0

    goto :goto_12

    :catch_1
    move-exception v0

    goto :goto_11

    :catch_2
    move-exception v0

    goto :goto_10

    :catch_3
    move-exception v0

    goto :goto_f

    .line 827
    :catch_4
    move-exception v0

    goto :goto_e

    :catch_5
    move-exception v0

    goto :goto_d

    :catch_6
    move-exception v0

    goto :goto_c

    :catch_7
    move-exception v0

    goto :goto_b

    :catch_8
    move-exception v0

    goto :goto_a

    .line 839
    :catch_9
    move-exception v0

    goto/16 :goto_9

    :catch_a
    move-exception v0

    goto/16 :goto_8

    :catch_b
    move-exception v0

    goto/16 :goto_7

    :catch_c
    move-exception v0

    goto/16 :goto_6

    .line 2811
    :catch_d
    move-exception v0

    goto/16 :goto_5

    :catch_e
    move-exception v0

    goto/16 :goto_4

    :catch_f
    move-exception v0

    goto/16 :goto_3

    :catch_10
    move-exception v0

    goto/16 :goto_2

    .line 3306
    :catch_11
    move-exception v0

    goto/16 :goto_1

    :catch_12
    move-exception v0

    goto/16 :goto_0
.end method
