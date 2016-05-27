.class public interface abstract Landroid/provider/OppoSettings$Qcom_Global;
.super Ljava/lang/Object;
.source "OppoSettings.java"


# annotations
.annotation build Landroid/annotation/OppoHook;
    level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;
    note = "QCOM ADD [Originally defined in Settings.Global in Settings.java ]"
    property = .enum Landroid/annotation/OppoHook$OppoRomType;->QCOM:Landroid/annotation/OppoHook$OppoRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/OppoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Qcom_Global"
.end annotation


# static fields
.field public static final ASSISTED_GPS_CONFIGURABLE_LIST:Ljava/lang/String; = "assisted_gps_configurable_list"

.field public static final ASSISTED_GPS_NETWORK:Ljava/lang/String; = "assisted_gps_network"

.field public static final ASSISTED_GPS_POSITION_MODE:Ljava/lang/String; = "assisted_gps_position_mode"

.field public static final ASSISTED_GPS_RESET_TYPE:Ljava/lang/String; = "assisted_gps_reset_type"

.field public static final ASSISTED_GPS_SUPL_HOST:Ljava/lang/String; = "assisted_gps_supl_host"

.field public static final ASSISTED_GPS_SUPL_PORT:Ljava/lang/String; = "assisted_gps_supl_port"

.field public static final MULTI_SIM_DATA_CALL_SUBSCRIPTION:Ljava/lang/String; = "multi_sim_data_call"

.field public static final MULTI_SIM_PRIORITY_SUBSCRIPTION:Ljava/lang/String; = "multi_sim_priority"

.field public static final MULTI_SIM_SMS_PROMPT:Ljava/lang/String; = "multi_sim_sms_prompt"

.field public static final MULTI_SIM_SMS_SUBSCRIPTION:Ljava/lang/String; = "multi_sim_sms"

.field public static final MULTI_SIM_USER_PREFERRED_SUBS:[Ljava/lang/String;

.field public static final MULTI_SIM_VOICE_CALL_SUBSCRIPTION:Ljava/lang/String; = "multi_sim_voice_call"

.field public static final MULTI_SIM_VOICE_PROMPT:Ljava/lang/String; = "multi_sim_voice_prompt"

.field public static final TUNE_AWAY_STATUS:Ljava/lang/String; = "tune_away"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1799
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "user_preferred_sub1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "user_preferred_sub2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "user_preferred_sub3"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/OppoSettings$Qcom_Global;->MULTI_SIM_USER_PREFERRED_SUBS:[Ljava/lang/String;

    return-void
.end method
