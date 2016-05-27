.class public interface abstract Lcom/oppo/translate/IOppoTranslateAskListener;
.super Ljava/lang/Object;
.source "IOppoTranslateAskListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/translate/IOppoTranslateAskListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAskResult(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
