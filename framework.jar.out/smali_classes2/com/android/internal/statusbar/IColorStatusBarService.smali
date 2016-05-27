.class public interface abstract Lcom/android/internal/statusbar/IColorStatusBarService;
.super Ljava/lang/Object;
.source "IColorStatusBarService.java"


# static fields
.field public static final COLOR_CALL_TRANSACTION_INDEX:I = 0x4e20

.field public static final COLOR_FIRST_CALL_TRANSACTION:I = 0x4e21

.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.statusbar.IStatusBarService"

.field public static final REGISTER_COLOR_STATUS_BAR:I = 0x4e22


# virtual methods
.method public abstract registerColorStatusBar(Landroid/app/IColorStatusBar;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
