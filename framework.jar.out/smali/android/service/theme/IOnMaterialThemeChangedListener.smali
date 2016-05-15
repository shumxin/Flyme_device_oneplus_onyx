.class public interface abstract Landroid/service/theme/IOnMaterialThemeChangedListener;
.super Ljava/lang/Object;
.source "IOnMaterialThemeChangedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/theme/IOnMaterialThemeChangedListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract dispatchColorCodeChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract dispatchMaterialThemeChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
