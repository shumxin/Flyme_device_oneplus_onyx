.class public Landroid/net/wifi/cmcc/WifiAutoConnectOP01;
.super Landroid/net/wifi/cmcc/DefaultWifiAutoConnect;
.source "WifiAutoConnectOP01.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/cmcc/WifiAutoConnectOP01$ConnectTypeObserver;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field private static final DEFAULT_FRAMEWORK_SCAN_INTERVAL_MS:I = 0x3a98

.field private static final SUSPEND_NOTIFICATION_DURATION:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "WifiAutoConnectOP01"

.field private static final WIFISETTINGS_CLASSNAME:Ljava/lang/String; = "com.android.settings.Settings$WifiSettingsActivity"


# instance fields
.field private Default:I

.field private POPUP_SWITCH_TO_GPRS_DIALOG:Ljava/lang/String;

.field private mCellToWiFiPolicy:I

.field private mConnectPolicy:I

.field private mConnectTypeObserver:Landroid/net/wifi/cmcc/WifiAutoConnectOP01$ConnectTypeObserver;

.field private mSuspendNotificationTime:J

.field private mask:I

.field private networkSwitch:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-direct {p0, p1}, Landroid/net/wifi/cmcc/DefaultWifiAutoConnect;-><init>(Landroid/content/Context;)V

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mSuspendNotificationTime:J

    .line 53
    iput v2, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mConnectPolicy:I

    .line 54
    iput v2, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mCellToWiFiPolicy:I

    .line 58
    const-string/jumbo v0, "popup_switch_to_gprs_dialog"

    iput-object v0, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->POPUP_SWITCH_TO_GPRS_DIALOG:Ljava/lang/String;

    .line 60
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mask:I

    .line 61
    const/4 v0, 0x3

    iput v0, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->Default:I

    .line 66
    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/cmcc/WifiAutoConnectOP01;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/cmcc/WifiAutoConnectOP01;

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->sendUpdateSettingsBroadcast()V

    return-void
.end method

.method static synthetic access$100(Landroid/net/wifi/cmcc/WifiAutoConnectOP01;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/cmcc/WifiAutoConnectOP01;

    .prologue
    .line 41
    iget v0, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mCellToWiFiPolicy:I

    return v0
.end method

.method static synthetic access$102(Landroid/net/wifi/cmcc/WifiAutoConnectOP01;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/cmcc/WifiAutoConnectOP01;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mCellToWiFiPolicy:I

    return p1
.end method

.method static synthetic access$200(Landroid/net/wifi/cmcc/WifiAutoConnectOP01;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/cmcc/WifiAutoConnectOP01;

    .prologue
    .line 41
    iget v0, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mConnectPolicy:I

    return v0
.end method

.method static synthetic access$202(Landroid/net/wifi/cmcc/WifiAutoConnectOP01;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/cmcc/WifiAutoConnectOP01;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mConnectPolicy:I

    return p1
.end method

.method static synthetic access$302(Landroid/net/wifi/cmcc/WifiAutoConnectOP01;J)J
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/cmcc/WifiAutoConnectOP01;
    .param p1, "x1"    # J

    .prologue
    .line 41
    iput-wide p1, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mSuspendNotificationTime:J

    return-wide p1
.end method

.method private sendEnableAllNetworksBroadcast()V
    .locals 2

    .prologue
    .line 335
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.common.wifi.AUTOCONNECT_ENABLE_ALL_NETWORK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 336
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 337
    iget-object v1, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 338
    return-void
.end method

.method private sendUpdateSettingsBroadcast()V
    .locals 2

    .prologue
    .line 329
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.common.wifi.AUTOCONNECT_SETTINGS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 330
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 331
    iget-object v1, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 332
    return-void
.end method


# virtual methods
.method public defaultFrameworkScanIntervalMs()I
    .locals 1

    .prologue
    .line 325
    const/16 v0, 0x3a98

    return v0
.end method

.method public enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .prologue
    .line 376
    if-lez p1, :cond_0

    .line 377
    const/4 v0, 0x1

    sput-boolean v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->DBG:Z

    .line 381
    :goto_0
    return-void

    .line 379
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->DBG:Z

    goto :goto_0
.end method

.method public getApDefaultSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    const-string v0, "MTK Athens15"

    return-object v0
.end method

.method public hasConnectableAP()Z
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 311
    const-string v0, "Scan for checking connectable AP."

    invoke-virtual {p0, v0}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->logd(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 313
    const/4 v0, 0x1

    .line 315
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCustomizedAutoConnect()Z
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public init()V
    .locals 4

    .prologue
    .line 69
    invoke-super {p0}, Landroid/net/wifi/cmcc/DefaultWifiAutoConnect;->init()V

    .line 70
    iget-object v0, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_connect_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mCellToWiFiPolicy:I

    .line 72
    new-instance v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01$ConnectTypeObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01$ConnectTypeObserver;-><init>(Landroid/net/wifi/cmcc/WifiAutoConnectOP01;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mConnectTypeObserver:Landroid/net/wifi/cmcc/WifiAutoConnectOP01$ConnectTypeObserver;

    .line 73
    iget-object v0, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/net/wifi/cmcc/WifiAutoConnectOP01$1;

    invoke-direct {v1, p0}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01$1;-><init>(Landroid/net/wifi/cmcc/WifiAutoConnectOP01;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    return-void
.end method

.method public isWifiConnecting(ILjava/util/List;)Z
    .locals 26
    .param p1, "connectingNetworkId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 138
    .local p2, "disconnectNetworks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v16, 0x0

    .line 139
    .local v16, "isConnecting":Z
    const/4 v5, 0x0

    .line 140
    .local v5, "autoConnect":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string/jumbo v23, "wifi_select_ssid_type"

    const/16 v24, 0x2

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    .line 143
    .local v19, "reselectType":I
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "isWifiConnecting, mConnectPolicy:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mConnectPolicy:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", mCellToWiFiPolicy:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mCellToWiFiPolicy:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", connectingNetworkId:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", reselectType:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->logd(Ljava/lang/String;)V

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "connectivity"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 148
    .local v7, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v14

    .line 149
    .local v14, "info":Landroid/net/NetworkInfo;
    if-nez v14, :cond_3

    .line 150
    const-string v22, "No active network."

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->logd(Ljava/lang/String;)V

    .line 154
    :goto_0
    const/4 v11, 0x0

    .line 155
    .local v11, "highestPriorityNetworkSSID":Ljava/lang/String;
    const/4 v9, -0x1

    .line 156
    .local v9, "highestPriority":I
    const/4 v10, -0x1

    .line 157
    .local v10, "highestPriorityNetworkId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v18

    .line 158
    .local v18, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v20

    .line 159
    .local v20, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v18, :cond_4

    if-eqz v20, :cond_4

    .line 160
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/wifi/WifiConfiguration;

    .line 161
    .local v17, "network":Landroid/net/wifi/WifiConfiguration;
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/net/wifi/ScanResult;

    .line 162
    .local v21, "scanresult":Landroid/net/wifi/ScanResult;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "\""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 165
    move-object/from16 v0, v17

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-le v0, v9, :cond_2

    .line 166
    move-object/from16 v0, v17

    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 167
    move-object/from16 v0, v17

    iget v10, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 168
    move-object/from16 v0, v17

    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 170
    :cond_2
    move-object/from16 v0, v17

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, p1

    if-ne v0, v1, :cond_1

    .line 171
    const/16 v16, 0x1

    goto/16 :goto_1

    .line 152
    .end local v9    # "highestPriority":I
    .end local v10    # "highestPriorityNetworkId":I
    .end local v11    # "highestPriorityNetworkSSID":Ljava/lang/String;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v17    # "network":Landroid/net/wifi/WifiConfiguration;
    .end local v18    # "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v20    # "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v21    # "scanresult":Landroid/net/wifi/ScanResult;
    :cond_3
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Active network type:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v14}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 177
    .restart local v9    # "highestPriority":I
    .restart local v10    # "highestPriorityNetworkId":I
    .restart local v11    # "highestPriorityNetworkSSID":Ljava/lang/String;
    .restart local v18    # "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .restart local v20    # "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_4
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "highestPriorityNetworkId:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", highestPriorityNetworkSSID:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", currentTimeMillis:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", mSuspendNotificationTime:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mSuspendNotificationTime:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->logd(Ljava/lang/String;)V

    .line 182
    if-nez v16, :cond_5

    .line 183
    if-eqz v14, :cond_f

    invoke-virtual {v14}, Landroid/net/NetworkInfo;->getType()I

    move-result v22

    if-nez v22, :cond_f

    .line 184
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mConnectPolicy:I

    move/from16 v22, v0

    if-nez v22, :cond_b

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->POPUP_SWITCH_TO_GPRS_DIALOG:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->Default:I

    move/from16 v24, v0

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->networkSwitch:I

    .line 192
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "networkSwitch: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->networkSwitch:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->logd(Ljava/lang/String;)V

    .line 193
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mCellToWiFiPolicy:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->networkSwitch:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mask:I

    move/from16 v23, v0

    and-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mask:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    .line 196
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v10, v0, :cond_5

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mSuspendNotificationTime:J

    move-wide/from16 v24, v0

    sub-long v22, v22, v24

    const-wide/32 v24, 0x36ee80

    cmp-long v22, v22, v24

    if-lez v22, :cond_5

    .line 198
    const-string/jumbo v22, "send WIFI_NOTIFICATION_ACTION 1"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->logd(Ljava/lang/String;)V

    .line 199
    new-instance v15, Landroid/content/Intent;

    const-string v22, "android.net.wifi.WIFI_NOTIFICATION"

    move-object/from16 v0, v22

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .local v15, "intent":Landroid/content/Intent;
    const/high16 v22, 0x10000000

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 201
    const-string/jumbo v22, "ssid"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const-string/jumbo v22, "network_id"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 305
    .end local v15    # "intent":Landroid/content/Intent;
    :cond_5
    :goto_2
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "isWifiConnecting, isConnecting:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", autoConnect:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->logd(Ljava/lang/String;)V

    .line 306
    if-nez v16, :cond_6

    if-eqz v5, :cond_13

    :cond_6
    const/16 v22, 0x1

    :goto_3
    return v22

    .line 205
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mCellToWiFiPolicy:I

    move/from16 v22, v0

    if-nez v22, :cond_5

    if-nez v19, :cond_5

    .line 212
    const/4 v11, 0x0

    .line 213
    const/4 v9, -0x1

    .line 214
    const/4 v10, -0x1

    .line 215
    if-eqz v18, :cond_a

    if-eqz v20, :cond_a

    .line 216
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/wifi/WifiConfiguration;

    .line 217
    .restart local v17    # "network":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_8

    .line 218
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_9
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/net/wifi/ScanResult;

    .line 219
    .restart local v21    # "scanresult":Landroid/net/wifi/ScanResult;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_9

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_9

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "\""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    .line 222
    move-object/from16 v0, v17

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-le v0, v9, :cond_9

    .line 223
    move-object/from16 v0, v17

    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 224
    move-object/from16 v0, v17

    iget v10, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 225
    move-object/from16 v0, v17

    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_4

    .line 232
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v17    # "network":Landroid/net/wifi/WifiConfiguration;
    .end local v21    # "scanresult":Landroid/net/wifi/ScanResult;
    :cond_a
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "highestPriorityNetworkId="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", highestPriorityNetworkSSID="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->logd(Ljava/lang/String;)V

    .line 235
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v10, v0, :cond_5

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_5

    .line 236
    const-string v22, "Enable all networks for mobile is connected."

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->logd(Ljava/lang/String;)V

    .line 237
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->sendEnableAllNetworksBroadcast()V

    .line 238
    const/4 v5, 0x1

    goto/16 :goto_2

    .line 242
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "activity"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 243
    .local v4, "am":Landroid/app/ActivityManager;
    const/4 v8, 0x0

    .line 244
    .local v8, "cn":Landroid/content/ComponentName;
    const/4 v6, 0x0

    .line 245
    .local v6, "classname":Ljava/lang/String;
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v22

    if-eqz v22, :cond_c

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v22

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    if-eqz v22, :cond_c

    .line 246
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v22

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v0, v22

    iget-object v8, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 248
    :cond_c
    if-eqz v8, :cond_e

    .line 249
    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 250
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Class Name:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->logd(Ljava/lang/String;)V

    .line 254
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mCellToWiFiPolicy:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    if-eqz v6, :cond_d

    const-string v22, "com.android.settings.Settings$WifiSettingsActivity"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_5

    .line 256
    :cond_d
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v10, v0, :cond_5

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mSuspendNotificationTime:J

    move-wide/from16 v24, v0

    sub-long v22, v22, v24

    const-wide/32 v24, 0x36ee80

    cmp-long v22, v22, v24

    if-lez v22, :cond_5

    .line 258
    const-string/jumbo v22, "send WIFI_NOTIFICATION_ACTION 2"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->logd(Ljava/lang/String;)V

    .line 259
    new-instance v15, Landroid/content/Intent;

    const-string v22, "android.net.wifi.WIFI_NOTIFICATION"

    move-object/from16 v0, v22

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    .restart local v15    # "intent":Landroid/content/Intent;
    const/high16 v22, 0x10000000

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 261
    const-string/jumbo v22, "ssid"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    const-string/jumbo v22, "network_id"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 252
    .end local v15    # "intent":Landroid/content/Intent;
    :cond_e
    const-string v22, "ComponentName is null!"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->loge(Ljava/lang/String;)V

    goto :goto_5

    .line 268
    .end local v4    # "am":Landroid/app/ActivityManager;
    .end local v6    # "classname":Ljava/lang/String;
    .end local v8    # "cn":Landroid/content/ComponentName;
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mConnectPolicy:I

    move/from16 v22, v0

    if-nez v22, :cond_5

    if-nez v19, :cond_5

    .line 275
    const/4 v11, 0x0

    .line 276
    const/4 v9, -0x1

    .line 277
    const/4 v10, -0x1

    .line 278
    if-eqz v18, :cond_12

    if-eqz v20, :cond_12

    .line 279
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_10
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_12

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/wifi/WifiConfiguration;

    .line 280
    .restart local v17    # "network":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_10

    .line 281
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_11
    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_10

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/net/wifi/ScanResult;

    .line 282
    .restart local v21    # "scanresult":Landroid/net/wifi/ScanResult;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_11

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_11

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "\""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_11

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_11

    .line 285
    move-object/from16 v0, v17

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-le v0, v9, :cond_11

    .line 286
    move-object/from16 v0, v17

    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 287
    move-object/from16 v0, v17

    iget v10, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 288
    move-object/from16 v0, v17

    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_6

    .line 295
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v17    # "network":Landroid/net/wifi/WifiConfiguration;
    .end local v21    # "scanresult":Landroid/net/wifi/ScanResult;
    :cond_12
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "highestPriorityNetworkId="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", highestPriorityNetworkSSID="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->logd(Ljava/lang/String;)V

    .line 297
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v10, v0, :cond_5

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_5

    .line 298
    const-string v22, "Enable all networks for mobile is not connected."

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->logd(Ljava/lang/String;)V

    .line 299
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->sendEnableAllNetworksBroadcast()V

    .line 300
    const/4 v5, 0x1

    goto/16 :goto_2

    .line 306
    :cond_13
    const/16 v22, 0x0

    goto/16 :goto_3
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "debugInfo"    # Ljava/lang/String;

    .prologue
    .line 388
    sget-boolean v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiAutoConnectOP01"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_0
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "errInfo"    # Ljava/lang/String;

    .prologue
    .line 384
    const-string v0, "WifiAutoConnectOP01"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    return-void
.end method

.method public shouldAutoConnect()Z
    .locals 4

    .prologue
    .line 114
    iget-object v2, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 115
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 116
    .local v1, "info":Landroid/net/NetworkInfo;
    if-nez v1, :cond_1

    .line 117
    const-string v2, "No active network."

    invoke-virtual {p0, v2}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->logd(Ljava/lang/String;)V

    .line 121
    :goto_0
    iget v2, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mConnectPolicy:I

    if-nez v2, :cond_2

    iget v2, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mCellToWiFiPolicy:I

    if-nez v2, :cond_2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mCellToWiFiPolicy:I

    if-nez v2, :cond_2

    .line 129
    :cond_0
    const-string v2, "Should auto connect."

    invoke-virtual {p0, v2}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->logd(Ljava/lang/String;)V

    .line 130
    const/4 v2, 0x1

    .line 133
    :goto_1
    return v2

    .line 119
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Active network type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_2
    const-string v2, "Shouldn\'t auto connect."

    invoke-virtual {p0, v2}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->logd(Ljava/lang/String;)V

    .line 133
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public shouldEnableAllNetworksForCompletion()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 99
    iget-object v3, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_ap_connect_type"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 101
    .local v1, "connectPolicy":I
    iget-object v3, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_connect_type"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 103
    .local v0, "cellToWiFiPolicy":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "shouldEnableAllNetworksForCompletion, connectPolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", cellToWiFiPolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->logd(Ljava/lang/String;)V

    .line 105
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public shouldEnableAllNetworksForScreenOn()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public suspendNotification()V
    .locals 4

    .prologue
    .line 320
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mSuspendNotificationTime:J

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "suspendNotification, mSuspendNotificationTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mSuspendNotificationTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->logd(Ljava/lang/String;)V

    .line 322
    return-void
.end method
