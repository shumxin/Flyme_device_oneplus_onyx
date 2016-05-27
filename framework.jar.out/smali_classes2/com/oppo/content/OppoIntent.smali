.class public Lcom/oppo/content/OppoIntent;
.super Landroid/content/Intent;
.source "OppoIntent.java"


# static fields
.field public static final ACTION_CAMERA_MODE_CHANGE:Ljava/lang/String; = "android.intent.action.CAMERA_MODE_CHANGE"

.field public static final ACTION_CLOSE_NOTIFICATION_DIALOG:Ljava/lang/String; = "android.intent.action.CLOSE_NOTIFICATION_DIALOG"

.field public static final ACTION_DATA_COLLECT_CLEAR:Ljava/lang/String; = "android.intent.action.DATA_COLLECT_CLEAR"

.field public static final ACTION_DATA_DEFAULT_SIM_CHANGED:Ljava/lang/String; = "android.intent.action.DATA_DEFAULT_SIM"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;
        note = "add for mtk phone"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->MTK:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field

.field public static final ACTION_DUAL_SIM_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.DUAL_SIM_MODE"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;
        note = "add for mtk phone"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->MTK:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field

.field public static final ACTION_FILE_ENCRYPT_DECRYPT:Ljava/lang/String; = "oppo.intent.action.decrypt"

.field public static final ACTION_FILE_ENCRYPT_ENCRYPT:Ljava/lang/String; = "oppo.intent.action.encrypt"

.field public static final ACTION_FILE_ENCRYPT_STATE_CHANGED:Ljava/lang/String; = "oppo.intent.action.encrypt.stateChanged"

.field public static final ACTION_GESTUREGUIDE_MODE_CHANGE:Ljava/lang/String; = "oppo.intent.action.GESTUREGUIDE_MODE_CHANGE"

.field public static final ACTION_HOME_MODE_CHANGE:Ljava/lang/String; = "android.intent.action.HOME_MODE_CHANGE"

.field public static final ACTION_LID_STATE_CHANGED:Ljava/lang/String; = "com.oppo.intent.action.LID_STATE_CHANGED"

.field public static final ACTION_MEDIA_SCANNER_SCAN_ALL:Ljava/lang/String; = "oppo.intent.action.MEDIA_SCAN_ALL"

.field public static final ACTION_MEDIA_SCANNER_SCAN_DIRECTORY:Ljava/lang/String; = "oppo.intent.action.MEDIA_SCAN_DIRECTORY"

.field public static final ACTION_OPPO_OTA_UPDATE_FAILED:Ljava/lang/String; = "android.intent.action.OPPO_OTA_UPDATE_FAILED"

.field public static final ACTION_OPPO_OTA_UPDATE_SUCCESSED:Ljava/lang/String; = "android.intent.action.OPPO_OTA_UPDATE_SUCCESSED"

.field public static final ACTION_OPPO_PACKAGE_ADDED:Ljava/lang/String; = "android.intent.action.OPPO_PACKAGE_ADDED"

.field public static final ACTION_OPPO_RECOVER_UPDATE_FAILED:Ljava/lang/String; = "android.intent.action.OPPO_RECOVER_UPDATE_FAILED"

.field public static final ACTION_OPPO_RECOVER_UPDATE_SUCCESSED:Ljava/lang/String; = "android.intent.action.OPPO_RECOVER_UPDATE_SUCCESSED"

.field public static final ACTION_PRE_MEDIA_SHARED:Ljava/lang/String; = "android.intent.action.MEDIA_PRE_SHARED"

.field public static final ACTION_SCREEN_SHOT:Ljava/lang/String; = "oppo.intent.action.SCREEN_SHOT"

.field public static final ACTION_SKIN_CHANGED:Ljava/lang/String; = "android.intent.action.SKIN_CHANGED"

.field public static final ACTION_TRIGGER_PACKAGE:Ljava/lang/String; = "android.intent.action.TRIGGER_PACKAGE"

.field public static final EXTRA_DATA_BRIGHTNESS:Ljava/lang/String; = "LightBreightness"

.field public static final EXTRA_DATA_ID:Ljava/lang/String; = "LightID"

.field public static final EXTRA_DUAL_SIM_MODE:Ljava/lang/String; = "mode"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;
        note = "add for mtk phone"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->MTK:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field

.field public static final EXTRA_LID_STATE:Ljava/lang/String; = "lid_state"

.field public static final INTENT_CAMERA_OPEN_LIGHT:Ljava/lang/String; = "com.oppo.camera.OpenLight"

.field public static final OPPO_FLAG_ACTIVITY_SECURE_POLICY:I = 0x1000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    return-void
.end method
