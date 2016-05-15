.class public Lcom/oneplus/MasterPreset;
.super Ljava/lang/Object;
.source "MasterPreset.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oneplus/MasterPreset;",
            ">;"
        }
    .end annotation
.end field

.field public static final MASTER_PRESET_ARG:Ljava/lang/String; = "MASTER_PRESET_ARG"


# instance fields
.field private balance:I

.field private bass:I

.field private currentPreset:Z

.field private defalutDialog:I

.field private defaultBalance:I

.field private defaultBass:I

.field private defaultStereo:I

.field private defaultTreble:I

.field private dialog:I

.field private id:I

.field private lastSelectedPresetId:I

.field private name:Ljava/lang/String;

.field private stereo:I

.field private treble:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/oneplus/MasterPreset$1;

    invoke-direct {v0}, Lcom/oneplus/MasterPreset$1;-><init>()V

    sput-object v0, Lcom/oneplus/MasterPreset;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/oneplus/MasterPreset;->id:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/MasterPreset;->name:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/MasterPreset;->currentPreset:Z

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/MasterPreset;->treble:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/MasterPreset;->defaultTreble:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/MasterPreset;->bass:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/MasterPreset;->defaultBass:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/MasterPreset;->stereo:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/MasterPreset;->defaultStereo:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/MasterPreset;->dialog:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/MasterPreset;->defalutDialog:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/MasterPreset;->balance:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/MasterPreset;->defaultBalance:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/MasterPreset;->lastSelectedPresetId:I

    .line 83
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clone()Lcom/oneplus/MasterPreset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/MasterPreset;

    .line 98
    .local v0, "clonedPreset":Lcom/oneplus/MasterPreset;
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/oneplus/MasterPreset;->clone()Lcom/oneplus/MasterPreset;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public getBalance()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/oneplus/MasterPreset;->balance:I

    return v0
.end method

.method public getBass()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/oneplus/MasterPreset;->bass:I

    return v0
.end method

.method public getDefalutDialog()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/oneplus/MasterPreset;->defalutDialog:I

    return v0
.end method

.method public getDefaultBalance()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/oneplus/MasterPreset;->defaultBalance:I

    return v0
.end method

.method public getDefaultBass()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/oneplus/MasterPreset;->defaultBass:I

    return v0
.end method

.method public getDefaultStereo()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/oneplus/MasterPreset;->defaultStereo:I

    return v0
.end method

.method public getDefaultTreble()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/oneplus/MasterPreset;->defaultTreble:I

    return v0
.end method

.method public getDialog()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/oneplus/MasterPreset;->dialog:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/oneplus/MasterPreset;->id:I

    return v0
.end method

.method public getLastSelectedPresetId()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/oneplus/MasterPreset;->lastSelectedPresetId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/oneplus/MasterPreset;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStereo()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/oneplus/MasterPreset;->stereo:I

    return v0
.end method

.method public getTreble()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/oneplus/MasterPreset;->treble:I

    return v0
.end method

.method public isCurrentPreset()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/oneplus/MasterPreset;->currentPreset:Z

    return v0
.end method

.method public setBalance(I)V
    .locals 0
    .param p1, "balance"    # I

    .prologue
    .line 194
    iput p1, p0, Lcom/oneplus/MasterPreset;->balance:I

    .line 195
    return-void
.end method

.method public setBass(I)V
    .locals 0
    .param p1, "bass"    # I

    .prologue
    .line 146
    iput p1, p0, Lcom/oneplus/MasterPreset;->bass:I

    .line 147
    return-void
.end method

.method public setCurrentPreset(Z)V
    .locals 0
    .param p1, "currentPreset"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/oneplus/MasterPreset;->currentPreset:Z

    .line 123
    return-void
.end method

.method public setDefalutDialog(I)V
    .locals 0
    .param p1, "defalutDialog"    # I

    .prologue
    .line 186
    iput p1, p0, Lcom/oneplus/MasterPreset;->defalutDialog:I

    .line 187
    return-void
.end method

.method public setDefaultBalance(I)V
    .locals 0
    .param p1, "defaultBalance"    # I

    .prologue
    .line 202
    iput p1, p0, Lcom/oneplus/MasterPreset;->defaultBalance:I

    .line 203
    return-void
.end method

.method public setDefaultBass(I)V
    .locals 0
    .param p1, "defaultBass"    # I

    .prologue
    .line 154
    iput p1, p0, Lcom/oneplus/MasterPreset;->defaultBass:I

    .line 155
    return-void
.end method

.method public setDefaultStereo(I)V
    .locals 0
    .param p1, "defaultStereo"    # I

    .prologue
    .line 170
    iput p1, p0, Lcom/oneplus/MasterPreset;->defaultStereo:I

    .line 171
    return-void
.end method

.method public setDefaultTreble(I)V
    .locals 0
    .param p1, "defaultTreble"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/oneplus/MasterPreset;->defaultTreble:I

    .line 139
    return-void
.end method

.method public setDialog(I)V
    .locals 0
    .param p1, "dialog"    # I

    .prologue
    .line 178
    iput p1, p0, Lcom/oneplus/MasterPreset;->dialog:I

    .line 179
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/oneplus/MasterPreset;->id:I

    .line 107
    return-void
.end method

.method public setLastSelectedPresetId(I)V
    .locals 0
    .param p1, "lastSelectedPresetId"    # I

    .prologue
    .line 210
    iput p1, p0, Lcom/oneplus/MasterPreset;->lastSelectedPresetId:I

    .line 211
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/oneplus/MasterPreset;->name:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setStereo(I)V
    .locals 0
    .param p1, "stereo"    # I

    .prologue
    .line 162
    iput p1, p0, Lcom/oneplus/MasterPreset;->stereo:I

    .line 163
    return-void
.end method

.method public setTreble(I)V
    .locals 0
    .param p1, "treble"    # I

    .prologue
    .line 130
    iput p1, p0, Lcom/oneplus/MasterPreset;->treble:I

    .line 131
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    .line 49
    iget v0, p0, Lcom/oneplus/MasterPreset;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget-object v0, p0, Lcom/oneplus/MasterPreset;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-boolean v0, p0, Lcom/oneplus/MasterPreset;->currentPreset:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget v0, p0, Lcom/oneplus/MasterPreset;->treble:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget v0, p0, Lcom/oneplus/MasterPreset;->defaultTreble:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget v0, p0, Lcom/oneplus/MasterPreset;->bass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget v0, p0, Lcom/oneplus/MasterPreset;->defaultBass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget v0, p0, Lcom/oneplus/MasterPreset;->stereo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget v0, p0, Lcom/oneplus/MasterPreset;->defaultStereo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget v0, p0, Lcom/oneplus/MasterPreset;->dialog:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget v0, p0, Lcom/oneplus/MasterPreset;->defalutDialog:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget v0, p0, Lcom/oneplus/MasterPreset;->balance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget v0, p0, Lcom/oneplus/MasterPreset;->defaultBalance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget v0, p0, Lcom/oneplus/MasterPreset;->lastSelectedPresetId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    return-void

    .line 51
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
