.class public Lcom/oppo/media/OppoAudioService;
.super Landroid/media/AudioService;
.source "OppoAudioService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OppoAudioService"

.field public static final VOLUMEUNIFORM:Ljava/lang/String; = "oppo_uniform_volume_settings_enabled"


# instance fields
.field private mOppoContentResolver:Landroid/content/ContentResolver;

.field private mOppoStreamVolumeAlias:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/media/OppoAudioService;->mOppoContentResolver:Landroid/content/ContentResolver;

    .line 41
    :try_start_0
    const-string v4, "android.media.AudioService"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 46
    .local v0, "cls":Ljava/lang/Class;
    const-string v4, "mStreamVolumeAlias"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 47
    .local v3, "streamVolumeAlias":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 48
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    check-cast v4, [I

    iput-object v4, p0, Lcom/oppo/media/OppoAudioService;->mOppoStreamVolumeAlias:[I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    .line 63
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v3    # "streamVolumeAlias":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v2

    .line 51
    .local v2, "e1":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 52
    .end local v2    # "e1":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 55
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v1

    .line 57
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 58
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method private isStreamAffectedByUniform(I)Z
    .locals 2
    .param p1, "streamType"    # I

    .prologue
    const/4 v0, 0x1

    .line 67
    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public adjustStreamVolume(IIILjava/lang/String;)V
    .locals 5
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "VolumeUniform":I
    move v1, p3

    .line 96
    .local v1, "streamflags":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/oppo/media/OppoAudioService;->isStreamAffectedByUniform(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    :goto_0
    const-string v2, "OppoAudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "end adjustStreamVolume() stream="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dir="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", flags = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " VolumeUniform: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void

    .line 125
    :cond_0
    invoke-virtual {p0, v4}, Lcom/oppo/media/OppoAudioService;->isStreamMute(I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-lez p2, :cond_1

    .line 126
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v4, v2, v3}, Lcom/oppo/media/OppoAudioService;->setStreamMute(IZLandroid/os/IBinder;)V

    .line 128
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/media/AudioService;->adjustStreamVolume(IIILjava/lang/String;)V

    goto :goto_0
.end method

.method public isStreamAffectedByRingerMode(I)Z
    .locals 5
    .param p1, "streamType"    # I

    .prologue
    const/4 v1, 0x1

    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, "VolumeUniform":I
    iget-object v2, p0, Lcom/oppo/media/OppoAudioService;->mOppoContentResolver:Landroid/content/ContentResolver;

    if-eqz v2, :cond_0

    .line 138
    const/4 v0, 0x0

    .line 139
    :cond_0
    const-string v2, "OppoAudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isStreamAffectedByRingerMode streamType= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "VolumeUniform = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    if-nez v1, :cond_2

    .line 141
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 147
    :goto_0
    return v1

    .line 144
    :cond_1
    invoke-super {p0, p1}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v1

    goto :goto_0

    .line 147
    :cond_2
    invoke-super {p0, p1}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v1

    goto :goto_0
.end method

.method public setStreamVolume(IIILjava/lang/String;)V
    .locals 5
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, "VolumeUniform":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    invoke-direct {p0, p1}, Lcom/oppo/media/OppoAudioService;->isStreamAffectedByUniform(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 74
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 75
    iget-object v2, p0, Lcom/oppo/media/OppoAudioService;->mOppoStreamVolumeAlias:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/oppo/media/OppoAudioService;->mOppoStreamVolumeAlias:[I

    aget v2, v2, v1

    if-ne v2, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/oppo/media/OppoAudioService;->isStreamAffectedByUniform(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    iget-object v2, p0, Lcom/oppo/media/OppoAudioService;->mOppoStreamVolumeAlias:[I

    aget v2, v2, v1

    iget-object v3, p0, Lcom/oppo/media/OppoAudioService;->mOppoStreamVolumeAlias:[I

    aget v3, v3, p1

    if-ne v2, v3, :cond_1

    move v2, p3

    :goto_1
    invoke-super {p0, v1, p2, v2, p4}, Landroid/media/AudioService;->setStreamVolume(IIILjava/lang/String;)V

    .line 74
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    :cond_1
    and-int/lit8 v2, p3, -0x2

    and-int/lit8 v2, v2, -0x5

    goto :goto_1

    .line 80
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p0, v4}, Lcom/oppo/media/OppoAudioService;->isStreamMute(I)Z

    move-result v2

    if-eqz v2, :cond_3

    if-lez p2, :cond_3

    .line 81
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v4, v2, v3}, Lcom/oppo/media/OppoAudioService;->setStreamMute(IZLandroid/os/IBinder;)V

    .line 83
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/media/AudioService;->setStreamVolume(IIILjava/lang/String;)V

    .line 85
    :cond_4
    const-string v2, "OppoAudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "end setStreamVolume() stream="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", flags = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " VolumeUniform: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method
