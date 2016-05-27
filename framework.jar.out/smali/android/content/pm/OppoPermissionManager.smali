.class public Landroid/content/pm/OppoPermissionManager;
.super Ljava/lang/Object;
.source "OppoPermissionManager.java"


# static fields
.field public static final ACCEPT:I = 0x0

.field private static final AUTHORITY:Ljava/lang/String; = "com.color.provider.SafeProvider"

.field public static final FIRST_MASK:I = 0x1

.field public static final INVALID_RES:I = 0x3

.field public static final PERMISSIONS_PROVIDER_URI:Landroid/net/Uri;

.field public static final PROMPT:I = 0x2

.field private static final READ_MMS_PERMISSION:Ljava/lang/String; = "android.permission.READ_MMS"

.field public static final REJECT:I = 0x1

.field private static final SEND_MMS_PERMISSION:Ljava/lang/String; = "android.permission.SEND_MMS"

.field private static final WRITE_MMS_PERMISSION:Ljava/lang/String; = "android.permission.WRITE_MMS"

.field public static final sAlwaysInterceptingPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final sInterceptingPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final sPermissionsDefaultChoices:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x12

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    const-string v0, "content://com.color.provider.SafeProvider/pp_permission"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/content/pm/OppoPermissionManager;->PERMISSIONS_PROVIDER_URI:Landroid/net/Uri;

    .line 50
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "android.permission.CALL_PHONE"

    aput-object v1, v0, v3

    const-string v1, "android.permission.READ_CALL_LOG"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "android.permission.READ_CONTACTS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android.permission.READ_SMS"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android.permission.SEND_SMS"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "android.permission.SEND_MMS"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "android.permission.CHANGE_NETWORK_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "android.permission.CHANGE_WIFI_STATE"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "android.permission.CAMERA"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "android.permission.RECORD_AUDIO"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "android.permission.NFC"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "android.permission.WRITE_CALL_LOG"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "android.permission.WRITE_CONTACTS"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "android.permission.WRITE_SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "android.permission.WRITE_MMS"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "android.permission.READ_MMS"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/content/pm/OppoPermissionManager;->sInterceptingPermissions:Ljava/util/List;

    .line 62
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/content/pm/OppoPermissionManager;->sPermissionsDefaultChoices:[I

    .line 64
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.SEND_SMS"

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/content/pm/OppoPermissionManager;->sAlwaysInterceptingPermissions:Ljava/util/List;

    .line 66
    return-void

    .line 62
    :array_0
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
