.class public Lcom/android/server/am/OppoActivityManagerService;
.super Lcom/android/server/am/ActivityManagerService;
.source "OppoActivityManagerService.java"

# interfaces
.implements Landroid/app/IOppoActivityManager;
.implements Landroid/app/IOppoActivityManager$Service;


# instance fields
.field mPermissionInterceptPolicy:Lcom/android/server/am/OppoPermissionInterceptPolicy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerService;-><init>(Landroid/content/Context;)V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OppoActivityManagerService;->mPermissionInterceptPolicy:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    .line 49
    return-void
.end method


# virtual methods
.method public checkPermissionForProc(Ljava/lang/String;IIILjava/lang/Object;)I
    .locals 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "token"    # I
    .param p5, "callback"    # Ljava/lang/Object;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/server/am/OppoActivityManagerService;->mPermissionInterceptPolicy:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    move-object v5, p5

    check-cast v5, Lcom/android/server/am/OppoPermissionCallback;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->checkPermissionForProc(Ljava/lang/String;IIILcom/android/server/am/OppoPermissionCallback;)I

    move-result v0

    return v0
.end method

.method public getTopActivityComponentName()Landroid/content/ComponentName;
    .locals 5

    .prologue
    .line 159
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/OppoActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 161
    .local v2, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_0

    .line 162
    new-instance v1, Landroid/content/ComponentName;

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .end local v2    # "top":Lcom/android/server/am/ActivityRecord;
    :goto_0
    return-object v1

    .line 164
    .restart local v2    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, ""

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .local v1, "name":Landroid/content/ComponentName;
    goto :goto_0

    .line 168
    .end local v1    # "name":Landroid/content/ComponentName;
    .end local v2    # "top":Lcom/android/server/am/ActivityRecord;
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, ""

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isPermissionInterceptEnabled()Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/server/am/OppoActivityManagerService;->mPermissionInterceptPolicy:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->isPermissionInterceptEnabled()Z

    move-result v0

    return v0
.end method

.method public killPidForce(I)V
    .locals 1
    .param p1, "pid"    # I

    .prologue
    .line 174
    const/16 v0, 0x9

    invoke-static {p1, v0}, Landroid/os/Process;->sendSignal(II)V

    .line 175
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
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
    const/4 v9, 0x1

    .line 66
    packed-switch p1, :pswitch_data_0

    .line 126
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityManagerService;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_0
    return v9

    .line 69
    :pswitch_0
    const-string v10, "android.app.IActivityManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    move-result-object v8

    .line 72
    .local v8, "watcher":Landroid/app/IActivityController;
    invoke-virtual {p0, v8}, Lcom/android/server/am/OppoActivityManagerService;->setSecureController(Landroid/app/IActivityController;)V

    goto :goto_0

    .line 77
    .end local v8    # "watcher":Landroid/app/IActivityController;
    :pswitch_1
    const-string v10, "android.app.IActivityManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 80
    .local v4, "permission":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 81
    .local v0, "choice":I
    invoke-virtual {p0, v3, v4, v0}, Lcom/android/server/am/OppoActivityManagerService;->updatePermissionChoice(Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 87
    .end local v0    # "choice":I
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "permission":Ljava/lang/String;
    :pswitch_2
    const-string v10, "android.app.IActivityManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 89
    .local v1, "enabled":Z
    invoke-virtual {p0, v1}, Lcom/android/server/am/OppoActivityManagerService;->setPermissionInterceptEnable(Z)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 95
    .end local v1    # "enabled":Z
    :pswitch_3
    const-string v10, "android.app.IActivityManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/server/am/OppoActivityManagerService;->isPermissionInterceptEnabled()Z

    move-result v1

    .line 97
    .restart local v1    # "enabled":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 103
    .end local v1    # "enabled":Z
    :pswitch_4
    const-string v10, "android.app.IActivityManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 105
    .local v6, "properties":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 106
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {p0, v6, v7}, Lcom/android/server/am/OppoActivityManagerService;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 112
    .end local v6    # "properties":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :pswitch_5
    const-string v10, "android.app.IActivityManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/server/am/OppoActivityManagerService;->getTopActivityComponentName()Landroid/content/ComponentName;

    move-result-object v2

    .line 114
    .local v2, "name":Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-static {v2, p3}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    goto :goto_0

    .line 119
    .end local v2    # "name":Landroid/content/ComponentName;
    :pswitch_6
    const-string v10, "android.app.IActivityManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 121
    .local v5, "pid":I
    invoke-virtual {p0, v5}, Lcom/android/server/am/OppoActivityManagerService;->killPidForce(I)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x2712
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public permissionInterceptPolicyReady()V
    .locals 1

    .prologue
    .line 52
    invoke-static {p0}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->getInstance(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/OppoPermissionInterceptPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OppoActivityManagerService;->mPermissionInterceptPolicy:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    .line 53
    return-void
.end method

.method public setPermissionInterceptEnable(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/am/OppoActivityManagerService;->mPermissionInterceptPolicy:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->setPermissionInterceptEnable(Z)V

    .line 145
    return-void
.end method

.method public setSecureController(Landroid/app/IActivityController;)V
    .locals 2
    .param p1, "controller"    # Landroid/app/IActivityController;

    .prologue
    .line 131
    const-string v0, "android.permission.SET_ACTIVITY_WATCHER"

    const-string v1, "setActivityController()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/OppoActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    monitor-enter p0

    .line 135
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/server/am/OppoSecureProtectUtils;->setSecureControllerLocked(Lcom/android/server/am/ActivityManagerService;Landroid/app/IActivityController;)V

    .line 136
    monitor-exit p0

    .line 137
    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSystemProperties(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "properties"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 152
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public updatePermissionChoice(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "choice"    # I

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/server/am/OppoActivityManagerService;->mPermissionInterceptPolicy:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->updatePermissionChoice(Ljava/lang/String;Ljava/lang/String;I)V

    .line 141
    return-void
.end method
