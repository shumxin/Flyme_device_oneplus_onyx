.class Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$1;
.super Landroid/telephony/PhoneStateListener;
.source "OppoScreenOffGestureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$1;->this$0:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 268
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 269
    packed-switch p1, :pswitch_data_0

    .line 285
    :goto_0
    return-void

    .line 271
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$1;->this$0:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mIsInOffHook:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->access$002(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;Z)Z

    goto :goto_0

    .line 275
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$1;->this$0:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    # setter for: Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mIsInOffHook:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->access$002(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;Z)Z

    goto :goto_0

    .line 279
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$1;->this$0:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    # setter for: Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->mIsInOffHook:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;->access$002(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;Z)Z

    goto :goto_0

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
