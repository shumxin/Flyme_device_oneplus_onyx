.class public interface abstract Lcom/meizu/media/camera/media/ResolutionSelector;
.super Ljava/lang/Object;
.source "ResolutionSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/media/camera/media/ResolutionSelector$Restriction;
    }
.end annotation


# virtual methods
.method public abstract getResolutionSettingsKey(Lcom/meizu/media/camera/Camera;Lcom/oneplus/base/Settings;)Ljava/lang/String;
.end method

.method public abstract saveResolution(Lcom/meizu/media/camera/Camera;Lcom/oneplus/base/Settings;Lcom/meizu/media/camera/media/Resolution;)V
.end method

.method public abstract selectPreviewSize(Lcom/meizu/media/camera/Camera;Lcom/oneplus/base/Settings;Landroid/util/Size;Lcom/meizu/media/camera/media/Resolution;)Landroid/util/Size;
.end method

.method public abstract selectResolution(Lcom/meizu/media/camera/Camera;Lcom/oneplus/base/Settings;Ljava/util/List;Lcom/meizu/media/camera/media/Resolution;Lcom/meizu/media/camera/media/ResolutionSelector$Restriction;)Lcom/meizu/media/camera/media/Resolution;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/media/camera/Camera;",
            "Lcom/oneplus/base/Settings;",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/media/camera/media/Resolution;",
            ">;",
            "Lcom/meizu/media/camera/media/Resolution;",
            "Lcom/meizu/media/camera/media/ResolutionSelector$Restriction;",
            ")",
            "Lcom/meizu/media/camera/media/Resolution;"
        }
    .end annotation
.end method

.method public abstract selectResolutions(Lcom/meizu/media/camera/Camera;Lcom/oneplus/base/Settings;Lcom/meizu/media/camera/media/ResolutionSelector$Restriction;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/media/camera/Camera;",
            "Lcom/oneplus/base/Settings;",
            "Lcom/meizu/media/camera/media/ResolutionSelector$Restriction;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/media/camera/media/Resolution;",
            ">;"
        }
    .end annotation
.end method
