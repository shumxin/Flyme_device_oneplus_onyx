.class public interface abstract Lcom/color/screenshot/IColorScreenshotCallback;
.super Ljava/lang/Object;
.source "IColorScreenshotCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/screenshot/IColorScreenshotCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract notifyMove()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
