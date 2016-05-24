.class synthetic Lcom/meizu/media/camera/scene/SceneManagerImpl$2;
.super Ljava/lang/Object;
.source "SceneManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/scene/SceneManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$oneplus$camera$Mode$State:[I

.field static final synthetic $SwitchMap$com$oneplus$camera$OperationState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 371
    invoke-static {}, Lcom/meizu/media/camera/OperationState;->values()[Lcom/meizu/media/camera/OperationState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/meizu/media/camera/scene/SceneManagerImpl$2;->$SwitchMap$com$oneplus$camera$OperationState:[I

    :try_start_0
    sget-object v0, Lcom/meizu/media/camera/scene/SceneManagerImpl$2;->$SwitchMap$com$oneplus$camera$OperationState:[I

    sget-object v1, Lcom/meizu/media/camera/OperationState;->STARTING:Lcom/meizu/media/camera/OperationState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/OperationState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v0, Lcom/meizu/media/camera/scene/SceneManagerImpl$2;->$SwitchMap$com$oneplus$camera$OperationState:[I

    sget-object v1, Lcom/meizu/media/camera/OperationState;->STARTED:Lcom/meizu/media/camera/OperationState;

    invoke-virtual {v1}, Lcom/meizu/media/camera/OperationState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    .line 58
    :goto_1
    invoke-static {}, Lcom/meizu/media/camera/Mode$State;->values()[Lcom/meizu/media/camera/Mode$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/meizu/media/camera/scene/SceneManagerImpl$2;->$SwitchMap$com$oneplus$camera$Mode$State:[I

    :try_start_2
    sget-object v0, Lcom/meizu/media/camera/scene/SceneManagerImpl$2;->$SwitchMap$com$oneplus$camera$Mode$State:[I

    sget-object v1, Lcom/meizu/media/camera/Mode$State;->DISABLED:Lcom/meizu/media/camera/Mode$State;

    invoke-virtual {v1}, Lcom/meizu/media/camera/Mode$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v0, Lcom/meizu/media/camera/scene/SceneManagerImpl$2;->$SwitchMap$com$oneplus$camera$Mode$State:[I

    sget-object v1, Lcom/meizu/media/camera/Mode$State;->RELEASED:Lcom/meizu/media/camera/Mode$State;

    invoke-virtual {v1}, Lcom/meizu/media/camera/Mode$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    .line 371
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
