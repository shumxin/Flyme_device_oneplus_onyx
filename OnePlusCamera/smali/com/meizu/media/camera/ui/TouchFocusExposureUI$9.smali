.class synthetic Lcom/meizu/media/camera/ui/TouchFocusExposureUI$9;
.super Ljava/lang/Object;
.source "TouchFocusExposureUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/ui/TouchFocusExposureUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$oneplus$camera$FocusState:[I

.field static final synthetic $SwitchMap$com$oneplus$camera$VideoCaptureState:[I

.field static final synthetic $SwitchMap$com$oneplus$camera$media$MediaType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 237
    invoke-static {}, Lcom/meizu/media/camera/FocusState;->values()[Lcom/meizu/media/camera/FocusState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/meizu/media/camera/ui/TouchFocusExposureUI$9;->$SwitchMap$com$oneplus$camera$FocusState:[I

    :try_start_0
    sget-object v0, Lcom/meizu/media/camera/ui/TouchFocusExposureUI$9;->$SwitchMap$com$oneplus$camera$FocusState:[I

    sget-object v1, Lcom/meizu/media/camera/FocusState;->SCANNING:Lcom/meizu/media/camera/FocusState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/FocusState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_0
    :try_start_1
    sget-object v0, Lcom/meizu/media/camera/ui/TouchFocusExposureUI$9;->$SwitchMap$com$oneplus$camera$FocusState:[I

    sget-object v1, Lcom/meizu/media/camera/FocusState;->FOCUSED:Lcom/meizu/media/camera/FocusState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/FocusState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_1
    :try_start_2
    sget-object v0, Lcom/meizu/media/camera/ui/TouchFocusExposureUI$9;->$SwitchMap$com$oneplus$camera$FocusState:[I

    sget-object v1, Lcom/meizu/media/camera/FocusState;->UNFOCUSED:Lcom/meizu/media/camera/FocusState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/FocusState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    .line 125
    :goto_2
    invoke-static {}, Lcom/meizu/media/camera/media/MediaType;->values()[Lcom/meizu/media/camera/media/MediaType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/meizu/media/camera/ui/TouchFocusExposureUI$9;->$SwitchMap$com$oneplus$camera$media$MediaType:[I

    :try_start_3
    sget-object v0, Lcom/meizu/media/camera/ui/TouchFocusExposureUI$9;->$SwitchMap$com$oneplus$camera$media$MediaType:[I

    sget-object v1, Lcom/meizu/media/camera/media/MediaType;->PHOTO:Lcom/meizu/media/camera/media/MediaType;

    invoke-virtual {v1}, Lcom/meizu/media/camera/media/MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    :try_start_4
    sget-object v0, Lcom/meizu/media/camera/ui/TouchFocusExposureUI$9;->$SwitchMap$com$oneplus$camera$media$MediaType:[I

    sget-object v1, Lcom/meizu/media/camera/media/MediaType;->VIDEO:Lcom/meizu/media/camera/media/MediaType;

    invoke-virtual {v1}, Lcom/meizu/media/camera/media/MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    .line 133
    :goto_4
    invoke-static {}, Lcom/meizu/media/camera/VideoCaptureState;->values()[Lcom/meizu/media/camera/VideoCaptureState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/meizu/media/camera/ui/TouchFocusExposureUI$9;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    :try_start_5
    sget-object v0, Lcom/meizu/media/camera/ui/TouchFocusExposureUI$9;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    sget-object v1, Lcom/meizu/media/camera/VideoCaptureState;->READY:Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    :try_start_6
    sget-object v0, Lcom/meizu/media/camera/ui/TouchFocusExposureUI$9;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    sget-object v1, Lcom/meizu/media/camera/VideoCaptureState;->CAPTURING:Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    :try_start_7
    sget-object v0, Lcom/meizu/media/camera/ui/TouchFocusExposureUI$9;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    sget-object v1, Lcom/meizu/media/camera/VideoCaptureState;->PAUSED:Lcom/meizu/media/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    return-void

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_5

    .line 125
    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_3

    .line 237
    :catch_5
    move-exception v0

    goto :goto_2

    :catch_6
    move-exception v0

    goto :goto_1

    :catch_7
    move-exception v0

    goto :goto_0
.end method
