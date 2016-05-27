.class public interface abstract Landroid/provider/OppoSettings$Mtk_Secure;
.super Ljava/lang/Object;
.source "OppoSettings.java"


# annotations
.annotation build Landroid/annotation/OppoHook;
    level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;
    note = "MTK ADD [Originally defined in Settings.Secure in Settings.java ]"
    property = .enum Landroid/annotation/OppoHook$OppoRomType;->MTK:Landroid/annotation/OppoHook$OppoRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/OppoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Mtk_Secure"
.end annotation


# static fields
.field public static final BATTERY_PERCENTAGE:Ljava/lang/String; = "battery_percentage"

.field public static final DATA_ROAMING_2:Ljava/lang/String; = "data_roaming_2"

.field public static final EPO_AUTO_DOWNLOAD_ON:Ljava/lang/String; = "epo_auto_download_on"

.field public static final EPO_ENABLED:Ljava/lang/String; = "epo_enabled"

.field public static final EPO_ROAMING_DOWNLOAD_ON:Ljava/lang/String; = "epo_roaming_dWownload_on"

.field public static final EPO_SERVER_CODE:Ljava/lang/String; = "epo_server_code"

.field public static final EPO_SERVER_CODE_DEF:Ljava/lang/String; = "epo_server_01"

.field public static final EPO_UPDATE_PERIOD:Ljava/lang/String; = "epo_update_period"

.field public static final EPO_UPDATE_PERIOD_DEF:I = 0x10e0

.field public static final INTERFACE_THROTTLE:Ljava/lang/String; = "interface_throttle_enable"

.field public static final INTERFACE_THROTTLE_RX_VALUE:Ljava/lang/String; = "interface_throttle_rx_value"

.field public static final INTERFACE_THROTTLE_TX_VALUE:Ljava/lang/String; = "interface_throttle_tx_value"

.field public static final LAST_PDP_RX_DATA_STATISTIC:Ljava/lang/String; = "last_pdp_rx_data_statistic"

.field public static final LAST_PDP_TX_DATA_STATISTIC:Ljava/lang/String; = "last_pdp_tx_data_statistic"

.field public static final MOBILE_DATA_DEFAULT:I = 0x0

.field public static final OVERALL_PROXY_AUTHENED:Ljava/lang/String; = "overall_proxy_authened"

.field public static final OVERALL_PROXY_ENABLED:Ljava/lang/String; = "overall_proxy_enabled"

.field public static final OVERALL_PROXY_HOST:Ljava/lang/String; = "overall_proxy_host"

.field public static final OVERALL_PROXY_PORT:Ljava/lang/String; = "overall_proxy_port"

.field public static final OVERALL_PROXY_PWD:Ljava/lang/String; = "overall_proxy_pwd"

.field public static final OVERALL_PROXY_USRNAME:Ljava/lang/String; = "overall_proxy_usrname"

.field public static final WFD_AUTO_CONNECT_ON:Ljava/lang/String; = "wfd_auto_connect_on"

.field public static final WIFIP2P_DEV_NAME:Ljava/lang/String; = "wifip2p_device_name"

.field public static final WIFI_PROXY:Ljava/lang/String; = "wifi_proxy"

.field public static final WIFI_PROXY_EXCLUDE_LIST:Ljava/lang/String; = "wifi_proxy_exclude_list"
