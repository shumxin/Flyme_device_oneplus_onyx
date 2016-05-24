.class Lcom/meizu/media/camera/CameraActivity$26;
.super Landroid/content/BroadcastReceiver;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/media/camera/CameraActivity;->registerReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/media/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/meizu/media/camera/CameraActivity;)V
    .locals 0

    .prologue
    .line 3937
    iput-object p1, p0, Lcom/meizu/media/camera/CameraActivity$26;->this$0:Lcom/meizu/media/camera/CameraActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3941
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 3972
    :cond_1
    :goto_1
    :pswitch_0
    return-void

    .line 3941
    :sswitch_0
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string v4, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 3944
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity$26;->this$0:Lcom/meizu/media/camera/CameraActivity;

    sget-object v2, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_SCREEN_ON:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3945
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity$26;->this$0:Lcom/meizu/media/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/meizu/media/camera/CameraActivity;->isSecurePhotoMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3947
    sget-object v1, Lcom/meizu/media/camera/CameraActivity$31;->$SwitchMap$com$oneplus$base$BaseActivity$State:[I

    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity$26;->this$0:Lcom/meizu/media/camera/CameraActivity;

    sget-object v2, Lcom/oneplus/base/BaseActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/meizu/media/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v0}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    .line 3955
    :pswitch_2
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity$26;->this$0:Lcom/meizu/media/camera/CameraActivity;

    # getter for: Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/meizu/media/camera/CameraActivity;->access$2800(Lcom/meizu/media/camera/CameraActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Intent: "

    const-string v2, ", finish itself"

    invoke-static {v0, v1, p2, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3956
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity$26;->this$0:Lcom/meizu/media/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/meizu/media/camera/CameraActivity;->finish()V

    goto :goto_1

    .line 3961
    :pswitch_3
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity$26;->this$0:Lcom/meizu/media/camera/CameraActivity;

    sget-object v1, Lcom/meizu/media/camera/CameraActivity;->PROP_IS_SCREEN_ON:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/media/camera/CameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_1

    .line 3965
    :pswitch_4
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity$26;->this$0:Lcom/meizu/media/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/meizu/media/camera/CameraActivity;->isSecurePhotoMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3967
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity$26;->this$0:Lcom/meizu/media/camera/CameraActivity;

    # getter for: Lcom/meizu/media/camera/CameraActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/meizu/media/camera/CameraActivity;->access$2900(Lcom/meizu/media/camera/CameraActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Intent: "

    const-string v2, ", finish itself"

    invoke-static {v0, v1, p2, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3968
    iget-object v0, p0, Lcom/meizu/media/camera/CameraActivity$26;->this$0:Lcom/meizu/media/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/meizu/media/camera/CameraActivity;->finish()V

    goto :goto_1

    .line 3941
    :sswitch_data_0
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_0
        -0x56ac2893 -> :sswitch_1
        0x311a1d6c -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 3947
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
