.class public Lcn/oneplus/telephony/OemTelephonyServiceManager;
.super Ljava/lang/Object;
.source "OemTelephonyServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/oneplus/telephony/OemTelephonyServiceManager$1;,
        Lcn/oneplus/telephony/OemTelephonyServiceManager$ServiceBinderConnection;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field static final OEM_TELEPHONY_CMD_ACTIVE_QUERIED_MBN:I = 0x5

.field static final OEM_TELEPHONY_CMD_DO_NO_SERVICE_CHEATING:I = 0x1f6

.field static final OEM_TELEPHONY_CMD_GET_DEFAULT_NW_MODE:I = 0x1f7

.field static final OEM_TELEPHONY_CMD_IS_CDMA_SUB:I = 0x1f4

.field static final OEM_TELEPHONY_CMD_IS_CDMA_SUB_REQUIRE_MULTIMODE:I = 0x1f5

.field static final SERVICE_INTERFACE:Ljava/lang/String; = "cn.oneplus.telephony.OemTelephonyService"

.field static final SERVICE_PACKAGE:Ljava/lang/String; = "cn.oneplus.telephony"

.field static final TAG:Ljava/lang/String; = "OemTelephonyServiceManager"

.field private static instance:Lcn/oneplus/telephony/OemTelephonyServiceManager;


# instance fields
.field mContext:Landroid/content/Context;

.field mServiceBinderConnection:Lcn/oneplus/telephony/OemTelephonyServiceManager$ServiceBinderConnection;

.field private mServiceInterface:Lcn/oneplus/telephony/IOemTelephonyService;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcn/oneplus/telephony/OemTelephonyServiceManager;->mContext:Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Lcn/oneplus/telephony/OemTelephonyServiceManager;->bind()Z

    move-result v0

    .line 46
    .local v0, "ret":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind oem telephony:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/oneplus/telephony/OemTelephonyServiceManager;->logd(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcn/oneplus/telephony/OemTelephonyServiceManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/oneplus/telephony/OemTelephonyServiceManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcn/oneplus/telephony/OemTelephonyServiceManager;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcn/oneplus/telephony/OemTelephonyServiceManager;Lcn/oneplus/telephony/IOemTelephonyService;)Lcn/oneplus/telephony/IOemTelephonyService;
    .locals 0
    .param p0, "x0"    # Lcn/oneplus/telephony/OemTelephonyServiceManager;
    .param p1, "x1"    # Lcn/oneplus/telephony/IOemTelephonyService;

    .prologue
    .line 17
    iput-object p1, p0, Lcn/oneplus/telephony/OemTelephonyServiceManager;->mServiceInterface:Lcn/oneplus/telephony/IOemTelephonyService;

    return-object p1
.end method

.method private bind()Z
    .locals 4

    .prologue
    .line 100
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.oneplus.telephony.OemTelephonyService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cn.oneplus.telephony"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    new-instance v1, Lcn/oneplus/telephony/OemTelephonyServiceManager$ServiceBinderConnection;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/oneplus/telephony/OemTelephonyServiceManager$ServiceBinderConnection;-><init>(Lcn/oneplus/telephony/OemTelephonyServiceManager;Lcn/oneplus/telephony/OemTelephonyServiceManager$1;)V

    iput-object v1, p0, Lcn/oneplus/telephony/OemTelephonyServiceManager;->mServiceBinderConnection:Lcn/oneplus/telephony/OemTelephonyServiceManager$ServiceBinderConnection;

    .line 103
    iget-object v1, p0, Lcn/oneplus/telephony/OemTelephonyServiceManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/oneplus/telephony/OemTelephonyServiceManager;->mServiceBinderConnection:Lcn/oneplus/telephony/OemTelephonyServiceManager$ServiceBinderConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method

.method public static getInstance()Lcn/oneplus/telephony/OemTelephonyServiceManager;
    .locals 3

    .prologue
    .line 58
    const-class v1, Lcn/oneplus/telephony/OemTelephonyServiceManager;

    monitor-enter v1

    .line 59
    :try_start_0
    sget-object v0, Lcn/oneplus/telephony/OemTelephonyServiceManager;->instance:Lcn/oneplus/telephony/OemTelephonyServiceManager;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "OemTelephonyServiceManager was not initialize!"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 62
    :cond_0
    :try_start_1
    sget-object v0, Lcn/oneplus/telephony/OemTelephonyServiceManager;->instance:Lcn/oneplus/telephony/OemTelephonyServiceManager;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const-class v1, Lcn/oneplus/telephony/OemTelephonyServiceManager;

    monitor-enter v1

    .line 51
    :try_start_0
    sget-object v0, Lcn/oneplus/telephony/OemTelephonyServiceManager;->instance:Lcn/oneplus/telephony/OemTelephonyServiceManager;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcn/oneplus/telephony/OemTelephonyServiceManager;

    invoke-direct {v0, p0}, Lcn/oneplus/telephony/OemTelephonyServiceManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/oneplus/telephony/OemTelephonyServiceManager;->instance:Lcn/oneplus/telephony/OemTelephonyServiceManager;

    .line 54
    :cond_0
    monitor-exit v1

    .line 55
    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 72
    const-string v0, "OemTelephonyServiceManager"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 77
    const-string v0, "OemTelephonyServiceManager"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void
.end method


# virtual methods
.method public do_no_service_cheating(I)Z
    .locals 15
    .param p1, "phoneId"    # I

    .prologue
    .line 145
    const/4 v14, 0x0

    .line 147
    .local v14, "ret":Z
    :try_start_0
    iget-object v0, p0, Lcn/oneplus/telephony/OemTelephonyServiceManager;->mServiceInterface:Lcn/oneplus/telephony/IOemTelephonyService;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcn/oneplus/telephony/OemTelephonyServiceManager;->mServiceInterface:Lcn/oneplus/telephony/IOemTelephonyService;

    const/16 v1, 0x1f6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move/from16 v2, p1

    invoke-interface/range {v0 .. v11}, Lcn/oneplus/telephony/IOemTelephonyService;->oem_general_command(IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 150
    .local v13, "remote_ret":I
    const/4 v0, 0x1

    if-ne v0, v13, :cond_0

    .line 151
    const/4 v14, 0x1

    .line 158
    .end local v13    # "remote_ret":I
    :cond_0
    :goto_0
    return v14

    .line 154
    :catch_0
    move-exception v12

    .line 155
    .local v12, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception oem_general_command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/oneplus/telephony/OemTelephonyServiceManager;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public get_default_nw_mode(I)I
    .locals 14
    .param p1, "subId"    # I

    .prologue
    const/4 v1, 0x0

    .line 162
    const-string v0, "ro.telephony.default_network"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 165
    .local v13, "nwmode":I
    :try_start_0
    iget-object v0, p0, Lcn/oneplus/telephony/OemTelephonyServiceManager;->mServiceInterface:Lcn/oneplus/telephony/IOemTelephonyService;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcn/oneplus/telephony/OemTelephonyServiceManager;->mServiceInterface:Lcn/oneplus/telephony/IOemTelephonyService;

    const/16 v1, 0x1f7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v2, p1

    invoke-interface/range {v0 .. v11}, Lcn/oneplus/telephony/IOemTelephonyService;->oem_general_command(IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 173
    :cond_0
    :goto_0
    return v13

    .line 170
    :catch_0
    move-exception v12

    .line 171
    .local v12, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception oem_general_command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/oneplus/telephony/OemTelephonyServiceManager;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isCdmaSub(I)Z
    .locals 15
    .param p1, "subId"    # I

    .prologue
    .line 113
    const/4 v14, 0x0

    .line 115
    .local v14, "ret":Z
    :try_start_0
    iget-object v0, p0, Lcn/oneplus/telephony/OemTelephonyServiceManager;->mServiceInterface:Lcn/oneplus/telephony/IOemTelephonyService;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcn/oneplus/telephony/OemTelephonyServiceManager;->mServiceInterface:Lcn/oneplus/telephony/IOemTelephonyService;

    const/16 v1, 0x1f4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move/from16 v2, p1

    invoke-interface/range {v0 .. v11}, Lcn/oneplus/telephony/IOemTelephonyService;->oem_general_command(IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 118
    .local v13, "remote_ret":I
    const/4 v0, 0x1

    if-ne v0, v13, :cond_0

    .line 119
    const/4 v14, 0x1

    .line 125
    .end local v13    # "remote_ret":I
    :cond_0
    :goto_0
    return v14

    .line 122
    :catch_0
    move-exception v12

    .line 123
    .local v12, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception oem_general_command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/oneplus/telephony/OemTelephonyServiceManager;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isCdmaSubRequireMultimode()Z
    .locals 15

    .prologue
    .line 129
    const/4 v14, 0x0

    .line 131
    .local v14, "ret":Z
    :try_start_0
    iget-object v0, p0, Lcn/oneplus/telephony/OemTelephonyServiceManager;->mServiceInterface:Lcn/oneplus/telephony/IOemTelephonyService;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcn/oneplus/telephony/OemTelephonyServiceManager;->mServiceInterface:Lcn/oneplus/telephony/IOemTelephonyService;

    const/16 v1, 0x1f5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v0 .. v11}, Lcn/oneplus/telephony/IOemTelephonyService;->oem_general_command(IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 134
    .local v13, "remote_ret":I
    const/4 v0, 0x1

    if-ne v0, v13, :cond_0

    .line 135
    const/4 v14, 0x1

    .line 141
    .end local v13    # "remote_ret":I
    :cond_0
    :goto_0
    return v14

    .line 138
    :catch_0
    move-exception v12

    .line 139
    .local v12, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception oem_general_command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/oneplus/telephony/OemTelephonyServiceManager;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unbind()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcn/oneplus/telephony/OemTelephonyServiceManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/oneplus/telephony/OemTelephonyServiceManager;->mServiceBinderConnection:Lcn/oneplus/telephony/OemTelephonyServiceManager$ServiceBinderConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/oneplus/telephony/OemTelephonyServiceManager;->mServiceBinderConnection:Lcn/oneplus/telephony/OemTelephonyServiceManager$ServiceBinderConnection;

    .line 109
    return-void
.end method
