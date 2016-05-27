.class public interface abstract Lcom/oppo/translate/IOppoTranslateService;
.super Ljava/lang/Object;
.source "IOppoTranslateService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/translate/IOppoTranslateService$Stub;
    }
.end annotation


# virtual methods
.method public abstract ask(Lcom/oppo/translate/OppoTranslateState;Lcom/oppo/translate/IOppoTranslateAskListener;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract dict(Ljava/lang/String;Lcom/oppo/translate/IOppoTranslateResultListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getUri(Ljava/lang/String;)Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract pronounce(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stop(Lcom/oppo/translate/OppoTranslateState;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract translate(Ljava/lang/String;Lcom/oppo/translate/IOppoTranslateResultListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
