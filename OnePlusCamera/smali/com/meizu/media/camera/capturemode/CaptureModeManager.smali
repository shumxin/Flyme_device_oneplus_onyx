.class public interface abstract Lcom/meizu/media/camera/capturemode/CaptureModeManager;
.super Ljava/lang/Object;
.source "CaptureModeManager.java"

# interfaces
.implements Lcom/oneplus/base/component/Component;


# static fields
.field public static final EVENT_CAPTURE_MODE_ADDED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/meizu/media/camera/capturemode/CaptureModeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_CAPTURE_MODE_REMOVED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/meizu/media/camera/capturemode/CaptureModeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/meizu/media/camera/capturemode/CaptureMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_CAPTURE_MODES:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/media/camera/capturemode/CaptureMode;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 18
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "CaptureMode"

    const-class v2, Lcom/meizu/media/camera/capturemode/CaptureMode;

    const-class v3, Lcom/meizu/media/camera/capturemode/CaptureModeManager;

    sget-object v4, Lcom/meizu/media/camera/capturemode/CaptureMode;->INVALID:Lcom/meizu/media/camera/capturemode/CaptureMode;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    .line 23
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "CaptureModes"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/meizu/media/camera/capturemode/CaptureModeManager;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODES:Lcom/oneplus/base/PropertyKey;

    .line 29
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "CaptureModeAdded"

    const-class v2, Lcom/meizu/media/camera/capturemode/CaptureModeEventArgs;

    const-class v3, Lcom/meizu/media/camera/capturemode/CaptureModeManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/meizu/media/camera/capturemode/CaptureModeManager;->EVENT_CAPTURE_MODE_ADDED:Lcom/oneplus/base/EventKey;

    .line 33
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "CaptureModeRemoved"

    const-class v2, Lcom/meizu/media/camera/capturemode/CaptureModeEventArgs;

    const-class v3, Lcom/meizu/media/camera/capturemode/CaptureModeManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/meizu/media/camera/capturemode/CaptureModeManager;->EVENT_CAPTURE_MODE_REMOVED:Lcom/oneplus/base/EventKey;

    return-void
.end method


# virtual methods
.method public abstract addBuilder(Lcom/meizu/media/camera/capturemode/CaptureModeBuilder;I)Z
.end method

.method public abstract changeToInitialCaptureMode(I)Z
.end method

.method public abstract findCaptureMode(Ljava/lang/Class;)Lcom/meizu/media/camera/capturemode/CaptureMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/meizu/media/camera/capturemode/CaptureMode;"
        }
    .end annotation
.end method

.method public abstract setCaptureMode(Lcom/meizu/media/camera/capturemode/CaptureMode;I)Z
.end method
