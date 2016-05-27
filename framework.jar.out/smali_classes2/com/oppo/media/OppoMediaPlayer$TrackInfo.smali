.class public Lcom/oppo/media/OppoMediaPlayer$TrackInfo;
.super Ljava/lang/Object;
.source "OppoMediaPlayer.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/media/OppoMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackInfo"
.end annotation


# static fields
.field static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oppo/media/OppoMediaPlayer$TrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final MEDIA_TRACK_TYPE_AUDIO:I = 0x2

.field public static final MEDIA_TRACK_TYPE_TIMEDTEXT:I = 0x3

.field public static final MEDIA_TRACK_TYPE_UNKNOWN:I = 0x0

.field public static final MEDIA_TRACK_TYPE_VIDEO:I = 0x1


# instance fields
.field final mLanguage:Ljava/lang/String;

.field final mTrackType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1663
    new-instance v0, Lcom/oppo/media/OppoMediaPlayer$TrackInfo$1;

    invoke-direct {v0}, Lcom/oppo/media/OppoMediaPlayer$TrackInfo$1;-><init>()V

    sput-object v0, Lcom/oppo/media/OppoMediaPlayer$TrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1639
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oppo/media/OppoMediaPlayer$TrackInfo;->mTrackType:I

    .line 1640
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/media/OppoMediaPlayer$TrackInfo;->mLanguage:Ljava/lang/String;

    .line 1641
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1648
    const/4 v0, 0x0

    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1627
    iget-object v0, p0, Lcom/oppo/media/OppoMediaPlayer$TrackInfo;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackType()I
    .locals 1

    .prologue
    .line 1617
    iget v0, p0, Lcom/oppo/media/OppoMediaPlayer$TrackInfo;->mTrackType:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1656
    iget v0, p0, Lcom/oppo/media/OppoMediaPlayer$TrackInfo;->mTrackType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1657
    iget-object v0, p0, Lcom/oppo/media/OppoMediaPlayer$TrackInfo;->mLanguage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1658
    return-void
.end method
