.class public interface abstract Landroid/provider/OppoSettings$Qcom_System;
.super Ljava/lang/Object;
.source "OppoSettings.java"


# annotations
.annotation build Landroid/annotation/OppoHook;
    level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;
    note = "QCOM ADD [Originally defined in Settings.System in Settings.java ]"
    property = .enum Landroid/annotation/OppoHook$OppoRomType;->QCOM:Landroid/annotation/OppoHook$OppoRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/OppoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Qcom_System"
.end annotation


# static fields
.field public static final ANC:Ljava/lang/String; = "anc"

.field public static final AUTO_ANSWER_TIMEOUT:Ljava/lang/String; = "auto_answer"

.field public static final DEFAULT_FILE_MANAGER:Ljava/lang/String; = "default_file_manager"

.field public static final DEFAULT_MMS_NOTIFICATION_URI:Landroid/net/Uri;

.field public static final DEFAULT_SUBSCRIPTION:Ljava/lang/String; = "default_subscription"

.field public static final DUALMIC:Ljava/lang/String; = "dualmic"

.field public static final DUMMY_STRING_FOR_PADDING:Ljava/lang/String; = ""

.field public static final MMS_NOTIFICATION_SOUND:Ljava/lang/String; = "mms_notification"

.field public static final MULTI_SIM_DATA_CALL_SUBSCRIPTION:Ljava/lang/String; = "multi_sim_data_call"

.field public static final MULTI_SIM_SMS_SUBSCRIPTION:Ljava/lang/String; = "multi_sim_sms"

.field public static final MULTI_SIM_VOICE_CALL_SUBSCRIPTION:Ljava/lang/String; = "multi_sim_voice_call"

.field public static final MULTI_SIM_VOICE_PROMPT:Ljava/lang/String; = "multi_sim_voice_prompt"

.field public static final SOCKET_DATA_CALL_ENABLE:Ljava/lang/String; = "socket_data_call_enable"

.field public static final USER_PREFERRED_SUBS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 895
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "user_preferred_sub1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "user_preferred_sub2"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/OppoSettings$Qcom_System;->USER_PREFERRED_SUBS:[Ljava/lang/String;

    .line 912
    const-string/jumbo v0, "mms_notification"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/OppoSettings$Qcom_System;->DEFAULT_MMS_NOTIFICATION_URI:Landroid/net/Uri;

    return-void
.end method
