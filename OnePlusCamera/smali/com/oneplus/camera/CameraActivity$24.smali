.class Lcom/oneplus/camera/CameraActivity$24;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/CameraActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/PropertyChangedCallback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/oneplus/io/Storage;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 0

    .prologue
    .line 3195
    iput-object p1, p0, Lcom/oneplus/camera/CameraActivity$24;->this$0:Lcom/oneplus/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 8
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/io/Storage;",
            ">;>;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/io/Storage;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/util/List<Lcom/oneplus/io/Storage;>;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/util/List<Lcom/oneplus/io/Storage;>;>;"
    const/4 v7, 0x0

    .line 3199
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity$24;->this$0:Lcom/oneplus/camera/CameraActivity;

    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/base/Settings;

    const-string v4, "StorageType"

    const-class v5, Lcom/oneplus/io/Storage$Type;

    sget-object v6, Lcom/oneplus/io/Storage$Type;->INTERNAL:Lcom/oneplus/io/Storage$Type;

    invoke-virtual {v3, v4, v5, v6}, Lcom/oneplus/base/Settings;->getEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v2

    check-cast v2, Lcom/oneplus/io/Storage$Type;

    .line 3200
    .local v2, "type":Lcom/oneplus/io/Storage$Type;
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity$24;->this$0:Lcom/oneplus/camera/CameraActivity;

    # getter for: Lcom/oneplus/camera/CameraActivity;->m_StorageManager:Lcom/oneplus/io/StorageManager;
    invoke-static {v3}, Lcom/oneplus/camera/CameraActivity;->access$2600(Lcom/oneplus/camera/CameraActivity;)Lcom/oneplus/io/StorageManager;

    move-result-object v3

    sget-object v4, Lcom/oneplus/io/Storage$Type;->SD_CARD:Lcom/oneplus/io/Storage$Type;

    invoke-static {v3, v4}, Lcom/oneplus/io/StorageUtils;->findStorage(Lcom/oneplus/io/StorageManager;Lcom/oneplus/io/Storage$Type;)Lcom/oneplus/io/Storage;

    move-result-object v1

    .line 3201
    .local v1, "sdcardStorage":Lcom/oneplus/io/Storage;
    if-nez v1, :cond_1

    sget-object v3, Lcom/oneplus/io/Storage$Type;->SD_CARD:Lcom/oneplus/io/Storage$Type;

    if-ne v2, v3, :cond_1

    .line 3204
    const/4 v0, 0x0

    .line 3205
    .local v0, "isShowed":Z
    sget-object v4, Lcom/oneplus/camera/CameraActivity$31;->$SwitchMap$com$oneplus$camera$VideoCaptureState:[I

    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity$24;->this$0:Lcom/oneplus/camera/CameraActivity;

    sget-object v5, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v5}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v3}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    .line 3218
    :goto_0
    if-nez v0, :cond_0

    .line 3219
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity$24;->this$0:Lcom/oneplus/camera/CameraActivity;

    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity$24;->this$0:Lcom/oneplus/camera/CameraActivity;

    iget v4, v4, Lcom/oneplus/camera/CameraActivity;->m_StorageToast:I

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/CameraActivity;->showToast(I)V

    .line 3220
    :cond_0
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity$24;->this$0:Lcom/oneplus/camera/CameraActivity;

    # getter for: Lcom/oneplus/camera/CameraActivity;->m_CameraThread:Lcom/oneplus/camera/CameraThread;
    invoke-static {v3}, Lcom/oneplus/camera/CameraActivity;->access$1500(Lcom/oneplus/camera/CameraActivity;)Lcom/oneplus/camera/CameraThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/camera/CameraThread;->checkRemainingMediaCount()V

    .line 3221
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity$24;->this$0:Lcom/oneplus/camera/CameraActivity;

    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/base/Settings;

    const-string v4, "StorageType"

    sget-object v5, Lcom/oneplus/io/Storage$Type;->INTERNAL:Lcom/oneplus/io/Storage$Type;

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3223
    .end local v0    # "isShowed":Z
    :cond_1
    return-void

    .line 3211
    .restart local v0    # "isShowed":Z
    :pswitch_0
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity$24;->this$0:Lcom/oneplus/camera/CameraActivity;

    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity$24;->this$0:Lcom/oneplus/camera/CameraActivity;

    # getter for: Lcom/oneplus/camera/CameraActivity;->m_VideoCaptureHandle:Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;
    invoke-static {v4}, Lcom/oneplus/camera/CameraActivity;->access$2700(Lcom/oneplus/camera/CameraActivity;)Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    move-result-object v4

    # invokes: Lcom/oneplus/camera/CameraActivity;->stopVideoCapture(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;ZZ)V
    invoke-static {v3, v4, v7, v7}, Lcom/oneplus/camera/CameraActivity;->access$200(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;ZZ)V

    .line 3212
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity$24;->this$0:Lcom/oneplus/camera/CameraActivity;

    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity$24;->this$0:Lcom/oneplus/camera/CameraActivity;

    iget v4, v4, Lcom/oneplus/camera/CameraActivity;->m_StorageStopRecordToast:I

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/CameraActivity;->showToast(I)V

    .line 3213
    const/4 v0, 0x1

    .line 3214
    goto :goto_0

    .line 3205
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
