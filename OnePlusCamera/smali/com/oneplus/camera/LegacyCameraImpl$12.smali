.class synthetic Lcom/oneplus/camera/LegacyCameraImpl$12;
.super Ljava/lang/Object;
.source "LegacyCameraImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/LegacyCameraImpl;
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

.field static final synthetic $SwitchMap$com$oneplus$camera$LegacyCameraImpl$TakingPictureResult:[I

.field static final synthetic $SwitchMap$com$oneplus$camera$OperationState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2101
    invoke-static {}, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->values()[Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oneplus/camera/LegacyCameraImpl$12;->$SwitchMap$com$oneplus$camera$LegacyCameraImpl$TakingPictureResult:[I

    :try_start_0
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl$12;->$SwitchMap$com$oneplus$camera$LegacyCameraImpl$TakingPictureResult:[I

    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->INVALID_JPEG:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    invoke-virtual {v1}, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_16

    :goto_0
    :try_start_1
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl$12;->$SwitchMap$com$oneplus$camera$LegacyCameraImpl$TakingPictureResult:[I

    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->INVALID_RAW:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    invoke-virtual {v1}, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_15

    :goto_1
    :try_start_2
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl$12;->$SwitchMap$com$oneplus$camera$LegacyCameraImpl$TakingPictureResult:[I

    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->FRAME_COUNT_REACHED:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    invoke-virtual {v1}, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_14

    :goto_2
    :try_start_3
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl$12;->$SwitchMap$com$oneplus$camera$LegacyCameraImpl$TakingPictureResult:[I

    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->TAKE_NEXT_PICTURE:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    invoke-virtual {v1}, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_13

    :goto_3
    :try_start_4
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl$12;->$SwitchMap$com$oneplus$camera$LegacyCameraImpl$TakingPictureResult:[I

    sget-object v1, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->CAPTURE_STOPPING:Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;

    invoke-virtual {v1}, Lcom/oneplus/camera/LegacyCameraImpl$TakingPictureResult;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_12

    .line 1758
    :goto_4
    invoke-static {}, Lcom/oneplus/camera/FocusState;->values()[Lcom/oneplus/camera/FocusState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oneplus/camera/LegacyCameraImpl$12;->$SwitchMap$com$oneplus$camera$FocusState:[I

    :try_start_5
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl$12;->$SwitchMap$com$oneplus$camera$FocusState:[I

    sget-object v1, Lcom/oneplus/camera/FocusState;->STARTING:Lcom/oneplus/camera/FocusState;

    invoke-virtual {v1}, Lcom/oneplus/camera/FocusState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_11

    :goto_5
    :try_start_6
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl$12;->$SwitchMap$com$oneplus$camera$FocusState:[I

    sget-object v1, Lcom/oneplus/camera/FocusState;->SCANNING:Lcom/oneplus/camera/FocusState;

    invoke-virtual {v1}, Lcom/oneplus/camera/FocusState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_10

    .line 1036
    :goto_6
    invoke-static {}, Lcom/oneplus/camera/OperationState;->values()[Lcom/oneplus/camera/OperationState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oneplus/camera/LegacyCameraImpl$12;->$SwitchMap$com$oneplus$camera$OperationState:[I

    :try_start_7
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl$12;->$SwitchMap$com$oneplus$camera$OperationState:[I

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_f

    :goto_7
    :try_start_8
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl$12;->$SwitchMap$com$oneplus$camera$OperationState:[I

    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_e

    :goto_8
    :try_start_9
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl$12;->$SwitchMap$com$oneplus$camera$OperationState:[I

    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_d

    :goto_9
    :try_start_a
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl$12;->$SwitchMap$com$oneplus$camera$OperationState:[I

    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_c

    .line 1028
    :goto_a
    invoke-static {}, Lcom/oneplus/camera/Camera$State;->values()[Lcom/oneplus/camera/Camera$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oneplus/camera/LegacyCameraImpl$12;->$SwitchMap$com$oneplus$camera$Camera$State:[I

    :try_start_b
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl$12;->$SwitchMap$com$oneplus$camera$Camera$State:[I

    sget-object v1, Lcom/oneplus/camera/Camera$State;->OPENED:Lcom/oneplus/camera/Camera$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :goto_b
    :try_start_c
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl$12;->$SwitchMap$com$oneplus$camera$Camera$State:[I

    sget-object v1, Lcom/oneplus/camera/Camera$State;->CLOSED:Lcom/oneplus/camera/Camera$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_a

    :goto_c
    :try_start_d
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl$12;->$SwitchMap$com$oneplus$camera$Camera$State:[I

    sget-object v1, Lcom/oneplus/camera/Camera$State;->CLOSING:Lcom/oneplus/camera/Camera$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_9

    :goto_d
    :try_start_e
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl$12;->$SwitchMap$com$oneplus$camera$Camera$State:[I

    sget-object v1, Lcom/oneplus/camera/Camera$State;->OPENING:Lcom/oneplus/camera/Camera$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_8

    .line 601
    :goto_e
    invoke-static {}, Lcom/oneplus/camera/FocusMode;->values()[Lcom/oneplus/camera/FocusMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oneplus/camera/LegacyCameraImpl$12;->$SwitchMap$com$oneplus$camera$FocusMode:[I

    :try_start_f
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl$12;->$SwitchMap$com$oneplus$camera$FocusMode:[I

    sget-object v1, Lcom/oneplus/camera/FocusMode;->DISABLED:Lcom/oneplus/camera/FocusMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/FocusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_7

    :goto_f
    :try_start_10
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl$12;->$SwitchMap$com$oneplus$camera$FocusMode:[I

    sget-object v1, Lcom/oneplus/camera/FocusMode;->NORMAL_AF:Lcom/oneplus/camera/FocusMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/FocusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_6

    :goto_10
    :try_start_11
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl$12;->$SwitchMap$com$oneplus$camera$FocusMode:[I

    sget-object v1, Lcom/oneplus/camera/FocusMode;->CONTINUOUS_AF:Lcom/oneplus/camera/FocusMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/FocusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_5

    :goto_11
    :try_start_12
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl$12;->$SwitchMap$com$oneplus$camera$FocusMode:[I

    sget-object v1, Lcom/oneplus/camera/FocusMode;->MANUAL:Lcom/oneplus/camera/FocusMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/FocusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_4

    .line 573
    :goto_12
    invoke-static {}, Lcom/oneplus/camera/FlashMode;->values()[Lcom/oneplus/camera/FlashMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oneplus/camera/LegacyCameraImpl$12;->$SwitchMap$com$oneplus$camera$FlashMode:[I

    :try_start_13
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl$12;->$SwitchMap$com$oneplus$camera$FlashMode:[I

    sget-object v1, Lcom/oneplus/camera/FlashMode;->AUTO:Lcom/oneplus/camera/FlashMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/FlashMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_3

    :goto_13
    :try_start_14
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl$12;->$SwitchMap$com$oneplus$camera$FlashMode:[I

    sget-object v1, Lcom/oneplus/camera/FlashMode;->OFF:Lcom/oneplus/camera/FlashMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/FlashMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_2

    :goto_14
    :try_start_15
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl$12;->$SwitchMap$com$oneplus$camera$FlashMode:[I

    sget-object v1, Lcom/oneplus/camera/FlashMode;->ON:Lcom/oneplus/camera/FlashMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/FlashMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_1

    :goto_15
    :try_start_16
    sget-object v0, Lcom/oneplus/camera/LegacyCameraImpl$12;->$SwitchMap$com$oneplus$camera$FlashMode:[I

    sget-object v1, Lcom/oneplus/camera/FlashMode;->TORCH:Lcom/oneplus/camera/FlashMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/FlashMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_0

    :goto_16
    return-void

    :catch_0
    move-exception v0

    goto :goto_16

    :catch_1
    move-exception v0

    goto :goto_15

    :catch_2
    move-exception v0

    goto :goto_14

    :catch_3
    move-exception v0

    goto :goto_13

    .line 601
    :catch_4
    move-exception v0

    goto :goto_12

    :catch_5
    move-exception v0

    goto :goto_11

    :catch_6
    move-exception v0

    goto :goto_10

    :catch_7
    move-exception v0

    goto :goto_f

    .line 1028
    :catch_8
    move-exception v0

    goto :goto_e

    :catch_9
    move-exception v0

    goto/16 :goto_d

    :catch_a
    move-exception v0

    goto/16 :goto_c

    :catch_b
    move-exception v0

    goto/16 :goto_b

    .line 1036
    :catch_c
    move-exception v0

    goto/16 :goto_a

    :catch_d
    move-exception v0

    goto/16 :goto_9

    :catch_e
    move-exception v0

    goto/16 :goto_8

    :catch_f
    move-exception v0

    goto/16 :goto_7

    .line 1758
    :catch_10
    move-exception v0

    goto/16 :goto_6

    :catch_11
    move-exception v0

    goto/16 :goto_5

    .line 2101
    :catch_12
    move-exception v0

    goto/16 :goto_4

    :catch_13
    move-exception v0

    goto/16 :goto_3

    :catch_14
    move-exception v0

    goto/16 :goto_2

    :catch_15
    move-exception v0

    goto/16 :goto_1

    :catch_16
    move-exception v0

    goto/16 :goto_0
.end method
