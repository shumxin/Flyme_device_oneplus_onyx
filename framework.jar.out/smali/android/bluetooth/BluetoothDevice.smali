.class public final Landroid/bluetooth/BluetoothDevice;
.super Ljava/lang/Object;
.source "BluetoothDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACCESS_ALLOWED:I = 0x1

.field public static final ACCESS_REJECTED:I = 0x2

.field public static final ACCESS_UNKNOWN:I = 0x0

.field public static final ACTION_ACL_CONNECTED:Ljava/lang/String; = "android.bluetooth.device.action.ACL_CONNECTED"

.field public static final ACTION_ACL_DISCONNECTED:Ljava/lang/String; = "android.bluetooth.device.action.ACL_DISCONNECTED"

.field public static final ACTION_ACL_DISCONNECT_REQUESTED:Ljava/lang/String; = "android.bluetooth.device.action.ACL_DISCONNECT_REQUESTED"

.field public static final ACTION_ALIAS_CHANGED:Ljava/lang/String; = "android.bluetooth.device.action.ALIAS_CHANGED"

.field public static final ACTION_BOND_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.device.action.BOND_STATE_CHANGED"

.field public static final ACTION_CLASS_CHANGED:Ljava/lang/String; = "android.bluetooth.device.action.CLASS_CHANGED"

.field public static final ACTION_CONNECTION_ACCESS_CANCEL:Ljava/lang/String; = "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

.field public static final ACTION_CONNECTION_ACCESS_REPLY:Ljava/lang/String; = "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

.field public static final ACTION_CONNECTION_ACCESS_REQUEST:Ljava/lang/String; = "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

.field public static final ACTION_DISAPPEARED:Ljava/lang/String; = "android.bluetooth.device.action.DISAPPEARED"

.field public static final ACTION_FOUND:Ljava/lang/String; = "android.bluetooth.device.action.FOUND"

.field public static final ACTION_MAS_INSTANCE:Ljava/lang/String; = "android.bluetooth.device.action.MAS_INSTANCE"

.field public static final ACTION_NAME_CHANGED:Ljava/lang/String; = "android.bluetooth.device.action.NAME_CHANGED"

.field public static final ACTION_NAME_FAILED:Ljava/lang/String; = "android.bluetooth.device.action.NAME_FAILED"

.field public static final ACTION_PAIRING_CANCEL:Ljava/lang/String; = "android.bluetooth.device.action.PAIRING_CANCEL"

.field public static final ACTION_PAIRING_REQUEST:Ljava/lang/String; = "android.bluetooth.device.action.PAIRING_REQUEST"

.field public static final ACTION_UUID:Ljava/lang/String; = "android.bluetooth.device.action.UUID"

.field public static final BOND_BONDED:I = 0xc

.field public static final BOND_BONDING:I = 0xb

.field public static final BOND_NONE:I = 0xa

.field public static final BOND_SUCCESS:I = 0x0

.field public static final CONNECTION_ACCESS_NO:I = 0x2

.field public static final CONNECTION_ACCESS_YES:I = 0x1

.field private static final CONNECTION_STATE_CONNECTED:I = 0x1

.field private static final CONNECTION_STATE_DISCONNECTED:I = 0x0

.field private static final CONNECTION_STATE_ENCRYPTED_BREDR:I = 0x2

.field private static final CONNECTION_STATE_ENCRYPTED_LE:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field public static final DEVICE_TYPE_CLASSIC:I = 0x1

.field public static final DEVICE_TYPE_DUAL:I = 0x3

.field public static final DEVICE_TYPE_LE:I = 0x2

.field public static final DEVICE_TYPE_UNKNOWN:I = 0x0

.field public static final ERROR:I = -0x80000000

.field public static final EXTRA_ACCESS_REQUEST_TYPE:Ljava/lang/String; = "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

.field public static final EXTRA_ALWAYS_ALLOWED:Ljava/lang/String; = "android.bluetooth.device.extra.ALWAYS_ALLOWED"

.field public static final EXTRA_BOND_STATE:Ljava/lang/String; = "android.bluetooth.device.extra.BOND_STATE"

.field public static final EXTRA_CLASS:Ljava/lang/String; = "android.bluetooth.device.extra.CLASS"

.field public static final EXTRA_CLASS_NAME:Ljava/lang/String; = "android.bluetooth.device.extra.CLASS_NAME"

.field public static final EXTRA_CONNECTION_ACCESS_RESULT:Ljava/lang/String; = "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

.field public static final EXTRA_DEVICE:Ljava/lang/String; = "android.bluetooth.device.extra.DEVICE"

.field public static final EXTRA_MAS_INSTANCE:Ljava/lang/String; = "android.bluetooth.device.extra.MAS_INSTANCE"

.field public static final EXTRA_NAME:Ljava/lang/String; = "android.bluetooth.device.extra.NAME"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.bluetooth.device.extra.PACKAGE_NAME"

.field public static final EXTRA_PAIRING_KEY:Ljava/lang/String; = "android.bluetooth.device.extra.PAIRING_KEY"

.field public static final EXTRA_PAIRING_VARIANT:Ljava/lang/String; = "android.bluetooth.device.extra.PAIRING_VARIANT"

.field public static final EXTRA_PREVIOUS_BOND_STATE:Ljava/lang/String; = "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

.field public static final EXTRA_REASON:Ljava/lang/String; = "android.bluetooth.device.extra.REASON"

.field public static final EXTRA_RSSI:Ljava/lang/String; = "android.bluetooth.device.extra.RSSI"

.field public static final EXTRA_SECURE_PAIRING:Ljava/lang/String; = "codeaurora.bluetooth.device.extra.SECURE"

.field public static final EXTRA_UUID:Ljava/lang/String; = "android.bluetooth.device.extra.UUID"

.field public static final PAIRING_VARIANT_CONSENT:I = 0x3

.field public static final PAIRING_VARIANT_DISPLAY_PASSKEY:I = 0x4

.field public static final PAIRING_VARIANT_DISPLAY_PIN:I = 0x5

.field public static final PAIRING_VARIANT_OOB_CONSENT:I = 0x6

.field public static final PAIRING_VARIANT_PASSKEY:I = 0x1

.field public static final PAIRING_VARIANT_PASSKEY_CONFIRMATION:I = 0x2

.field public static final PAIRING_VARIANT_PIN:I = 0x0

.field public static final REQUEST_TYPE_MESSAGE_ACCESS:I = 0x3

.field public static final REQUEST_TYPE_PHONEBOOK_ACCESS:I = 0x2

.field public static final REQUEST_TYPE_PROFILE_CONNECTION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothDevice"

.field public static final TRANSPORT_AUTO:I = 0x0

.field public static final TRANSPORT_BREDR:I = 0x1

.field public static final TRANSPORT_LE:I = 0x2

.field public static final UNBOND_REASON_AUTH_CANCELED:I = 0x3

.field public static final UNBOND_REASON_AUTH_FAILED:I = 0x1

.field public static final UNBOND_REASON_AUTH_REJECTED:I = 0x2

.field public static final UNBOND_REASON_AUTH_TIMEOUT:I = 0x6

.field public static final UNBOND_REASON_DISCOVERY_IN_PROGRESS:I = 0x5

.field public static final UNBOND_REASON_REMOTE_AUTH_CANCELED:I = 0x8

.field public static final UNBOND_REASON_REMOTE_DEVICE_DOWN:I = 0x4

.field public static final UNBOND_REASON_REMOVED:I = 0x9

.field public static final UNBOND_REASON_REPEATED_ATTEMPTS:I = 0x7

.field static mStateChangeCallback:Landroid/bluetooth/IBluetoothManagerCallback;

.field private static sService:Landroid/bluetooth/IBluetooth;


# instance fields
.field private final mAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 591
    new-instance v0, Landroid/bluetooth/BluetoothDevice$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothDevice$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothDevice;->mStateChangeCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    .line 655
    new-instance v0, Landroid/bluetooth/BluetoothDevice$2;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothDevice$2;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 617
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    .line 618
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 619
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid Bluetooth address"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 622
    :cond_0
    iput-object p1, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    .line 623
    return-void
.end method

.method static synthetic access$002(Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;
    .locals 0
    .param p0, "x0"    # Landroid/bluetooth/IBluetooth;

    .prologue
    .line 66
    sput-object p0, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    return-object p0
.end method

.method public static convertPinToBytes(Ljava/lang/String;)[B
    .locals 5
    .param p0, "pin"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1660
    if-nez p0, :cond_1

    move-object v0, v2

    .line 1673
    :cond_0
    :goto_0
    return-object v0

    .line 1665
    :cond_1
    :try_start_0
    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1670
    .local v0, "pinBytes":[B
    array-length v3, v0

    if-lez v3, :cond_2

    array-length v3, v0

    const/16 v4, 0x10

    if-le v3, v4, :cond_0

    :cond_2
    move-object v0, v2

    .line 1671
    goto :goto_0

    .line 1666
    .end local v0    # "pinBytes":[B
    :catch_0
    move-exception v1

    .line 1667
    .local v1, "uee":Ljava/io/UnsupportedEncodingException;
    const-string v3, "BluetoothDevice"

    const-string v4, "UTF-8 not supported?!?"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 1668
    goto :goto_0
.end method

.method static getService()Landroid/bluetooth/IBluetooth;
    .locals 3

    .prologue
    .line 582
    const-class v2, Landroid/bluetooth/BluetoothDevice;

    monitor-enter v2

    .line 583
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    if-nez v1, :cond_0

    .line 584
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 585
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->mStateChangeCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothService(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    sput-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 587
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    return-object v1

    .line 587
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public cancelBondProcess()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 936
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    if-nez v3, :cond_0

    .line 937
    const-string v3, "BluetoothDevice"

    const-string v4, "BT not enabled. Cannot cancel Remote Device bond"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    :goto_0
    return v2

    .line 941
    :cond_0
    :try_start_0
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3, p0}, Landroid/bluetooth/IBluetooth;->cancelBondProcess(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 942
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothDevice"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 947
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 948
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v3, "BluetoothDevice"

    const-string v4, "NullPointerException for cancelBondProcess()"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public cancelPairingUserInput()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1324
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    if-nez v3, :cond_0

    .line 1325
    const-string v3, "BluetoothDevice"

    const-string v4, "BT not enabled. Cannot create pairing user input"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    :goto_0
    return v2

    .line 1329
    :cond_0
    :try_start_0
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3, p0}, Landroid/bluetooth/IBluetooth;->cancelBondProcess(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 1330
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothDevice"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1335
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1336
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v3, "BluetoothDevice"

    const-string v4, "NullPointerException for cancelPairingUserInput() of device"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "autoConnect"    # Z
    .param p3, "callback"    # Landroid/bluetooth/BluetoothGattCallback;

    .prologue
    .line 1690
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    return-object v0
.end method

.method public connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "autoConnect"    # Z
    .param p3, "callback"    # Landroid/bluetooth/BluetoothGattCallback;
    .param p4, "transport"    # I

    .prologue
    const/4 v5, 0x0

    .line 1713
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1714
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v4

    .line 1716
    .local v4, "managerService":Landroid/bluetooth/IBluetoothManager;
    :try_start_0
    invoke-interface {v4}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v3

    .line 1717
    .local v3, "iGatt":Landroid/bluetooth/IBluetoothGatt;
    if-nez v3, :cond_0

    move-object v2, v5

    .line 1725
    .end local v3    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    :goto_0
    return-object v2

    .line 1721
    .restart local v3    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    :cond_0
    new-instance v2, Landroid/bluetooth/BluetoothGatt;

    invoke-direct {v2, p1, v3, p0, p4}, Landroid/bluetooth/BluetoothGatt;-><init>(Landroid/content/Context;Landroid/bluetooth/IBluetoothGatt;Landroid/bluetooth/BluetoothDevice;I)V

    .line 1722
    .local v2, "gatt":Landroid/bluetooth/BluetoothGatt;
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v6, p3}, Landroid/bluetooth/BluetoothGatt;->connect(Ljava/lang/Boolean;Landroid/bluetooth/BluetoothGattCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1724
    .end local v2    # "gatt":Landroid/bluetooth/BluetoothGatt;
    .end local v3    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "BluetoothDevice"

    const-string v7, ""

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v5

    .line 1725
    goto :goto_0
.end method

.method public createBond()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 821
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    if-nez v3, :cond_0

    .line 822
    const-string v3, "BluetoothDevice"

    const-string v4, "BT not enabled. Cannot create bond to Remote Device"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    :goto_0
    return v2

    .line 826
    :cond_0
    :try_start_0
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    const/4 v4, 0x0

    invoke-interface {v3, p0, v4}, Landroid/bluetooth/IBluetooth;->createBond(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 827
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothDevice"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 832
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 833
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v3, "BluetoothDevice"

    const-string v4, "NullPointerException for createBond()"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public createBond(I)Z
    .locals 5
    .param p1, "transport"    # I

    .prologue
    const/4 v2, 0x0

    .line 856
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    if-nez v3, :cond_0

    .line 857
    const-string v3, "BluetoothDevice"

    const-string v4, "BT not enabled. Cannot create bond to Remote Device"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    :goto_0
    return v2

    .line 860
    :cond_0
    if-ltz p1, :cond_1

    const/4 v3, 0x2

    if-le p1, v3, :cond_2

    .line 862
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a valid Bluetooth transport"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 865
    :cond_2
    :try_start_0
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3, p0, p1}, Landroid/bluetooth/IBluetooth;->createBond(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 866
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothDevice"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 871
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 872
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v3, "BluetoothDevice"

    const-string v4, "NullPointerException for createBond()"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public createBondOutOfBand([B[B)Z
    .locals 1
    .param p1, "hash"    # [B
    .param p2, "randomizer"    # [B

    .prologue
    .line 903
    const/4 v0, 0x0

    return v0
.end method

.method public createInsecureL2capSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;
    .locals 8
    .param p1, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1612
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    const/4 v1, 0x3

    new-instance v7, Landroid/os/ParcelUuid;

    invoke-direct {v7, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move v4, v3

    move-object v5, p0

    move v6, v2

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    return-object v0
.end method

.method public createInsecureRfcommSocket(I)Landroid/bluetooth/BluetoothSocket;
    .locals 8
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1632
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v7, 0x0

    move v4, v3

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    return-object v0
.end method

.method public createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;
    .locals 8
    .param p1, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1582
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    const/4 v1, 0x1

    new-instance v7, Landroid/os/ParcelUuid;

    invoke-direct {v7, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move v4, v3

    move-object v5, p0

    move v6, v2

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    return-object v0
.end method

.method public createL2capSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;
    .locals 8
    .param p1, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 1549
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    const/4 v1, 0x3

    new-instance v7, Landroid/os/ParcelUuid;

    invoke-direct {v7, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move v4, v3

    move-object v5, p0

    move v6, v2

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    return-object v0
.end method

.method public createRfcommSocket(I)Landroid/bluetooth/BluetoothSocket;
    .locals 8
    .param p1, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1486
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    const/4 v2, -0x1

    const/4 v7, 0x0

    move v3, v1

    move v4, v1

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    return-object v0
.end method

.method public createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;
    .locals 8
    .param p1, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 1522
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    new-instance v7, Landroid/os/ParcelUuid;

    invoke-direct {v7, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move v3, v1

    move v4, v1

    move-object v5, p0

    move v6, v2

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    return-object v0
.end method

.method public createScoSocket()Landroid/bluetooth/BluetoothSocket;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 1647
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    const/4 v1, 0x2

    const/4 v7, 0x0

    move v4, v3

    move-object v5, p0

    move v6, v2

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 652
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 627
    instance-of v0, p1, Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 630
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fetchMasInstances()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1222
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    if-nez v3, :cond_0

    .line 1223
    const-string v3, "BluetoothDevice"

    const-string v4, "BT not enabled. Cannot query remote device for MAS instances"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    :goto_0
    return v2

    .line 1227
    :cond_0
    :try_start_0
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3, p0}, Landroid/bluetooth/IBluetooth;->fetchRemoteMasInstances(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 1228
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothDevice"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1233
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1234
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v3, "BluetoothDevice"

    const-string v4, "NullPointerException for fetchMasInstances() of device"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public fetchUuidsWithSdp()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1201
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    .line 1202
    .local v2, "service":Landroid/bluetooth/IBluetooth;
    if-nez v2, :cond_0

    .line 1203
    const-string v4, "BluetoothDevice"

    const-string v5, "BT not enabled. Cannot fetchUuidsWithSdp"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    :goto_0
    return v3

    .line 1207
    :cond_0
    :try_start_0
    invoke-interface {v2, p0}, Landroid/bluetooth/IBluetooth;->fetchRemoteUuids(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    goto :goto_0

    .line 1208
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "BluetoothDevice"

    const-string v5, ""

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1213
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1214
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v4, "BluetoothDevice"

    const-string v5, "NullPointerException for fetchUuidsWithSdp()"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 745
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    if-nez v3, :cond_0

    .line 746
    const-string v3, "BluetoothDevice"

    const-string v4, "BT not enabled. Cannot get Remote Device Alias"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    :goto_0
    return-object v2

    .line 750
    :cond_0
    :try_start_0
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3, p0}, Landroid/bluetooth/IBluetooth;->getRemoteAlias(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 751
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothDevice"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 756
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 757
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v3, "BluetoothDevice"

    const-string v4, "NullPointerException for getAlias()"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAliasName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 802
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object v0

    .line 803
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 804
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 806
    :cond_0
    return-object v0
.end method

.method public getBluetoothClass()Landroid/bluetooth/BluetoothClass;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1078
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    if-nez v4, :cond_1

    .line 1079
    const-string v4, "BluetoothDevice"

    const-string v5, "BT not enabled. Cannot get Bluetooth Class"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    :cond_0
    :goto_0
    return-object v3

    .line 1083
    :cond_1
    :try_start_0
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v4, p0}, Landroid/bluetooth/IBluetooth;->getRemoteClass(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 1084
    .local v0, "classInt":I
    const/high16 v4, -0x1000000

    if-eq v0, v4, :cond_0

    .line 1085
    new-instance v4, Landroid/bluetooth/BluetoothClass;

    invoke-direct {v4, v0}, Landroid/bluetooth/BluetoothClass;-><init>(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v4

    goto :goto_0

    .line 1086
    .end local v0    # "classInt":I
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "BluetoothDevice"

    const-string v5, ""

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1091
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 1092
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v4, "BluetoothDevice"

    const-string v5, "NullPointerException for getBluetoothClass()"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getBondState()I
    .locals 6

    .prologue
    const/16 v2, 0xa

    .line 994
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    if-nez v3, :cond_0

    .line 995
    const-string v3, "BluetoothDevice"

    const-string v4, "BT not enabled. Cannot get bond state"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    :goto_0
    return v2

    .line 999
    :cond_0
    :try_start_0
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3, p0}, Landroid/bluetooth/IBluetooth;->getBondState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 1000
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothDevice"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1001
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1004
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v3, "BluetoothDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NullPointerException for getBondState() of device ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getMessageAccessPermission()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1413
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    if-nez v3, :cond_0

    .line 1429
    :goto_0
    return v2

    .line 1417
    :cond_0
    :try_start_0
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3, p0}, Landroid/bluetooth/IBluetooth;->getMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 1418
    :catch_0
    move-exception v0

    .line 1419
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothDevice"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1425
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1426
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v3, "BluetoothDevice"

    const-string v4, "NullPointerException for getMessageAccessPermission() of device"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 690
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    if-nez v3, :cond_0

    .line 691
    const-string v3, "BluetoothDevice"

    const-string v4, "BT not enabled. Cannot get Remote Device name"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :goto_0
    return-object v2

    .line 695
    :cond_0
    :try_start_0
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3, p0}, Landroid/bluetooth/IBluetooth;->getRemoteName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 696
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothDevice"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 701
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 702
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v3, "BluetoothDevice"

    const-string v4, "NullPointerException for getName()"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getPhonebookAccessPermission()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1359
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    if-nez v3, :cond_0

    .line 1375
    :goto_0
    return v2

    .line 1363
    :cond_0
    :try_start_0
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3, p0}, Landroid/bluetooth/IBluetooth;->getPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 1364
    :catch_0
    move-exception v0

    .line 1365
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothDevice"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1371
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1372
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v3, "BluetoothDevice"

    const-string v4, "NullPointerException for getPhonebookAccessPermission() of device"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getRemoteDiRecord()Landroid/bluetooth/BluetoothRemoteDiRecord;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1735
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    if-nez v2, :cond_0

    .line 1736
    const-string v2, "BluetoothDevice"

    const-string v3, "BT not enabled. Cannot get Remote Di record"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    :goto_0
    return-object v1

    .line 1741
    :cond_0
    :try_start_0
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, p0}, Landroid/bluetooth/IBluetooth;->getRemoteDiRecord(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothRemoteDiRecord;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1742
    :catch_0
    move-exception v0

    .line 1743
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothDevice"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getServiceChannel(Landroid/os/ParcelUuid;)I
    .locals 1
    .param p1, "uuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 1247
    const/high16 v0, -0x80000000

    return v0
.end method

.method public getTrustState()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1105
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    if-nez v3, :cond_0

    .line 1106
    const-string v3, "BluetoothDevice"

    const-string v4, "BT not enabled. Cannot get Remote Device Alias"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    :goto_0
    return v2

    .line 1111
    :cond_0
    :try_start_0
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3, p0}, Landroid/bluetooth/IBluetooth;->getRemoteTrust(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 1112
    :catch_0
    move-exception v0

    .line 1113
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothDevice"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1119
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1120
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v3, "BluetoothDevice"

    const-string v4, "NullPointerException for getTrustState()"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getType()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 719
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    if-nez v3, :cond_0

    .line 720
    const-string v3, "BluetoothDevice"

    const-string v4, "BT not enabled. Cannot get Remote Device type"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :goto_0
    return v2

    .line 724
    :cond_0
    :try_start_0
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3, p0}, Landroid/bluetooth/IBluetooth;->getRemoteType(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 725
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothDevice"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 730
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 731
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v3, "BluetoothDevice"

    const-string v4, "NullPointerException for getType()"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getUuids()[Landroid/os/ParcelUuid;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1167
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    if-nez v3, :cond_0

    .line 1168
    const-string v3, "BluetoothDevice"

    const-string v4, "BT not enabled. Cannot get remote device Uuids"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    :goto_0
    return-object v2

    .line 1172
    :cond_0
    :try_start_0
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3, p0}, Landroid/bluetooth/IBluetooth;->getRemoteUuids(Landroid/bluetooth/BluetoothDevice;)[Landroid/os/ParcelUuid;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 1173
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothDevice"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1178
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1179
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v3, "BluetoothDevice"

    const-string v4, "NullPointerException for getUuids()"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isBluetoothDock()Z
    .locals 1

    .prologue
    .line 1349
    const/4 v0, 0x0

    return v0
.end method

.method public isConnected()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1019
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    if-nez v3, :cond_1

    .line 1035
    :cond_0
    :goto_0
    return v2

    .line 1024
    :cond_1
    :try_start_0
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3, p0}, Landroid/bluetooth/IBluetooth;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 1025
    :catch_0
    move-exception v0

    .line 1026
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothDevice"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1033
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1034
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v3, "BluetoothDevice"

    const-string v4, "NullPointerException for isConnected()"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isEncrypted()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1050
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    if-nez v4, :cond_0

    .line 1066
    :goto_0
    return v3

    .line 1055
    :cond_0
    :try_start_0
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v4, p0}, Landroid/bluetooth/IBluetooth;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-le v4, v2, :cond_1

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    .line 1056
    :catch_0
    move-exception v0

    .line 1057
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothDevice"

    const-string v4, ""

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1064
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1065
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v2, "BluetoothDevice"

    const-string v4, "NullPointerException for isEncrypted()"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeBond()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 965
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    if-nez v3, :cond_0

    .line 966
    const-string v3, "BluetoothDevice"

    const-string v4, "BT not enabled. Cannot remove Remote Device bond"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :goto_0
    return v2

    .line 970
    :cond_0
    :try_start_0
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3, p0}, Landroid/bluetooth/IBluetooth;->removeBond(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 971
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothDevice"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 976
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 977
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v3, "BluetoothDevice"

    const-string v4, "NullPointerException for removeBond()"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAlias(Ljava/lang/String;)Z
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 774
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    if-nez v3, :cond_0

    .line 775
    const-string v3, "BluetoothDevice"

    const-string v4, "BT not enabled. Cannot set Remote Device name"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :goto_0
    return v2

    .line 779
    :cond_0
    :try_start_0
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3, p0, p1}, Landroid/bluetooth/IBluetooth;->setRemoteAlias(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 780
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothDevice"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 785
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 786
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v3, "BluetoothDevice"

    const-string v4, "NullPointerException for setAlias()"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDeviceOutOfBandData([B[B)Z
    .locals 1
    .param p1, "hash"    # [B
    .param p2, "randomizer"    # [B

    .prologue
    .line 925
    const/4 v0, 0x0

    return v0
.end method

.method public setMessageAccessPermission(I)Z
    .locals 5
    .param p1, "value"    # I

    .prologue
    const/4 v2, 0x0

    .line 1441
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    if-nez v3, :cond_0

    .line 1457
    :goto_0
    return v2

    .line 1445
    :cond_0
    :try_start_0
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3, p0, p1}, Landroid/bluetooth/IBluetooth;->setMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 1446
    :catch_0
    move-exception v0

    .line 1447
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothDevice"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1453
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1454
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v3, "BluetoothDevice"

    const-string v4, "NullPointerException for setMessageAccessPermission() of device"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPairingConfirmation(Z)Z
    .locals 5
    .param p1, "confirm"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1294
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    if-nez v3, :cond_0

    .line 1295
    const-string v3, "BluetoothDevice"

    const-string v4, "BT not enabled. Cannot set pairing confirmation"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    :goto_0
    return v2

    .line 1299
    :cond_0
    :try_start_0
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3, p0, p1}, Landroid/bluetooth/IBluetooth;->setPairingConfirmation(Landroid/bluetooth/BluetoothDevice;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 1300
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothDevice"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1305
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1306
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v3, "BluetoothDevice"

    const-string v4, "NullPointerException for setPairingConfirmation() of device"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPasskey(I)Z
    .locals 1
    .param p1, "passkey"    # I

    .prologue
    .line 1283
    const/4 v0, 0x0

    return v0
.end method

.method public setPhonebookAccessPermission(I)Z
    .locals 5
    .param p1, "value"    # I

    .prologue
    const/4 v2, 0x0

    .line 1387
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    if-nez v3, :cond_0

    .line 1403
    :goto_0
    return v2

    .line 1391
    :cond_0
    :try_start_0
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3, p0, p1}, Landroid/bluetooth/IBluetooth;->setPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 1392
    :catch_0
    move-exception v0

    .line 1393
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothDevice"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1399
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1400
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v3, "BluetoothDevice"

    const-string v4, "NullPointerException for setPhonebookAccessPermission() of device"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPin([B)Z
    .locals 6
    .param p1, "pin"    # [B

    .prologue
    const/4 v2, 0x0

    .line 1258
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    if-nez v3, :cond_0

    .line 1259
    const-string v3, "BluetoothDevice"

    const-string v4, "BT not enabled. Cannot set Remote Device pin"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    :goto_0
    return v2

    .line 1263
    :cond_0
    :try_start_0
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    const/4 v4, 0x1

    array-length v5, p1

    invoke-interface {v3, p0, v4, v5, p1}, Landroid/bluetooth/IBluetooth;->setPin(Landroid/bluetooth/BluetoothDevice;ZI[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 1264
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothDevice"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1269
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1270
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v3, "BluetoothDevice"

    const-string v4, "NullPointerException for setPin() of device"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRemoteOutOfBandData()Z
    .locals 1

    .prologue
    .line 1319
    const/4 v0, 0x0

    return v0
.end method

.method public setTrust(Z)Z
    .locals 5
    .param p1, "trustValue"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1134
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    if-nez v3, :cond_0

    .line 1135
    const-string v3, "BluetoothDevice"

    const-string v4, "BT not enabled. Cannot set Remote Device name"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    :goto_0
    return v2

    .line 1139
    :cond_0
    :try_start_0
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3, p0, p1}, Landroid/bluetooth/IBluetooth;->setRemoteTrust(Landroid/bluetooth/BluetoothDevice;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 1140
    :catch_0
    move-exception v0

    .line 1141
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothDevice"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1147
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1148
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v3, "BluetoothDevice"

    const-string v4, "NullPointerException for setTrust()"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 666
    iget-object v0, p0, Landroid/bluetooth/BluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 667
    return-void
.end method