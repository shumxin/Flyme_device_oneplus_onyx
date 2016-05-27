.class public interface abstract Landroid/provider/OppoSettings$Mtk_System;
.super Ljava/lang/Object;
.source "OppoSettings.java"


# annotations
.annotation build Landroid/annotation/OppoHook;
    level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;
    note = "MTK ADD [Originally defined in Settings.System in Settings.java ]"
    property = .enum Landroid/annotation/OppoHook$OppoRomType;->MTK:Landroid/annotation/OppoHook$OppoRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/OppoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Mtk_System"
.end annotation


# static fields
.field public static final ACCELEROMETER_ROTATION_RESTORE:Ljava/lang/String; = "accelerometer_rotation_restore"

.field public static final AUTO_TIME_GPS:Ljava/lang/String; = "auto_time_gps"

.field public static final BOOT_UP_SELECT_MODE:Ljava/lang/String; = "boot_up_select_mode"

.field public static final BOOT_UP_SELECT_MODE_DEFAULT:I = 0x0

.field public static final CRO_SETTING:Ljava/lang/String; = "cro_setting"

.field public static final CRO_SETTING_DISABLE:J = 0x0L

.field public static final CRO_SETTING_ENABLE:J = 0x1L

.field public static final CURRENT_WALLPAPER_NAME:Ljava/lang/String; = "current_wallpaper_component_name"

.field public static final DATAUSAGE_ON_LOCKSCREEN_SIM1:Ljava/lang/String; = "data_usage_on_lockscreen_sim1"

.field public static final DATAUSAGE_ON_LOCKSCREEN_SIM2:Ljava/lang/String; = "data_usage_on_lockscreen_sim2"

.field public static final DEFAULT_SIM_NOT_SET:J = -0x5L

.field public static final DEFAULT_SIM_NOT_SET_INT:I = -0x5

.field public static final DEFAULT_SIM_SETTING_ALWAYS_ASK:J = -0x1L

.field public static final DEFAULT_VIDEO_CALL_URI:Landroid/net/Uri;

.field public static final DIALOG_SEQUENCE_DEFAULT:I = 0x0

.field public static final DIALOG_SEQUENCE_KEYGUARD:I = 0x1

.field public static final DIALOG_SEQUENCE_SETTINGS:Ljava/lang/String; = "dialog_sequence_settings"

.field public static final DIALOG_SEQUENCE_STK:I = 0x2

.field public static final DUAL_SIM_MODE_SETTING:Ljava/lang/String; = "dual_sim_mode_setting"

.field public static final DUAL_SIM_MODE_SETTING_DEFAULT:I = 0x3

.field public static final ENABLE_INTERNET_CALL:Ljava/lang/String; = "enable_internet_call_value"

.field public static final FONT_SCALE_EXTRALARGE:Ljava/lang/String; = "settings_fontsize_extralarge"

.field public static final FONT_SCALE_LARGE:Ljava/lang/String; = "settings_fontsize_large"

.field public static final FONT_SCALE_SMALL:Ljava/lang/String; = "settings_fontsize_small"

.field public static final GPRS_CONNECTION_MODE_SETTING_DEFAULT:I = -0x1

.field public static final GPRS_CONNECTION_MODE_SIM1:Ljava/lang/String; = "gprs_connection_mode_setting_sim1"

.field public static final GPRS_CONNECTION_MODE_SIM2:Ljava/lang/String; = "gprs_connection_mode_setting_sim2"

.field public static final GPRS_CONNECTION_SETTING:Ljava/lang/String; = "gprs_connection_setting"

.field public static final GPRS_CONNECTION_SETTING_DEFAULT:I = -0x4

.field public static final GPRS_CONNECTION_SIM_SETTING:Ljava/lang/String; = "gprs_connection_sim_setting"

.field public static final GPRS_CONNECTION_SIM_SETTING_NEVER:J = 0x0L

.field public static final GPRS_TRANSFER_SETTING:Ljava/lang/String; = "gprs_transfer_setting"

.field public static final GPRS_TRANSFER_SETTING_DEFAULT:I = 0x1

.field public static final HOO_SETTING:Ljava/lang/String; = "hoo_setting"

.field public static final HOO_SETTING_DISABLE:J = 0x0L

.field public static final HOO_SETTING_ENABLE:J = 0x1L

.field public static final INTER_DIAL_SETTING:Ljava/lang/String; = "international_dialing_key"

.field public static final IPO_SETTING:Ljava/lang/String; = "ipo_setting"

.field public static final IVSR_SETTING:Ljava/lang/String; = "ivsr_setting"

.field public static final IVSR_SETTING_DISABLE:J = 0x0L

.field public static final IVSR_SETTING_ENABLE:J = 0x1L

.field public static final LANDSCAPE_LAUNCHER:Ljava/lang/String; = "landscape_launcher"

.field public static final LOG2SERVER_DIALOG_SHOW:Ljava/lang/String; = "log2server_dialog_show"

.field public static final MTK_RTSP_MAX_UDP_PORT:Ljava/lang/String; = "mtk_rtsp_max_udp_port"

.field public static final MTK_RTSP_MIN_UDP_PORT:Ljava/lang/String; = "mtk_rtsp_min_udp_port"

.field public static final MTK_RTSP_NAME:Ljava/lang/String; = "mtk_rtsp_name"

.field public static final MTK_RTSP_NETINFO:Ljava/lang/String; = "mtk_rtsp_netinfo"

.field public static final MTK_RTSP_TO_NAPID:Ljava/lang/String; = "mtk_rtsp_to_napid"

.field public static final MTK_RTSP_TO_PROXY:Ljava/lang/String; = "mtk_rtsp_to_proxy"

.field public static final OOBE_DISPLAY:Ljava/lang/String; = "oobe_display"

.field public static final OOBE_DISPLAY_DEFAULT:I = 0x0

.field public static final OOBE_DISPLAY_ON:I = 0x1

.field public static final POWER_OFF_ALARM_PACKAGE_NAME:Ljava/lang/String; = "power_off_alarm_package_name"

.field public static final ROAMING_INDICATION_NEEDED:Ljava/lang/String; = "roaming_indication_needed"

.field public static final ROAMING_REMINDER_MODE_SETTING:Ljava/lang/String; = "roaming_reminder_mode_setting"

.field public static final SCREEN_BRIGHTNESS_ECO_MODE:Ljava/lang/String; = "screen_brightness_eco_mode"

.field public static final SCREEN_BRIGHTNESS_ECO_MODE_AUTOMATIC:I = 0x2

.field public static final SELECT_WEB_SEARCH_ENGINE:Ljava/lang/String; = "select_web_search_engine"

.field public static final SHOW_QSG:Ljava/lang/String; = "show_quick_start_guide"

.field public static final SIM_LOCK_STATE_SETTING:Ljava/lang/String; = "sim_lock_state_setting"

.field public static final SINGLE_SIM_MODE_SETTING_DEFAULT:I = 0x1

.field public static final SMS_SIM_SETTING:Ljava/lang/String; = "sms_sim_setting"

.field public static final SMS_SIM_SETTING_AUTO:J = -0x3L

.field public static final TETHER_IPV6_FEATURE:Ljava/lang/String; = "tether_ipv6_feature"

.field public static final USB_TETHERING_TYPE:Ljava/lang/String; = "usb_tethering_type"

.field public static final USB_TETHERING_TYPE_DEFAULT:I = 0x0

.field public static final USB_TETHERING_TYPE_EEM:I = 0x1

.field public static final VIDEO_CALL:Ljava/lang/String; = "video_call"

.field public static final VIDEO_CALL_SIM_SETTING:Ljava/lang/String; = "video_call_sim_setting"

.field public static final VOICE_CALL_REJECT_MODE:Ljava/lang/String; = "voice_call_reject_mode"

.field public static final VOICE_CALL_SIM_SETTING:Ljava/lang/String; = "voice_call_sim_setting"

.field public static final VOICE_CALL_SIM_SETTING_INTERNET:J = -0x2L

.field public static final VOICE_UNLOCK_AND_LAUNCH1:Ljava/lang/String; = "voice_unlock_and_launch1"

.field public static final VOICE_UNLOCK_AND_LAUNCH2:Ljava/lang/String; = "voice_unlock_and_launch2"

.field public static final VOICE_UNLOCK_AND_LAUNCH3:Ljava/lang/String; = "voice_unlock_and_launch3"

.field public static final VOICE_UNLOCK_SCREEN:Ljava/lang/String; = "voice_unlock_screen"

.field public static final VOLUME_FM:Ljava/lang/String; = "volume_fm"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;
        note = "QCOM DEFINED, OMIT ONE"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->MTK:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field

.field public static final VOLUME_MATV:Ljava/lang/String; = "volume_matv"

.field public static final VT_CALL_REJECT_MODE:Ljava/lang/String; = "vt_call_reject_mode"

.field public static final WIFI_CONNECT_AP_TYPE:Ljava/lang/String; = "wifi_ap_connect_type"

.field public static final WIFI_CONNECT_AP_TYPE_AUTO:I = 0x0

.field public static final WIFI_CONNECT_AP_TYPE_MANUL:I = 0x1

.field public static final WIFI_CONNECT_TYPE:Ljava/lang/String; = "wifi_connect_type"

.field public static final WIFI_CONNECT_TYPE_ASK:I = 0x2

.field public static final WIFI_CONNECT_TYPE_AUTO:I = 0x0

.field public static final WIFI_CONNECT_TYPE_MANUL:I = 0x1

.field public static final WIFI_HOTSPOT_AUTO_DISABLE:Ljava/lang/String; = "wifi_hotspot_auto_disable"

.field public static final WIFI_HOTSPOT_AUTO_DISABLE_FOR_FIVE_MINS:I = 0x1

.field public static final WIFI_HOTSPOT_AUTO_DISABLE_FOR_TEN_MINS:I = 0x2

.field public static final WIFI_HOTSPOT_AUTO_DISABLE_OFF:I = 0x0

.field public static final WIFI_HOTSPOT_DEFAULT_CLIENT_NUM:I = 0x8

.field public static final WIFI_HOTSPOT_DEFAULT_START_TIME:I = 0x0

.field public static final WIFI_HOTSPOT_MAX_CLIENT_NUM:Ljava/lang/String; = "wifi_hotspot_max_client_num"

.field public static final WIFI_HOTSPOT_START_TIME:Ljava/lang/String; = "wifi_hotspot_start_time"

.field public static final WIFI_PRIORITY_TYPE:Ljava/lang/String; = "wifi_priority_type"

.field public static final WIFI_PRIORITY_TYPE_DEFAULT:I = 0x0

.field public static final WIFI_PRIORITY_TYPE_MAMUAL:I = 0x1

.field public static final WIFI_SELECT_SSID_ASK:I = 0x2

.field public static final WIFI_SELECT_SSID_AUTO:I = 0x0

.field public static final WIFI_SELECT_SSID_MANUL:I = 0x1

.field public static final WIFI_SELECT_SSID_TYPE:Ljava/lang/String; = "wifi_select_ssid_type"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 449
    const-string/jumbo v0, "video_call"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/OppoSettings$Mtk_System;->DEFAULT_VIDEO_CALL_URI:Landroid/net/Uri;

    return-void
.end method
