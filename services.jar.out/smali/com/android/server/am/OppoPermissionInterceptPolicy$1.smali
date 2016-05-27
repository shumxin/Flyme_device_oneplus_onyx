.class Lcom/android/server/am/OppoPermissionInterceptPolicy$1;
.super Landroid/os/Handler;
.source "OppoPermissionInterceptPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/OppoPermissionInterceptPolicy;-><init>(Lcom/android/server/am/ActivityManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/am/OppoPermissionInterceptPolicy;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$1;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 185
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 222
    :goto_0
    return-void

    .line 187
    :pswitch_0
    iget-object v5, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$1;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    monitor-enter v5

    .line 188
    :try_start_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/OppoPermissionInterceptPolicy$UpdateMsgDate;

    .line 189
    .local v3, "umd":Lcom/android/server/am/OppoPermissionInterceptPolicy$UpdateMsgDate;
    const/4 v1, 0x0

    .line 190
    .local v1, "pkgPm":Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;
    iget-object v4, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$1;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    iget-object v6, v3, Lcom/android/server/am/OppoPermissionInterceptPolicy$UpdateMsgDate;->permission:Ljava/lang/String;

    # invokes: Lcom/android/server/am/OppoPermissionInterceptPolicy;->getPermissionMask(Ljava/lang/String;)I
    invoke-static {v4, v6}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$000(Lcom/android/server/am/OppoPermissionInterceptPolicy;Ljava/lang/String;)I

    move-result v0

    .line 191
    .local v0, "permissionMask":I
    iget-object v4, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$1;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    iget-object v6, v3, Lcom/android/server/am/OppoPermissionInterceptPolicy$UpdateMsgDate;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->getProcessForPackageName(Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    .line 193
    .local v2, "pr":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_0

    .line 194
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->mPackagePermission:Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;

    if-eqz v4, :cond_0

    .line 195
    iget-object v4, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$1;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->mPackagePermission:Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;

    iget v7, v3, Lcom/android/server/am/OppoPermissionInterceptPolicy$UpdateMsgDate;->choice:I

    # invokes: Lcom/android/server/am/OppoPermissionInterceptPolicy;->changePermissionChoice(Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;II)V
    invoke-static {v4, v6, v0, v7}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$100(Lcom/android/server/am/OppoPermissionInterceptPolicy;Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;II)V

    .line 197
    iget-object v4, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$1;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->mPersistPackagePermission:Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;

    iget v7, v3, Lcom/android/server/am/OppoPermissionInterceptPolicy$UpdateMsgDate;->choice:I

    # invokes: Lcom/android/server/am/OppoPermissionInterceptPolicy;->changePermissionChoice(Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;II)V
    invoke-static {v4, v6, v0, v7}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$100(Lcom/android/server/am/OppoPermissionInterceptPolicy;Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;II)V

    .line 199
    iget v4, v2, Lcom/android/server/am/ProcessRecord;->isSelected:I

    xor-int/lit8 v6, v0, -0x1

    and-int/2addr v4, v6

    iput v4, v2, Lcom/android/server/am/ProcessRecord;->isSelected:I

    .line 200
    iget-object v1, v2, Lcom/android/server/am/ProcessRecord;->mPersistPackagePermission:Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;

    .line 204
    :cond_0
    if-nez v1, :cond_1

    .line 205
    iget-object v4, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$1;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    iget-object v6, v3, Lcom/android/server/am/OppoPermissionInterceptPolicy$UpdateMsgDate;->packageName:Ljava/lang/String;

    # invokes: Lcom/android/server/am/OppoPermissionInterceptPolicy;->queryPackagePermissions(Ljava/lang/String;)Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;
    invoke-static {v4, v6}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$200(Lcom/android/server/am/OppoPermissionInterceptPolicy;Ljava/lang/String;)Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;

    move-result-object v1

    .line 206
    if-eqz v1, :cond_1

    .line 207
    iget-object v4, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$1;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    iget v6, v3, Lcom/android/server/am/OppoPermissionInterceptPolicy$UpdateMsgDate;->choice:I

    # invokes: Lcom/android/server/am/OppoPermissionInterceptPolicy;->changePermissionChoice(Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;II)V
    invoke-static {v4, v1, v0, v6}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$100(Lcom/android/server/am/OppoPermissionInterceptPolicy;Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;II)V

    .line 210
    :cond_1
    # getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->DEBUG:Z
    invoke-static {}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$300()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 211
    const-string v4, "OppoPermissionInterceptPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE_PERMISSION_CHOICE, pkgPm="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_2
    if-eqz v1, :cond_3

    .line 213
    iget-object v4, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$1;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    # invokes: Lcom/android/server/am/OppoPermissionInterceptPolicy;->savePermissionChoice(Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;)V
    invoke-static {v4, v1}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$400(Lcom/android/server/am/OppoPermissionInterceptPolicy;Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;)V

    .line 215
    :cond_3
    monitor-exit v5

    goto :goto_0

    .end local v0    # "permissionMask":I
    .end local v1    # "pkgPm":Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;
    .end local v2    # "pr":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "umd":Lcom/android/server/am/OppoPermissionInterceptPolicy$UpdateMsgDate;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 185
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
