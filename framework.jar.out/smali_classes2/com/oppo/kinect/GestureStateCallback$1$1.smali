.class Lcom/oppo/kinect/GestureStateCallback$1$1;
.super Landroid/os/Handler;
.source "GestureStateCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/kinect/GestureStateCallback$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oppo/kinect/GestureStateCallback$1;


# direct methods
.method constructor <init>(Lcom/oppo/kinect/GestureStateCallback$1;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/oppo/kinect/GestureStateCallback$1$1;->this$1:Lcom/oppo/kinect/GestureStateCallback$1;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 45
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 51
    :goto_0
    return-void

    .line 47
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 48
    .local v0, "value":[I
    iget-object v1, p0, Lcom/oppo/kinect/GestureStateCallback$1$1;->this$1:Lcom/oppo/kinect/GestureStateCallback$1;

    iget-object v1, v1, Lcom/oppo/kinect/GestureStateCallback$1;->this$0:Lcom/oppo/kinect/GestureStateCallback;

    invoke-virtual {v1, v0}, Lcom/oppo/kinect/GestureStateCallback;->notifyResult([I)V

    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
