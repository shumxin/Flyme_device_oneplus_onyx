.class public interface abstract Landroid/view/IOppoWindowManager;
.super Ljava/lang/Object;
.source "IOppoWindowManager.java"


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowManager"

.field public static final GET_APK_UNLOCK_WINDOW:I = 0x2714

.field public static final GET_FOCUSED_WINDOW_FRAME:I = 0x2720

.field public static final IS_FLOAT_WINDOW_FORBIDDEN:I = 0x271e

.field public static final IS_FULL_SCREEN:I = 0x271b

.field public static final IS_INPUT_SHOW:I = 0x271a

.field public static final IS_LOCK_ON_SHOW:I = 0x2716

.field public static final IS_LOCK_WNDSHOW:I = 0x2712

.field public static final IS_ROTATING:I = 0x271d

.field public static final IS_SIM_UNLOCK_RUNNING:I = 0x2719

.field public static final IS_STATUSBAR_VISIBLE:I = 0x271c

.field public static final IS_WINDOW_SHOWN_FOR_UID:I = 0x2722

.field public static final KEYGUARD_SET_APK_LOCKSCREEN_SHOWING:I = 0x2713

.field public static final KEYGUARD_SHOE_SECURE_APKLOCK:I = 0x2715

.field public static final OPPO_CALL_TRANSACTION_INDEX:I = 0x2710

.field public static final OPPO_FIRST_CALL_TRANSACTION:I = 0x2711

.field public static final REQUEST_DISMISS_KEYGUARD:I = 0x2721

.field public static final RM_ADD_STATUSBAR_RUNNABLE:I = 0x2718

.field public static final SET_MAGNIFICATION_SPEC_EX:I = 0x271f

.field public static final SHOW_STATUSBAR:I = 0x2717


# virtual methods
.method public abstract checkIsFloatWindowForbidden(Ljava/lang/String;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getFocusedWindowFrame(Landroid/graphics/Rect;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isFullScreen()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isInputShow()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isRotatingLw()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isStatusBarVisible()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isWindowShownForUid(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestDismissKeyguard()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract rm_add_StatusBarRunnable(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setMagnificationSpecEx(Landroid/view/MagnificationSpec;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract showStatusBar()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
