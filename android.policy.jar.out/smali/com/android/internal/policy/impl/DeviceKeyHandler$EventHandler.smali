.class Lcom/android/internal/policy/impl/DeviceKeyHandler$EventHandler;
.super Landroid/os/Handler;
.source "DeviceKeyHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/DeviceKeyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# static fields
.field static final MSG_KEYEVENT:I = 0x1

.field static final MSG_OPEN_CAMERA:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/DeviceKeyHandler;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/DeviceKeyHandler;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler$EventHandler;->this$0:Lcom/android/internal/policy/impl/DeviceKeyHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/DeviceKeyHandler;Lcom/android/internal/policy/impl/DeviceKeyHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/policy/impl/DeviceKeyHandler;
    .param p2, "x1"    # Lcom/android/internal/policy/impl/DeviceKeyHandler$1;

    .prologue
    .line 304
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/DeviceKeyHandler$EventHandler;-><init>(Lcom/android/internal/policy/impl/DeviceKeyHandler;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 310
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 318
    :goto_0
    return-void

    .line 312
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceKeyHandler$EventHandler;->this$0:Lcom/android/internal/policy/impl/DeviceKeyHandler;

    # invokes: Lcom/android/internal/policy/impl/DeviceKeyHandler;->processKeyEvent()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/DeviceKeyHandler;->access$700(Lcom/android/internal/policy/impl/DeviceKeyHandler;)V

    goto :goto_0

    .line 310
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
