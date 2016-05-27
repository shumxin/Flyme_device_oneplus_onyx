.class public abstract Lcom/oppo/translate/IOppoTranslateService$Stub;
.super Landroid/os/Binder;
.source "IOppoTranslateService.java"

# interfaces
.implements Lcom/oppo/translate/IOppoTranslateService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/translate/IOppoTranslateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/translate/IOppoTranslateService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.oppo.translate.IOppoTranslateService"

.field static final TRANSACTION_ask:I = 0x2

.field static final TRANSACTION_dict:I = 0x4

.field static final TRANSACTION_getUri:I = 0x6

.field static final TRANSACTION_pronounce:I = 0x5

.field static final TRANSACTION_stop:I = 0x1

.field static final TRANSACTION_translate:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.oppo.translate.IOppoTranslateService"

    invoke-virtual {p0, p0, v0}, Lcom/oppo/translate/IOppoTranslateService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oppo/translate/IOppoTranslateService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "com.oppo.translate.IOppoTranslateService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oppo/translate/IOppoTranslateService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/oppo/translate/IOppoTranslateService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/oppo/translate/IOppoTranslateService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/oppo/translate/IOppoTranslateService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 135
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 45
    :sswitch_0
    const-string v5, "com.oppo.translate.IOppoTranslateService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v5, "com.oppo.translate.IOppoTranslateService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 53
    sget-object v5, Lcom/oppo/translate/OppoTranslateState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/translate/OppoTranslateState;

    .line 58
    .local v0, "_arg0":Lcom/oppo/translate/OppoTranslateState;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/oppo/translate/IOppoTranslateService$Stub;->stop(Lcom/oppo/translate/OppoTranslateState;)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    invoke-virtual {v0, p3, v4}, Lcom/oppo/translate/OppoTranslateState;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 56
    .end local v0    # "_arg0":Lcom/oppo/translate/OppoTranslateState;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/oppo/translate/OppoTranslateState;
    goto :goto_1

    .line 65
    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 71
    .end local v0    # "_arg0":Lcom/oppo/translate/OppoTranslateState;
    :sswitch_2
    const-string v5, "com.oppo.translate.IOppoTranslateService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    .line 74
    sget-object v5, Lcom/oppo/translate/OppoTranslateState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/translate/OppoTranslateState;

    .line 80
    .restart local v0    # "_arg0":Lcom/oppo/translate/OppoTranslateState;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/oppo/translate/IOppoTranslateAskListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oppo/translate/IOppoTranslateAskListener;

    move-result-object v1

    .line 82
    .local v1, "_arg1":Lcom/oppo/translate/IOppoTranslateAskListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    move v2, v4

    .line 83
    .local v2, "_arg2":Z
    :cond_2
    invoke-virtual {p0, v0, v1, v2}, Lcom/oppo/translate/IOppoTranslateService$Stub;->ask(Lcom/oppo/translate/OppoTranslateState;Lcom/oppo/translate/IOppoTranslateAskListener;Z)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 77
    .end local v0    # "_arg0":Lcom/oppo/translate/OppoTranslateState;
    .end local v1    # "_arg1":Lcom/oppo/translate/IOppoTranslateAskListener;
    .end local v2    # "_arg2":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/oppo/translate/OppoTranslateState;
    goto :goto_2

    .line 89
    .end local v0    # "_arg0":Lcom/oppo/translate/OppoTranslateState;
    :sswitch_3
    const-string v5, "com.oppo.translate.IOppoTranslateService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/oppo/translate/IOppoTranslateResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oppo/translate/IOppoTranslateResultListener;

    move-result-object v1

    .line 94
    .local v1, "_arg1":Lcom/oppo/translate/IOppoTranslateResultListener;
    invoke-virtual {p0, v0, v1}, Lcom/oppo/translate/IOppoTranslateService$Stub;->translate(Ljava/lang/String;Lcom/oppo/translate/IOppoTranslateResultListener;)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 100
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/oppo/translate/IOppoTranslateResultListener;
    :sswitch_4
    const-string v5, "com.oppo.translate.IOppoTranslateService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 104
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/oppo/translate/IOppoTranslateResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oppo/translate/IOppoTranslateResultListener;

    move-result-object v1

    .line 105
    .restart local v1    # "_arg1":Lcom/oppo/translate/IOppoTranslateResultListener;
    invoke-virtual {p0, v0, v1}, Lcom/oppo/translate/IOppoTranslateService$Stub;->dict(Ljava/lang/String;Lcom/oppo/translate/IOppoTranslateResultListener;)V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 111
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/oppo/translate/IOppoTranslateResultListener;
    :sswitch_5
    const-string v5, "com.oppo.translate.IOppoTranslateService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 114
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/oppo/translate/IOppoTranslateService$Stub;->pronounce(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 120
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_6
    const-string v5, "com.oppo.translate.IOppoTranslateService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 123
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/oppo/translate/IOppoTranslateService$Stub;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 124
    .local v3, "_result":Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    if-eqz v3, :cond_4

    .line 126
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    invoke-virtual {v3, p3, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 130
    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
