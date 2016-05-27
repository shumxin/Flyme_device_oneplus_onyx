.class public Lcom/android/server/OppoBPMHelper;
.super Ljava/lang/Object;
.source "OppoBPMHelper.java"


# static fields
.field private static LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "OppoProcessManager"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/OppoBPMHelper;->LOCAL_LOGV:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addPkgToAppWidgetList(Ljava/lang/String;)V
    .locals 3
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 193
    sget-boolean v0, Lcom/android/server/OppoBPMHelper;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "OppoProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#####BPM addPkgToAppWidgetList pkg == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_0
    invoke-static {}, Lcom/android/server/OppoBPMUtils;->getInstance()Lcom/android/server/OppoBPMUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/OppoBPMUtils;->addPkgToAppWidgetList(Ljava/lang/String;)Z

    .line 196
    return-void
.end method

.method public static final cancelNotificationsWithPkg(Ljava/lang/String;I)V
    .locals 3
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .prologue
    .line 148
    const-string v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 150
    .local v1, "inm":Landroid/app/INotificationManager;
    if-nez v1, :cond_0

    .line 166
    :goto_0
    return-void

    .line 162
    :cond_0
    :try_start_0
    invoke-interface {v1, p0, p1}, Landroid/app/INotificationManager;->cancelAllNotifications(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static final checkProcessToast(I)Z
    .locals 2
    .param p0, "pid"    # I

    .prologue
    .line 177
    const-class v1, Lcom/android/server/notification/NotificationManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationManagerInternal;

    .line 179
    .local v0, "nm":Lcom/android/server/notification/NotificationManagerInternal;
    if-nez v0, :cond_0

    .line 180
    const/4 v1, 0x0

    .line 183
    :goto_0
    return v1

    :cond_0
    invoke-interface {v0, p0}, Lcom/android/server/notification/NotificationManagerInternal;->checkProcessToast(I)Z

    move-result v1

    goto :goto_0
.end method

.method static final getLiveComponent(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "wms"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .prologue
    .line 123
    if-nez p0, :cond_0

    .line 124
    const/4 v0, 0x0

    .line 125
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getLiveComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0
.end method

.method public static final getLivePackageForLiveWallPaper()Ljava/lang/String;
    .locals 3

    .prologue
    .line 113
    const-string v2, "wallpaper"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 115
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    invoke-static {v1}, Lcom/android/server/OppoBPMHelper;->getLiveComponent(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;

    move-result-object v0

    .line 116
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static final getLocationListenersUid()[I
    .locals 2

    .prologue
    .line 139
    const-string v1, "location"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService;

    .line 141
    .local v0, "lm":Lcom/android/server/LocationManagerService;
    invoke-virtual {v0}, Lcom/android/server/LocationManagerService;->getLocationListenersUid()[I

    move-result-object v1

    return-object v1
.end method

.method public static final getTouchedWindowPids(Lcom/android/server/wm/WindowManagerService;)[I
    .locals 1
    .param p0, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getInputManagerService()Lcom/android/server/input/InputManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService;->getTouchedWindowPids()[I

    move-result-object v0

    return-object v0
.end method

.method public static final readAppWidgetList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    invoke-static {}, Lcom/android/server/OppoBPMUtils;->getInstance()Lcom/android/server/OppoBPMUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/OppoBPMUtils;->loadAppWidgetLocked()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final removePkgFromAppWidgetList(Ljava/lang/String;)V
    .locals 3
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 204
    sget-boolean v0, Lcom/android/server/OppoBPMHelper;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "OppoProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#####BPM removePkgFromAppWidgetList pkg == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_0
    invoke-static {}, Lcom/android/server/OppoBPMUtils;->getInstance()Lcom/android/server/OppoBPMUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/OppoBPMUtils;->removePkgFromAppWidgetList(Ljava/lang/String;)Z

    .line 207
    return-void
.end method

.method public static final updateProvider(Ljava/lang/String;)V
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 74
    sget-boolean v0, Lcom/android/server/OppoBPMHelper;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "OppoProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#####BPM updateProvider pkg == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/AppWidgetBackupBridge;->oppoUpdateProvidersForPackage(Ljava/lang/String;I)V

    .line 82
    return-void
.end method

.method public static final updateProviders(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "appwidgetList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 68
    .local v1, "pkg":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/OppoBPMHelper;->updateProvider(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_0
    return-void
.end method
