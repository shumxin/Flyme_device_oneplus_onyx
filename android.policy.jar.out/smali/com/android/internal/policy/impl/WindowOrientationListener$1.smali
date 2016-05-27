.class Lcom/android/internal/policy/impl/WindowOrientationListener$1;
.super Landroid/os/Handler;
.source "WindowOrientationListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/WindowOrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/WindowOrientationListener;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/WindowOrientationListener;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$1;->this$0:Lcom/android/internal/policy/impl/WindowOrientationListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 119
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 126
    :goto_0
    :pswitch_0
    return-void

    .line 123
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$1;->this$0:Lcom/android/internal/policy/impl/WindowOrientationListener;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/WindowOrientationListener;->doDisable()V

    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
