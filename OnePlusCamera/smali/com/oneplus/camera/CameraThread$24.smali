.class Lcom/oneplus/camera/CameraThread$24;
.super Lcom/oneplus/base/Handle;
.source "CameraThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/CameraThread;->disableVideoSnapshot()Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/CameraThread;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraThread;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 1672
    iput-object p1, p0, Lcom/oneplus/camera/CameraThread$24;->this$0:Lcom/oneplus/camera/CameraThread;

    invoke-direct {p0, p2}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 1676
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread$24;->this$0:Lcom/oneplus/camera/CameraThread;

    # invokes: Lcom/oneplus/camera/CameraThread;->enableVideoSnapshot(Lcom/oneplus/base/Handle;)V
    invoke-static {v0, p0}, Lcom/oneplus/camera/CameraThread;->access$2700(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/base/Handle;)V

    .line 1677
    return-void
.end method