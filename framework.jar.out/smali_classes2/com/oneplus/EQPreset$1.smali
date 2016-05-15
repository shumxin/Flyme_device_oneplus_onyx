.class final Lcom/oneplus/EQPreset$1;
.super Ljava/lang/Object;
.source "EQPreset.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/EQPreset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/oneplus/EQPreset;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oneplus/EQPreset;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 136
    new-instance v0, Lcom/oneplus/EQPreset;

    invoke-direct {v0, p1}, Lcom/oneplus/EQPreset;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/oneplus/EQPreset$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oneplus/EQPreset;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/oneplus/EQPreset;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 140
    new-array v0, p1, [Lcom/oneplus/EQPreset;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/oneplus/EQPreset$1;->newArray(I)[Lcom/oneplus/EQPreset;

    move-result-object v0

    return-object v0
.end method
