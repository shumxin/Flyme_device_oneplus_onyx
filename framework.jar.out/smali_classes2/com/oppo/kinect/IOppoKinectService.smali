.class public interface abstract Lcom/oppo/kinect/IOppoKinectService;
.super Ljava/lang/Object;
.source "IOppoKinectService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/kinect/IOppoKinectService$Stub;
    }
.end annotation


# virtual methods
.method public abstract disable(Lcom/oppo/kinect/IRemoteServiceCallback;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract enable(Lcom/oppo/kinect/IRemoteServiceCallback;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setparameter(I[F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
