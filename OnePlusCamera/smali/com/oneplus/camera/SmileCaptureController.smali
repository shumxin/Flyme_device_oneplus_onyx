.class public interface abstract Lcom/oneplus/camera/SmileCaptureController;
.super Ljava/lang/Object;
.source "SmileCaptureController.java"

# interfaces
.implements Lcom/oneplus/base/component/Component;


# static fields
.field public static final IS_ENABLED:Z = false

.field public static final PROP_IS_SMILE_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final SETTINGS_KEY_SMILE_CAPTURE:Ljava/lang/String; = "SmileCapture"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 21
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsSmileCaptureEnabled"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/SmileCaptureController;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/SmileCaptureController;->PROP_IS_SMILE_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    return-void
.end method
