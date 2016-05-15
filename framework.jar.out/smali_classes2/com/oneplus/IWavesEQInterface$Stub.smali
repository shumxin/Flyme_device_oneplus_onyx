.class public abstract Lcom/oneplus/IWavesEQInterface$Stub;
.super Landroid/os/Binder;
.source "IWavesEQInterface.java"

# interfaces
.implements Lcom/oneplus/IWavesEQInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/IWavesEQInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/IWavesEQInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.oneplus.IWavesEQInterface"

.field static final TRANSACTION_deleteEQPreset:I = 0x6

.field static final TRANSACTION_getCurrentEQPreset:I = 0x1a

.field static final TRANSACTION_getCurrentMasterPreset:I = 0x1b

.field static final TRANSACTION_getCustomEQPresetCount:I = 0x1d

.field static final TRANSACTION_getEQPreset:I = 0x11

.field static final TRANSACTION_getEQPresets:I = 0x13

.field static final TRANSACTION_getEffectsState:I = 0x2

.field static final TRANSACTION_getGameMasterPreset:I = 0x16

.field static final TRANSACTION_getMasterPreset:I = 0x12

.field static final TRANSACTION_getMaxxBalanceValue:I = 0xe

.field static final TRANSACTION_getMaxxBassValue:I = 0xc

.field static final TRANSACTION_getMaxxDialogValue:I = 0xf

.field static final TRANSACTION_getMaxxStereoValue:I = 0x10

.field static final TRANSACTION_getMaxxTrebleValue:I = 0xd

.field static final TRANSACTION_getMovieMasterPreset:I = 0x15

.field static final TRANSACTION_getMusicMasterPreset:I = 0x14

.field static final TRANSACTION_resetMasterPreset:I = 0x17

.field static final TRANSACTION_saveEQPreset:I = 0x4

.field static final TRANSACTION_setCurrentEQPreset:I = 0x18

.field static final TRANSACTION_setCurrentMasterPreset:I = 0x19

.field static final TRANSACTION_setEQBand:I = 0x3

.field static final TRANSACTION_setEffectsState:I = 0x1

.field static final TRANSACTION_setMaxxBalance:I = 0x9

.field static final TRANSACTION_setMaxxBass:I = 0x7

.field static final TRANSACTION_setMaxxDialog:I = 0xb

.field static final TRANSACTION_setMaxxStereo:I = 0xa

.field static final TRANSACTION_setMaxxTreble:I = 0x8

.field static final TRANSACTION_updateEQPreset:I = 0x5

.field static final TRANSACTION_updateMasterPreset:I = 0x1c


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.oneplus.IWavesEQInterface"

    invoke-virtual {p0, p0, v0}, Lcom/oneplus/IWavesEQInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oneplus/IWavesEQInterface;
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
    const-string v1, "com.oneplus.IWavesEQInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oneplus/IWavesEQInterface;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/oneplus/IWavesEQInterface;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/oneplus/IWavesEQInterface$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/oneplus/IWavesEQInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 8
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
    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 378
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 45
    :sswitch_0
    const-string v6, "com.oneplus.IWavesEQInterface"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v7, "com.oneplus.IWavesEQInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_0

    move v0, v1

    .line 54
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1

    move v2, v1

    .line 55
    .local v2, "_arg1":Z
    :goto_2
    invoke-virtual {p0, v0, v2}, Lcom/oneplus/IWavesEQInterface$Stub;->setEffectsState(ZZ)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0    # "_arg0":Z
    .end local v2    # "_arg1":Z
    :cond_0
    move v0, v6

    .line 52
    goto :goto_1

    .restart local v0    # "_arg0":Z
    :cond_1
    move v2, v6

    .line 54
    goto :goto_2

    .line 61
    .end local v0    # "_arg0":Z
    :sswitch_2
    const-string v7, "com.oneplus.IWavesEQInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/oneplus/IWavesEQInterface$Stub;->getEffectsState()Z

    move-result v4

    .line 63
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    if-eqz v4, :cond_2

    move v6, v1

    :cond_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 69
    .end local v4    # "_result":Z
    :sswitch_3
    const-string v6, "com.oneplus.IWavesEQInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 73
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    .line 74
    .local v2, "_arg1":D
    invoke-virtual {p0, v0, v2, v3}, Lcom/oneplus/IWavesEQInterface$Stub;->setEQBand(ID)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 80
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":D
    :sswitch_4
    const-string v6, "com.oneplus.IWavesEQInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 84
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    .line 85
    sget-object v6, Lcom/oneplus/EQPreset;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/EQPreset;

    .line 90
    .local v2, "_arg1":Lcom/oneplus/EQPreset;
    :goto_3
    invoke-virtual {p0, v0, v2}, Lcom/oneplus/IWavesEQInterface$Stub;->saveEQPreset(ILcom/oneplus/EQPreset;)V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 88
    .end local v2    # "_arg1":Lcom/oneplus/EQPreset;
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Lcom/oneplus/EQPreset;
    goto :goto_3

    .line 96
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Lcom/oneplus/EQPreset;
    :sswitch_5
    const-string v6, "com.oneplus.IWavesEQInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4

    .line 99
    sget-object v6, Lcom/oneplus/EQPreset;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/EQPreset;

    .line 104
    .local v0, "_arg0":Lcom/oneplus/EQPreset;
    :goto_4
    invoke-virtual {p0, v0}, Lcom/oneplus/IWavesEQInterface$Stub;->updateEQPreset(Lcom/oneplus/EQPreset;)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 102
    .end local v0    # "_arg0":Lcom/oneplus/EQPreset;
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/oneplus/EQPreset;
    goto :goto_4

    .line 110
    .end local v0    # "_arg0":Lcom/oneplus/EQPreset;
    :sswitch_6
    const-string v6, "com.oneplus.IWavesEQInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    .line 113
    sget-object v6, Lcom/oneplus/EQPreset;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/EQPreset;

    .line 118
    .restart local v0    # "_arg0":Lcom/oneplus/EQPreset;
    :goto_5
    invoke-virtual {p0, v0}, Lcom/oneplus/IWavesEQInterface$Stub;->deleteEQPreset(Lcom/oneplus/EQPreset;)V

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 116
    .end local v0    # "_arg0":Lcom/oneplus/EQPreset;
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/oneplus/EQPreset;
    goto :goto_5

    .line 124
    .end local v0    # "_arg0":Lcom/oneplus/EQPreset;
    :sswitch_7
    const-string v6, "com.oneplus.IWavesEQInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 127
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/oneplus/IWavesEQInterface$Stub;->setMaxxBass(I)V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 133
    .end local v0    # "_arg0":I
    :sswitch_8
    const-string v6, "com.oneplus.IWavesEQInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 136
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/oneplus/IWavesEQInterface$Stub;->setMaxxTreble(I)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 142
    .end local v0    # "_arg0":I
    :sswitch_9
    const-string v6, "com.oneplus.IWavesEQInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 145
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/oneplus/IWavesEQInterface$Stub;->setMaxxBalance(I)V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 151
    .end local v0    # "_arg0":I
    :sswitch_a
    const-string v6, "com.oneplus.IWavesEQInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 154
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/oneplus/IWavesEQInterface$Stub;->setMaxxStereo(I)V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 160
    .end local v0    # "_arg0":I
    :sswitch_b
    const-string v6, "com.oneplus.IWavesEQInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 163
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/oneplus/IWavesEQInterface$Stub;->setMaxxDialog(I)V

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 169
    .end local v0    # "_arg0":I
    :sswitch_c
    const-string v6, "com.oneplus.IWavesEQInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/oneplus/IWavesEQInterface$Stub;->getMaxxBassValue()D

    move-result-wide v4

    .line 171
    .local v4, "_result":D
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    goto/16 :goto_0

    .line 177
    .end local v4    # "_result":D
    :sswitch_d
    const-string v6, "com.oneplus.IWavesEQInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/oneplus/IWavesEQInterface$Stub;->getMaxxTrebleValue()D

    move-result-wide v4

    .line 179
    .restart local v4    # "_result":D
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    goto/16 :goto_0

    .line 185
    .end local v4    # "_result":D
    :sswitch_e
    const-string v6, "com.oneplus.IWavesEQInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/oneplus/IWavesEQInterface$Stub;->getMaxxBalanceValue()D

    move-result-wide v4

    .line 187
    .restart local v4    # "_result":D
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    goto/16 :goto_0

    .line 193
    .end local v4    # "_result":D
    :sswitch_f
    const-string v6, "com.oneplus.IWavesEQInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/oneplus/IWavesEQInterface$Stub;->getMaxxDialogValue()D

    move-result-wide v4

    .line 195
    .restart local v4    # "_result":D
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    goto/16 :goto_0

    .line 201
    .end local v4    # "_result":D
    :sswitch_10
    const-string v6, "com.oneplus.IWavesEQInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lcom/oneplus/IWavesEQInterface$Stub;->getMaxxStereoValue()D

    move-result-wide v4

    .line 203
    .restart local v4    # "_result":D
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    goto/16 :goto_0

    .line 209
    .end local v4    # "_result":D
    :sswitch_11
    const-string v7, "com.oneplus.IWavesEQInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 212
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/oneplus/IWavesEQInterface$Stub;->getEQPreset(I)Lcom/oneplus/EQPreset;

    move-result-object v4

    .line 213
    .local v4, "_result":Lcom/oneplus/EQPreset;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    if-eqz v4, :cond_6

    .line 215
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    invoke-virtual {v4, p3, v1}, Lcom/oneplus/EQPreset;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 219
    :cond_6
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 225
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Lcom/oneplus/EQPreset;
    :sswitch_12
    const-string v7, "com.oneplus.IWavesEQInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 228
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/oneplus/IWavesEQInterface$Stub;->getMasterPreset(I)Lcom/oneplus/MasterPreset;

    move-result-object v4

    .line 229
    .local v4, "_result":Lcom/oneplus/MasterPreset;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    if-eqz v4, :cond_7

    .line 231
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    invoke-virtual {v4, p3, v1}, Lcom/oneplus/MasterPreset;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 235
    :cond_7
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 241
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Lcom/oneplus/MasterPreset;
    :sswitch_13
    const-string v6, "com.oneplus.IWavesEQInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lcom/oneplus/IWavesEQInterface$Stub;->getEQPresets()[Lcom/oneplus/EQPreset;

    move-result-object v4

    .line 243
    .local v4, "_result":[Lcom/oneplus/EQPreset;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 249
    .end local v4    # "_result":[Lcom/oneplus/EQPreset;
    :sswitch_14
    const-string v7, "com.oneplus.IWavesEQInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Lcom/oneplus/IWavesEQInterface$Stub;->getMusicMasterPreset()Lcom/oneplus/MasterPreset;

    move-result-object v4

    .line 251
    .local v4, "_result":Lcom/oneplus/MasterPreset;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    if-eqz v4, :cond_8

    .line 253
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    invoke-virtual {v4, p3, v1}, Lcom/oneplus/MasterPreset;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 257
    :cond_8
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 263
    .end local v4    # "_result":Lcom/oneplus/MasterPreset;
    :sswitch_15
    const-string v7, "com.oneplus.IWavesEQInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Lcom/oneplus/IWavesEQInterface$Stub;->getMovieMasterPreset()Lcom/oneplus/MasterPreset;

    move-result-object v4

    .line 265
    .restart local v4    # "_result":Lcom/oneplus/MasterPreset;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    if-eqz v4, :cond_9

    .line 267
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    invoke-virtual {v4, p3, v1}, Lcom/oneplus/MasterPreset;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 271
    :cond_9
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 277
    .end local v4    # "_result":Lcom/oneplus/MasterPreset;
    :sswitch_16
    const-string v7, "com.oneplus.IWavesEQInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0}, Lcom/oneplus/IWavesEQInterface$Stub;->getGameMasterPreset()Lcom/oneplus/MasterPreset;

    move-result-object v4

    .line 279
    .restart local v4    # "_result":Lcom/oneplus/MasterPreset;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    if-eqz v4, :cond_a

    .line 281
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    invoke-virtual {v4, p3, v1}, Lcom/oneplus/MasterPreset;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 285
    :cond_a
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 291
    .end local v4    # "_result":Lcom/oneplus/MasterPreset;
    :sswitch_17
    const-string v7, "com.oneplus.IWavesEQInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 294
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/oneplus/IWavesEQInterface$Stub;->resetMasterPreset(I)Lcom/oneplus/MasterPreset;

    move-result-object v4

    .line 295
    .restart local v4    # "_result":Lcom/oneplus/MasterPreset;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    if-eqz v4, :cond_b

    .line 297
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    invoke-virtual {v4, p3, v1}, Lcom/oneplus/MasterPreset;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 301
    :cond_b
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 307
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Lcom/oneplus/MasterPreset;
    :sswitch_18
    const-string v6, "com.oneplus.IWavesEQInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 311
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 312
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/oneplus/IWavesEQInterface$Stub;->setCurrentEQPreset(II)V

    .line 313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 318
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_19
    const-string v7, "com.oneplus.IWavesEQInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 322
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_c

    move v2, v1

    .line 323
    .local v2, "_arg1":Z
    :goto_6
    invoke-virtual {p0, v0, v2}, Lcom/oneplus/IWavesEQInterface$Stub;->setCurrentMasterPreset(IZ)V

    .line 324
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2    # "_arg1":Z
    :cond_c
    move v2, v6

    .line 322
    goto :goto_6

    .line 329
    .end local v0    # "_arg0":I
    :sswitch_1a
    const-string v7, "com.oneplus.IWavesEQInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0}, Lcom/oneplus/IWavesEQInterface$Stub;->getCurrentEQPreset()Lcom/oneplus/EQPreset;

    move-result-object v4

    .line 331
    .local v4, "_result":Lcom/oneplus/EQPreset;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    if-eqz v4, :cond_d

    .line 333
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    invoke-virtual {v4, p3, v1}, Lcom/oneplus/EQPreset;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 337
    :cond_d
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 343
    .end local v4    # "_result":Lcom/oneplus/EQPreset;
    :sswitch_1b
    const-string v7, "com.oneplus.IWavesEQInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0}, Lcom/oneplus/IWavesEQInterface$Stub;->getCurrentMasterPreset()Lcom/oneplus/MasterPreset;

    move-result-object v4

    .line 345
    .local v4, "_result":Lcom/oneplus/MasterPreset;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    if-eqz v4, :cond_e

    .line 347
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    invoke-virtual {v4, p3, v1}, Lcom/oneplus/MasterPreset;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 351
    :cond_e
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 357
    .end local v4    # "_result":Lcom/oneplus/MasterPreset;
    :sswitch_1c
    const-string v6, "com.oneplus.IWavesEQInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f

    .line 360
    sget-object v6, Lcom/oneplus/MasterPreset;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/MasterPreset;

    .line 365
    .local v0, "_arg0":Lcom/oneplus/MasterPreset;
    :goto_7
    invoke-virtual {p0, v0}, Lcom/oneplus/IWavesEQInterface$Stub;->updateMasterPreset(Lcom/oneplus/MasterPreset;)V

    .line 366
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 363
    .end local v0    # "_arg0":Lcom/oneplus/MasterPreset;
    :cond_f
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/oneplus/MasterPreset;
    goto :goto_7

    .line 371
    .end local v0    # "_arg0":Lcom/oneplus/MasterPreset;
    :sswitch_1d
    const-string v6, "com.oneplus.IWavesEQInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0}, Lcom/oneplus/IWavesEQInterface$Stub;->getCustomEQPresetCount()I

    move-result v4

    .line 373
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 41
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
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
