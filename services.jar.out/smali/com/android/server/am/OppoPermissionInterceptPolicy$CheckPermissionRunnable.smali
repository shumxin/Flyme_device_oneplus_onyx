.class Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;
.super Ljava/lang/Object;
.source "OppoPermissionInterceptPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OppoPermissionInterceptPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckPermissionRunnable"
.end annotation


# instance fields
.field callback:Lcom/android/server/am/OppoPermissionCallback;

.field lock:Ljava/lang/Object;

.field permission:Ljava/lang/String;

.field pid:I

.field res:I

.field final synthetic this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

.field token:I

.field uid:I


# direct methods
.method constructor <init>(Lcom/android/server/am/OppoPermissionInterceptPolicy;Ljava/lang/Object;Ljava/lang/String;IIILcom/android/server/am/OppoPermissionCallback;)V
    .locals 0
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "permission"    # Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I
    .param p6, "token"    # I
    .param p7, "callback"    # Lcom/android/server/am/OppoPermissionCallback;

    .prologue
    .line 647
    iput-object p1, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 648
    iput-object p2, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->lock:Ljava/lang/Object;

    .line 649
    iput-object p3, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->permission:Ljava/lang/String;

    .line 650
    iput p4, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->pid:I

    .line 651
    iput p5, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->uid:I

    .line 652
    iput p6, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->token:I

    .line 653
    iput-object p7, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->callback:Lcom/android/server/am/OppoPermissionCallback;

    .line 654
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 657
    iget-object v10, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->lock:Ljava/lang/Object;

    monitor-enter v10

    .line 658
    :try_start_0
    # getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->DEBUG:Z
    invoke-static {}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$300()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 659
    const-string v9, "OppoPermissionInterceptPolicy"

    const-string v11, "checkPermissionForProc Runnable"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_0
    iget-object v9, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    iget v11, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->pid:I

    invoke-virtual {v9, v11}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->getProcessForPid(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v8

    .line 661
    .local v8, "pr":Lcom/android/server/am/ProcessRecord;
    const/4 v7, 0x0

    .line 662
    .local v7, "pkgPm":Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;
    if-nez v8, :cond_2

    .line 663
    # getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->DEBUG:Z
    invoke-static {}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$300()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 664
    const-string v9, "OppoPermissionInterceptPolicy"

    const-string v11, "checkPermissionForProc, pr==null"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :cond_1
    const/4 v9, 0x3

    iput v9, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->res:I

    .line 666
    iget-object v9, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->lock:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 667
    monitor-exit v10

    .line 760
    :goto_0
    return-void

    .line 669
    :cond_2
    iget-object v11, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 670
    :try_start_1
    iget-object v9, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v9, :cond_6

    .line 671
    iget-object v9, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    iget-object v12, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    # invokes: Lcom/android/server/am/OppoPermissionInterceptPolicy;->queryPackagePermissions(Ljava/lang/String;)Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;
    invoke-static {v9, v12}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$200(Lcom/android/server/am/OppoPermissionInterceptPolicy;Ljava/lang/String;)Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;

    move-result-object v7

    .line 672
    # getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->DEBUG:Z
    invoke-static {}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$300()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 673
    const-string v9, "OppoPermissionInterceptPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkPermissionForProc, pr.mPackagePermission = null, query pkgPm="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_3
    :goto_1
    if-eqz v7, :cond_4

    .line 682
    iput-object v7, v8, Lcom/android/server/am/ProcessRecord;->mPackagePermission:Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;

    .line 683
    invoke-virtual {v7}, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->copy()Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;

    move-result-object v9

    iput-object v9, v8, Lcom/android/server/am/ProcessRecord;->mPersistPackagePermission:Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;

    .line 686
    :cond_4
    if-eqz v7, :cond_5

    .line 687
    iget-object v9, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    iget-object v12, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->permission:Ljava/lang/String;

    # invokes: Lcom/android/server/am/OppoPermissionInterceptPolicy;->getPermissionMask(Ljava/lang/String;)I
    invoke-static {v9, v12}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$000(Lcom/android/server/am/OppoPermissionInterceptPolicy;Ljava/lang/String;)I

    move-result v4

    .line 688
    .local v4, "mask":I
    iget-object v9, v7, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->packageName:Ljava/lang/String;

    const-string v12, ".cts."

    invoke-virtual {v9, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 689
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->res:I

    .line 757
    .end local v4    # "mask":I
    :cond_5
    :goto_2
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 758
    :try_start_2
    iget-object v9, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->lock:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 759
    monitor-exit v10

    goto :goto_0

    .end local v7    # "pkgPm":Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;
    .end local v8    # "pr":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .line 677
    .restart local v7    # "pkgPm":Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;
    .restart local v8    # "pr":Lcom/android/server/am/ProcessRecord;
    :cond_6
    const/4 v9, 0x3

    :try_start_3
    iput v9, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->res:I

    .line 678
    # getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->DEBUG:Z
    invoke-static {}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$300()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 679
    const-string v9, "OppoPermissionInterceptPolicy"

    const-string v12, "checkPermissionForProc, pr.info is null!!! return INVALID_RES!!!"

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 757
    :catchall_1
    move-exception v9

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 690
    .restart local v4    # "mask":I
    :cond_7
    :try_start_5
    iget v9, v7, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->trust:I

    if-eqz v9, :cond_8

    .line 691
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->res:I

    goto :goto_2

    .line 692
    :cond_8
    iget v9, v7, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->accept:I

    and-int/2addr v9, v4

    if-eqz v9, :cond_9

    .line 693
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->res:I

    goto :goto_2

    .line 694
    :cond_9
    iget v9, v7, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->reject:I

    and-int/2addr v9, v4

    if-eqz v9, :cond_d

    .line 696
    iget-object v9, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    # getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->LIST_SKIP_PACKAGES:Ljava/util/List;
    invoke-static {v9}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$1400(Lcom/android/server/am/OppoPermissionInterceptPolicy;)Ljava/util/List;

    move-result-object v9

    iget-object v12, v7, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->packageName:Ljava/lang/String;

    invoke-interface {v9, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    const-string v9, "android.permission.READ_CONTACTS"

    iget-object v12, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->permission:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 697
    const-string v9, "OppoPermissionInterceptPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SKIP reject - permission.READ_CONTACTS: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v7, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->res:I

    .line 703
    :goto_3
    iget-object v9, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    # getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$1200(Lcom/android/server/am/OppoPermissionInterceptPolicy;)Landroid/content/Context;

    move-result-object v9

    const-string v12, "activity"

    invoke-virtual {v9, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 704
    .local v3, "manager":Landroid/app/ActivityManager;
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_5

    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-eqz v9, :cond_5

    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v9

    const/4 v12, 0x0

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 705
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v9

    const/4 v12, 0x0

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 706
    .local v1, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v9, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v5

    .line 708
    .local v5, "packageName":Ljava/lang/String;
    :try_start_6
    iget v9, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->uid:I

    iget-object v12, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    # getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->mPm:Landroid/content/pm/IPackageManager;
    invoke-static {v12}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$1500(Lcom/android/server/am/OppoPermissionInterceptPolicy;)Landroid/content/pm/IPackageManager;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v5, v13}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v12

    if-eq v9, v12, :cond_a

    const-string v9, "com.wandoujia.phoenix2"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v12, "com.wandoujia.phoenix2.usbproxy"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 710
    :cond_a
    const-string v9, "com.wandoujia.phoenix2"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v12, "com.wandoujia.phoenix2.usbproxy"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 711
    const-string v5, "com.wandoujia.phoenix2.usbproxy"

    .line 712
    # getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->DEBUG:Z
    invoke-static {}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$300()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 713
    const-string v9, "OppoPermissionInterceptPolicy"

    const-string v12, "--wandoujia equals--"

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :cond_b
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 716
    .local v2, "intent":Landroid/content/Intent;
    const-string v9, "com.oppo.permissionprotect.notify"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 717
    const-string v9, "PackageName"

    invoke-virtual {v2, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 718
    const-string v9, "Permission"

    iget-object v12, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->permission:Ljava/lang/String;

    invoke-virtual {v2, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 719
    iget-object v9, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    # getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$1200(Lcom/android/server/am/OppoPermissionInterceptPolicy;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 720
    # getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->DEBUG:Z
    invoke-static {}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$300()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 721
    const-string v9, "OppoPermissionInterceptPolicy"

    const-string v12, "Notify!!!"

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_2

    .line 723
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 724
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 700
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v3    # "manager":Landroid/app/ActivityManager;
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_c
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->res:I

    goto/16 :goto_3

    .line 729
    :cond_d
    iget v9, v7, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->prompt:I

    and-int/2addr v9, v4

    if-eqz v9, :cond_5

    .line 730
    iget-object v9, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    # invokes: Lcom/android/server/am/OppoPermissionInterceptPolicy;->isScreenOn()Z
    invoke-static {v9}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$1300(Lcom/android/server/am/OppoPermissionInterceptPolicy;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 732
    new-instance v6, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;

    iget-object v9, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    invoke-direct {v6, v9}, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;-><init>(Lcom/android/server/am/OppoPermissionInterceptPolicy;)V

    .line 733
    .local v6, "pcm":Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;
    iget-object v9, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->permission:Ljava/lang/String;

    iput-object v9, v6, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->permission:Ljava/lang/String;

    .line 734
    iput-object v8, v6, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->pr:Lcom/android/server/am/ProcessRecord;

    .line 735
    iget v9, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->uid:I

    iput v9, v6, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->uid:I

    .line 736
    iget-object v9, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->callback:Lcom/android/server/am/OppoPermissionCallback;

    iput-object v9, v6, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->callback:Lcom/android/server/am/OppoPermissionCallback;

    .line 737
    iput v4, v6, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->permissionMask:I

    .line 738
    iget v9, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->token:I

    iput v9, v6, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->token:I

    .line 739
    # getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->sPermissionCheckMsgList:Ljava/util/LinkedList;
    invoke-static {}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$500()Ljava/util/LinkedList;

    move-result-object v12

    monitor-enter v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 740
    :try_start_8
    # getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->sPermissionCheckMsgList:Ljava/util/LinkedList;
    invoke-static {}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$500()Ljava/util/LinkedList;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 741
    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/android/server/am/ProcessRecord;->isWaitingPermissionChoice:Z

    .line 742
    # getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->DEBUG:Z
    invoke-static {}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$300()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 743
    const-string v9, "OppoPermissionInterceptPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "add pcm, size="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    # getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->sPermissionCheckMsgList:Ljava/util/LinkedList;
    invoke-static {}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$500()Ljava/util/LinkedList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/LinkedList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", sPermissionCheckMsgList="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    # getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->sPermissionCheckMsgList:Ljava/util/LinkedList;
    invoke-static {}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$500()Ljava/util/LinkedList;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_e
    iget-object v9, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    # getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->mPendingMsgHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$1600(Lcom/android/server/am/OppoPermissionInterceptPolicy;)Landroid/os/Handler;

    move-result-object v9

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 748
    const/4 v9, 0x2

    iput v9, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->res:I

    .line 749
    monitor-exit v12

    goto/16 :goto_2

    :catchall_2
    move-exception v9

    monitor-exit v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v9

    .line 752
    .end local v6    # "pcm":Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;
    :cond_f
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->res:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_2
.end method
