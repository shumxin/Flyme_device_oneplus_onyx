.class public interface abstract Landroid/app/IColorStatusBarManager;
.super Ljava/lang/Object;
.source "IColorStatusBarManager.java"


# static fields
.field public static final COLOR_CALL_TRANSACTION_INDEX:I = 0x2710

.field public static final COLOR_FIRST_CALL_TRANSACTION:I = 0x2711

.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.statusbar.IStatusBarService"

.field public static final HIDE_NAVIGATION_BAR:I = 0x2713

.field public static final SHOW_NAVIGATION_BAR:I = 0x2712


# virtual methods
.method public abstract hideNavigationBar()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract showNavigationBar()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
