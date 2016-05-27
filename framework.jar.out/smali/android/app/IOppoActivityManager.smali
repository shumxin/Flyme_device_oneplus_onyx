.class public interface abstract Landroid/app/IOppoActivityManager;
.super Ljava/lang/Object;
.source "IOppoActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IOppoActivityManager$Service;
    }
.end annotation


# static fields
.field public static final GET_TOP_ACTIVITY_COMPONENTNAME_TRANSACTION:I = 0x2717

.field public static final IS_PERMISSION_INTERCEPT_ENABLED:I = 0x2715

.field public static final KILL_PID_FORCE:I = 0x2718

.field public static final OPPO_CALL_TRANSACTION_INDEX:I = 0x2710

.field public static final OPPO_FIRST_CALL_TRANSACTION:I = 0x2711

.field public static final SET_PERMISSION_INTERCEPT_ENABLE:I = 0x2714

.field public static final SET_PROPERTIES_TRANSACTION:I = 0x2716

.field public static final SET_SECURE_CONTROLLER_TRANSACTION:I = 0x2712

.field public static final UPDATE_PERMISSION_CHOICE:I = 0x2713


# virtual methods
.method public abstract getTopActivityComponentName()Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isPermissionInterceptEnabled()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract killPidForce(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setPermissionInterceptEnable(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setSecureController(Landroid/app/IActivityController;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setSystemProperties(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updatePermissionChoice(Ljava/lang/String;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
