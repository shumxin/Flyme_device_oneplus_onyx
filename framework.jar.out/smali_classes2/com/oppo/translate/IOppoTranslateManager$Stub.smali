.class public abstract Lcom/oppo/translate/IOppoTranslateManager$Stub;
.super Landroid/os/Binder;
.source "IOppoTranslateManager.java"

# interfaces
.implements Lcom/oppo/translate/IOppoTranslateManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/translate/IOppoTranslateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/translate/IOppoTranslateManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.oppo.translate.IOppoTranslateManager"

.field static final TRANSACTION_ask:I = 0x4

.field static final TRANSACTION_dict:I = 0x6

.field static final TRANSACTION_getEngineList:I = 0x3

.field static final TRANSACTION_getUri:I = 0x8

.field static final TRANSACTION_pronounce:I = 0x7

.field static final TRANSACTION_start:I = 0x1

.field static final TRANSACTION_stop:I = 0x2

.field static final TRANSACTION_translate:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.oppo.translate.IOppoTranslateManager"

    invoke-virtual {p0, p0, v0}, Lcom/oppo/translate/IOppoTranslateManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oppo/translate/IOppoTranslateManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "com.oppo.translate.IOppoTranslateManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oppo/translate/IOppoTranslateManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/oppo/translate/IOppoTranslateManager;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/oppo/translate/IOppoTranslateManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/oppo/translate/IOppoTranslateManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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

    const/4 v5, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 154
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 47
    :sswitch_0
    const-string v6, "com.oppo.translate.IOppoTranslateManager"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v6, "com.oppo.translate.IOppoTranslateManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/oppo/translate/IOppoTranslateServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oppo/translate/IOppoTranslateServiceListener;

    move-result-object v0

    .line 55
    .local v0, "_arg0":Lcom/oppo/translate/IOppoTranslateServiceListener;
    invoke-virtual {p0, v0}, Lcom/oppo/translate/IOppoTranslateManager$Stub;->start(Lcom/oppo/translate/IOppoTranslateServiceListener;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 61
    .end local v0    # "_arg0":Lcom/oppo/translate/IOppoTranslateServiceListener;
    :sswitch_2
    const-string v6, "com.oppo.translate.IOppoTranslateManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    .line 64
    sget-object v6, Lcom/oppo/translate/OppoTranslateState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/translate/OppoTranslateState;

    .line 69
    .local v0, "_arg0":Lcom/oppo/translate/OppoTranslateState;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/oppo/translate/IOppoTranslateManager$Stub;->stop(Lcom/oppo/translate/OppoTranslateState;)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    invoke-virtual {v0, p3, v5}, Lcom/oppo/translate/OppoTranslateState;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 67
    .end local v0    # "_arg0":Lcom/oppo/translate/OppoTranslateState;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/oppo/translate/OppoTranslateState;
    goto :goto_1

    .line 76
    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 82
    .end local v0    # "_arg0":Lcom/oppo/translate/OppoTranslateState;
    :sswitch_3
    const-string v6, "com.oppo.translate.IOppoTranslateManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/oppo/translate/IOppoTranslateManager$Stub;->getEngineList()Ljava/util/List;

    move-result-object v4

    .line 84
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/translate/OppoTranslateInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 90
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/translate/OppoTranslateInfo;>;"
    :sswitch_4
    const-string v6, "com.oppo.translate.IOppoTranslateManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    .line 93
    sget-object v6, Lcom/oppo/translate/OppoTranslateState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/translate/OppoTranslateState;

    .line 99
    .restart local v0    # "_arg0":Lcom/oppo/translate/OppoTranslateState;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/oppo/translate/IOppoTranslateAskListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oppo/translate/IOppoTranslateAskListener;

    move-result-object v1

    .line 101
    .local v1, "_arg1":Lcom/oppo/translate/IOppoTranslateAskListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    move v2, v5

    .line 102
    .local v2, "_arg2":Z
    :cond_2
    invoke-virtual {p0, v0, v1, v2}, Lcom/oppo/translate/IOppoTranslateManager$Stub;->ask(Lcom/oppo/translate/OppoTranslateState;Lcom/oppo/translate/IOppoTranslateAskListener;Z)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 96
    .end local v0    # "_arg0":Lcom/oppo/translate/OppoTranslateState;
    .end local v1    # "_arg1":Lcom/oppo/translate/IOppoTranslateAskListener;
    .end local v2    # "_arg2":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/oppo/translate/OppoTranslateState;
    goto :goto_2

    .line 108
    .end local v0    # "_arg0":Lcom/oppo/translate/OppoTranslateState;
    :sswitch_5
    const-string v6, "com.oppo.translate.IOppoTranslateManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/oppo/translate/IOppoTranslateResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oppo/translate/IOppoTranslateResultListener;

    move-result-object v1

    .line 113
    .local v1, "_arg1":Lcom/oppo/translate/IOppoTranslateResultListener;
    invoke-virtual {p0, v0, v1}, Lcom/oppo/translate/IOppoTranslateManager$Stub;->translate(Ljava/lang/String;Lcom/oppo/translate/IOppoTranslateResultListener;)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 119
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/oppo/translate/IOppoTranslateResultListener;
    :sswitch_6
    const-string v6, "com.oppo.translate.IOppoTranslateManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 123
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/oppo/translate/IOppoTranslateResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oppo/translate/IOppoTranslateResultListener;

    move-result-object v1

    .line 124
    .restart local v1    # "_arg1":Lcom/oppo/translate/IOppoTranslateResultListener;
    invoke-virtual {p0, v0, v1}, Lcom/oppo/translate/IOppoTranslateManager$Stub;->dict(Ljava/lang/String;Lcom/oppo/translate/IOppoTranslateResultListener;)V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 130
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/oppo/translate/IOppoTranslateResultListener;
    :sswitch_7
    const-string v6, "com.oppo.translate.IOppoTranslateManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 133
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/oppo/translate/IOppoTranslateManager$Stub;->pronounce(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 139
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_8
    const-string v6, "com.oppo.translate.IOppoTranslateManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 142
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/oppo/translate/IOppoTranslateManager$Stub;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 143
    .local v3, "_result":Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    if-eqz v3, :cond_4

    .line 145
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    invoke-virtual {v3, p3, v5}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 149
    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
