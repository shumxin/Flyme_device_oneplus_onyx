.class public Landroid/widget/OppoSeekBar;
.super Landroid/widget/SeekBar;
.source "OppoSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/OppoSeekBar$OnOppoSeekBarFromUserChangeListener;
    }
.end annotation


# instance fields
.field private mOppoSeekBarFromUserChangeListener:Landroid/widget/OppoSeekBar$OnOppoSeekBarFromUserChangeListener;

.field private mSafeMediaVolumeIndex:I

.field private safeMediaVolumeEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/OppoSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/OppoSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OppoSeekBar;->safeMediaVolumeEnabled:Z

    .line 46
    iget-object v0, p0, Landroid/widget/OppoSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0d0419

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/widget/OppoSeekBar;->mSafeMediaVolumeIndex:I

    .line 48
    return-void
.end method


# virtual methods
.method public setOppoSeekBarFromUserChangeListener(Landroid/widget/OppoSeekBar$OnOppoSeekBarFromUserChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/OppoSeekBar$OnOppoSeekBarFromUserChangeListener;

    .prologue
    .line 82
    iput-object p1, p0, Landroid/widget/OppoSeekBar;->mOppoSeekBarFromUserChangeListener:Landroid/widget/OppoSeekBar$OnOppoSeekBarFromUserChangeListener;

    .line 83
    return-void
.end method

.method public declared-synchronized setProgress(IZ)V
    .locals 2
    .param p1, "progress"    # I
    .param p2, "fromUser"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 53
    monitor-enter p0

    const/4 v0, 0x0

    .line 54
    .local v0, "on":Z
    :try_start_0
    iget-boolean v1, p0, Landroid/widget/OppoSeekBar;->safeMediaVolumeEnabled:Z

    if-eqz v1, :cond_0

    .line 55
    const/4 v0, 0x1

    .line 56
    iget v1, p0, Landroid/widget/OppoSeekBar;->mSafeMediaVolumeIndex:I

    if-ge p1, v1, :cond_0

    .line 57
    const/4 v0, 0x0

    .line 60
    :cond_0
    if-eqz v0, :cond_2

    .line 61
    iget v1, p0, Landroid/widget/OppoSeekBar;->mSafeMediaVolumeIndex:I

    add-int/lit8 v1, v1, 0x1

    if-ne v1, p1, :cond_1

    .line 62
    iget-object v1, p0, Landroid/widget/OppoSeekBar;->mOppoSeekBarFromUserChangeListener:Landroid/widget/OppoSeekBar$OnOppoSeekBarFromUserChangeListener;

    if-eqz v1, :cond_1

    .line 63
    iget-object v1, p0, Landroid/widget/OppoSeekBar;->mOppoSeekBarFromUserChangeListener:Landroid/widget/OppoSeekBar$OnOppoSeekBarFromUserChangeListener;

    invoke-interface {v1, p0, p1, p2}, Landroid/widget/OppoSeekBar$OnOppoSeekBarFromUserChangeListener;->onOppoSeekBarProgressrFromUserChanged(Landroid/widget/SeekBar;IZ)V

    .line 66
    :cond_1
    iget v1, p0, Landroid/widget/OppoSeekBar;->mSafeMediaVolumeIndex:I

    invoke-super {p0, v1, p2}, Landroid/widget/SeekBar;->setProgress(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :goto_0
    monitor-exit p0

    return-void

    .line 68
    :cond_2
    :try_start_1
    invoke-super {p0, p1, p2}, Landroid/widget/SeekBar;->setProgress(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setSafeMediaVolumeEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 73
    if-eqz p1, :cond_0

    .line 74
    iget-object v0, p0, Landroid/widget/OppoSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0c0408

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/OppoSeekBar;->safeMediaVolumeEnabled:Z

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OppoSeekBar;->safeMediaVolumeEnabled:Z

    goto :goto_0
.end method
