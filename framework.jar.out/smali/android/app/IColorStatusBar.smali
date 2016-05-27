.class public interface abstract Landroid/app/IColorStatusBar;
.super Ljava/lang/Object;
.source "IColorStatusBar.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IColorStatusBar$Stub;
    }
.end annotation


# virtual methods
.method public abstract onNavigationBarHide()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onNavigationBarShow()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
