.class public final Landroid/os/OppoManager;
.super Ljava/lang/Object;
.source "OppoManager.java"


# static fields
.field public static final ANDROID_PANIC_TAG:Ljava/lang/String; = "SYSTEM_SERVER"

.field public static final ANDROID_PANIC_TAG_BEGIN:Ljava/lang/String; = "<android-panic-begin>\n"

.field public static final ANDROID_PANIC_TAG_END:Ljava/lang/String; = "<android-panic-end>\n"

.field public static final ANDROID_TAG:Ljava/lang/String; = "ANDROID"

.field private static DATA_SIZE:I = 0x0

.field private static final DEBUG:Z = true

.field public static final ENGINEERINGMODE_TEST_BEGIN:Ljava/lang/String; = "<engineeringmode-test-begin>\n"

.field public static final ENGINEERINGMODE_TEST_END:Ljava/lang/String; = "<engineeringmode-test-end>\n"

.field public static final ENGINEERINGMODE_TEST_TAG:Ljava/lang/String; = "ENGINEERINGMODE_TEST"

.field private static final INIT_TRY_TIMES:I = 0x3

.field public static final ISSUE_ADSP_LOAD_FAIL:Ljava/lang/String; = "adps_load_fail"

.field public static final ISSUE_AF_BLOCKED:Ljava/lang/String; = "af_blocked"

.field public static final ISSUE_ANDROID_CRASH:Ljava/lang/String; = "crash"

.field public static final ISSUE_AUDIO_RECORD_FAIL:Ljava/lang/String; = "audio_record_fail"

.field public static final ISSUE_ESD_EXCEPTION:Ljava/lang/String; = "esd_exception"

.field public static final ISSUE_FENCE_TIMEOUT:Ljava/lang/String; = "fence_timeout"

.field public static final ISSUE_GPU_EXCEPTION:Ljava/lang/String; = "gpu_exception"

.field public static final ISSUE_IOMMU_ERROR:Ljava/lang/String; = "iommu_error"

.field public static final ISSUE_KERNEL_PANIC:Ljava/lang/String; = "panic"

.field public static final ISSUE_KGSL_EXCEPTION:Ljava/lang/String; = "kgsl_exception"

.field public static final ISSUE_MEDIA_SERVER_DIED:Ljava/lang/String; = "media_server_died"

.field public static final ISSUE_NO_DATA_TO_SHOW:Ljava/lang/String; = "no_data_to_show"

.field public static final ISSUE_SF_EXCEPTION:Ljava/lang/String; = "sf_exception"

.field public static final ISSUE_SMART_PA_EXCEPTION:Ljava/lang/String; = "smart_pa_exception"

.field public static final ISSUE_SOUND_CARD_REGISTER_FAIL:Ljava/lang/String; = "sound_card_register_fail"

.field public static final ISSUE_SYS_OEM_NW_DIAG_CAUSE_AS_FAILED:Ljava/lang/String; = "as_failed"

.field public static final ISSUE_SYS_OEM_NW_DIAG_CAUSE_AUTHENTICATION_REJECT:Ljava/lang/String; = "authentication_reject"

.field public static final ISSUE_SYS_OEM_NW_DIAG_CAUSE_CARD_DROP_RX_BREAK:Ljava/lang/String; = "card_drop_rx_break"

.field public static final ISSUE_SYS_OEM_NW_DIAG_CAUSE_CARD_DROP_TIME_OUT:Ljava/lang/String; = "card_drop_time_out"

.field public static final ISSUE_SYS_OEM_NW_DIAG_CAUSE_DATA_NOT_ALLOWED:Ljava/lang/String; = "data_no_allowed"

.field public static final ISSUE_SYS_OEM_NW_DIAG_CAUSE_DATA_NO_AVAILABLE_APN:Ljava/lang/String; = "data_no_acailable_apn"

.field public static final ISSUE_SYS_OEM_NW_DIAG_CAUSE_DATA_SET_UP_DATA_ERROR:Ljava/lang/String; = "data_set_up_data_error"

.field public static final ISSUE_SYS_OEM_NW_DIAG_CAUSE_GSM_T3126_EXPIRED:Ljava/lang/String; = "gsm_t3126_expired"

.field public static final ISSUE_SYS_OEM_NW_DIAG_CAUSE_LTE_AS_FAILED:Ljava/lang/String; = "lte_as_failed"

.field public static final ISSUE_SYS_OEM_NW_DIAG_CAUSE_LTE_REG_REJECT:Ljava/lang/String; = "ltc_reg_reject"

.field public static final ISSUE_SYS_OEM_NW_DIAG_CAUSE_LTE_REG_WITHOUT_LTE:Ljava/lang/String; = "lte_reg_without_lte"

.field public static final ISSUE_SYS_OEM_NW_DIAG_CAUSE_MCFG_ICCID_FAILED:Ljava/lang/String; = "mcfg_iccid_failed"

.field public static final ISSUE_SYS_OEM_NW_DIAG_CAUSE_MO_DROP:Ljava/lang/String; = "mo_drop"

.field public static final ISSUE_SYS_OEM_NW_DIAG_CAUSE_MT_CSFB:Ljava/lang/String; = "mt_csfb"

.field public static final ISSUE_SYS_OEM_NW_DIAG_CAUSE_MT_PCH:Ljava/lang/String; = "mt_pch"

.field public static final ISSUE_SYS_OEM_NW_DIAG_CAUSE_MT_RACH:Ljava/lang/String; = "mt_rach"

.field public static final ISSUE_SYS_OEM_NW_DIAG_CAUSE_MT_REJECT:Ljava/lang/String; = "mt_reject"

.field public static final ISSUE_SYS_OEM_NW_DIAG_CAUSE_MT_RLF:Ljava/lang/String; = "mt_rlf"

.field public static final ISSUE_SYS_OEM_NW_DIAG_CAUSE_MT_RRC:Ljava/lang/String; = "mt_rrc"

.field public static final ISSUE_SYS_OEM_NW_DIAG_CAUSE_REG_REJECT:Ljava/lang/String; = "reg_rejetc"

.field public static final ISSUE_SYS_OEM_NW_DIAG_CAUSE_RF_MIPI_HW_FAILED:Ljava/lang/String; = "rf_mipi_hw_failed"

.field public static final ISSUE_VIDEO_RECORD_FAIL:Ljava/lang/String; = "video_record_fail"

.field public static final ISSUE_VSYNC_EXCEPTION:Ljava/lang/String; = "vsync_exception"

.field public static final KERNEL_PANIC_TAG:Ljava/lang/String; = "SYSTEM_LAST_KMSG"

.field public static final KERNEL_PANIC_TAG_BEGIN:Ljava/lang/String; = "<kernel-panic-begin>\n"

.field public static final KERNEL_PANIC_TAG_END:Ljava/lang/String; = "<kernel-panic-end>\n"

.field public static final KERNEL_TAG:Ljava/lang/String; = "KERNEL"

.field public static final MULTIMEDIA_TAG:Ljava/lang/String; = "MULTIMEDIA"

.field public static final NETWORK_TAG:Ljava/lang/String; = "NETWORK"

.field public static final SERVICE_NAME:Ljava/lang/String; = "OPPO"

.field public static final SHUTDOWN_TAG:Ljava/lang/String; = "SYSTEM_SHUTDOWN"

.field public static final SHUTDOWN_TAG_BEGIN:Ljava/lang/String; = "<shutdown-begin>\n"

.field public static final SHUTDOWN_TAG_END:Ljava/lang/String; = "<shutdown-end>\n"

.field public static final SPMI_BEGIN:Ljava/lang/String; = "<spmi-begin>\n"

.field public static final SPMI_END:Ljava/lang/String; = "<spmi-end>\n"

.field public static final SPMI_TAG:Ljava/lang/String; = "SPMI"

.field public static final TAG:Ljava/lang/String; = "OppoManager"

.field public static TYPE_HW_SHUTDOWN:I

.field public static TYPE_LOGSIZE:I

.field public static TYPE_MODERN:I

.field public static TYPE_PANIC:I

.field public static TYPE_REBOOT:I

.field public static TYPE_SHUTDOWN:I

.field public static TYPE_SYSTEM_CRASH:I

.field private static sService:Landroid/os/IOppoService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput v0, Landroid/os/OppoManager;->TYPE_PANIC:I

    .line 52
    const/4 v0, 0x1

    sput v0, Landroid/os/OppoManager;->TYPE_SHUTDOWN:I

    .line 53
    const/4 v0, 0x2

    sput v0, Landroid/os/OppoManager;->TYPE_REBOOT:I

    .line 54
    const/4 v0, 0x3

    sput v0, Landroid/os/OppoManager;->TYPE_LOGSIZE:I

    .line 57
    const/4 v0, 0x4

    sput v0, Landroid/os/OppoManager;->TYPE_MODERN:I

    .line 62
    const/4 v0, 0x5

    sput v0, Landroid/os/OppoManager;->TYPE_HW_SHUTDOWN:I

    .line 66
    const/16 v0, 0x10

    sput v0, Landroid/os/OppoManager;->DATA_SIZE:I

    .line 329
    const/4 v0, 0x6

    sput v0, Landroid/os/OppoManager;->TYPE_SYSTEM_CRASH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpShutdownMsg(Ljava/lang/String;)V
    .locals 11
    .param p0, "reason"    # Ljava/lang/String;

    .prologue
    .line 96
    const-string v8, "OppoManager"

    const-string v9, "dumpShutdownMsg e"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v4, "sb":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v8, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v5, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 101
    .local v5, "sf":Ljava/text/SimpleDateFormat;
    const-string/jumbo v8, "ro.build.kernel.id"

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "kid":Ljava/lang/String;
    if-nez p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 103
    :cond_0
    const-string/jumbo v8, "shutdown reason:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    :cond_1
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v8, "\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "kernel id["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    new-instance v7, Ljava/lang/Throwable;

    invoke-direct {v7}, Ljava/lang/Throwable;-><init>()V

    .line 109
    .local v7, "t":Ljava/lang/Throwable;
    invoke-virtual {v7}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 110
    .local v0, "e":[Ljava/lang/StackTraceElement;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v8, v0

    if-ge v1, v8, :cond_2

    .line 112
    aget-object v8, v0, v1

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "---"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    aget-object v8, v0, v1

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "---"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    aget-object v8, v0, v1

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "---"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    aget-object v8, v0, v1

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    const-string v8, "\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, "msg":Ljava/lang/String;
    const-string v8, "SYSTEM_SHUTDOWN"

    invoke-static {v3, v8}, Landroid/os/OppoManager;->writeLogToPartition(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 122
    .local v6, "size":I
    const-string v8, "OppoManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "write normal shutdown log size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    sget v8, Landroid/os/OppoManager;->TYPE_SHUTDOWN:I

    invoke-static {v8}, Landroid/os/OppoManager;->incrementCriticalData(I)I

    move-result v8

    if-gez v8, :cond_3

    .line 127
    const-string v8, "OppoManager"

    const-string v9, "increment normal shutdown times failed!!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_3
    return-void
.end method

.method public static getTime()Ljava/lang/String;
    .locals 7

    .prologue
    .line 316
    const-string v2, ""

    .line 318
    .local v2, "strTime":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 319
    .local v4, "time":J
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 320
    .local v1, "format":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 321
    .local v0, "d1":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 322
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static incrementCriticalData(I)I
    .locals 7
    .param p0, "type"    # I

    .prologue
    .line 162
    const/4 v1, -0x1

    .line 163
    .local v1, "res":I
    if-gez p0, :cond_0

    move v2, v1

    .line 180
    .end local v1    # "res":I
    .local v2, "res":I
    :goto_0
    return v2

    .line 167
    .end local v2    # "res":I
    .restart local v1    # "res":I
    :cond_0
    sget v5, Landroid/os/OppoManager;->DATA_SIZE:I

    invoke-static {p0, v5}, Landroid/os/OppoManager;->readCriticalData(II)Ljava/lang/String;

    move-result-object v4

    .line 168
    .local v4, "timesString":Ljava/lang/String;
    if-nez v4, :cond_1

    move v2, v1

    .line 169
    .end local v1    # "res":I
    .restart local v2    # "res":I
    goto :goto_0

    .line 171
    .end local v2    # "res":I
    .restart local v1    # "res":I
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 173
    if-eqz v4, :cond_2

    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    const/4 v3, 0x0

    .line 175
    .local v3, "times":I
    :goto_1
    add-int/lit8 v5, v3, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/os/OppoManager;->writeCriticalData(ILjava/lang/String;)I

    move-result v1

    .end local v3    # "times":I
    :goto_2
    move v2, v1

    .line 180
    .end local v1    # "res":I
    .restart local v2    # "res":I
    goto :goto_0

    .line 173
    .end local v2    # "res":I
    .restart local v1    # "res":I
    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_1

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "OppoManager"

    const-string v6, "increment critical data failed!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static final init()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 35
    sget-object v2, Landroid/os/OppoManager;->sService:Landroid/os/IOppoService;

    if-eqz v2, :cond_1

    .line 46
    .local v0, "times":I
    :cond_0
    :goto_0
    return v1

    .line 38
    .end local v0    # "times":I
    :cond_1
    const/4 v0, 0x3

    .line 40
    .restart local v0    # "times":I
    :cond_2
    const-string v2, "OppoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Try to OppoService Instance! times = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const-string v2, "OPPO"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IOppoService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IOppoService;

    move-result-object v2

    sput-object v2, Landroid/os/OppoManager;->sService:Landroid/os/IOppoService;

    .line 42
    sget-object v2, Landroid/os/OppoManager;->sService:Landroid/os/IOppoService;

    if-nez v2, :cond_0

    .line 45
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_2

    .line 46
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static readCriticalData(I)I
    .locals 6
    .param p0, "type"    # I

    .prologue
    .line 184
    const/4 v2, 0x0

    .line 187
    .local v2, "res":I
    sget v4, Landroid/os/OppoManager;->TYPE_MODERN:I

    if-ne p0, v4, :cond_0

    .line 188
    invoke-static {}, Landroid/os/OppoManager;->readModernRebootTimes()I

    move-result v4

    add-int/2addr v2, v4

    .line 191
    :cond_0
    sget v4, Landroid/os/OppoManager;->DATA_SIZE:I

    invoke-static {p0, v4}, Landroid/os/OppoManager;->readCriticalData(II)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "dataString":Ljava/lang/String;
    if-nez v0, :cond_1

    move v3, v2

    .line 205
    .end local v2    # "res":I
    .local v3, "res":I
    :goto_0
    return v3

    .line 195
    .end local v3    # "res":I
    .restart local v2    # "res":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    move v3, v2

    .line 197
    .end local v2    # "res":I
    .restart local v3    # "res":I
    goto :goto_0

    .line 200
    .end local v3    # "res":I
    .restart local v2    # "res":I
    :cond_3
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    add-int/2addr v2, v4

    :goto_1
    move v3, v2

    .line 205
    .end local v2    # "res":I
    .restart local v3    # "res":I
    goto :goto_0

    .line 201
    .end local v3    # "res":I
    .restart local v2    # "res":I
    :catch_0
    move-exception v1

    .line 202
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "OppoManager"

    const-string/jumbo v5, "read critical data failed!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static readCriticalData(II)Ljava/lang/String;
    .locals 5
    .param p0, "id"    # I
    .param p1, "size"    # I

    .prologue
    .line 246
    const/4 v1, 0x0

    .line 247
    .local v1, "res":Ljava/lang/String;
    sget-object v3, Landroid/os/OppoManager;->sService:Landroid/os/IOppoService;

    if-nez v3, :cond_0

    invoke-static {}, Landroid/os/OppoManager;->init()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v2, v1

    .line 256
    .end local v1    # "res":Ljava/lang/String;
    .local v2, "res":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 251
    .end local v2    # "res":Ljava/lang/String;
    .restart local v1    # "res":Ljava/lang/String;
    :cond_0
    :try_start_0
    sget-object v3, Landroid/os/OppoManager;->sService:Landroid/os/IOppoService;

    invoke-interface {v3, p0, p1}, Landroid/os/IOppoService;->readCriticalData(II)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v2, v1

    .line 256
    .end local v1    # "res":Ljava/lang/String;
    .restart local v2    # "res":Ljava/lang/String;
    goto :goto_0

    .line 252
    .end local v2    # "res":Ljava/lang/String;
    .restart local v1    # "res":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "OppoManager"

    const-string/jumbo v4, "read Critical Data exception!\n"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public static readModernRebootTimes()I
    .locals 5

    .prologue
    .line 293
    const/4 v1, 0x0

    .line 294
    .local v1, "res":I
    const-string v2, ""

    .line 295
    .local v2, "str":Ljava/lang/String;
    sget-object v3, Landroid/os/OppoManager;->sService:Landroid/os/IOppoService;

    if-nez v3, :cond_0

    .line 312
    :goto_0
    return v1

    .line 299
    :cond_0
    :try_start_0
    sget-object v3, Landroid/os/OppoManager;->sService:Landroid/os/IOppoService;

    invoke-interface {v3}, Landroid/os/IOppoService;->readRebootTimes()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 307
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "OppoManager"

    const-string/jumbo v4, "read modern reboot times exception!\n"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static readRawPartition(II)Ljava/lang/String;
    .locals 5
    .param p0, "offset"    # I
    .param p1, "size"    # I

    .prologue
    .line 132
    const/4 v1, 0x0

    .line 133
    .local v1, "res":Ljava/lang/String;
    sget-object v3, Landroid/os/OppoManager;->sService:Landroid/os/IOppoService;

    if-nez v3, :cond_0

    invoke-static {}, Landroid/os/OppoManager;->init()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v2, v1

    .line 142
    .end local v1    # "res":Ljava/lang/String;
    .local v2, "res":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 137
    .end local v2    # "res":Ljava/lang/String;
    .restart local v1    # "res":Ljava/lang/String;
    :cond_0
    :try_start_0
    sget-object v3, Landroid/os/OppoManager;->sService:Landroid/os/IOppoService;

    invoke-interface {v3, p0, p1}, Landroid/os/IOppoService;->readRawPartition(II)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v2, v1

    .line 142
    .end local v1    # "res":Ljava/lang/String;
    .restart local v2    # "res":Ljava/lang/String;
    goto :goto_0

    .line 138
    .end local v2    # "res":Ljava/lang/String;
    .restart local v1    # "res":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "OppoManager"

    const-string/jumbo v4, "read Raw Partition exception!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public static writeCriticalData(ILjava/lang/String;)I
    .locals 5
    .param p0, "id"    # I
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 260
    const/4 v1, -0x1

    .line 261
    .local v1, "res":I
    sget-object v3, Landroid/os/OppoManager;->sService:Landroid/os/IOppoService;

    if-nez v3, :cond_0

    invoke-static {}, Landroid/os/OppoManager;->init()Z

    move-result v3

    if-nez v3, :cond_0

    move v2, v1

    .line 270
    .end local v1    # "res":I
    .local v2, "res":I
    :goto_0
    return v2

    .line 265
    .end local v2    # "res":I
    .restart local v1    # "res":I
    :cond_0
    :try_start_0
    sget-object v3, Landroid/os/OppoManager;->sService:Landroid/os/IOppoService;

    invoke-interface {v3, p0, p1}, Landroid/os/IOppoService;->writeCriticalData(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 270
    .end local v1    # "res":I
    .restart local v2    # "res":I
    goto :goto_0

    .line 266
    .end local v2    # "res":I
    .restart local v1    # "res":I
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "OppoManager"

    const-string/jumbo v4, "write Critical Data exception!\n"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public static writeLogToPartition(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "logstring"    # Ljava/lang/String;
    .param p1, "tagString"    # Ljava/lang/String;

    .prologue
    .line 209
    const/4 v1, -0x1

    .line 210
    .local v1, "res":I
    if-nez p0, :cond_0

    .line 236
    .end local v1    # "res":I
    :goto_0
    return v1

    .line 213
    .restart local v1    # "res":I
    :cond_0
    const-string v2, ""

    .line 214
    .local v2, "tagbegin":Ljava/lang/String;
    const-string v3, ""

    .line 215
    .local v3, "tagend":Ljava/lang/String;
    invoke-static {}, Landroid/os/OppoManager;->getTime()Ljava/lang/String;

    move-result-object v4

    .line 216
    .local v4, "time":Ljava/lang/String;
    const-string v5, "SYSTEM_SHUTDOWN"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 217
    const-string v2, "<shutdown-begin>\n"

    .line 218
    const-string v3, "<shutdown-end>\n"

    .line 235
    :cond_1
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "log":Ljava/lang/String;
    invoke-static {v0}, Landroid/os/OppoManager;->writeRawPartition(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 219
    .end local v0    # "log":Ljava/lang/String;
    :cond_2
    const-string v5, "SYSTEM_LAST_KMSG"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 220
    const-string v2, "<kernel-panic-begin>\n"

    .line 221
    const-string v3, "<kernel-panic-end>\n"

    goto :goto_1

    .line 222
    :cond_3
    const-string v5, "SYSTEM_SERVER"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 223
    const-string v2, "<android-panic-begin>\n"

    .line 224
    const-string v3, "<android-panic-end>\n"

    goto :goto_1

    .line 225
    :cond_4
    const-string v5, "ENGINEERINGMODE_TEST"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 226
    const-string v2, "<engineeringmode-test-begin>\n"

    .line 227
    const-string v3, "<engineeringmode-test-end>\n"

    .line 229
    goto :goto_0

    .line 231
    :cond_5
    const-string v5, "SPMI"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 232
    const-string v2, "<spmi-begin>\n"

    .line 233
    const-string v3, "<spmi-end>\n"

    goto :goto_1
.end method

.method public static writeLogToPartition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .param p0, "logstring"    # Ljava/lang/String;
    .param p1, "tagString"    # Ljava/lang/String;
    .param p2, "issue"    # Ljava/lang/String;

    .prologue
    .line 390
    const/4 v3, -0x1

    .line 391
    .local v3, "res":I
    if-nez p0, :cond_0

    .line 423
    .end local v3    # "res":I
    :goto_0
    return v3

    .line 394
    .restart local v3    # "res":I
    :cond_0
    const-string v4, ""

    .line 395
    .local v4, "tagbegin":Ljava/lang/String;
    const-string v5, ""

    .line 396
    .local v5, "tagend":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "log-time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/OppoManager;->getTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 397
    .local v6, "time":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "log-buildTime: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ro.build.display.id"

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, "buildTime":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "log-colorOS: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ro.build.version.opporom"

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, "colorOS":Ljava/lang/String;
    const-string v7, "ANDROID"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 400
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<android-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-begin>\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 401
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<android-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-end>\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 417
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 423
    .local v2, "log":Ljava/lang/String;
    invoke-static {v2}, Landroid/os/OppoManager;->writeRawPartition(Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_0

    .line 402
    .end local v2    # "log":Ljava/lang/String;
    :cond_1
    const-string v7, "MULTIMEDIA"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 403
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<multimedia-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-begin>\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 404
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<multimedia-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-end>\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 406
    :cond_2
    const-string v7, "NETWORK"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 407
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<network-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-begin>\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 408
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<network-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-end>\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 410
    :cond_3
    const-string v7, "KERNEL"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 411
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<kernel-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-begin>\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 412
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<kernel-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-end>\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 414
    :cond_4
    const-string v7, "OppoManager"

    const-string/jumbo v8, "the invalid tag"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static writeModernCriticalData()I
    .locals 6

    .prologue
    .line 278
    const/4 v1, -0x1

    .line 279
    .local v1, "res":I
    const/4 v2, 0x0

    .line 281
    .local v2, "times":I
    sget v3, Landroid/os/OppoManager;->TYPE_MODERN:I

    invoke-static {v3}, Landroid/os/OppoManager;->readCriticalData(I)I

    move-result v2

    .line 282
    const-string v3, "OppoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "modern reboot times write to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from poweroff or system reboot"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :try_start_0
    sget v3, Landroid/os/OppoManager;->TYPE_MODERN:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/OppoManager;->writeCriticalData(ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 289
    :goto_0
    return v1

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "OppoManager"

    const-string v4, "increment critical data failed!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static writeRawPartition(Ljava/lang/String;)I
    .locals 5
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 146
    const/4 v1, -0x1

    .line 147
    .local v1, "res":I
    sget-object v3, Landroid/os/OppoManager;->sService:Landroid/os/IOppoService;

    if-nez v3, :cond_0

    invoke-static {}, Landroid/os/OppoManager;->init()Z

    move-result v3

    if-nez v3, :cond_0

    move v2, v1

    .line 156
    .end local v1    # "res":I
    .local v2, "res":I
    :goto_0
    return v2

    .line 151
    .end local v2    # "res":I
    .restart local v1    # "res":I
    :cond_0
    :try_start_0
    sget-object v3, Landroid/os/OppoManager;->sService:Landroid/os/IOppoService;

    invoke-interface {v3, p0}, Landroid/os/IOppoService;->writeRawPartition(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 156
    .end local v1    # "res":I
    .restart local v2    # "res":I
    goto :goto_0

    .line 152
    .end local v2    # "res":I
    .restart local v1    # "res":I
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "OppoManager"

    const-string/jumbo v4, "write Raw Partition exception!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method
