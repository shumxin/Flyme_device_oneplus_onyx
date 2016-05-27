.class public Landroid/app/ColorStatusBarManager;
.super Ljava/lang/Object;
.source "ColorStatusBarManager.java"

# interfaces
.implements Landroid/app/IColorStatusBarManager;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ColorStatusBarManager;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public hideNavigationBar()V
    .locals 5

    .prologue
    .line 42
    iget-object v2, p0, Landroid/app/ColorStatusBarManager;->mRemote:Landroid/os/IBinder;

    if-nez v2, :cond_0

    .line 43
    const-string/jumbo v2, "statusbar"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Landroid/app/ColorStatusBarManager;->mRemote:Landroid/os/IBinder;

    .line 45
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 46
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 47
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 49
    :try_start_0
    iget-object v2, p0, Landroid/app/ColorStatusBarManager;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2713

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 54
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 55
    return-void

    .line 50
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public showNavigationBar()V
    .locals 5

    .prologue
    .line 25
    iget-object v2, p0, Landroid/app/ColorStatusBarManager;->mRemote:Landroid/os/IBinder;

    if-nez v2, :cond_0

    .line 26
    const-string/jumbo v2, "statusbar"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Landroid/app/ColorStatusBarManager;->mRemote:Landroid/os/IBinder;

    .line 28
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 29
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 30
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 32
    :try_start_0
    iget-object v2, p0, Landroid/app/ColorStatusBarManager;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2712

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 37
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 38
    return-void

    .line 33
    :catch_0
    move-exception v2

    goto :goto_0
.end method
