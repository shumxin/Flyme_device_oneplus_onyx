.class public Landroid/app/AppOpsManager;
.super Ljava/lang/Object;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AppOpsManager$OnOpChangedInternalListener;,
        Landroid/app/AppOpsManager$OnOpChangedListener;,
        Landroid/app/AppOpsManager$OpEntry;,
        Landroid/app/AppOpsManager$PackageOps;
    }
.end annotation


# static fields
.field public static final MODE_ALLOWED:I = 0x0

.field public static final MODE_ASK:I = 0x4

.field public static final MODE_DEFAULT:I = 0x3

.field public static final MODE_ERRORED:I = 0x2

.field public static final MODE_IGNORED:I = 0x1

.field private static final OPSTR_ACCESS_NOTIFICATIONS:Ljava/lang/String; = "android:access_notifications"

.field public static final OPSTR_ACTIVATE_VPN:Ljava/lang/String; = "android:activate_vpn"

.field private static final OPSTR_AUDIO_ALARM_VOLUME:Ljava/lang/String; = "android:audio_alarm_volume"

.field private static final OPSTR_AUDIO_BLUETOOTH_VOLUME:Ljava/lang/String; = "android:audio_bluetooth_volume"

.field private static final OPSTR_AUDIO_MASTER_VOLUME:Ljava/lang/String; = "android:audio_master_volume"

.field private static final OPSTR_AUDIO_MEDIA_VOLUME:Ljava/lang/String; = "android:audio_media_volume"

.field private static final OPSTR_AUDIO_NOTIFICATION_VOLUME:Ljava/lang/String; = "android:audio_notification_volume"

.field private static final OPSTR_AUDIO_RING_VOLUME:Ljava/lang/String; = "android:audio_ring_volume"

.field private static final OPSTR_AUDIO_VOICE_VOLUME:Ljava/lang/String; = "android:audio_voice_volume"

.field private static final OPSTR_BLUETOOTH_CHANGE:Ljava/lang/String; = "android:bluetooth_change"

.field private static final OPSTR_BOOT_COMPLETED:Ljava/lang/String; = "android:boot_completed"

.field private static final OPSTR_CALL_PHONE:Ljava/lang/String; = "android:call_phone"

.field private static final OPSTR_CAMERA:Ljava/lang/String; = "android:camera"

.field public static final OPSTR_COARSE_LOCATION:Ljava/lang/String; = "android:coarse_location"

.field private static final OPSTR_DATA_CONNECT_CHANGE:Ljava/lang/String; = "android:data_connect_change"

.field private static final OPSTR_DELETE_CALL_LOG:Ljava/lang/String; = "android:delete_call_log"

.field private static final OPSTR_DELETE_CONTACTS:Ljava/lang/String; = "android:delete_contacts"

.field private static final OPSTR_DELETE_MMS:Ljava/lang/String; = "android:delete_mms"

.field private static final OPSTR_DELETE_SMS:Ljava/lang/String; = "android:delete_sms"

.field public static final OPSTR_FINE_LOCATION:Ljava/lang/String; = "android:fine_location"

.field public static final OPSTR_GET_USAGE_STATS:Ljava/lang/String; = "android:get_usage_stats"

.field private static final OPSTR_GPS:Ljava/lang/String; = "android:gps"

.field public static final OPSTR_MONITOR_HIGH_POWER_LOCATION:Ljava/lang/String; = "android:monitor_location_high_power"

.field public static final OPSTR_MONITOR_LOCATION:Ljava/lang/String; = "android:monitor_location"

.field private static final OPSTR_MUTE_MICROPHONE:Ljava/lang/String; = "android:mute_microphone"

.field private static final OPSTR_NEIGHBORING_CELLS:Ljava/lang/String; = "android:neighboring_cells"

.field private static final OPSTR_NFC_CHANGE:Ljava/lang/String; = "android:nfc_change"

.field private static final OPSTR_PLAY_AUDIO:Ljava/lang/String; = "android:play_audio"

.field private static final OPSTR_POST_NOTIFICATION:Ljava/lang/String; = "android:post_notification"

.field private static final OPSTR_PROJECT_MEDIA:Ljava/lang/String; = "android:project_media"

.field private static final OPSTR_READ_CALENDAR:Ljava/lang/String; = "android:read_calendar"

.field private static final OPSTR_READ_CALL_LOG:Ljava/lang/String; = "android:read_call_log"

.field private static final OPSTR_READ_CLIPBOARD:Ljava/lang/String; = "android:read_clipboard"

.field private static final OPSTR_READ_CONTACTS:Ljava/lang/String; = "android:read_contacts"

.field private static final OPSTR_READ_ICC_SMS:Ljava/lang/String; = "android:read_icc_sms"

.field private static final OPSTR_READ_MMS:Ljava/lang/String; = "android:read_mms"

.field private static final OPSTR_READ_SMS:Ljava/lang/String; = "android:read_sms"

.field private static final OPSTR_RECEIVE_EMERGECY_SMS:Ljava/lang/String; = "android:receive_emergecy_sms"

.field private static final OPSTR_RECEIVE_MMS:Ljava/lang/String; = "android:receive_mms"

.field private static final OPSTR_RECEIVE_SMS:Ljava/lang/String; = "android:receive_sms"

.field private static final OPSTR_RECEIVE_WAP_PUSH:Ljava/lang/String; = "android:receive_wap_push"

.field private static final OPSTR_RECORD_AUDIO:Ljava/lang/String; = "android:record_audio"

.field private static final OPSTR_SEND_MMS:Ljava/lang/String; = "android:send_mms"

.field private static final OPSTR_SEND_SMS:Ljava/lang/String; = "android:send_sms"

.field private static final OPSTR_SYSTEM_ALERT_WINDOW:Ljava/lang/String; = "android:system_alert_window"

.field private static final OPSTR_TAKE_AUDIO_FOCUS:Ljava/lang/String; = "android:take_audio_focus"

.field private static final OPSTR_TAKE_MEDIA_BUTTONS:Ljava/lang/String; = "android:take_media_buttons"

.field private static final OPSTR_TOAST_WINDOW:Ljava/lang/String; = "android:toast_window"

.field private static final OPSTR_VIBRATE:Ljava/lang/String; = "android:vibrate"

.field private static final OPSTR_WAKE_LOCK:Ljava/lang/String; = "android:wake_lock"

.field private static final OPSTR_WIFI_CHANGE:Ljava/lang/String; = "android:wifi_change"

.field private static final OPSTR_WIFI_SCAN:Ljava/lang/String; = "android:wifi_scan"

.field private static final OPSTR_WRITE_CALENDAR:Ljava/lang/String; = "android:write_calendar"

.field private static final OPSTR_WRITE_CALL_LOG:Ljava/lang/String; = "android:write_call_log"

.field private static final OPSTR_WRITE_CLIPBOARD:Ljava/lang/String; = "android:write_clipboard"

.field private static final OPSTR_WRITE_CONTACTS:Ljava/lang/String; = "android:write_contacts"

.field private static final OPSTR_WRITE_ICC_SMS:Ljava/lang/String; = "android:write_icc_sms"

.field private static final OPSTR_WRITE_MMS:Ljava/lang/String; = "android:write_mms"

.field private static final OPSTR_WRITE_SETTINGS:Ljava/lang/String; = "android:write_settings"

.field private static final OPSTR_WRITE_SMS:Ljava/lang/String; = "android:write_sms"

.field public static final OP_ACCESS_NOTIFICATIONS:I = 0x19

.field public static final OP_ACTIVATE_VPN:I = 0x2f

.field public static final OP_AUDIO_ALARM_VOLUME:I = 0x25

.field public static final OP_AUDIO_BLUETOOTH_VOLUME:I = 0x27

.field public static final OP_AUDIO_MASTER_VOLUME:I = 0x21

.field public static final OP_AUDIO_MEDIA_VOLUME:I = 0x24

.field public static final OP_AUDIO_NOTIFICATION_VOLUME:I = 0x26

.field public static final OP_AUDIO_RING_VOLUME:I = 0x23

.field public static final OP_AUDIO_VOICE_VOLUME:I = 0x22

.field public static final OP_BLUETOOTH_CHANGE:I

.field public static final OP_BOOT_COMPLETED:I = 0x35

.field public static final OP_CALL_PHONE:I = 0xd

.field public static final OP_CAMERA:I = 0x1a

.field public static final OP_COARSE_LOCATION:I = 0x0

.field public static final OP_DATA_CONNECT_CHANGE:I

.field public static final OP_DELETE_CALL_LOG:I = 0x3a

.field public static final OP_DELETE_CONTACTS:I = 0x39

.field public static final OP_DELETE_MMS:I = 0x38

.field public static final OP_DELETE_SMS:I = 0x37

.field public static final OP_FINE_LOCATION:I = 0x1

.field public static final OP_GET_USAGE_STATS:I = 0x2b

.field public static final OP_GPS:I = 0x2

.field public static final OP_MONITOR_HIGH_POWER_LOCATION:I = 0x2a

.field public static final OP_MONITOR_LOCATION:I = 0x29

.field public static final OP_MUTE_MICROPHONE:I = 0x2c

.field public static final OP_NEIGHBORING_CELLS:I = 0xc

.field public static final OP_NFC_CHANGE:I

.field public static final OP_NONE:I = -0x1

.field public static final OP_PLAY_AUDIO:I = 0x1c

.field public static final OP_POST_NOTIFICATION:I = 0xb

.field public static final OP_PROJECT_MEDIA:I = 0x2e

.field public static final OP_READ_CALENDAR:I = 0x8

.field public static final OP_READ_CALL_LOG:I = 0x6

.field public static final OP_READ_CLIPBOARD:I = 0x1d

.field public static final OP_READ_CONTACTS:I = 0x4

.field public static final OP_READ_ICC_SMS:I = 0x15

.field public static final OP_READ_MMS:I = 0x33

.field public static final OP_READ_SMS:I = 0xe

.field public static final OP_RECEIVE_EMERGECY_SMS:I = 0x11

.field public static final OP_RECEIVE_MMS:I = 0x12

.field public static final OP_RECEIVE_SMS:I = 0x10

.field public static final OP_RECEIVE_WAP_PUSH:I = 0x13

.field public static final OP_RECORD_AUDIO:I = 0x1b

.field public static final OP_SEND_MMS:I = 0x32

.field public static final OP_SEND_SMS:I = 0x14

.field public static final OP_SYSTEM_ALERT_WINDOW:I = 0x18

.field public static final OP_TAKE_AUDIO_FOCUS:I = 0x20

.field public static final OP_TAKE_MEDIA_BUTTONS:I = 0x1f

.field public static final OP_TOAST_WINDOW:I = 0x2d

.field public static final OP_VIBRATE:I = 0x3

.field public static final OP_WAKE_LOCK:I = 0x28

.field public static final OP_WIFI_CHANGE:I = 0x30

.field public static final OP_WIFI_SCAN:I = 0xa

.field public static final OP_WRITE_CALENDAR:I = 0x9

.field public static final OP_WRITE_CALL_LOG:I = 0x7

.field public static final OP_WRITE_CLIPBOARD:I = 0x1e

.field public static final OP_WRITE_CONTACTS:I = 0x5

.field public static final OP_WRITE_ICC_SMS:I = 0x16

.field public static final OP_WRITE_MMS:I = 0x34

.field public static final OP_WRITE_SETTINGS:I = 0x17

.field public static final OP_WRITE_SMS:I = 0xf

.field public static final _NUM_OP:I

.field private static sOpAllowSystemRestrictionBypass:[Z

.field private static sOpDefaultMode:[I

.field private static sOpDefaultMode_User:[I

.field private static sOpDefaultStrictMode:[I

.field private static sOpDisableReset:[Z

.field private static sOpNames:[Ljava/lang/String;

.field private static sOpPerms:[Ljava/lang/String;

.field private static sOpRestrictions:[Ljava/lang/String;

.field private static sOpStrToOp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sOpStrictMode:[Z

.field private static sOpStringToOp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sOpToOpString:[Ljava/lang/String;

.field private static sOpToString:[Ljava/lang/String;

.field private static sOpToSwitch:[I

.field private static sOxygenOpAllowSystemRestrictionBypass:[Z

.field private static sOxygenOpDefaultMode:[I

.field private static sOxygenOpDisableReset:[Z

.field private static sOxygenOpNames:[Ljava/lang/String;

.field private static sOxygenOpPerms:[Ljava/lang/String;

.field private static sOxygenOpRestrictions:[Ljava/lang/String;

.field private static sOxygenOpToString:[Ljava/lang/String;

.field private static sOxygenOpToSwitch:[I

.field static sToken:Landroid/os/IBinder;


# instance fields
.field final mContext:Landroid/content/Context;

.field final mModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/app/AppOpsManager$OnOpChangedListener;",
            "Lcom/android/internal/app/IAppOpsCallback;",
            ">;"
        }
    .end annotation
.end field

.field final mService:Lcom/android/internal/app/IAppOpsService;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0xe

    const/16 v2, 0x33

    const/16 v7, 0x10

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 226
    invoke-static {}, Landroid/util/OpFeatures;->isO2()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x30

    :goto_0
    sput v1, Landroid/app/AppOpsManager;->OP_BLUETOOTH_CHANGE:I

    .line 236
    invoke-static {}, Landroid/util/OpFeatures;->isO2()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x32

    :goto_1
    sput v1, Landroid/app/AppOpsManager;->OP_NFC_CHANGE:I

    .line 246
    invoke-static {}, Landroid/util/OpFeatures;->isO2()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x31

    :goto_2
    sput v1, Landroid/app/AppOpsManager;->OP_DATA_CONNECT_CHANGE:I

    .line 248
    invoke-static {}, Landroid/util/OpFeatures;->isO2()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_3
    sput v1, Landroid/app/AppOpsManager;->_NUM_OP:I

    .line 386
    const/16 v1, 0x3c

    new-array v1, v1, [I

    aput v6, v1, v6

    const/4 v3, 0x1

    aput v6, v1, v3

    const/4 v3, 0x2

    aput v6, v1, v3

    const/4 v3, 0x3

    const/4 v4, 0x3

    aput v4, v1, v3

    const/4 v3, 0x4

    const/4 v4, 0x4

    aput v4, v1, v3

    const/4 v3, 0x5

    const/4 v4, 0x5

    aput v4, v1, v3

    const/4 v3, 0x6

    const/4 v4, 0x6

    aput v4, v1, v3

    const/4 v3, 0x7

    const/4 v4, 0x7

    aput v4, v1, v3

    const/16 v3, 0x8

    const/16 v4, 0x8

    aput v4, v1, v3

    const/16 v3, 0x9

    const/16 v4, 0x9

    aput v4, v1, v3

    const/16 v3, 0xa

    aput v6, v1, v3

    const/16 v3, 0xb

    const/16 v4, 0xb

    aput v4, v1, v3

    const/16 v3, 0xc

    aput v6, v1, v3

    const/16 v3, 0xd

    const/16 v4, 0xd

    aput v4, v1, v3

    aput v8, v1, v8

    const/16 v3, 0xf

    const/16 v4, 0xf

    aput v4, v1, v3

    aput v7, v1, v7

    const/16 v3, 0x11

    aput v7, v1, v3

    const/16 v3, 0x12

    aput v7, v1, v3

    const/16 v3, 0x13

    aput v7, v1, v3

    const/16 v3, 0x14

    const/16 v4, 0x14

    aput v4, v1, v3

    const/16 v3, 0x15

    aput v8, v1, v3

    const/16 v3, 0x16

    const/16 v4, 0xf

    aput v4, v1, v3

    const/16 v3, 0x17

    const/16 v4, 0x17

    aput v4, v1, v3

    const/16 v3, 0x18

    const/16 v4, 0x18

    aput v4, v1, v3

    const/16 v3, 0x19

    const/16 v4, 0x19

    aput v4, v1, v3

    const/16 v3, 0x1a

    const/16 v4, 0x1a

    aput v4, v1, v3

    const/16 v3, 0x1b

    const/16 v4, 0x1b

    aput v4, v1, v3

    const/16 v3, 0x1c

    const/16 v4, 0x1c

    aput v4, v1, v3

    const/16 v3, 0x1d

    const/16 v4, 0x1d

    aput v4, v1, v3

    const/16 v3, 0x1e

    const/16 v4, 0x1e

    aput v4, v1, v3

    const/16 v3, 0x1f

    const/16 v4, 0x1f

    aput v4, v1, v3

    const/16 v3, 0x20

    const/16 v4, 0x20

    aput v4, v1, v3

    const/16 v3, 0x21

    const/16 v4, 0x21

    aput v4, v1, v3

    const/16 v3, 0x22

    const/16 v4, 0x22

    aput v4, v1, v3

    const/16 v3, 0x23

    const/16 v4, 0x23

    aput v4, v1, v3

    const/16 v3, 0x24

    const/16 v4, 0x24

    aput v4, v1, v3

    const/16 v3, 0x25

    const/16 v4, 0x25

    aput v4, v1, v3

    const/16 v3, 0x26

    const/16 v4, 0x26

    aput v4, v1, v3

    const/16 v3, 0x27

    const/16 v4, 0x27

    aput v4, v1, v3

    const/16 v3, 0x28

    const/16 v4, 0x28

    aput v4, v1, v3

    const/16 v3, 0x29

    aput v6, v1, v3

    const/16 v3, 0x2a

    aput v6, v1, v3

    const/16 v3, 0x2b

    const/16 v4, 0x2b

    aput v4, v1, v3

    const/16 v3, 0x2c

    const/16 v4, 0x2c

    aput v4, v1, v3

    const/16 v3, 0x2d

    const/16 v4, 0x2d

    aput v4, v1, v3

    const/16 v3, 0x2e

    const/16 v4, 0x2e

    aput v4, v1, v3

    const/16 v3, 0x2f

    const/16 v4, 0x2f

    aput v4, v1, v3

    const/16 v3, 0x30

    const/16 v4, 0x30

    aput v4, v1, v3

    const/16 v3, 0x31

    sget v4, Landroid/app/AppOpsManager;->OP_BLUETOOTH_CHANGE:I

    aput v4, v1, v3

    const/16 v3, 0x32

    const/16 v4, 0x32

    aput v4, v1, v3

    aput v2, v1, v2

    const/16 v3, 0x34

    const/16 v4, 0x34

    aput v4, v1, v3

    const/16 v3, 0x35

    const/16 v4, 0x35

    aput v4, v1, v3

    const/16 v3, 0x36

    sget v4, Landroid/app/AppOpsManager;->OP_NFC_CHANGE:I

    aput v4, v1, v3

    const/16 v3, 0x37

    const/16 v4, 0x37

    aput v4, v1, v3

    const/16 v3, 0x38

    const/16 v4, 0x38

    aput v4, v1, v3

    const/16 v3, 0x39

    const/16 v4, 0x39

    aput v4, v1, v3

    const/16 v3, 0x3a

    const/16 v4, 0x3a

    aput v4, v1, v3

    const/16 v3, 0x3b

    sget v4, Landroid/app/AppOpsManager;->OP_DATA_CONNECT_CHANGE:I

    aput v4, v1, v3

    sput-object v1, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    .line 457
    new-array v1, v2, [I

    aput v6, v1, v6

    const/4 v3, 0x1

    aput v6, v1, v3

    const/4 v3, 0x2

    aput v6, v1, v3

    const/4 v3, 0x3

    const/4 v4, 0x3

    aput v4, v1, v3

    const/4 v3, 0x4

    const/4 v4, 0x4

    aput v4, v1, v3

    const/4 v3, 0x5

    const/4 v4, 0x5

    aput v4, v1, v3

    const/4 v3, 0x6

    const/4 v4, 0x6

    aput v4, v1, v3

    const/4 v3, 0x7

    const/4 v4, 0x7

    aput v4, v1, v3

    const/16 v3, 0x8

    const/16 v4, 0x8

    aput v4, v1, v3

    const/16 v3, 0x9

    const/16 v4, 0x9

    aput v4, v1, v3

    const/16 v3, 0xa

    aput v6, v1, v3

    const/16 v3, 0xb

    const/16 v4, 0xb

    aput v4, v1, v3

    const/16 v3, 0xc

    aput v6, v1, v3

    const/16 v3, 0xd

    const/16 v4, 0xd

    aput v4, v1, v3

    aput v8, v1, v8

    const/16 v3, 0xf

    const/16 v4, 0xf

    aput v4, v1, v3

    aput v7, v1, v7

    const/16 v3, 0x11

    aput v7, v1, v3

    const/16 v3, 0x12

    aput v7, v1, v3

    const/16 v3, 0x13

    aput v7, v1, v3

    const/16 v3, 0x14

    const/16 v4, 0x14

    aput v4, v1, v3

    const/16 v3, 0x15

    aput v8, v1, v3

    const/16 v3, 0x16

    const/16 v4, 0xf

    aput v4, v1, v3

    const/16 v3, 0x17

    const/16 v4, 0x17

    aput v4, v1, v3

    const/16 v3, 0x18

    const/16 v4, 0x18

    aput v4, v1, v3

    const/16 v3, 0x19

    const/16 v4, 0x19

    aput v4, v1, v3

    const/16 v3, 0x1a

    const/16 v4, 0x1a

    aput v4, v1, v3

    const/16 v3, 0x1b

    const/16 v4, 0x1b

    aput v4, v1, v3

    const/16 v3, 0x1c

    const/16 v4, 0x1c

    aput v4, v1, v3

    const/16 v3, 0x1d

    const/16 v4, 0x1d

    aput v4, v1, v3

    const/16 v3, 0x1e

    const/16 v4, 0x1e

    aput v4, v1, v3

    const/16 v3, 0x1f

    const/16 v4, 0x1f

    aput v4, v1, v3

    const/16 v3, 0x20

    const/16 v4, 0x20

    aput v4, v1, v3

    const/16 v3, 0x21

    const/16 v4, 0x21

    aput v4, v1, v3

    const/16 v3, 0x22

    const/16 v4, 0x22

    aput v4, v1, v3

    const/16 v3, 0x23

    const/16 v4, 0x23

    aput v4, v1, v3

    const/16 v3, 0x24

    const/16 v4, 0x24

    aput v4, v1, v3

    const/16 v3, 0x25

    const/16 v4, 0x25

    aput v4, v1, v3

    const/16 v3, 0x26

    const/16 v4, 0x26

    aput v4, v1, v3

    const/16 v3, 0x27

    const/16 v4, 0x27

    aput v4, v1, v3

    const/16 v3, 0x28

    const/16 v4, 0x28

    aput v4, v1, v3

    const/16 v3, 0x29

    aput v6, v1, v3

    const/16 v3, 0x2a

    aput v6, v1, v3

    const/16 v3, 0x2b

    const/16 v4, 0x2b

    aput v4, v1, v3

    const/16 v3, 0x2c

    const/16 v4, 0x2c

    aput v4, v1, v3

    const/16 v3, 0x2d

    const/16 v4, 0x2d

    aput v4, v1, v3

    const/16 v3, 0x2e

    const/16 v4, 0x2e

    aput v4, v1, v3

    const/16 v3, 0x2f

    const/16 v4, 0x2f

    aput v4, v1, v3

    const/16 v3, 0x30

    sget v4, Landroid/app/AppOpsManager;->OP_BLUETOOTH_CHANGE:I

    aput v4, v1, v3

    const/16 v3, 0x31

    sget v4, Landroid/app/AppOpsManager;->OP_DATA_CONNECT_CHANGE:I

    aput v4, v1, v3

    const/16 v3, 0x32

    sget v4, Landroid/app/AppOpsManager;->OP_NFC_CHANGE:I

    aput v4, v1, v3

    sput-object v1, Landroid/app/AppOpsManager;->sOxygenOpToSwitch:[I

    .line 515
    const/16 v1, 0x3c

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "android:coarse_location"

    aput-object v3, v1, v6

    const/4 v3, 0x1

    const-string v4, "android:fine_location"

    aput-object v4, v1, v3

    const/4 v3, 0x2

    aput-object v5, v1, v3

    const/4 v3, 0x3

    aput-object v5, v1, v3

    const/4 v3, 0x4

    aput-object v5, v1, v3

    const/4 v3, 0x5

    aput-object v5, v1, v3

    const/4 v3, 0x6

    aput-object v5, v1, v3

    const/4 v3, 0x7

    aput-object v5, v1, v3

    const/16 v3, 0x8

    aput-object v5, v1, v3

    const/16 v3, 0x9

    aput-object v5, v1, v3

    const/16 v3, 0xa

    aput-object v5, v1, v3

    const/16 v3, 0xb

    aput-object v5, v1, v3

    const/16 v3, 0xc

    aput-object v5, v1, v3

    const/16 v3, 0xd

    aput-object v5, v1, v3

    aput-object v5, v1, v8

    const/16 v3, 0xf

    aput-object v5, v1, v3

    aput-object v5, v1, v7

    const/16 v3, 0x11

    aput-object v5, v1, v3

    const/16 v3, 0x12

    aput-object v5, v1, v3

    const/16 v3, 0x13

    aput-object v5, v1, v3

    const/16 v3, 0x14

    aput-object v5, v1, v3

    const/16 v3, 0x15

    aput-object v5, v1, v3

    const/16 v3, 0x16

    aput-object v5, v1, v3

    const/16 v3, 0x17

    aput-object v5, v1, v3

    const/16 v3, 0x18

    aput-object v5, v1, v3

    const/16 v3, 0x19

    aput-object v5, v1, v3

    const/16 v3, 0x1a

    aput-object v5, v1, v3

    const/16 v3, 0x1b

    aput-object v5, v1, v3

    const/16 v3, 0x1c

    aput-object v5, v1, v3

    const/16 v3, 0x1d

    aput-object v5, v1, v3

    const/16 v3, 0x1e

    aput-object v5, v1, v3

    const/16 v3, 0x1f

    aput-object v5, v1, v3

    const/16 v3, 0x20

    aput-object v5, v1, v3

    const/16 v3, 0x21

    aput-object v5, v1, v3

    const/16 v3, 0x22

    aput-object v5, v1, v3

    const/16 v3, 0x23

    aput-object v5, v1, v3

    const/16 v3, 0x24

    aput-object v5, v1, v3

    const/16 v3, 0x25

    aput-object v5, v1, v3

    const/16 v3, 0x26

    aput-object v5, v1, v3

    const/16 v3, 0x27

    aput-object v5, v1, v3

    const/16 v3, 0x28

    aput-object v5, v1, v3

    const/16 v3, 0x29

    const-string v4, "android:monitor_location"

    aput-object v4, v1, v3

    const/16 v3, 0x2a

    const-string v4, "android:monitor_location_high_power"

    aput-object v4, v1, v3

    const/16 v3, 0x2b

    const-string v4, "android:get_usage_stats"

    aput-object v4, v1, v3

    const/16 v3, 0x2c

    aput-object v5, v1, v3

    const/16 v3, 0x2d

    aput-object v5, v1, v3

    const/16 v3, 0x2e

    aput-object v5, v1, v3

    const/16 v3, 0x2f

    const-string v4, "android:activate_vpn"

    aput-object v4, v1, v3

    const/16 v3, 0x30

    aput-object v5, v1, v3

    const/16 v3, 0x31

    aput-object v5, v1, v3

    const/16 v3, 0x32

    aput-object v5, v1, v3

    aput-object v5, v1, v2

    const/16 v3, 0x34

    aput-object v5, v1, v3

    const/16 v3, 0x35

    aput-object v5, v1, v3

    const/16 v3, 0x36

    aput-object v5, v1, v3

    const/16 v3, 0x37

    aput-object v5, v1, v3

    const/16 v3, 0x38

    aput-object v5, v1, v3

    const/16 v3, 0x39

    aput-object v5, v1, v3

    const/16 v3, 0x3a

    aput-object v5, v1, v3

    const/16 v3, 0x3b

    aput-object v5, v1, v3

    sput-object v1, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    .line 582
    new-array v1, v2, [Ljava/lang/String;

    const-string v3, "android:coarse_location"

    aput-object v3, v1, v6

    const/4 v3, 0x1

    const-string v4, "android:fine_location"

    aput-object v4, v1, v3

    const/4 v3, 0x2

    aput-object v5, v1, v3

    const/4 v3, 0x3

    aput-object v5, v1, v3

    const/4 v3, 0x4

    aput-object v5, v1, v3

    const/4 v3, 0x5

    aput-object v5, v1, v3

    const/4 v3, 0x6

    aput-object v5, v1, v3

    const/4 v3, 0x7

    aput-object v5, v1, v3

    const/16 v3, 0x8

    aput-object v5, v1, v3

    const/16 v3, 0x9

    aput-object v5, v1, v3

    const/16 v3, 0xa

    aput-object v5, v1, v3

    const/16 v3, 0xb

    aput-object v5, v1, v3

    const/16 v3, 0xc

    aput-object v5, v1, v3

    const/16 v3, 0xd

    aput-object v5, v1, v3

    aput-object v5, v1, v8

    const/16 v3, 0xf

    aput-object v5, v1, v3

    aput-object v5, v1, v7

    const/16 v3, 0x11

    aput-object v5, v1, v3

    const/16 v3, 0x12

    aput-object v5, v1, v3

    const/16 v3, 0x13

    aput-object v5, v1, v3

    const/16 v3, 0x14

    aput-object v5, v1, v3

    const/16 v3, 0x15

    aput-object v5, v1, v3

    const/16 v3, 0x16

    aput-object v5, v1, v3

    const/16 v3, 0x17

    aput-object v5, v1, v3

    const/16 v3, 0x18

    aput-object v5, v1, v3

    const/16 v3, 0x19

    aput-object v5, v1, v3

    const/16 v3, 0x1a

    aput-object v5, v1, v3

    const/16 v3, 0x1b

    aput-object v5, v1, v3

    const/16 v3, 0x1c

    aput-object v5, v1, v3

    const/16 v3, 0x1d

    aput-object v5, v1, v3

    const/16 v3, 0x1e

    aput-object v5, v1, v3

    const/16 v3, 0x1f

    aput-object v5, v1, v3

    const/16 v3, 0x20

    aput-object v5, v1, v3

    const/16 v3, 0x21

    aput-object v5, v1, v3

    const/16 v3, 0x22

    aput-object v5, v1, v3

    const/16 v3, 0x23

    aput-object v5, v1, v3

    const/16 v3, 0x24

    aput-object v5, v1, v3

    const/16 v3, 0x25

    aput-object v5, v1, v3

    const/16 v3, 0x26

    aput-object v5, v1, v3

    const/16 v3, 0x27

    aput-object v5, v1, v3

    const/16 v3, 0x28

    aput-object v5, v1, v3

    const/16 v3, 0x29

    const-string v4, "android:monitor_location"

    aput-object v4, v1, v3

    const/16 v3, 0x2a

    const-string v4, "android:monitor_location_high_power"

    aput-object v4, v1, v3

    const/16 v3, 0x2b

    const-string v4, "android:get_usage_stats"

    aput-object v4, v1, v3

    const/16 v3, 0x2c

    aput-object v5, v1, v3

    const/16 v3, 0x2d

    aput-object v5, v1, v3

    const/16 v3, 0x2e

    aput-object v5, v1, v3

    const/16 v3, 0x2f

    const-string v4, "android:activate_vpn"

    aput-object v4, v1, v3

    const/16 v3, 0x30

    aput-object v5, v1, v3

    const/16 v3, 0x31

    aput-object v5, v1, v3

    const/16 v3, 0x32

    aput-object v5, v1, v3

    sput-object v1, Landroid/app/AppOpsManager;->sOxygenOpToString:[Ljava/lang/String;

    .line 640
    const/16 v1, 0x3c

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "android:coarse_location"

    aput-object v3, v1, v6

    const/4 v3, 0x1

    const-string v4, "android:fine_location"

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const-string v4, "android:gps"

    aput-object v4, v1, v3

    const/4 v3, 0x3

    const-string v4, "android:vibrate"

    aput-object v4, v1, v3

    const/4 v3, 0x4

    const-string v4, "android:read_contacts"

    aput-object v4, v1, v3

    const/4 v3, 0x5

    const-string v4, "android:write_contacts"

    aput-object v4, v1, v3

    const/4 v3, 0x6

    const-string v4, "android:read_call_log"

    aput-object v4, v1, v3

    const/4 v3, 0x7

    const-string v4, "android:write_call_log"

    aput-object v4, v1, v3

    const/16 v3, 0x8

    const-string v4, "android:read_calendar"

    aput-object v4, v1, v3

    const/16 v3, 0x9

    const-string v4, "android:write_calendar"

    aput-object v4, v1, v3

    const/16 v3, 0xa

    const-string v4, "android:wifi_scan"

    aput-object v4, v1, v3

    const/16 v3, 0xb

    const-string v4, "android:post_notification"

    aput-object v4, v1, v3

    const/16 v3, 0xc

    const-string v4, "android:neighboring_cells"

    aput-object v4, v1, v3

    const/16 v3, 0xd

    const-string v4, "android:call_phone"

    aput-object v4, v1, v3

    const-string v3, "android:read_sms"

    aput-object v3, v1, v8

    const/16 v3, 0xf

    const-string v4, "android:write_sms"

    aput-object v4, v1, v3

    const-string v3, "android:receive_sms"

    aput-object v3, v1, v7

    const/16 v3, 0x11

    const-string v4, "android:receive_emergecy_sms"

    aput-object v4, v1, v3

    const/16 v3, 0x12

    const-string v4, "android:receive_mms"

    aput-object v4, v1, v3

    const/16 v3, 0x13

    const-string v4, "android:receive_wap_push"

    aput-object v4, v1, v3

    const/16 v3, 0x14

    const-string v4, "android:send_sms"

    aput-object v4, v1, v3

    const/16 v3, 0x15

    const-string v4, "android:read_icc_sms"

    aput-object v4, v1, v3

    const/16 v3, 0x16

    const-string v4, "android:write_icc_sms"

    aput-object v4, v1, v3

    const/16 v3, 0x17

    const-string v4, "android:write_settings"

    aput-object v4, v1, v3

    const/16 v3, 0x18

    const-string v4, "android:system_alert_window"

    aput-object v4, v1, v3

    const/16 v3, 0x19

    const-string v4, "android:access_notifications"

    aput-object v4, v1, v3

    const/16 v3, 0x1a

    const-string v4, "android:camera"

    aput-object v4, v1, v3

    const/16 v3, 0x1b

    const-string v4, "android:record_audio"

    aput-object v4, v1, v3

    const/16 v3, 0x1c

    const-string v4, "android:play_audio"

    aput-object v4, v1, v3

    const/16 v3, 0x1d

    const-string v4, "android:read_clipboard"

    aput-object v4, v1, v3

    const/16 v3, 0x1e

    const-string v4, "android:write_clipboard"

    aput-object v4, v1, v3

    const/16 v3, 0x1f

    const-string v4, "android:take_media_buttons"

    aput-object v4, v1, v3

    const/16 v3, 0x20

    const-string v4, "android:take_audio_focus"

    aput-object v4, v1, v3

    const/16 v3, 0x21

    const-string v4, "android:audio_master_volume"

    aput-object v4, v1, v3

    const/16 v3, 0x22

    const-string v4, "android:audio_voice_volume"

    aput-object v4, v1, v3

    const/16 v3, 0x23

    const-string v4, "android:audio_ring_volume"

    aput-object v4, v1, v3

    const/16 v3, 0x24

    const-string v4, "android:audio_media_volume"

    aput-object v4, v1, v3

    const/16 v3, 0x25

    const-string v4, "android:audio_alarm_volume"

    aput-object v4, v1, v3

    const/16 v3, 0x26

    const-string v4, "android:audio_notification_volume"

    aput-object v4, v1, v3

    const/16 v3, 0x27

    const-string v4, "android:audio_bluetooth_volume"

    aput-object v4, v1, v3

    const/16 v3, 0x28

    const-string v4, "android:wake_lock"

    aput-object v4, v1, v3

    const/16 v3, 0x29

    const-string v4, "android:monitor_location"

    aput-object v4, v1, v3

    const/16 v3, 0x2a

    const-string v4, "android:monitor_location_high_power"

    aput-object v4, v1, v3

    const/16 v3, 0x2b

    const-string v4, "android:get_usage_stats"

    aput-object v4, v1, v3

    const/16 v3, 0x2c

    const-string v4, "android:mute_microphone"

    aput-object v4, v1, v3

    const/16 v3, 0x2d

    const-string v4, "android:toast_window"

    aput-object v4, v1, v3

    const/16 v3, 0x2e

    const-string v4, "android:project_media"

    aput-object v4, v1, v3

    const/16 v3, 0x2f

    const-string v4, "android:activate_vpn"

    aput-object v4, v1, v3

    const/16 v3, 0x30

    const-string v4, "android:wifi_change"

    aput-object v4, v1, v3

    const/16 v3, 0x31

    const-string v4, "android:bluetooth_change"

    aput-object v4, v1, v3

    const/16 v3, 0x32

    const-string v4, "android:send_mms"

    aput-object v4, v1, v3

    const-string v3, "android:read_mms"

    aput-object v3, v1, v2

    const/16 v3, 0x34

    const-string v4, "android:write_mms"

    aput-object v4, v1, v3

    const/16 v3, 0x35

    const-string v4, "android:boot_completed"

    aput-object v4, v1, v3

    const/16 v3, 0x36

    const-string v4, "android:nfc_change"

    aput-object v4, v1, v3

    const/16 v3, 0x37

    const-string v4, "android:delete_sms"

    aput-object v4, v1, v3

    const/16 v3, 0x38

    const-string v4, "android:delete_mms"

    aput-object v4, v1, v3

    const/16 v3, 0x39

    const-string v4, "android:delete_contacts"

    aput-object v4, v1, v3

    const/16 v3, 0x3a

    const-string v4, "android:delete_call_log"

    aput-object v4, v1, v3

    const/16 v3, 0x3b

    const-string v4, "android:data_connect_change"

    aput-object v4, v1, v3

    sput-object v1, Landroid/app/AppOpsManager;->sOpToOpString:[Ljava/lang/String;

    .line 707
    const/16 v1, 0x3c

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "COARSE_LOCATION"

    aput-object v3, v1, v6

    const/4 v3, 0x1

    const-string v4, "FINE_LOCATION"

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const-string v4, "GPS"

    aput-object v4, v1, v3

    const/4 v3, 0x3

    const-string v4, "VIBRATE"

    aput-object v4, v1, v3

    const/4 v3, 0x4

    const-string v4, "READ_CONTACTS"

    aput-object v4, v1, v3

    const/4 v3, 0x5

    const-string v4, "WRITE_CONTACTS"

    aput-object v4, v1, v3

    const/4 v3, 0x6

    const-string v4, "READ_CALL_LOG"

    aput-object v4, v1, v3

    const/4 v3, 0x7

    const-string v4, "WRITE_CALL_LOG"

    aput-object v4, v1, v3

    const/16 v3, 0x8

    const-string v4, "READ_CALENDAR"

    aput-object v4, v1, v3

    const/16 v3, 0x9

    const-string v4, "WRITE_CALENDAR"

    aput-object v4, v1, v3

    const/16 v3, 0xa

    const-string v4, "WIFI_SCAN"

    aput-object v4, v1, v3

    const/16 v3, 0xb

    const-string v4, "POST_NOTIFICATION"

    aput-object v4, v1, v3

    const/16 v3, 0xc

    const-string v4, "NEIGHBORING_CELLS"

    aput-object v4, v1, v3

    const/16 v3, 0xd

    const-string v4, "CALL_PHONE"

    aput-object v4, v1, v3

    const-string v3, "READ_SMS"

    aput-object v3, v1, v8

    const/16 v3, 0xf

    const-string v4, "WRITE_SMS"

    aput-object v4, v1, v3

    const-string v3, "RECEIVE_SMS"

    aput-object v3, v1, v7

    const/16 v3, 0x11

    const-string v4, "RECEIVE_EMERGECY_SMS"

    aput-object v4, v1, v3

    const/16 v3, 0x12

    const-string v4, "RECEIVE_MMS"

    aput-object v4, v1, v3

    const/16 v3, 0x13

    const-string v4, "RECEIVE_WAP_PUSH"

    aput-object v4, v1, v3

    const/16 v3, 0x14

    const-string v4, "SEND_SMS"

    aput-object v4, v1, v3

    const/16 v3, 0x15

    const-string v4, "READ_ICC_SMS"

    aput-object v4, v1, v3

    const/16 v3, 0x16

    const-string v4, "WRITE_ICC_SMS"

    aput-object v4, v1, v3

    const/16 v3, 0x17

    const-string v4, "WRITE_SETTINGS"

    aput-object v4, v1, v3

    const/16 v3, 0x18

    const-string v4, "SYSTEM_ALERT_WINDOW"

    aput-object v4, v1, v3

    const/16 v3, 0x19

    const-string v4, "ACCESS_NOTIFICATIONS"

    aput-object v4, v1, v3

    const/16 v3, 0x1a

    const-string v4, "CAMERA"

    aput-object v4, v1, v3

    const/16 v3, 0x1b

    const-string v4, "RECORD_AUDIO"

    aput-object v4, v1, v3

    const/16 v3, 0x1c

    const-string v4, "PLAY_AUDIO"

    aput-object v4, v1, v3

    const/16 v3, 0x1d

    const-string v4, "READ_CLIPBOARD"

    aput-object v4, v1, v3

    const/16 v3, 0x1e

    const-string v4, "WRITE_CLIPBOARD"

    aput-object v4, v1, v3

    const/16 v3, 0x1f

    const-string v4, "TAKE_MEDIA_BUTTONS"

    aput-object v4, v1, v3

    const/16 v3, 0x20

    const-string v4, "TAKE_AUDIO_FOCUS"

    aput-object v4, v1, v3

    const/16 v3, 0x21

    const-string v4, "AUDIO_MASTER_VOLUME"

    aput-object v4, v1, v3

    const/16 v3, 0x22

    const-string v4, "AUDIO_VOICE_VOLUME"

    aput-object v4, v1, v3

    const/16 v3, 0x23

    const-string v4, "AUDIO_RING_VOLUME"

    aput-object v4, v1, v3

    const/16 v3, 0x24

    const-string v4, "AUDIO_MEDIA_VOLUME"

    aput-object v4, v1, v3

    const/16 v3, 0x25

    const-string v4, "AUDIO_ALARM_VOLUME"

    aput-object v4, v1, v3

    const/16 v3, 0x26

    const-string v4, "AUDIO_NOTIFICATION_VOLUME"

    aput-object v4, v1, v3

    const/16 v3, 0x27

    const-string v4, "AUDIO_BLUETOOTH_VOLUME"

    aput-object v4, v1, v3

    const/16 v3, 0x28

    const-string v4, "WAKE_LOCK"

    aput-object v4, v1, v3

    const/16 v3, 0x29

    const-string v4, "MONITOR_LOCATION"

    aput-object v4, v1, v3

    const/16 v3, 0x2a

    const-string v4, "MONITOR_HIGH_POWER_LOCATION"

    aput-object v4, v1, v3

    const/16 v3, 0x2b

    const-string v4, "GET_USAGE_STATS"

    aput-object v4, v1, v3

    const/16 v3, 0x2c

    const-string v4, "MUTE_MICROPHONE"

    aput-object v4, v1, v3

    const/16 v3, 0x2d

    const-string v4, "TOAST_WINDOW"

    aput-object v4, v1, v3

    const/16 v3, 0x2e

    const-string v4, "PROJECT_MEDIA"

    aput-object v4, v1, v3

    const/16 v3, 0x2f

    const-string v4, "ACTIVATE_VPN"

    aput-object v4, v1, v3

    const/16 v3, 0x30

    const-string v4, "WIFI_CHANGE"

    aput-object v4, v1, v3

    const/16 v3, 0x31

    const-string v4, "BLUETOOTH_CHANGE"

    aput-object v4, v1, v3

    const/16 v3, 0x32

    const-string v4, "SEND_MMS"

    aput-object v4, v1, v3

    const-string v3, "READ_MMS"

    aput-object v3, v1, v2

    const/16 v3, 0x34

    const-string v4, "WRITE_MMS"

    aput-object v4, v1, v3

    const/16 v3, 0x35

    const-string v4, "BOOT_COMPLETED"

    aput-object v4, v1, v3

    const/16 v3, 0x36

    const-string v4, "NFC_CHANGE"

    aput-object v4, v1, v3

    const/16 v3, 0x37

    const-string v4, "DELETE_SMS"

    aput-object v4, v1, v3

    const/16 v3, 0x38

    const-string v4, "DELETE_MMS"

    aput-object v4, v1, v3

    const/16 v3, 0x39

    const-string v4, "DELETE_CONTACTS"

    aput-object v4, v1, v3

    const/16 v3, 0x3a

    const-string v4, "DELETE_CALL_LOG"

    aput-object v4, v1, v3

    const/16 v3, 0x3b

    const-string v4, "DATA_CONNECT_CHANGE"

    aput-object v4, v1, v3

    sput-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    .line 774
    new-array v1, v2, [Ljava/lang/String;

    const-string v3, "COARSE_LOCATION"

    aput-object v3, v1, v6

    const/4 v3, 0x1

    const-string v4, "FINE_LOCATION"

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const-string v4, "GPS"

    aput-object v4, v1, v3

    const/4 v3, 0x3

    const-string v4, "VIBRATE"

    aput-object v4, v1, v3

    const/4 v3, 0x4

    const-string v4, "READ_CONTACTS"

    aput-object v4, v1, v3

    const/4 v3, 0x5

    const-string v4, "WRITE_CONTACTS"

    aput-object v4, v1, v3

    const/4 v3, 0x6

    const-string v4, "READ_CALL_LOG"

    aput-object v4, v1, v3

    const/4 v3, 0x7

    const-string v4, "WRITE_CALL_LOG"

    aput-object v4, v1, v3

    const/16 v3, 0x8

    const-string v4, "READ_CALENDAR"

    aput-object v4, v1, v3

    const/16 v3, 0x9

    const-string v4, "WRITE_CALENDAR"

    aput-object v4, v1, v3

    const/16 v3, 0xa

    const-string v4, "WIFI_SCAN"

    aput-object v4, v1, v3

    const/16 v3, 0xb

    const-string v4, "POST_NOTIFICATION"

    aput-object v4, v1, v3

    const/16 v3, 0xc

    const-string v4, "NEIGHBORING_CELLS"

    aput-object v4, v1, v3

    const/16 v3, 0xd

    const-string v4, "CALL_PHONE"

    aput-object v4, v1, v3

    const-string v3, "READ_SMS"

    aput-object v3, v1, v8

    const/16 v3, 0xf

    const-string v4, "WRITE_SMS"

    aput-object v4, v1, v3

    const-string v3, "RECEIVE_SMS"

    aput-object v3, v1, v7

    const/16 v3, 0x11

    const-string v4, "RECEIVE_EMERGECY_SMS"

    aput-object v4, v1, v3

    const/16 v3, 0x12

    const-string v4, "RECEIVE_MMS"

    aput-object v4, v1, v3

    const/16 v3, 0x13

    const-string v4, "RECEIVE_WAP_PUSH"

    aput-object v4, v1, v3

    const/16 v3, 0x14

    const-string v4, "SEND_SMS"

    aput-object v4, v1, v3

    const/16 v3, 0x15

    const-string v4, "READ_ICC_SMS"

    aput-object v4, v1, v3

    const/16 v3, 0x16

    const-string v4, "WRITE_ICC_SMS"

    aput-object v4, v1, v3

    const/16 v3, 0x17

    const-string v4, "WRITE_SETTINGS"

    aput-object v4, v1, v3

    const/16 v3, 0x18

    const-string v4, "SYSTEM_ALERT_WINDOW"

    aput-object v4, v1, v3

    const/16 v3, 0x19

    const-string v4, "ACCESS_NOTIFICATIONS"

    aput-object v4, v1, v3

    const/16 v3, 0x1a

    const-string v4, "CAMERA"

    aput-object v4, v1, v3

    const/16 v3, 0x1b

    const-string v4, "RECORD_AUDIO"

    aput-object v4, v1, v3

    const/16 v3, 0x1c

    const-string v4, "PLAY_AUDIO"

    aput-object v4, v1, v3

    const/16 v3, 0x1d

    const-string v4, "READ_CLIPBOARD"

    aput-object v4, v1, v3

    const/16 v3, 0x1e

    const-string v4, "WRITE_CLIPBOARD"

    aput-object v4, v1, v3

    const/16 v3, 0x1f

    const-string v4, "TAKE_MEDIA_BUTTONS"

    aput-object v4, v1, v3

    const/16 v3, 0x20

    const-string v4, "TAKE_AUDIO_FOCUS"

    aput-object v4, v1, v3

    const/16 v3, 0x21

    const-string v4, "AUDIO_MASTER_VOLUME"

    aput-object v4, v1, v3

    const/16 v3, 0x22

    const-string v4, "AUDIO_VOICE_VOLUME"

    aput-object v4, v1, v3

    const/16 v3, 0x23

    const-string v4, "AUDIO_RING_VOLUME"

    aput-object v4, v1, v3

    const/16 v3, 0x24

    const-string v4, "AUDIO_MEDIA_VOLUME"

    aput-object v4, v1, v3

    const/16 v3, 0x25

    const-string v4, "AUDIO_ALARM_VOLUME"

    aput-object v4, v1, v3

    const/16 v3, 0x26

    const-string v4, "AUDIO_NOTIFICATION_VOLUME"

    aput-object v4, v1, v3

    const/16 v3, 0x27

    const-string v4, "AUDIO_BLUETOOTH_VOLUME"

    aput-object v4, v1, v3

    const/16 v3, 0x28

    const-string v4, "WAKE_LOCK"

    aput-object v4, v1, v3

    const/16 v3, 0x29

    const-string v4, "MONITOR_LOCATION"

    aput-object v4, v1, v3

    const/16 v3, 0x2a

    const-string v4, "MONITOR_HIGH_POWER_LOCATION"

    aput-object v4, v1, v3

    const/16 v3, 0x2b

    const-string v4, "GET_USAGE_STATS"

    aput-object v4, v1, v3

    const/16 v3, 0x2c

    const-string v4, "MUTE_MICROPHONE"

    aput-object v4, v1, v3

    const/16 v3, 0x2d

    const-string v4, "TOAST_WINDOW"

    aput-object v4, v1, v3

    const/16 v3, 0x2e

    const-string v4, "PROJECT_MEDIA"

    aput-object v4, v1, v3

    const/16 v3, 0x2f

    const-string v4, "ACTIVATE_VPN"

    aput-object v4, v1, v3

    const/16 v3, 0x30

    const-string v4, "BLUETOOTH_CHANGE"

    aput-object v4, v1, v3

    const/16 v3, 0x31

    const-string v4, "DATA_CONNECT_CHANGE"

    aput-object v4, v1, v3

    const/16 v3, 0x32

    const-string v4, "NFC_CHANGE"

    aput-object v4, v1, v3

    sput-object v1, Landroid/app/AppOpsManager;->sOxygenOpNames:[Ljava/lang/String;

    .line 832
    const/16 v1, 0x3c

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v3, v1, v6

    const/4 v3, 0x1

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v4, v1, v3

    const/4 v3, 0x2

    aput-object v5, v1, v3

    const/4 v3, 0x3

    aput-object v5, v1, v3

    const/4 v3, 0x4

    const-string v4, "android.permission.READ_CONTACTS"

    aput-object v4, v1, v3

    const/4 v3, 0x5

    const-string v4, "android.permission.WRITE_CONTACTS"

    aput-object v4, v1, v3

    const/4 v3, 0x6

    const-string v4, "android.permission.READ_CALL_LOG"

    aput-object v4, v1, v3

    const/4 v3, 0x7

    const-string v4, "android.permission.WRITE_CALL_LOG"

    aput-object v4, v1, v3

    const/16 v3, 0x8

    aput-object v5, v1, v3

    const/16 v3, 0x9

    aput-object v5, v1, v3

    const/16 v3, 0xa

    const-string v4, "android.permission.ACCESS_WIFI_STATE"

    aput-object v4, v1, v3

    const/16 v3, 0xb

    aput-object v5, v1, v3

    const/16 v3, 0xc

    aput-object v5, v1, v3

    const/16 v3, 0xd

    const-string v4, "android.permission.CALL_PHONE"

    aput-object v4, v1, v3

    const-string v3, "android.permission.READ_SMS"

    aput-object v3, v1, v8

    const/16 v3, 0xf

    const-string v4, "android.permission.WRITE_SMS"

    aput-object v4, v1, v3

    aput-object v5, v1, v7

    const/16 v3, 0x11

    aput-object v5, v1, v3

    const/16 v3, 0x12

    aput-object v5, v1, v3

    const/16 v3, 0x13

    aput-object v5, v1, v3

    const/16 v3, 0x14

    const-string v4, "android.permission.SEND_SMS"

    aput-object v4, v1, v3

    const/16 v3, 0x15

    const-string v4, "android.permission.READ_SMS"

    aput-object v4, v1, v3

    const/16 v3, 0x16

    const-string v4, "android.permission.WRITE_SMS"

    aput-object v4, v1, v3

    const/16 v3, 0x17

    const-string v4, "android.permission.WRITE_SETTINGS"

    aput-object v4, v1, v3

    const/16 v3, 0x18

    const-string v4, "android.permission.SYSTEM_ALERT_WINDOW"

    aput-object v4, v1, v3

    const/16 v3, 0x19

    const-string v4, "android.permission.ACCESS_NOTIFICATIONS"

    aput-object v4, v1, v3

    const/16 v3, 0x1a

    const-string v4, "android.permission.CAMERA"

    aput-object v4, v1, v3

    const/16 v3, 0x1b

    const-string v4, "android.permission.RECORD_AUDIO"

    aput-object v4, v1, v3

    const/16 v3, 0x1c

    aput-object v5, v1, v3

    const/16 v3, 0x1d

    aput-object v5, v1, v3

    const/16 v3, 0x1e

    aput-object v5, v1, v3

    const/16 v3, 0x1f

    aput-object v5, v1, v3

    const/16 v3, 0x20

    aput-object v5, v1, v3

    const/16 v3, 0x21

    aput-object v5, v1, v3

    const/16 v3, 0x22

    aput-object v5, v1, v3

    const/16 v3, 0x23

    aput-object v5, v1, v3

    const/16 v3, 0x24

    aput-object v5, v1, v3

    const/16 v3, 0x25

    aput-object v5, v1, v3

    const/16 v3, 0x26

    aput-object v5, v1, v3

    const/16 v3, 0x27

    aput-object v5, v1, v3

    const/16 v3, 0x28

    aput-object v5, v1, v3

    const/16 v3, 0x29

    aput-object v5, v1, v3

    const/16 v3, 0x2a

    aput-object v5, v1, v3

    const/16 v3, 0x2b

    const-string v4, "android.permission.PACKAGE_USAGE_STATS"

    aput-object v4, v1, v3

    const/16 v3, 0x2c

    aput-object v5, v1, v3

    const/16 v3, 0x2d

    aput-object v5, v1, v3

    const/16 v3, 0x2e

    aput-object v5, v1, v3

    const/16 v3, 0x2f

    aput-object v5, v1, v3

    const/16 v3, 0x30

    const-string v4, "android.permission.CHANGE_WIFI_STATE"

    aput-object v4, v1, v3

    const/16 v3, 0x31

    const-string v4, "android.permission.BLUETOOTH"

    aput-object v4, v1, v3

    const/16 v3, 0x32

    const-string v4, "android.permission.SEND_SMS"

    aput-object v4, v1, v3

    const-string v3, "android.permission.READ_SMS"

    aput-object v3, v1, v2

    const/16 v3, 0x34

    const-string v4, "android.permission.WRITE_SMS"

    aput-object v4, v1, v3

    const/16 v3, 0x35

    const-string v4, "android.permission.RECEIVE_BOOT_COMPLETED"

    aput-object v4, v1, v3

    const/16 v3, 0x36

    aput-object v5, v1, v3

    const/16 v3, 0x37

    const-string v4, "android.permission.WRITE_SMS"

    aput-object v4, v1, v3

    const/16 v3, 0x38

    const-string v4, "android.permission.WRITE_SMS"

    aput-object v4, v1, v3

    const/16 v3, 0x39

    const-string v4, "android.permission.WRITE_CONTACTS"

    aput-object v4, v1, v3

    const/16 v3, 0x3a

    const-string v4, "android.permission.WRITE_CALL_LOG"

    aput-object v4, v1, v3

    const/16 v3, 0x3b

    const-string v4, "android.permission.CHANGE_NETWORK_STATE"

    aput-object v4, v1, v3

    sput-object v1, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    .line 899
    new-array v1, v2, [Ljava/lang/String;

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v3, v1, v6

    const/4 v3, 0x1

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v4, v1, v3

    const/4 v3, 0x2

    aput-object v5, v1, v3

    const/4 v3, 0x3

    const-string v4, "android.permission.VIBRATE"

    aput-object v4, v1, v3

    const/4 v3, 0x4

    const-string v4, "android.permission.READ_CONTACTS"

    aput-object v4, v1, v3

    const/4 v3, 0x5

    const-string v4, "android.permission.WRITE_CONTACTS"

    aput-object v4, v1, v3

    const/4 v3, 0x6

    const-string v4, "android.permission.READ_CALL_LOG"

    aput-object v4, v1, v3

    const/4 v3, 0x7

    const-string v4, "android.permission.WRITE_CALL_LOG"

    aput-object v4, v1, v3

    const/16 v3, 0x8

    aput-object v5, v1, v3

    const/16 v3, 0x9

    aput-object v5, v1, v3

    const/16 v3, 0xa

    const-string v4, "android.permission.ACCESS_WIFI_STATE"

    aput-object v4, v1, v3

    const/16 v3, 0xb

    aput-object v5, v1, v3

    const/16 v3, 0xc

    aput-object v5, v1, v3

    const/16 v3, 0xd

    const-string v4, "android.permission.CALL_PHONE"

    aput-object v4, v1, v3

    const-string v3, "android.permission.READ_SMS"

    aput-object v3, v1, v8

    const/16 v3, 0xf

    const-string v4, "android.permission.WRITE_SMS"

    aput-object v4, v1, v3

    const-string v3, "android.permission.RECEIVE_SMS"

    aput-object v3, v1, v7

    const/16 v3, 0x11

    const-string v4, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    aput-object v4, v1, v3

    const/16 v3, 0x12

    const-string v4, "android.permission.RECEIVE_MMS"

    aput-object v4, v1, v3

    const/16 v3, 0x13

    const-string v4, "android.permission.RECEIVE_WAP_PUSH"

    aput-object v4, v1, v3

    const/16 v3, 0x14

    const-string v4, "android.permission.SEND_SMS"

    aput-object v4, v1, v3

    const/16 v3, 0x15

    const-string v4, "android.permission.READ_SMS"

    aput-object v4, v1, v3

    const/16 v3, 0x16

    const-string v4, "android.permission.WRITE_SMS"

    aput-object v4, v1, v3

    const/16 v3, 0x17

    const-string v4, "android.permission.WRITE_SETTINGS"

    aput-object v4, v1, v3

    const/16 v3, 0x18

    const-string v4, "android.permission.SYSTEM_ALERT_WINDOW"

    aput-object v4, v1, v3

    const/16 v3, 0x19

    const-string v4, "android.permission.ACCESS_NOTIFICATIONS"

    aput-object v4, v1, v3

    const/16 v3, 0x1a

    const-string v4, "android.permission.CAMERA"

    aput-object v4, v1, v3

    const/16 v3, 0x1b

    const-string v4, "android.permission.RECORD_AUDIO"

    aput-object v4, v1, v3

    const/16 v3, 0x1c

    aput-object v5, v1, v3

    const/16 v3, 0x1d

    aput-object v5, v1, v3

    const/16 v3, 0x1e

    aput-object v5, v1, v3

    const/16 v3, 0x1f

    aput-object v5, v1, v3

    const/16 v3, 0x20

    aput-object v5, v1, v3

    const/16 v3, 0x21

    aput-object v5, v1, v3

    const/16 v3, 0x22

    aput-object v5, v1, v3

    const/16 v3, 0x23

    aput-object v5, v1, v3

    const/16 v3, 0x24

    aput-object v5, v1, v3

    const/16 v3, 0x25

    aput-object v5, v1, v3

    const/16 v3, 0x26

    aput-object v5, v1, v3

    const/16 v3, 0x27

    aput-object v5, v1, v3

    const/16 v3, 0x28

    const-string v4, "android.permission.WAKE_LOCK"

    aput-object v4, v1, v3

    const/16 v3, 0x29

    aput-object v5, v1, v3

    const/16 v3, 0x2a

    aput-object v5, v1, v3

    const/16 v3, 0x2b

    const-string v4, "android.permission.PACKAGE_USAGE_STATS"

    aput-object v4, v1, v3

    const/16 v3, 0x2c

    aput-object v5, v1, v3

    const/16 v3, 0x2d

    aput-object v5, v1, v3

    const/16 v3, 0x2e

    aput-object v5, v1, v3

    const/16 v3, 0x2f

    aput-object v5, v1, v3

    const/16 v3, 0x30

    const-string v4, "android.permission.BLUETOOTH"

    aput-object v4, v1, v3

    const/16 v3, 0x31

    const-string v4, "android.permission.MODIFY_PHONE_STATE"

    aput-object v4, v1, v3

    const/16 v3, 0x32

    const-string v4, "android.permission.NFC"

    aput-object v4, v1, v3

    sput-object v1, Landroid/app/AppOpsManager;->sOxygenOpPerms:[Ljava/lang/String;

    .line 958
    const/16 v1, 0x3c

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v3, "no_share_location"

    aput-object v3, v1, v6

    const/4 v3, 0x1

    const-string/jumbo v4, "no_share_location"

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "no_share_location"

    aput-object v4, v1, v3

    const/4 v3, 0x3

    aput-object v5, v1, v3

    const/4 v3, 0x4

    aput-object v5, v1, v3

    const/4 v3, 0x5

    aput-object v5, v1, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "no_outgoing_calls"

    aput-object v4, v1, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "no_outgoing_calls"

    aput-object v4, v1, v3

    const/16 v3, 0x8

    aput-object v5, v1, v3

    const/16 v3, 0x9

    aput-object v5, v1, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "no_share_location"

    aput-object v4, v1, v3

    const/16 v3, 0xb

    aput-object v5, v1, v3

    const/16 v3, 0xc

    aput-object v5, v1, v3

    const/16 v3, 0xd

    aput-object v5, v1, v3

    const-string/jumbo v3, "no_sms"

    aput-object v3, v1, v8

    const/16 v3, 0xf

    const-string/jumbo v4, "no_sms"

    aput-object v4, v1, v3

    const-string/jumbo v3, "no_sms"

    aput-object v3, v1, v7

    const/16 v3, 0x11

    aput-object v5, v1, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "no_sms"

    aput-object v4, v1, v3

    const/16 v3, 0x13

    aput-object v5, v1, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "no_sms"

    aput-object v4, v1, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "no_sms"

    aput-object v4, v1, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "no_sms"

    aput-object v4, v1, v3

    const/16 v3, 0x17

    aput-object v5, v1, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "no_create_windows"

    aput-object v4, v1, v3

    const/16 v3, 0x19

    aput-object v5, v1, v3

    const/16 v3, 0x1a

    aput-object v5, v1, v3

    const/16 v3, 0x1b

    aput-object v5, v1, v3

    const/16 v3, 0x1c

    aput-object v5, v1, v3

    const/16 v3, 0x1d

    aput-object v5, v1, v3

    const/16 v3, 0x1e

    aput-object v5, v1, v3

    const/16 v3, 0x1f

    aput-object v5, v1, v3

    const/16 v3, 0x20

    aput-object v5, v1, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "no_adjust_volume"

    aput-object v4, v1, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "no_adjust_volume"

    aput-object v4, v1, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "no_adjust_volume"

    aput-object v4, v1, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "no_adjust_volume"

    aput-object v4, v1, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "no_adjust_volume"

    aput-object v4, v1, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "no_adjust_volume"

    aput-object v4, v1, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "no_adjust_volume"

    aput-object v4, v1, v3

    const/16 v3, 0x28

    aput-object v5, v1, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "no_share_location"

    aput-object v4, v1, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "no_share_location"

    aput-object v4, v1, v3

    const/16 v3, 0x2b

    aput-object v5, v1, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "no_unmute_microphone"

    aput-object v4, v1, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "no_create_windows"

    aput-object v4, v1, v3

    const/16 v3, 0x2e

    aput-object v5, v1, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "no_config_vpn"

    aput-object v4, v1, v3

    const/16 v3, 0x30

    aput-object v5, v1, v3

    const/16 v3, 0x31

    aput-object v5, v1, v3

    const/16 v3, 0x32

    aput-object v5, v1, v3

    aput-object v5, v1, v2

    const/16 v3, 0x34

    aput-object v5, v1, v3

    const/16 v3, 0x35

    aput-object v5, v1, v3

    const/16 v3, 0x36

    aput-object v5, v1, v3

    const/16 v3, 0x37

    aput-object v5, v1, v3

    const/16 v3, 0x38

    aput-object v5, v1, v3

    const/16 v3, 0x39

    aput-object v5, v1, v3

    const/16 v3, 0x3a

    aput-object v5, v1, v3

    const/16 v3, 0x3b

    aput-object v5, v1, v3

    sput-object v1, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    .line 1026
    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v3, "no_share_location"

    aput-object v3, v1, v6

    const/4 v3, 0x1

    const-string/jumbo v4, "no_share_location"

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "no_share_location"

    aput-object v4, v1, v3

    const/4 v3, 0x3

    aput-object v5, v1, v3

    const/4 v3, 0x4

    aput-object v5, v1, v3

    const/4 v3, 0x5

    aput-object v5, v1, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "no_outgoing_calls"

    aput-object v4, v1, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "no_outgoing_calls"

    aput-object v4, v1, v3

    const/16 v3, 0x8

    aput-object v5, v1, v3

    const/16 v3, 0x9

    aput-object v5, v1, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "no_share_location"

    aput-object v4, v1, v3

    const/16 v3, 0xb

    aput-object v5, v1, v3

    const/16 v3, 0xc

    aput-object v5, v1, v3

    const/16 v3, 0xd

    aput-object v5, v1, v3

    const-string/jumbo v3, "no_sms"

    aput-object v3, v1, v8

    const/16 v3, 0xf

    const-string/jumbo v4, "no_sms"

    aput-object v4, v1, v3

    const-string/jumbo v3, "no_sms"

    aput-object v3, v1, v7

    const/16 v3, 0x11

    aput-object v5, v1, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "no_sms"

    aput-object v4, v1, v3

    const/16 v3, 0x13

    aput-object v5, v1, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "no_sms"

    aput-object v4, v1, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "no_sms"

    aput-object v4, v1, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "no_sms"

    aput-object v4, v1, v3

    const/16 v3, 0x17

    aput-object v5, v1, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "no_create_windows"

    aput-object v4, v1, v3

    const/16 v3, 0x19

    aput-object v5, v1, v3

    const/16 v3, 0x1a

    aput-object v5, v1, v3

    const/16 v3, 0x1b

    aput-object v5, v1, v3

    const/16 v3, 0x1c

    aput-object v5, v1, v3

    const/16 v3, 0x1d

    aput-object v5, v1, v3

    const/16 v3, 0x1e

    aput-object v5, v1, v3

    const/16 v3, 0x1f

    aput-object v5, v1, v3

    const/16 v3, 0x20

    aput-object v5, v1, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "no_adjust_volume"

    aput-object v4, v1, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "no_adjust_volume"

    aput-object v4, v1, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "no_adjust_volume"

    aput-object v4, v1, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "no_adjust_volume"

    aput-object v4, v1, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "no_adjust_volume"

    aput-object v4, v1, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "no_adjust_volume"

    aput-object v4, v1, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "no_adjust_volume"

    aput-object v4, v1, v3

    const/16 v3, 0x28

    aput-object v5, v1, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "no_share_location"

    aput-object v4, v1, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "no_share_location"

    aput-object v4, v1, v3

    const/16 v3, 0x2b

    aput-object v5, v1, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "no_unmute_microphone"

    aput-object v4, v1, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "no_create_windows"

    aput-object v4, v1, v3

    const/16 v3, 0x2e

    aput-object v5, v1, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "no_config_vpn"

    aput-object v4, v1, v3

    const/16 v3, 0x30

    aput-object v5, v1, v3

    const/16 v3, 0x31

    aput-object v5, v1, v3

    const/16 v3, 0x32

    aput-object v5, v1, v3

    sput-object v1, Landroid/app/AppOpsManager;->sOxygenOpRestrictions:[Ljava/lang/String;

    .line 1084
    const/16 v1, 0x3c

    new-array v1, v1, [Z

    fill-array-data v1, :array_0

    sput-object v1, Landroid/app/AppOpsManager;->sOpAllowSystemRestrictionBypass:[Z

    .line 1151
    new-array v1, v2, [Z

    fill-array-data v1, :array_1

    sput-object v1, Landroid/app/AppOpsManager;->sOxygenOpAllowSystemRestrictionBypass:[Z

    .line 1208
    const/16 v1, 0x3c

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    sput-object v1, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    .line 1275
    new-array v1, v2, [I

    fill-array-data v1, :array_3

    sput-object v1, Landroid/app/AppOpsManager;->sOxygenOpDefaultMode:[I

    .line 1335
    const/16 v1, 0x3c

    new-array v1, v1, [I

    fill-array-data v1, :array_4

    sput-object v1, Landroid/app/AppOpsManager;->sOpDefaultMode_User:[I

    .line 1402
    const/16 v1, 0x3c

    new-array v1, v1, [I

    fill-array-data v1, :array_5

    sput-object v1, Landroid/app/AppOpsManager;->sOpDefaultStrictMode:[I

    .line 1468
    const/16 v1, 0x3c

    new-array v1, v1, [Z

    fill-array-data v1, :array_6

    sput-object v1, Landroid/app/AppOpsManager;->sOpStrictMode:[Z

    .line 1538
    const/16 v1, 0x3c

    new-array v1, v1, [Z

    fill-array-data v1, :array_7

    sput-object v1, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    .line 1608
    new-array v1, v2, [Z

    fill-array-data v1, :array_8

    sput-object v1, Landroid/app/AppOpsManager;->sOxygenOpDisableReset:[Z

    .line 1662
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    .line 1663
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/app/AppOpsManager;->sOpStringToOp:Ljava/util/HashMap;

    .line 1666
    invoke-static {}, Landroid/util/OpFeatures;->isH2()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1667
    sget-object v1, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    array-length v1, v1

    sget v2, Landroid/app/AppOpsManager;->_NUM_OP:I

    if-eq v1, v2, :cond_4

    .line 1668
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpToSwitch length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/app/AppOpsManager;->_NUM_OP:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 226
    :cond_0
    const/16 v1, 0x31

    goto/16 :goto_0

    .line 236
    :cond_1
    const/16 v1, 0x36

    goto/16 :goto_1

    .line 246
    :cond_2
    const/16 v1, 0x3b

    goto/16 :goto_2

    .line 248
    :cond_3
    const/16 v1, 0x3c

    goto/16 :goto_3

    .line 1671
    :cond_4
    sget-object v1, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    array-length v1, v1

    sget v2, Landroid/app/AppOpsManager;->_NUM_OP:I

    if-eq v1, v2, :cond_5

    .line 1672
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpToString length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/app/AppOpsManager;->_NUM_OP:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1675
    :cond_5
    sget-object v1, Landroid/app/AppOpsManager;->sOpToOpString:[Ljava/lang/String;

    array-length v1, v1

    sget v2, Landroid/app/AppOpsManager;->_NUM_OP:I

    if-eq v1, v2, :cond_6

    .line 1676
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpToOpString length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpToOpString:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/app/AppOpsManager;->_NUM_OP:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1679
    :cond_6
    sget-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    array-length v1, v1

    sget v2, Landroid/app/AppOpsManager;->_NUM_OP:I

    if-eq v1, v2, :cond_7

    .line 1680
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpNames length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/app/AppOpsManager;->_NUM_OP:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1683
    :cond_7
    sget-object v1, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    array-length v1, v1

    sget v2, Landroid/app/AppOpsManager;->_NUM_OP:I

    if-eq v1, v2, :cond_8

    .line 1684
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpPerms length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/app/AppOpsManager;->_NUM_OP:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1687
    :cond_8
    sget-object v1, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    array-length v1, v1

    sget v2, Landroid/app/AppOpsManager;->_NUM_OP:I

    if-eq v1, v2, :cond_9

    .line 1688
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpDefaultMode length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/app/AppOpsManager;->_NUM_OP:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1691
    :cond_9
    sget-object v1, Landroid/app/AppOpsManager;->sOpDefaultStrictMode:[I

    array-length v1, v1

    sget v2, Landroid/app/AppOpsManager;->_NUM_OP:I

    if-eq v1, v2, :cond_a

    .line 1692
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpDefaultStrictMode length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpDefaultStrictMode:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/app/AppOpsManager;->_NUM_OP:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1695
    :cond_a
    sget-object v1, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    array-length v1, v1

    sget v2, Landroid/app/AppOpsManager;->_NUM_OP:I

    if-eq v1, v2, :cond_b

    .line 1696
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpDisableReset length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/app/AppOpsManager;->_NUM_OP:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1699
    :cond_b
    sget-object v1, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    array-length v1, v1

    sget v2, Landroid/app/AppOpsManager;->_NUM_OP:I

    if-eq v1, v2, :cond_c

    .line 1700
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpRestrictions length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/app/AppOpsManager;->_NUM_OP:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1703
    :cond_c
    sget-object v1, Landroid/app/AppOpsManager;->sOpAllowSystemRestrictionBypass:[Z

    array-length v1, v1

    sget v2, Landroid/app/AppOpsManager;->_NUM_OP:I

    if-eq v1, v2, :cond_d

    .line 1704
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpAllowSYstemRestrictionsBypass length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/app/AppOpsManager;->_NUM_OP:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1707
    :cond_d
    sget-object v1, Landroid/app/AppOpsManager;->sOpStrictMode:[Z

    array-length v1, v1

    sget v2, Landroid/app/AppOpsManager;->_NUM_OP:I

    if-eq v1, v2, :cond_16

    .line 1708
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpStrictMode length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpStrictMode:[Z

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/app/AppOpsManager;->_NUM_OP:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1711
    :cond_e
    invoke-static {}, Landroid/util/OpFeatures;->isO2()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1712
    sget-object v1, Landroid/app/AppOpsManager;->sOxygenOpToSwitch:[I

    array-length v1, v1

    sget v2, Landroid/app/AppOpsManager;->_NUM_OP:I

    if-eq v1, v2, :cond_f

    .line 1713
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOxygenOpToSwitch length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOxygenOpToSwitch:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/app/AppOpsManager;->_NUM_OP:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1716
    :cond_f
    sget-object v1, Landroid/app/AppOpsManager;->sOxygenOpToString:[Ljava/lang/String;

    array-length v1, v1

    sget v2, Landroid/app/AppOpsManager;->_NUM_OP:I

    if-eq v1, v2, :cond_10

    .line 1717
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOxygenOpToString length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOxygenOpToString:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/app/AppOpsManager;->_NUM_OP:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1720
    :cond_10
    sget-object v1, Landroid/app/AppOpsManager;->sOxygenOpNames:[Ljava/lang/String;

    array-length v1, v1

    sget v2, Landroid/app/AppOpsManager;->_NUM_OP:I

    if-eq v1, v2, :cond_11

    .line 1721
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOxygenOpNames length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOxygenOpNames:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/app/AppOpsManager;->_NUM_OP:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1724
    :cond_11
    sget-object v1, Landroid/app/AppOpsManager;->sOxygenOpPerms:[Ljava/lang/String;

    array-length v1, v1

    sget v2, Landroid/app/AppOpsManager;->_NUM_OP:I

    if-eq v1, v2, :cond_12

    .line 1725
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOxygenOpPerms length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOxygenOpPerms:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/app/AppOpsManager;->_NUM_OP:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1728
    :cond_12
    sget-object v1, Landroid/app/AppOpsManager;->sOxygenOpDefaultMode:[I

    array-length v1, v1

    sget v2, Landroid/app/AppOpsManager;->_NUM_OP:I

    if-eq v1, v2, :cond_13

    .line 1729
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOxygenOpDefaultMode length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOxygenOpDefaultMode:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/app/AppOpsManager;->_NUM_OP:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1732
    :cond_13
    sget-object v1, Landroid/app/AppOpsManager;->sOxygenOpDisableReset:[Z

    array-length v1, v1

    sget v2, Landroid/app/AppOpsManager;->_NUM_OP:I

    if-eq v1, v2, :cond_14

    .line 1733
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOxygenOpDisableReset length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOxygenOpDisableReset:[Z

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/app/AppOpsManager;->_NUM_OP:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1736
    :cond_14
    sget-object v1, Landroid/app/AppOpsManager;->sOxygenOpRestrictions:[Ljava/lang/String;

    array-length v1, v1

    sget v2, Landroid/app/AppOpsManager;->_NUM_OP:I

    if-eq v1, v2, :cond_15

    .line 1737
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOxygenOpRestrictions length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOxygenOpRestrictions:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/app/AppOpsManager;->_NUM_OP:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1740
    :cond_15
    sget-object v1, Landroid/app/AppOpsManager;->sOxygenOpAllowSystemRestrictionBypass:[Z

    array-length v1, v1

    sget v2, Landroid/app/AppOpsManager;->_NUM_OP:I

    if-eq v1, v2, :cond_16

    .line 1741
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOxygenOpAllowSystemRestrictionsBypass length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOxygenOpAllowSystemRestrictionBypass:[Z

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/app/AppOpsManager;->_NUM_OP:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1745
    :cond_16
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    sget v1, Landroid/app/AppOpsManager;->_NUM_OP:I

    if-ge v0, v1, :cond_19

    .line 1746
    sget-object v1, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_17

    .line 1747
    sget-object v1, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    sget-object v2, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1749
    :cond_17
    invoke-static {}, Landroid/util/OpFeatures;->isH2()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1750
    sget-object v1, Landroid/app/AppOpsManager;->sOpToOpString:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_18

    .line 1751
    sget-object v1, Landroid/app/AppOpsManager;->sOpStringToOp:Ljava/util/HashMap;

    sget-object v2, Landroid/app/AppOpsManager;->sOpToOpString:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1745
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1755
    :cond_19
    return-void

    .line 1084
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 1151
    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 1208
    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x0
        0x0
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 1275
    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x0
        0x0
        0x1
        0x1
        0x0
        0x0
        0x0
    .end array-data

    .line 1335
    :array_4
    .array-data 4
        0x4
        0x4
        0x4
        0x0
        0x4
        0x4
        0x4
        0x4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4
        0x4
        0x4
        0x0
        0x0
        0x0
        0x0
        0x4
        0x4
        0x4
        0x4
        0x4
        0x0
        0x4
        0x4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x0
        0x0
        0x4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    .line 1402
    :array_5
    .array-data 4
        0x4
        0x4
        0x4
        0x0
        0x4
        0x4
        0x4
        0x4
        0x0
        0x0
        0x4
        0x0
        0x0
        0x4
        0x4
        0x4
        0x0
        0x0
        0x0
        0x0
        0x4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4
        0x4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4
        0x3
        0x0
        0x0
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x0
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    .line 1468
    :array_6
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    .line 1538
    :array_7
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 1608
    :array_8
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/app/IAppOpsService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/internal/app/IAppOpsService;

    .prologue
    .line 2032
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    .line 2033
    iput-object p1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 2034
    iput-object p2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    .line 2035
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    return-object v0
.end method

.method private buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not allowed to perform "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;
    .locals 2
    .param p0, "service"    # Lcom/android/internal/app/IAppOpsService;

    .prologue
    .line 2402
    const-class v1, Landroid/app/AppOpsManager;

    monitor-enter v1

    .line 2403
    :try_start_0
    sget-object v0, Landroid/app/AppOpsManager;->sToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 2404
    sget-object v0, Landroid/app/AppOpsManager;->sToken:Landroid/os/IBinder;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2411
    :goto_0
    return-object v0

    .line 2407
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    invoke-interface {p0, v0}, Lcom/android/internal/app/IAppOpsService;->getToken(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    sput-object v0, Landroid/app/AppOpsManager;->sToken:Landroid/os/IBinder;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2411
    :goto_1
    :try_start_2
    sget-object v0, Landroid/app/AppOpsManager;->sToken:Landroid/os/IBinder;

    monitor-exit v1

    goto :goto_0

    .line 2412
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 2408
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static isStrictEnable()Z
    .locals 2

    .prologue
    .line 2483
    const-string/jumbo v0, "persist.sys.strict_op_enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isStrictOp(I)Z
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 2491
    sget-object v0, Landroid/app/AppOpsManager;->sOpStrictMode:[Z

    aget-boolean v0, v0, p0

    return v0
.end method

.method public static opAllowSystemBypassRestriction(I)Z
    .locals 1
    .param p0, "op"    # I

    .prologue
    .line 1832
    invoke-static {}, Landroid/util/OpFeatures;->isO2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1833
    sget-object v0, Landroid/app/AppOpsManager;->sOxygenOpAllowSystemRestrictionBypass:[Z

    aget-boolean v0, v0, p0

    .line 1835
    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/app/AppOpsManager;->sOpAllowSystemRestrictionBypass:[Z

    aget-boolean v0, v0, p0

    goto :goto_0
.end method

.method public static opAllowsReset(I)Z
    .locals 3
    .param p0, "op"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1869
    invoke-static {}, Landroid/util/OpFeatures;->isO2()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1870
    sget-object v2, Landroid/app/AppOpsManager;->sOxygenOpDisableReset:[Z

    aget-boolean v2, v2, p0

    if-nez v2, :cond_1

    .line 1872
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1870
    goto :goto_0

    .line 1872
    :cond_2
    sget-object v2, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    aget-boolean v2, v2, p0

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static opToDefaultMode(IZLjava/lang/String;)I
    .locals 2
    .param p0, "op"    # I
    .param p1, "isStrict"    # Z
    .param p2, "appType"    # Ljava/lang/String;

    .prologue
    .line 1846
    const/4 v0, 0x0

    .line 1847
    .local v0, "mode":I
    invoke-static {}, Landroid/util/OpFeatures;->isH2()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1848
    if-eqz p1, :cond_0

    .line 1849
    sget-object v1, Landroid/app/AppOpsManager;->sOpDefaultStrictMode:[I

    aget v1, v1, p0

    .line 1860
    :goto_0
    return v1

    .line 1850
    :cond_0
    if-eqz p2, :cond_1

    const-string/jumbo v1, "system-app"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1851
    :cond_1
    sget-object v1, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    aget v0, v1, p0

    :goto_1
    move v1, v0

    .line 1860
    goto :goto_0

    .line 1855
    :cond_2
    sget-object v1, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    aget v0, v1, p0

    goto :goto_1

    .line 1858
    :cond_3
    sget-object v1, Landroid/app/AppOpsManager;->sOxygenOpDefaultMode:[I

    aget v0, v1, p0

    goto :goto_1
.end method

.method public static opToName(I)Ljava/lang/String;
    .locals 2
    .param p0, "op"    # I

    .prologue
    .line 1774
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const-string v0, "NONE"

    .line 1778
    :goto_0
    return-object v0

    .line 1775
    :cond_0
    invoke-static {}, Landroid/util/OpFeatures;->isO2()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1776
    sget-object v0, Landroid/app/AppOpsManager;->sOxygenOpNames:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_1

    sget-object v0, Landroid/app/AppOpsManager;->sOxygenOpNames:[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1778
    :cond_2
    sget-object v0, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_3

    sget-object v0, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static opToPermission(I)Ljava/lang/String;
    .locals 1
    .param p0, "op"    # I

    .prologue
    .line 1807
    invoke-static {}, Landroid/util/OpFeatures;->isO2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1808
    sget-object v0, Landroid/app/AppOpsManager;->sOxygenOpPerms:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 1810
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static opToRestriction(I)Ljava/lang/String;
    .locals 1
    .param p0, "op"    # I

    .prologue
    .line 1819
    invoke-static {}, Landroid/util/OpFeatures;->isO2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1820
    sget-object v0, Landroid/app/AppOpsManager;->sOxygenOpRestrictions:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 1822
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static opToSwitch(I)I
    .locals 1
    .param p0, "op"    # I

    .prologue
    .line 1762
    invoke-static {}, Landroid/util/OpFeatures;->isO2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1763
    sget-object v0, Landroid/app/AppOpsManager;->sOxygenOpToSwitch:[I

    aget v0, v0, p0

    .line 1765
    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    aget v0, v0, p0

    goto :goto_0
.end method

.method public static strDebugOpToOp(Ljava/lang/String;)I
    .locals 5
    .param p0, "op"    # Ljava/lang/String;

    .prologue
    .line 1786
    invoke-static {}, Landroid/util/OpFeatures;->isO2()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1787
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Landroid/app/AppOpsManager;->sOxygenOpNames:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 1788
    sget-object v2, Landroid/app/AppOpsManager;->sOxygenOpNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    .line 1795
    .end local v0    # "i":I
    .local v1, "i":I
    :goto_1
    return v1

    .line 1787
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1793
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    sget-object v2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 1794
    sget-object v2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v0

    .line 1795
    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 1793
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1799
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown operation string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static strOpToOp(Ljava/lang/String;)I
    .locals 4
    .param p0, "op"    # Ljava/lang/String;

    .prologue
    .line 2168
    sget-object v1, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2169
    .local v0, "val":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 2170
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown operation string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2172
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static stringOpToOp(Ljava/lang/String;)I
    .locals 2
    .param p0, "op"    # Ljava/lang/String;

    .prologue
    .line 2508
    sget-object v1, Landroid/app/AppOpsManager;->sOpStringToOp:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2509
    .local v0, "val":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 2510
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2512
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static stringToMode(Ljava/lang/String;)I
    .locals 1
    .param p0, "permission"    # Ljava/lang/String;

    .prologue
    .line 2496
    const-string v0, "allowed"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2497
    const/4 v0, 0x0

    .line 2503
    :goto_0
    return v0

    .line 2498
    :cond_0
    const-string v0, "ignored"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2499
    const/4 v0, 0x1

    goto :goto_0

    .line 2500
    :cond_1
    const-string v0, "ask"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2501
    const/4 v0, 0x4

    goto :goto_0

    .line 2503
    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method public checkAudioOp(IIILjava/lang/String;)I
    .locals 3
    .param p1, "op"    # I
    .param p2, "stream"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2332
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v0

    .line 2333
    .local v0, "mode":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2334
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p3, p4}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2337
    .end local v0    # "mode":I
    :catch_0
    move-exception v1

    .line 2339
    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public checkAudioOpNoThrow(IIILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # I
    .param p2, "stream"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2349
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2352
    :goto_0
    return v0

    .line 2350
    :catch_0
    move-exception v0

    .line 2352
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkOp(IILjava/lang/String;)I
    .locals 3
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2286
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0

    .line 2287
    .local v0, "mode":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2288
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2291
    .end local v0    # "mode":I
    :catch_0
    move-exception v1

    .line 2293
    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public checkOp(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2192
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkOpNoThrow(IILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2303
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2306
    :goto_0
    return v0

    .line 2304
    :catch_0
    move-exception v0

    .line 2306
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2200
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkOps(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2538
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IAppOpsService;->checkOps(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2541
    :goto_0
    return-void

    .line 2539
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public checkPackage(ILjava/lang/String;)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2317
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/app/IAppOpsService;->checkPackage(ILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 2318
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not belong to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2321
    :catch_0
    move-exception v0

    .line 2322
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Unable to verify package ownership"

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2324
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public finishOp(I)V
    .locals 2
    .param p1, "op"    # I

    .prologue
    .line 2478
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 2479
    return-void
.end method

.method public finishOp(IILjava/lang/String;)V
    .locals 2
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2471
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v1}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2474
    :goto_0
    return-void

    .line 2472
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public finishOp(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2264
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 2265
    return-void
.end method

.method public getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2061
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2064
    :goto_0
    return-object v0

    .line 2062
    :catch_0
    move-exception v0

    .line 2064
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPackagesForOps([I)Ljava/util/List;
    .locals 1
    .param p1, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2045
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IAppOpsService;->getPackagesForOps([I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2048
    :goto_0
    return-object v0

    .line 2046
    :catch_0
    move-exception v0

    .line 2048
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isControlAllowed(ILjava/lang/String;)Z
    .locals 2
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2517
    const/4 v0, 0x1

    .line 2519
    .local v0, "isShow":Z
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/app/IAppOpsService;->isControlAllowed(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2522
    :goto_0
    return v0

    .line 2520
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public noteOp(I)I
    .locals 2
    .param p1, "op"    # I

    .prologue
    .line 2397
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteOp(IILjava/lang/String;)I
    .locals 3
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2372
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v0

    .line 2373
    .local v0, "mode":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2374
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2377
    .end local v0    # "mode":I
    :catch_0
    move-exception v1

    .line 2379
    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public noteOp(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2218
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteOpNoThrow(IILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2389
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->noteOperation(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2392
    :goto_0
    return v0

    .line 2390
    :catch_0
    move-exception v0

    .line 2392
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2226
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public removeOps(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2530
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IAppOpsService;->removeOps(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2533
    :goto_0
    return-void

    .line 2531
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public resetAllModes()V
    .locals 3

    .prologue
    .line 2098
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IAppOpsService;->resetAllModes(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2101
    :goto_0
    return-void

    .line 2099
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setMode(IILjava/lang/String;I)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .prologue
    .line 2070
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2073
    :goto_0
    return-void

    .line 2071
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setRestriction(III[Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "mode"    # I
    .param p4, "exceptionPackages"    # [Ljava/lang/String;

    .prologue
    .line 2089
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2090
    .local v3, "uid":I
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    move v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService;->setAudioRestriction(IIII[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2093
    .end local v3    # "uid":I
    :goto_0
    return-void

    .line 2091
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public startOp(I)I
    .locals 2
    .param p1, "op"    # I

    .prologue
    .line 2459
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/AppOpsManager;->startOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public startOp(IILjava/lang/String;)I
    .locals 3
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2434
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v2}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I

    move-result v0

    .line 2435
    .local v0, "mode":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2436
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2439
    .end local v0    # "mode":I
    :catch_0
    move-exception v1

    .line 2441
    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public startOp(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2246
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->startOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public startOpNoThrow(IILjava/lang/String;)I
    .locals 2
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2451
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v1}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2454
    :goto_0
    return v0

    .line 2452
    :catch_0
    move-exception v0

    .line 2454
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public startOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2254
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 3
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    .prologue
    .line 2122
    iget-object v2, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 2123
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IAppOpsCallback;

    .line 2124
    .local v0, "cb":Lcom/android/internal/app/IAppOpsCallback;
    if-nez v0, :cond_0

    .line 2125
    new-instance v0, Landroid/app/AppOpsManager$1;

    .end local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    invoke-direct {v0, p0, p3}, Landroid/app/AppOpsManager$1;-><init>(Landroid/app/AppOpsManager;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 2135
    .restart local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    iget-object v1, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2138
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, v0}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2141
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 2142
    return-void

    .line 2141
    .end local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 2139
    .restart local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public startWatchingMode(Ljava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    .prologue
    .line 2111
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 2112
    return-void
.end method

.method public stopWatchingMode(Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 3
    .param p1, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    .prologue
    .line 2149
    iget-object v2, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 2150
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IAppOpsCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2151
    .local v0, "cb":Lcom/android/internal/app/IAppOpsCallback;
    if-eqz v0, :cond_0

    .line 2153
    :try_start_1
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, v0}, Lcom/android/internal/app/IAppOpsService;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2157
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 2158
    return-void

    .line 2157
    .end local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 2154
    .restart local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
