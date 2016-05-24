.class public interface abstract Lcom/meizu/media/camera/capturemode/CaptureMode;
.super Ljava/lang/Object;
.source "CaptureMode.java"

# interfaces
.implements Lcom/meizu/media/camera/Mode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/media/camera/capturemode/CaptureMode$ImageUsage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/meizu/media/camera/Mode",
        "<",
        "Lcom/meizu/media/camera/capturemode/CaptureMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final INVALID:Lcom/meizu/media/camera/capturemode/CaptureMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/meizu/media/camera/capturemode/InvalidCaptureMode;

    invoke-direct {v0}, Lcom/meizu/media/camera/capturemode/InvalidCaptureMode;-><init>()V

    sput-object v0, Lcom/meizu/media/camera/capturemode/CaptureMode;->INVALID:Lcom/meizu/media/camera/capturemode/CaptureMode;

    return-void
.end method


# virtual methods
.method public abstract getCustomSettings()Lcom/oneplus/base/Settings;
.end method

.method public abstract getImage(Lcom/meizu/media/camera/capturemode/CaptureMode$ImageUsage;)Landroid/graphics/drawable/Drawable;
.end method
