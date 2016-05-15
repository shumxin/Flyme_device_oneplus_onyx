.class public Lcom/oneplus/EQPreset;
.super Ljava/lang/Object;
.source "EQPreset.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oneplus/EQPreset;",
            ">;"
        }
    .end annotation
.end field

.field public static final EQ_PRESET_ARG:Ljava/lang/String; = "EQ_PRESET_ARG"


# instance fields
.field private currentPreset:Z

.field private defaultPreset:Z

.field private eq125:D

.field private eq125sbv:I

.field private eq16k:D

.field private eq16ksbv:I

.field private eq1k:D

.field private eq1ksbv:I

.field private eq250:D

.field private eq250sbv:I

.field private eq2k:D

.field private eq2ksbv:I

.field private eq31:D

.field private eq31sbv:I

.field private eq4k:D

.field private eq4ksbv:I

.field private eq500:D

.field private eq500sbv:I

.field private eq63:D

.field private eq63sbv:I

.field private eq8k:D

.field private eq8ksbv:I

.field private favorite:Z

.field private id:I

.field private name:Ljava/lang/String;

.field private presetColor:Landroid/content/res/ColorStateList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    new-instance v0, Lcom/oneplus/EQPreset$1;

    invoke-direct {v0}, Lcom/oneplus/EQPreset$1;-><init>()V

    sput-object v0, Lcom/oneplus/EQPreset;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/EQPreset;->id:I

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/EQPreset;->name:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/EQPreset;->defaultPreset:Z

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/oneplus/EQPreset;->currentPreset:Z

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/oneplus/EQPreset;->eq31:D

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/oneplus/EQPreset;->eq63:D

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/oneplus/EQPreset;->eq125:D

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/oneplus/EQPreset;->eq250:D

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/oneplus/EQPreset;->eq500:D

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/oneplus/EQPreset;->eq1k:D

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/oneplus/EQPreset;->eq2k:D

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/oneplus/EQPreset;->eq4k:D

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/oneplus/EQPreset;->eq8k:D

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/oneplus/EQPreset;->eq16k:D

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/EQPreset;->eq31sbv:I

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/EQPreset;->eq63sbv:I

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/EQPreset;->eq125sbv:I

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/EQPreset;->eq250sbv:I

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/EQPreset;->eq500sbv:I

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/EQPreset;->eq1ksbv:I

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/EQPreset;->eq2ksbv:I

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/EQPreset;->eq4ksbv:I

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/EQPreset;->eq8ksbv:I

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/EQPreset;->eq16ksbv:I

    .line 130
    const-class v0, Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/oneplus/EQPreset;->presetColor:Landroid/content/res/ColorStateList;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/oneplus/EQPreset;->favorite:Z

    .line 132
    return-void

    :cond_0
    move v0, v2

    .line 108
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 109
    goto/16 :goto_1

    :cond_2
    move v1, v2

    .line 131
    goto :goto_2
.end method


# virtual methods
.method public clone()Lcom/oneplus/EQPreset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/EQPreset;

    .line 147
    .local v0, "clonedPreset":Lcom/oneplus/EQPreset;
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
    .line 11
    invoke-virtual {p0}, Lcom/oneplus/EQPreset;->clone()Lcom/oneplus/EQPreset;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public getEq125()D
    .locals 2

    .prologue
    .line 199
    iget-wide v0, p0, Lcom/oneplus/EQPreset;->eq125:D

    return-wide v0
.end method

.method public getEq125sbv()I
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lcom/oneplus/EQPreset;->eq125sbv:I

    return v0
.end method

.method public getEq16k()D
    .locals 2

    .prologue
    .line 255
    iget-wide v0, p0, Lcom/oneplus/EQPreset;->eq16k:D

    return-wide v0
.end method

.method public getEq16ksbv()I
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lcom/oneplus/EQPreset;->eq16ksbv:I

    return v0
.end method

.method public getEq1k()D
    .locals 2

    .prologue
    .line 223
    iget-wide v0, p0, Lcom/oneplus/EQPreset;->eq1k:D

    return-wide v0
.end method

.method public getEq1ksbv()I
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Lcom/oneplus/EQPreset;->eq1ksbv:I

    return v0
.end method

.method public getEq250()D
    .locals 2

    .prologue
    .line 207
    iget-wide v0, p0, Lcom/oneplus/EQPreset;->eq250:D

    return-wide v0
.end method

.method public getEq250sbv()I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lcom/oneplus/EQPreset;->eq250sbv:I

    return v0
.end method

.method public getEq2k()D
    .locals 2

    .prologue
    .line 231
    iget-wide v0, p0, Lcom/oneplus/EQPreset;->eq2k:D

    return-wide v0
.end method

.method public getEq2ksbv()I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lcom/oneplus/EQPreset;->eq2ksbv:I

    return v0
.end method

.method public getEq31()D
    .locals 2

    .prologue
    .line 183
    iget-wide v0, p0, Lcom/oneplus/EQPreset;->eq31:D

    return-wide v0
.end method

.method public getEq31sbv()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/oneplus/EQPreset;->eq31sbv:I

    return v0
.end method

.method public getEq4k()D
    .locals 2

    .prologue
    .line 239
    iget-wide v0, p0, Lcom/oneplus/EQPreset;->eq4k:D

    return-wide v0
.end method

.method public getEq4ksbv()I
    .locals 1

    .prologue
    .line 319
    iget v0, p0, Lcom/oneplus/EQPreset;->eq4ksbv:I

    return v0
.end method

.method public getEq500()D
    .locals 2

    .prologue
    .line 215
    iget-wide v0, p0, Lcom/oneplus/EQPreset;->eq500:D

    return-wide v0
.end method

.method public getEq500sbv()I
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Lcom/oneplus/EQPreset;->eq500sbv:I

    return v0
.end method

.method public getEq63()D
    .locals 2

    .prologue
    .line 191
    iget-wide v0, p0, Lcom/oneplus/EQPreset;->eq63:D

    return-wide v0
.end method

.method public getEq63sbv()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/oneplus/EQPreset;->eq63sbv:I

    return v0
.end method

.method public getEq8k()D
    .locals 2

    .prologue
    .line 247
    iget-wide v0, p0, Lcom/oneplus/EQPreset;->eq8k:D

    return-wide v0
.end method

.method public getEq8ksbv()I
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Lcom/oneplus/EQPreset;->eq8ksbv:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/oneplus/EQPreset;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/oneplus/EQPreset;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPresetColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/oneplus/EQPreset;->presetColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public isCurrentPreset()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/oneplus/EQPreset;->currentPreset:Z

    return v0
.end method

.method public isDefaultPreset()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/oneplus/EQPreset;->defaultPreset:Z

    return v0
.end method

.method public isFavorite()Z
    .locals 1

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/oneplus/EQPreset;->favorite:Z

    return v0
.end method

.method public setCurrentPreset(Z)V
    .locals 0
    .param p1, "currentPreset"    # Z

    .prologue
    .line 179
    iput-boolean p1, p0, Lcom/oneplus/EQPreset;->currentPreset:Z

    .line 180
    return-void
.end method

.method public setDefaultPreset(Z)V
    .locals 0
    .param p1, "defaultPreset"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/oneplus/EQPreset;->defaultPreset:Z

    .line 172
    return-void
.end method

.method public setEq125(D)V
    .locals 1
    .param p1, "eq125"    # D

    .prologue
    .line 203
    iput-wide p1, p0, Lcom/oneplus/EQPreset;->eq125:D

    .line 204
    return-void
.end method

.method public setEq125sbv(I)V
    .locals 0
    .param p1, "eq125sbv"    # I

    .prologue
    .line 283
    iput p1, p0, Lcom/oneplus/EQPreset;->eq125sbv:I

    .line 284
    return-void
.end method

.method public setEq16k(D)V
    .locals 1
    .param p1, "eq16k"    # D

    .prologue
    .line 259
    iput-wide p1, p0, Lcom/oneplus/EQPreset;->eq16k:D

    .line 260
    return-void
.end method

.method public setEq16ksbv(I)V
    .locals 0
    .param p1, "eq16ksbv"    # I

    .prologue
    .line 339
    iput p1, p0, Lcom/oneplus/EQPreset;->eq16ksbv:I

    .line 340
    return-void
.end method

.method public setEq1k(D)V
    .locals 1
    .param p1, "eq1k"    # D

    .prologue
    .line 227
    iput-wide p1, p0, Lcom/oneplus/EQPreset;->eq1k:D

    .line 228
    return-void
.end method

.method public setEq1ksbv(I)V
    .locals 0
    .param p1, "eq1ksbv"    # I

    .prologue
    .line 307
    iput p1, p0, Lcom/oneplus/EQPreset;->eq1ksbv:I

    .line 308
    return-void
.end method

.method public setEq250(D)V
    .locals 1
    .param p1, "eq250"    # D

    .prologue
    .line 211
    iput-wide p1, p0, Lcom/oneplus/EQPreset;->eq250:D

    .line 212
    return-void
.end method

.method public setEq250sbv(I)V
    .locals 0
    .param p1, "eq250sbv"    # I

    .prologue
    .line 291
    iput p1, p0, Lcom/oneplus/EQPreset;->eq250sbv:I

    .line 292
    return-void
.end method

.method public setEq2k(D)V
    .locals 1
    .param p1, "eq2k"    # D

    .prologue
    .line 235
    iput-wide p1, p0, Lcom/oneplus/EQPreset;->eq2k:D

    .line 236
    return-void
.end method

.method public setEq2ksbv(I)V
    .locals 0
    .param p1, "eq2ksbv"    # I

    .prologue
    .line 315
    iput p1, p0, Lcom/oneplus/EQPreset;->eq2ksbv:I

    .line 316
    return-void
.end method

.method public setEq31(D)V
    .locals 1
    .param p1, "eq31"    # D

    .prologue
    .line 187
    iput-wide p1, p0, Lcom/oneplus/EQPreset;->eq31:D

    .line 188
    return-void
.end method

.method public setEq31sbv(I)V
    .locals 0
    .param p1, "eq31sbv"    # I

    .prologue
    .line 267
    iput p1, p0, Lcom/oneplus/EQPreset;->eq31sbv:I

    .line 268
    return-void
.end method

.method public setEq4k(D)V
    .locals 1
    .param p1, "eq4k"    # D

    .prologue
    .line 243
    iput-wide p1, p0, Lcom/oneplus/EQPreset;->eq4k:D

    .line 244
    return-void
.end method

.method public setEq4ksbv(I)V
    .locals 0
    .param p1, "eq4ksbv"    # I

    .prologue
    .line 323
    iput p1, p0, Lcom/oneplus/EQPreset;->eq4ksbv:I

    .line 324
    return-void
.end method

.method public setEq500(D)V
    .locals 1
    .param p1, "eq500"    # D

    .prologue
    .line 219
    iput-wide p1, p0, Lcom/oneplus/EQPreset;->eq500:D

    .line 220
    return-void
.end method

.method public setEq500sbv(I)V
    .locals 0
    .param p1, "eq500sbv"    # I

    .prologue
    .line 299
    iput p1, p0, Lcom/oneplus/EQPreset;->eq500sbv:I

    .line 300
    return-void
.end method

.method public setEq63(D)V
    .locals 1
    .param p1, "eq63"    # D

    .prologue
    .line 195
    iput-wide p1, p0, Lcom/oneplus/EQPreset;->eq63:D

    .line 196
    return-void
.end method

.method public setEq63sbv(I)V
    .locals 0
    .param p1, "eq63sbv"    # I

    .prologue
    .line 275
    iput p1, p0, Lcom/oneplus/EQPreset;->eq63sbv:I

    .line 276
    return-void
.end method

.method public setEq8k(D)V
    .locals 1
    .param p1, "eq8k"    # D

    .prologue
    .line 251
    iput-wide p1, p0, Lcom/oneplus/EQPreset;->eq8k:D

    .line 252
    return-void
.end method

.method public setEq8ksbv(I)V
    .locals 0
    .param p1, "eq8ksbv"    # I

    .prologue
    .line 331
    iput p1, p0, Lcom/oneplus/EQPreset;->eq8ksbv:I

    .line 332
    return-void
.end method

.method public setFavorite(Z)V
    .locals 0
    .param p1, "favorite"    # Z

    .prologue
    .line 351
    iput-boolean p1, p0, Lcom/oneplus/EQPreset;->favorite:Z

    .line 352
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 155
    iput p1, p0, Lcom/oneplus/EQPreset;->id:I

    .line 156
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/oneplus/EQPreset;->name:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setPresetColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "presetColor"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/oneplus/EQPreset;->presetColor:Landroid/content/res/ColorStateList;

    .line 348
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 74
    iget v0, p0, Lcom/oneplus/EQPreset;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget-object v0, p0, Lcom/oneplus/EQPreset;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-boolean v0, p0, Lcom/oneplus/EQPreset;->defaultPreset:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-boolean v0, p0, Lcom/oneplus/EQPreset;->currentPreset:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget-wide v4, p0, Lcom/oneplus/EQPreset;->eq31:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 79
    iget-wide v4, p0, Lcom/oneplus/EQPreset;->eq63:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 80
    iget-wide v4, p0, Lcom/oneplus/EQPreset;->eq125:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 81
    iget-wide v4, p0, Lcom/oneplus/EQPreset;->eq250:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 82
    iget-wide v4, p0, Lcom/oneplus/EQPreset;->eq500:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 83
    iget-wide v4, p0, Lcom/oneplus/EQPreset;->eq1k:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 84
    iget-wide v4, p0, Lcom/oneplus/EQPreset;->eq2k:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 85
    iget-wide v4, p0, Lcom/oneplus/EQPreset;->eq4k:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 86
    iget-wide v4, p0, Lcom/oneplus/EQPreset;->eq8k:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 87
    iget-wide v4, p0, Lcom/oneplus/EQPreset;->eq16k:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 88
    iget v0, p0, Lcom/oneplus/EQPreset;->eq31sbv:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget v0, p0, Lcom/oneplus/EQPreset;->eq63sbv:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget v0, p0, Lcom/oneplus/EQPreset;->eq125sbv:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget v0, p0, Lcom/oneplus/EQPreset;->eq250sbv:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget v0, p0, Lcom/oneplus/EQPreset;->eq500sbv:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget v0, p0, Lcom/oneplus/EQPreset;->eq1ksbv:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget v0, p0, Lcom/oneplus/EQPreset;->eq2ksbv:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget v0, p0, Lcom/oneplus/EQPreset;->eq4ksbv:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget v0, p0, Lcom/oneplus/EQPreset;->eq8ksbv:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget v0, p0, Lcom/oneplus/EQPreset;->eq16ksbv:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-object v0, p0, Lcom/oneplus/EQPreset;->presetColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 99
    iget-boolean v0, p0, Lcom/oneplus/EQPreset;->favorite:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    return-void

    :cond_0
    move v0, v2

    .line 76
    goto :goto_0

    :cond_1
    move v0, v2

    .line 77
    goto :goto_1

    :cond_2
    move v1, v2

    .line 99
    goto :goto_2
.end method
