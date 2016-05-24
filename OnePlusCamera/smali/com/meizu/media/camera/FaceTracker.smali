.class public interface abstract Lcom/meizu/media/camera/FaceTracker;
.super Ljava/lang/Object;
.source "FaceTracker.java"

# interfaces
.implements Lcom/oneplus/base/component/Component;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/media/camera/FaceTracker$FaceDetectionDisabledReason;
    }
.end annotation


# static fields
.field public static final PROP_FACES:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/media/camera/Camera$Face;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 20
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "Faces"

    const-class v2, Ljava/util/List;

    const-class v3, Lcom/meizu/media/camera/FaceTracker;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/meizu/media/camera/FaceTracker;->PROP_FACES:Lcom/oneplus/base/PropertyKey;

    return-void
.end method


# virtual methods
.method public abstract disableFaceDetection(Lcom/meizu/media/camera/FaceTracker$FaceDetectionDisabledReason;I)Lcom/oneplus/base/Handle;
.end method
