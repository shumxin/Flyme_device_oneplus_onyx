.class public interface abstract Lcom/android/internal/policy/IColorOSKeyguardService;
.super Ljava/lang/Object;
.source "IColorOSKeyguardService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/IColorOSKeyguardService$Stub;
    }
.end annotation


# virtual methods
.method public abstract onKeyguardDoneForColorOS(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setNotificationListener(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
