.class public final Landroid/util/OpFeatures;
.super Ljava/lang/Object;
.source "OpFeatures.java"


# static fields
.field public static final FEATURE_OEM_BUTTON_LIGHT:Ljava/lang/String; = "oem.button.light.support"

.field public static final FEATURE_OEM_HARDWARE_ALERT_SLIDER:Ljava/lang/String; = "oem.hardware.alert.slider"

.field public static final FEATURE_OEM_SDCARD_NOT_SUPPORT:Ljava/lang/String; = "oem.hardware.sdcard.not.support"

.field public static final FEATURE_OEM_VIRTUAL_HW_KEY:Ljava/lang/String; = "oem.virtual.hw.key"

.field private static final H2:Ljava/lang/String; = "CN"

.field private static final O2:Ljava/lang/String; = "OverSeas"

.field private static final OS:Ljava/lang/String;

.field private static final mIsH2:Z

.field private static final mIsO2:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8
    const-string/jumbo v0, "persist.sys.oem.region"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/OpFeatures;->OS:Ljava/lang/String;

    .line 49
    const-string v0, "CN"

    sget-object v1, Landroid/util/OpFeatures;->OS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/util/OpFeatures;->mIsH2:Z

    .line 50
    const-string v0, "OverSeas"

    sget-object v1, Landroid/util/OpFeatures;->OS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/util/OpFeatures;->mIsO2:Z

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isH2()Z
    .locals 1

    .prologue
    .line 57
    sget-boolean v0, Landroid/util/OpFeatures;->mIsH2:Z

    return v0
.end method

.method public static isO2()Z
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Landroid/util/OpFeatures;->mIsO2:Z

    return v0
.end method

.method public static isSupported3Key()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method
