.class public interface abstract Landroid/os/IOemExService;
.super Ljava/lang/Object;
.source "IOemExService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IOemExService$Stub;
    }
.end annotation


# virtual methods
.method public abstract startUevent(Ljava/lang/String;Landroid/os/IOemUeventCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopUevent(Landroid/os/IOemUeventCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
