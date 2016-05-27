.class Lcom/android/internal/policy/impl/OppoPhoneWindowManager$9;
.super Landroid/os/Handler;
.source "OppoPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/OppoPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V
    .locals 0

    .prologue
    .line 1405
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$9;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1408
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 1427
    :goto_0
    return-void

    .line 1410
    :pswitch_0
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v4, :cond_0

    move v1, v4

    .line 1411
    .local v1, "isHomeOrLock":Z
    :goto_1
    iget v6, p1, Landroid/os/Message;->arg2:I

    if-ne v6, v4, :cond_1

    move v3, v4

    .line 1413
    .local v3, "isSemipermeable":Z
    :goto_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$9;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    invoke-virtual {v4, v1, v3}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->sendIsHomeModeIntent(ZZ)V

    goto :goto_0

    .end local v1    # "isHomeOrLock":Z
    .end local v3    # "isSemipermeable":Z
    :cond_0
    move v1, v5

    .line 1410
    goto :goto_1

    .restart local v1    # "isHomeOrLock":Z
    :cond_1
    move v3, v5

    .line 1411
    goto :goto_2

    .line 1416
    .end local v1    # "isHomeOrLock":Z
    :pswitch_1
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v4, :cond_2

    move v0, v4

    .line 1417
    .local v0, "isCameraShow":Z
    :goto_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$9;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    invoke-virtual {v4, v0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->sendIsCameraModeIntent(Z)V

    goto :goto_0

    .end local v0    # "isCameraShow":Z
    :cond_2
    move v0, v5

    .line 1416
    goto :goto_3

    .line 1420
    :pswitch_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$9;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->setWallpaperLayer()V
    invoke-static {v4}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->access$1300(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V

    goto :goto_0

    .line 1423
    :pswitch_3
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v4, :cond_3

    move v2, v4

    .line 1424
    .local v2, "isInGestureGuide":Z
    :goto_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$9;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    invoke-virtual {v4, v2}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->sendIsInGestureGuideIntent(Z)V

    goto :goto_0

    .end local v2    # "isInGestureGuide":Z
    :cond_3
    move v2, v5

    .line 1423
    goto :goto_4

    .line 1408
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
