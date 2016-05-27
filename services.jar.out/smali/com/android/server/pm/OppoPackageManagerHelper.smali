.class public Lcom/android/server/pm/OppoPackageManagerHelper;
.super Ljava/lang/Object;
.source "OppoPackageManagerHelper.java"


# static fields
.field private static final COLUMN_NAME_1:Ljava/lang/String; = "version"

.field private static final COLUMN_NAME_2:Ljava/lang/String; = "xml"

.field private static final CONTENT_URI_FILTRATE_APP_LIST:Landroid/net/Uri;

.field private static final COPY_APP_PATH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DATA_MIN_SIZE:J = 0x3200000L

.field private static final DEBUG:Z = true

.field private static final FILTRATE_APP_FEATURE_NAME:Ljava/lang/String; = "oppo.filtrated.app"

.field private static final FILTRATE_APP_NAME:Ljava/lang/String; = "market-filter"

.field private static final KNOWN_MARKET_FILE_PATH:Ljava/lang/String; = "//data//oppo//permission//known_markets.xml"

.field private static final MARKET_ACTION:Ljava/lang/String; = "oppo.intent.action.SafeCenter.FILTER_MARKET"

.field private static final MARKET_EXTRA_IS_ADDNEW:Ljava/lang/String; = "is_addnew"

.field private static final MARKET_EXTRA_IS_BLACK:Ljava/lang/String; = "is_black"

.field private static final MARKET_EXTRA_IS_MANUALOPEN:Ljava/lang/String; = "is_manualopen"

.field private static final MARKET_EXTRA_IS_WHITE:Ljava/lang/String; = "is_white"

.field private static final MARKET_EXTRA_NEW_LIST:Ljava/lang/String; = "new_list"

.field private static final MARKET_EXTRA_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final MARKET_FILTER_FILE_PATH:Ljava/lang/String; = "//data//oppo//permission//market_filter.xml"

.field private static final NOT_UNINSTALL_DIR:Ljava/lang/String; = "/data/system"

.field private static final NOT_UNINSTALL_PATH:Ljava/lang/String; = "/data/system/not_uninstall_packages.xml"

.field private static final NOT_UNINSTALL_SYSTEM_PATH:Ljava/lang/String; = "/system/etc/not_uninstall_packages.xml"

.field public static final OPPO_EXTRA_DEBUG_INFO:Ljava/lang/String; = "oppo_extra_debug_info"

.field public static final OPPO_EXTRA_PID:Ljava/lang/String; = "oppo_extra_pid"

.field public static final OPPO_EXTRA_PKG_NAME:Ljava/lang/String; = "oppo_extra_pkg_name"

.field public static final OPPO_EXTRA_UID:Ljava/lang/String; = "oppo_extra_uid"

.field private static final PRESET_APP_FILE_PATH:Ljava/lang/String; = "//data//oppo//permission//preset_apps.xml"

.field static Pid:I = 0x0

.field private static final STATE_CLOSE:Ljava/lang/String; = "0"

.field private static final STATE_OPEN:Ljava/lang/String; = "1"

.field private static SYSTEM_DEFAULT_PACKAGES:[Ljava/lang/String; = null

.field static final TAG:Ljava/lang/String; = "OppoPackageManager"

.field private static final TAG_LOCAL_VERSION:Ljava/lang/String; = "LocalVersion"

.field private static final TAG_NOT_UNINSTALL:Ljava/lang/String; = "NotUninstall"

.field private static final UID:I = 0x2710

.field static Uid:I

.field private static mBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mCalledPid:I

.field private static mFiltrateAppNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mFiltrateAppSwitch:Z

.field private static mFiltrateMarketNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mForceToSD:Z

.field private static final mForceUnpackNativeLibList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mKnownMarketMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mMarketLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static mNewMarketList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mNotUninstallList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final mOppoShareUid:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mPredexOptList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mTrustApkList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static nearmepackageflag:Ljava/lang/String;

.field private static oppopackageflag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 95
    const-string v0, "com.oppo."

    sput-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->oppopackageflag:Ljava/lang/String;

    .line 96
    const-string v0, "com.nearme."

    sput-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->nearmepackageflag:Ljava/lang/String;

    .line 97
    sput-boolean v2, Lcom/android/server/pm/OppoPackageManagerHelper;->mForceToSD:Z

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->mPredexOptList:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->mForceUnpackNativeLibList:Ljava/util/ArrayList;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->mTrustApkList:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->mOppoShareUid:Ljava/util/ArrayList;

    .line 103
    sput v1, Lcom/android/server/pm/OppoPackageManagerHelper;->Uid:I

    .line 104
    sput v1, Lcom/android/server/pm/OppoPackageManagerHelper;->Pid:I

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->COPY_APP_PATH:Ljava/util/ArrayList;

    .line 114
    sget-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->COPY_APP_PATH:Ljava/util/ArrayList;

    const-string v1, "/system/reserve/"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->COPY_APP_PATH:Ljava/util/ArrayList;

    const-string v1, "/data/reserve/"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->mFiltrateMarketNameList:Ljava/util/ArrayList;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->mFiltrateAppNameList:Ljava/util/ArrayList;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->mBlackList:Ljava/util/ArrayList;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->mWhiteList:Ljava/util/ArrayList;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->mNewMarketList:Ljava/util/ArrayList;

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->mKnownMarketMap:Ljava/util/Map;

    .line 132
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->mMarketLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 143
    const-string v0, "content://com.nearme.romupdate.provider.db/update_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->CONTENT_URI_FILTRATE_APP_LIST:Landroid/net/Uri;

    .line 150
    sput v2, Lcom/android/server/pm/OppoPackageManagerHelper;->mCalledPid:I

    .line 452
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->mNotUninstallList:Ljava/util/ArrayList;

    .line 613
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.browser"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "com.oppo.music"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.oppo.launcher"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.android.contacts"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.oppo.camera"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.oppo.gallery3d"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.oppo.video"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.android.email"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.android.dialer"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->SYSTEM_DEFAULT_PACKAGES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ConfirmPackageXml(Lcom/android/server/pm/Settings;)V
    .locals 1
    .param p0, "mSettings"    # Lcom/android/server/pm/Settings;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-static {v0}, Lcom/android/server/pm/OppoPackageManagerHelper;->parsePackagesXml(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-static {v0}, Lcom/android/server/pm/OppoPackageManagerHelper;->parsePackagesXml(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 251
    :cond_1
    return-void
.end method

.method public static IsFirstBoot(Z)V
    .locals 2
    .param p0, "isFirst"    # Z

    .prologue
    .line 180
    if-nez p0, :cond_0

    .line 181
    const-string v0, "oppo.device.firstboot"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :goto_0
    return-void

    .line 183
    :cond_0
    const-string v0, "OppoPackageManager"

    const-string v1, "packages.xml NOT exists, firstboot!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string v0, "oppo.device.firstboot"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static IsForceUnpackNativeLibList(Ljava/lang/String;)Z
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 159
    sget-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->mForceUnpackNativeLibList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->nearmepackageflag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IsGoogleMarket(II)Z
    .locals 1
    .param p0, "callUid"    # I
    .param p1, "uid"    # I

    .prologue
    .line 167
    if-ne p0, p1, :cond_0

    .line 168
    const/4 v0, 0x1

    .line 170
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IsPredexOptList(Ljava/lang/String;)Z
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 155
    sget-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->mPredexOptList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->oppopackageflag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IsShareUid(Ljava/lang/String;)Z
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 175
    sget-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->mOppoShareUid:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static IsTrustApkList(Ljava/lang/String;)Z
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 163
    sget-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->mTrustApkList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->oppopackageflag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static ParsePackageXml()V
    .locals 9

    .prologue
    .line 254
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v6

    const-string v7, "etc/oppo_package.xml"

    invoke-direct {v3, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 256
    .local v3, "permFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 258
    .local v4, "permReader":Ljava/io/FileReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    .end local v4    # "permReader":Ljava/io/FileReader;
    .local v5, "permReader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 266
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 268
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 269
    .local v1, "eventType":I
    :goto_0
    const/4 v6, 0x1

    if-eq v1, v6, :cond_1

    .line 270
    packed-switch v1, :pswitch_data_0

    .line 293
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    goto :goto_0

    .line 259
    .end local v1    # "eventType":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "permReader":Ljava/io/FileReader;
    .restart local v4    # "permReader":Ljava/io/FileReader;
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v6, "OppoPackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t find or open oppo_package file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    return-void

    .line 275
    .end local v4    # "permReader":Ljava/io/FileReader;
    .restart local v1    # "eventType":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "permReader":Ljava/io/FileReader;
    :pswitch_1
    :try_start_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PredexOptArray"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 276
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 277
    sget-object v6, Lcom/android/server/pm/OppoPackageManagerHelper;->mPredexOptList:Ljava/util/ArrayList;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 295
    .end local v1    # "eventType":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v0

    .line 296
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v6, "OppoPackageManager"

    const-string v7, "Got execption parsing permissions."

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 302
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_3
    if-eqz v5, :cond_2

    .line 303
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_2
    :goto_4
    move-object v4, v5

    .line 308
    .end local v5    # "permReader":Ljava/io/FileReader;
    .restart local v4    # "permReader":Ljava/io/FileReader;
    goto :goto_2

    .line 278
    .end local v4    # "permReader":Ljava/io/FileReader;
    .restart local v1    # "eventType":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "permReader":Ljava/io/FileReader;
    :cond_3
    :try_start_4
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "TrustApkArray"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 279
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 280
    sget-object v6, Lcom/android/server/pm/OppoPackageManagerHelper;->mTrustApkList:Ljava/util/ArrayList;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 297
    .end local v1    # "eventType":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v0

    .line 298
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "OppoPackageManager"

    const-string v7, "Got execption parsing permissions."

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 281
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "eventType":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_4
    :try_start_5
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ForceUnpackNativeLibArray"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 282
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 283
    sget-object v6, Lcom/android/server/pm/OppoPackageManagerHelper;->mForceUnpackNativeLibList:Ljava/util/ArrayList;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 284
    :cond_5
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "OppoShareUid"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 285
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 286
    sget-object v6, Lcom/android/server/pm/OppoPackageManagerHelper;->mOppoShareUid:Ljava/util/ArrayList;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    .line 305
    .end local v1    # "eventType":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_3
    move-exception v0

    .line 306
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 270
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static RestorePresetApk(Lcom/android/server/pm/Settings;Ljava/io/File;)V
    .locals 21
    .param p0, "settings"    # Lcom/android/server/pm/Settings;
    .param p1, "appInstallDir"    # Ljava/io/File;

    .prologue
    .line 189
    sget-object v15, Lcom/android/server/pm/OppoPackageManagerHelper;->COPY_APP_PATH:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 190
    .local v5, "appCopyPath":Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    .local v13, "oppoReserveApkPath":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 192
    const-string v15, "oppo.device.firstboot"

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v15, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 193
    .local v9, "firstBoot":Z
    if-eqz v9, :cond_0

    .line 194
    invoke-virtual {v13}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .local v6, "arr$":[Ljava/io/File;
    array-length v12, v6

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_1
    if-ge v11, v12, :cond_0

    aget-object v4, v6, v11

    .line 197
    .local v4, "apkFile":Ljava/io/File;
    :try_start_0
    const-string v15, "OppoPackageManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "copy apk to /data/app:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-static {}, Lcom/android/server/pm/OppoPackageManagerHelper;->getAvailableDataSize()J

    move-result-wide v16

    .line 199
    .local v16, "val":J
    const-wide/32 v18, 0x3200000

    cmp-long v15, v16, v18

    if-gez v15, :cond_1

    .line 200
    const-string v15, "OppoPackageManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "data size less than 50M, so break! val = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 221
    .end local v16    # "val":J
    :catch_0
    move-exception v8

    .line 222
    .local v8, "ex":Landroid/content/pm/PackageParser$PackageParserException;
    const-string v15, "OppoPackageManager"

    const-string v18, "create firstboot flag file error!!!"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .end local v8    # "ex":Landroid/content/pm/PackageParser$PackageParserException;
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 203
    .restart local v16    # "val":J
    :cond_1
    const/4 v15, 0x2

    :try_start_1
    invoke-static {v4, v15}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v14

    .line 205
    .local v14, "pkg":Landroid/content/pm/PackageParser$PackageLite;
    if-nez v14, :cond_2

    .line 206
    const-string v15, "OppoPackageManager"

    const-string v18, "reserve package null, error!!!"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 209
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v0, v14, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 210
    const-string v15, "OppoPackageManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "apk:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v14, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " has been installed, skip"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 212
    :cond_3
    new-instance v7, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-direct {v7, v0, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 213
    .local v7, "destFile":Ljava/io/File;
    const-string v15, "OppoPackageManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "apk:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v14, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " has NOT been installed, copy it to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "......"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-static {v4, v7}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 217
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    const/16 v18, 0x1a4

    const/16 v19, -0x1

    const/16 v20, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v15, v0, v1, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_1
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 238
    .end local v4    # "apkFile":Ljava/io/File;
    .end local v5    # "appCopyPath":Ljava/lang/String;
    .end local v6    # "arr$":[Ljava/io/File;
    .end local v7    # "destFile":Ljava/io/File;
    .end local v9    # "firstBoot":Z
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "oppoReserveApkPath":Ljava/io/File;
    .end local v14    # "pkg":Landroid/content/pm/PackageParser$PackageLite;
    .end local v16    # "val":J
    :cond_4
    return-void
.end method

.method public static checkIntent(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;IILandroid/content/pm/ResolveInfo;)Landroid/content/pm/ResolveInfo;
    .locals 2
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .param p5, "defaultResolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 602
    const-string v0, "oppo.ct.optr"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerService;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    const-string v0, "com.android.browser"

    const-string v1, "com.android.browser.RealBrowserActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 607
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object p5

    .line 609
    .end local p5    # "defaultResolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    return-object p5
.end method

.method private static checkSystemApp(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Z
    .locals 5
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 720
    const/4 v0, 0x0

    .line 721
    .local v0, "pkgInfo":Landroid/content/pm/PackageInfo;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 723
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v2, :cond_2

    .line 724
    :cond_0
    const-string v2, "OppoPackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exits!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_1
    :goto_0
    return v1

    .line 728
    :cond_2
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 729
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "fromFile"    # Ljava/lang/String;
    .param p1, "toFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 590
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 591
    .local v1, "targetFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 592
    const/4 v2, 0x0

    .line 596
    :goto_0
    return v2

    .line 594
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 595
    .local v0, "sourceFile":Ljava/io/File;
    invoke-static {v0, v1}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 596
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static filterThirdMarket(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;ILjava/util/List;Landroid/os/Handler;)V
    .locals 28
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "flags"    # I
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/pm/PackageManagerService;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 881
    .local p3, "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const-string v24, "OppoPackageManager"

    const-string v25, "filterThirdMarket()---"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    const-string v24, "persist.sys.permission.enable"

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    if-nez v24, :cond_1

    .line 1088
    :cond_0
    :goto_0
    return-void

    .line 890
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/android/server/pm/OppoPackageManagerHelper;->initOppoPackageManagerHelper(Landroid/content/Context;)V

    .line 893
    :try_start_0
    sget-boolean v24, Lcom/android/server/pm/OppoPackageManagerHelper;->mFiltrateAppSwitch:Z

    if-eqz v24, :cond_19

    .line 896
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 897
    .local v7, "callingUid":I
    const/16 v24, 0x2710

    move/from16 v0, v24

    if-ge v7, v0, :cond_2

    .line 899
    const-string v24, "OppoPackageManager"

    const-string v25, "caller is not third app!"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1085
    .end local v7    # "callingUid":I
    :catch_0
    move-exception v8

    .line 1086
    .local v8, "e":Ljava/lang/Exception;
    const-string v24, "OppoPackageManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "filterThirdMarket() Exception: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 905
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v7    # "callingUid":I
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/android/server/pm/OppoPackageManagerHelper;->initData()V

    .line 907
    const/4 v12, 0x0

    .line 908
    .local v12, "isAddNew":Z
    const/16 v16, 0x0

    .line 909
    .local v16, "isSystem":Z
    const/4 v14, 0x0

    .line 910
    .local v14, "isBlack":Z
    const/16 v17, 0x0

    .line 911
    .local v17, "isWhite":Z
    const/4 v15, 0x0

    .line 912
    .local v15, "isManualOpen":Z
    const/4 v13, 0x0

    .line 913
    .local v13, "isBadMarket":Z
    sget-object v24, Lcom/android/server/pm/OppoPackageManagerHelper;->mKnownMarketMap:Ljava/util/Map;

    if-nez v24, :cond_3

    .line 914
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    sput-object v24, Lcom/android/server/pm/OppoPackageManagerHelper;->mKnownMarketMap:Ljava/util/Map;

    .line 918
    :cond_3
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    sget-object v24, Lcom/android/server/pm/OppoPackageManagerHelper;->mBlackList:Ljava/util/ArrayList;

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_4

    sget-object v24, Lcom/android/server/pm/OppoPackageManagerHelper;->mBlackList:Ljava/util/ArrayList;

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v10, v0, :cond_4

    .line 919
    const-string v25, "OppoPackageManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "mBlackList["

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v26, "]="

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v24, Lcom/android/server/pm/OppoPackageManagerHelper;->mBlackList:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 922
    :cond_4
    const/16 v19, 0x0

    .local v19, "j":I
    :goto_2
    sget-object v24, Lcom/android/server/pm/OppoPackageManagerHelper;->mWhiteList:Ljava/util/ArrayList;

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_5

    sget-object v24, Lcom/android/server/pm/OppoPackageManagerHelper;->mWhiteList:Ljava/util/ArrayList;

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_5

    .line 923
    const-string v25, "OppoPackageManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "mWhiteList["

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v26, "]="

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v24, Lcom/android/server/pm/OppoPackageManagerHelper;->mWhiteList:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 934
    :cond_5
    const-string v24, "OppoPackageManager"

    const-string v25, "mKnownMarketMap: "

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    sget-object v24, Lcom/android/server/pm/OppoPackageManagerHelper;->mKnownMarketMap:Ljava/util/Map;

    invoke-interface/range {v24 .. v24}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 936
    .local v18, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_6

    .line 937
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 938
    .local v20, "name":Ljava/lang/String;
    sget-object v24, Lcom/android/server/pm/OppoPackageManagerHelper;->mKnownMarketMap:Ljava/util/Map;

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 939
    .local v23, "state":Ljava/lang/String;
    const-string v24, "OppoPackageManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "mKnownMarketMap - "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 943
    .end local v20    # "name":Ljava/lang/String;
    .end local v23    # "state":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/android/server/pm/PackageManagerService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 944
    .local v4, "MarketName":[Ljava/lang/String;
    array-length v0, v4

    move/from16 v24, v0

    if-lez v24, :cond_0

    .line 948
    const/16 v19, 0x0

    :goto_4
    array-length v0, v4

    move/from16 v24, v0

    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_c

    .line 950
    const-string v24, "OppoPackageManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "The MarketName["

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "] is "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    aget-object v26, v4, v19

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " called by Binder.getCallingUid()= "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    sget-object v24, Lcom/android/server/pm/OppoPackageManagerHelper;->mKnownMarketMap:Ljava/util/Map;

    invoke-interface/range {v24 .. v24}, Ljava/util/Map;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_7

    sget-object v24, Lcom/android/server/pm/OppoPackageManagerHelper;->mKnownMarketMap:Ljava/util/Map;

    aget-object v25, v4, v19

    invoke-interface/range {v24 .. v25}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v24

    if-nez v24, :cond_e

    .line 957
    :cond_7
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    aget-object v25, v4, v19

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v21

    .line 958
    .local v21, "pInfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v24, v0

    if-eqz v24, :cond_d

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v24, v0

    and-int/lit8 v24, v24, 0x1

    if-nez v24, :cond_d

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v24, v0

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0x80

    move/from16 v24, v0

    if-nez v24, :cond_d

    .line 962
    const-string v24, "OppoPackageManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Add new "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    aget-object v26, v4, v19

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " to map..."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    sget-object v24, Lcom/android/server/pm/OppoPackageManagerHelper;->mNewMarketList:Ljava/util/ArrayList;

    aget-object v25, v4, v19

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 965
    const/4 v12, 0x1

    .line 982
    .end local v21    # "pInfo":Landroid/content/pm/PackageInfo;
    :cond_8
    :goto_5
    :try_start_3
    sget-object v24, Lcom/android/server/pm/OppoPackageManagerHelper;->mBlackList:Ljava/util/ArrayList;

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_9

    .line 983
    sget-object v24, Lcom/android/server/pm/OppoPackageManagerHelper;->mBlackList:Ljava/util/ArrayList;

    aget-object v25, v4, v19

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    .line 985
    :cond_9
    sget-object v24, Lcom/android/server/pm/OppoPackageManagerHelper;->mWhiteList:Ljava/util/ArrayList;

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_a

    .line 986
    sget-object v24, Lcom/android/server/pm/OppoPackageManagerHelper;->mWhiteList:Ljava/util/ArrayList;

    aget-object v25, v4, v19

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    .line 988
    :cond_a
    sget-object v24, Lcom/android/server/pm/OppoPackageManagerHelper;->mFiltrateMarketNameList:Ljava/util/ArrayList;

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_b

    .line 989
    sget-object v24, Lcom/android/server/pm/OppoPackageManagerHelper;->mFiltrateMarketNameList:Ljava/util/ArrayList;

    aget-object v25, v4, v19

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    .line 993
    :cond_b
    const-string v24, "OppoPackageManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Filter result: isBlack = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", isWhite = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", isManualOpen = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", isBadMarket = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", isSystem = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", isAddNew = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    or-int v24, v16, v14

    if-eqz v24, :cond_f

    .line 1002
    :cond_c
    if-eqz v16, :cond_10

    .line 1004
    const-string v24, "OppoPackageManager"

    const-string v25, "System or Preset, so return."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 967
    .restart local v21    # "pInfo":Landroid/content/pm/PackageInfo;
    :cond_d
    const/16 v16, 0x1

    goto/16 :goto_5

    .line 969
    .end local v21    # "pInfo":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v8

    .line 970
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v8}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_5

    .line 973
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_e
    sget-object v24, Lcom/android/server/pm/OppoPackageManagerHelper;->mKnownMarketMap:Ljava/util/Map;

    aget-object v25, v4, v19

    invoke-interface/range {v24 .. v25}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 974
    .restart local v23    # "state":Ljava/lang/String;
    const-string v24, "1"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_8

    .line 976
    const-string v24, "OppoPackageManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v26, v4, v19

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " is open state."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    const/4 v15, 0x1

    goto/16 :goto_5

    .line 948
    .end local v23    # "state":Ljava/lang/String;
    :cond_f
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_4

    .line 1010
    :cond_10
    if-eqz v14, :cond_12

    .line 1011
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->clear()V

    .line 1012
    array-length v0, v4

    move/from16 v24, v0

    if-lez v24, :cond_11

    const/16 v24, 0x0

    aget-object v24, v4, v24

    :goto_6
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v25

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, p2

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v22

    .line 1013
    .local v22, "pkgInfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1012
    .end local v22    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_11
    const-string v24, ""

    goto :goto_6

    .line 1018
    :cond_12
    if-nez v17, :cond_0

    .line 1022
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 1023
    .local v6, "calledPid":I
    sget v24, Lcom/android/server/pm/OppoPackageManagerHelper;->mCalledPid:I

    move/from16 v0, v24

    if-eq v0, v6, :cond_13

    if-nez v15, :cond_14

    const/16 v24, 0x1

    :goto_7
    or-int v24, v24, v12

    if-eqz v24, :cond_13

    .line 1025
    const-string v24, "OppoPackageManager"

    const-string v25, "sendBroadcastMarketFilted().."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    sput v6, Lcom/android/server/pm/OppoPackageManagerHelper;->mCalledPid:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1030
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    .line 1031
    .local v5, "am":Landroid/app/IActivityManager;
    new-instance v11, Landroid/content/Intent;

    const-string v24, "oppo.intent.action.SafeCenter.FILTER_MARKET"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1032
    .local v11, "intent":Landroid/content/Intent;
    const-string v25, "package_name"

    array-length v0, v4

    move/from16 v24, v0

    if-lez v24, :cond_15

    const/16 v24, 0x0

    aget-object v24, v4, v24

    :goto_8
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1033
    const-string v24, "is_black"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1034
    const-string v24, "is_white"

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1035
    const-string v24, "is_addnew"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1036
    const-string v24, "is_manualopen"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1037
    const-string v24, "new_list"

    sget-object v25, Lcom/android/server/pm/OppoPackageManagerHelper;->mNewMarketList:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1039
    const-string v24, "OppoPackageManager"

    const-string v25, "sendBroadcastMarketFilted() send before."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    new-instance v24, Lcom/android/server/pm/OppoPackageManagerHelper$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/android/server/pm/OppoPackageManagerHelper$1;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    const-wide/16 v26, 0x32

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1050
    const-string v24, "OppoPackageManager"

    const-string v25, "sendBroadcastMarketFilted() send after."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1058
    .end local v5    # "am":Landroid/app/IActivityManager;
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_13
    :goto_9
    if-nez v12, :cond_0

    .line 1063
    if-nez v15, :cond_17

    .line 1064
    :try_start_5
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->clear()V

    .line 1065
    array-length v0, v4

    move/from16 v24, v0

    if-lez v24, :cond_16

    const/16 v24, 0x0

    aget-object v24, v4, v24

    :goto_a
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v25

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, p2

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v22

    .line 1066
    .restart local v22    # "pkgInfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1023
    .end local v22    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_14
    const/16 v24, 0x0

    goto/16 :goto_7

    .line 1032
    .restart local v5    # "am":Landroid/app/IActivityManager;
    .restart local v11    # "intent":Landroid/content/Intent;
    :cond_15
    const/16 v24, 0x0

    goto/16 :goto_8

    .line 1052
    .end local v5    # "am":Landroid/app/IActivityManager;
    .end local v11    # "intent":Landroid/content/Intent;
    :catch_2
    move-exception v9

    .line 1053
    .local v9, "ex":Ljava/lang/Exception;
    const-string v24, "OppoPackageManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "sendBroadcastMarketFilted() Exception: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 1065
    .end local v9    # "ex":Ljava/lang/Exception;
    :cond_16
    const-string v24, ""

    goto :goto_a

    .line 1071
    :cond_17
    if-eqz v13, :cond_0

    .line 1072
    const/4 v10, 0x0

    :goto_b
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v10, v0, :cond_0

    .line 1073
    sget-object v25, Lcom/android/server/pm/OppoPackageManagerHelper;->mFiltrateAppNameList:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/pm/PackageInfo;

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_18

    .line 1075
    const-string v25, "OppoPackageManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "The "

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/pm/PackageInfo;

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v26, " is filtrated!!!"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1072
    :cond_18
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    .line 1083
    .end local v4    # "MarketName":[Ljava/lang/String;
    .end local v6    # "calledPid":I
    .end local v7    # "callingUid":I
    .end local v10    # "i":I
    .end local v12    # "isAddNew":Z
    .end local v13    # "isBadMarket":Z
    .end local v14    # "isBlack":Z
    .end local v15    # "isManualOpen":Z
    .end local v16    # "isSystem":Z
    .end local v17    # "isWhite":Z
    .end local v18    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v19    # "j":I
    :cond_19
    const-string v24, "OppoPackageManager"

    const-string v25, "OppoPackageManagerHelper do not hasSystemFeature oppo.filtrated.app !!!"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0
.end method

.method public static findCompSet([Ljava/lang/String;Lcom/android/server/pm/PreferredActivity;)[Landroid/content/ComponentName;
    .locals 14
    .param p0, "cp"    # [Ljava/lang/String;
    .param p1, "pa"    # Lcom/android/server/pm/PreferredActivity;

    .prologue
    .line 653
    array-length v11, p0

    add-int/lit8 v7, v11, -0x1

    .line 654
    .local v7, "num":I
    new-array v10, v7, [Landroid/content/ComponentName;

    .line 655
    .local v10, "setNew":[Landroid/content/ComponentName;
    iget-object v11, p1, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v9, v11, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    .line 656
    .local v9, "rmCompName":Landroid/content/ComponentName;
    array-length v3, p0

    .line 657
    .local v3, "len":I
    const/4 v5, 0x0

    .line 658
    .local v5, "n":I
    const/4 v4, 0x0

    .line 659
    .local v4, "m":I
    const/4 v2, 0x0

    .local v2, "i":I
    move v6, v5

    .end local v5    # "n":I
    .local v6, "n":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 660
    aget-object v11, p0, v2

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 661
    .local v1, "comp":[Ljava/lang/String;
    const/4 v11, 0x0

    aget-object v11, v1, v11

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 662
    const-string v11, "OppoPackageManager"

    const-string v12, "skip remove app set"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 659
    .end local v6    # "n":I
    .restart local v5    # "n":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v6, v5

    .end local v5    # "n":I
    .restart local v6    # "n":I
    goto :goto_0

    .line 665
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 666
    const/4 v11, 0x0

    aget-object v8, v1, v11

    .line 667
    .local v8, "pkgName":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    aget-object v12, v1, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v12, v1, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 668
    .local v0, "clsName":Ljava/lang/String;
    const-string v11, "OppoPackageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "findCompSet pkgName = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "clsName ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    if-gt v4, v7, :cond_2

    .line 670
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "n":I
    .restart local v5    # "n":I
    new-instance v11, Landroid/content/ComponentName;

    invoke-direct {v11, v8, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v11, v10, v6

    goto :goto_1

    .line 674
    .end local v0    # "clsName":Ljava/lang/String;
    .end local v1    # "comp":[Ljava/lang/String;
    .end local v5    # "n":I
    .end local v8    # "pkgName":Ljava/lang/String;
    .restart local v6    # "n":I
    :cond_1
    return-object v10

    .restart local v0    # "clsName":Ljava/lang/String;
    .restart local v1    # "comp":[Ljava/lang/String;
    .restart local v8    # "pkgName":Ljava/lang/String;
    :cond_2
    move v5, v6

    .end local v6    # "n":I
    .restart local v5    # "n":I
    goto :goto_1
.end method

.method public static findSystemDefaultApp([Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "cp"    # [Ljava/lang/String;

    .prologue
    .line 636
    const/4 v3, 0x0

    .line 637
    .local v3, "mComponent":Ljava/lang/String;
    array-length v2, p0

    .line 638
    .local v2, "len":I
    sget-object v5, Lcom/android/server/pm/OppoPackageManagerHelper;->SYSTEM_DEFAULT_PACKAGES:[Ljava/lang/String;

    array-length v4, v5

    .line 639
    .local v4, "total":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 640
    const-string v5, "OppoPackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " i ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mComponent= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p0, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v4, :cond_0

    .line 642
    aget-object v5, p0, v0

    sget-object v6, Lcom/android/server/pm/OppoPackageManagerHelper;->SYSTEM_DEFAULT_PACKAGES:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 643
    aget-object v3, p0, v0

    .line 644
    const-string v5, "OppoPackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findSystemDefaultApp find: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 641
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 649
    .end local v1    # "j":I
    :cond_2
    return-object v3
.end method

.method private static getAvailableDataSize()J
    .locals 8

    .prologue
    .line 750
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    .line 751
    .local v4, "dataDir":Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 752
    .local v5, "mStatFs":Landroid/os/StatFs;
    if-nez v5, :cond_0

    .line 753
    const-wide/16 v6, 0x0

    .line 757
    :goto_0
    return-wide v6

    .line 755
    :cond_0
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    .line 756
    .local v2, "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    .line 757
    .local v0, "availableBlocksSize":J
    mul-long v6, v2, v0

    goto :goto_0
.end method

.method private static getKnownMarketMap()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1092
    const-string v4, "OppoPackageManager"

    const-string v5, "getKnownMarketMap()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    const/4 v3, 0x0

    .line 1096
    .local v3, "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v4, Lcom/android/server/pm/OppoPackageManagerHelper;->mMarketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1098
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v4, "//data//oppo//permission//known_markets.xml"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1099
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1100
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1101
    .local v2, "inputStream":Ljava/io/FileInputStream;
    invoke-static {v2}, Lcom/android/server/pm/OppoPackageManagerHelper;->readMarketsFromXML(Ljava/io/FileInputStream;)Ljava/util/Map;

    move-result-object v3

    .line 1103
    if-eqz v2, :cond_0

    .line 1104
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1112
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    :cond_0
    sget-object v4, Lcom/android/server/pm/OppoPackageManagerHelper;->mMarketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1115
    .end local v1    # "file":Ljava/io/File;
    :goto_0
    return-object v3

    .line 1108
    :catch_0
    move-exception v0

    .line 1109
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "OppoPackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getKnownMarketMap(), Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1112
    sget-object v4, Lcom/android/server/pm/OppoPackageManagerHelper;->mMarketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    sget-object v5, Lcom/android/server/pm/OppoPackageManagerHelper;->mMarketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method public static getProcessNameByPid(I)Ljava/lang/String;
    .locals 8
    .param p0, "pid"    # I

    .prologue
    .line 425
    const-string v5, ""

    .line 427
    .local v5, "processName":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 430
    .local v0, "am":Landroid/app/IActivityManager;
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 432
    .local v4, "procList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 434
    .local v3, "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne p0, v6, :cond_0

    .line 435
    iget-object v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v4    # "procList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_1
    :goto_0
    return-object v5

    .line 439
    :catch_0
    move-exception v1

    .line 440
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "OppoPackageManager"

    const-string v7, "Exception had happen!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getVersionNumber(Ljava/lang/String;)I
    .locals 13
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 538
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 539
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 540
    const/4 v9, -0x1

    .line 579
    :goto_0
    return v9

    .line 542
    :cond_0
    const/4 v9, -0x1

    .line 543
    .local v9, "versionNumber":I
    const/4 v4, 0x0

    .line 544
    .local v4, "stream":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 546
    .local v6, "success":Z
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .local v5, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 548
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v10, 0x0

    invoke-interface {v3, v5, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 549
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 550
    .local v1, "eventType":I
    :goto_1
    const/4 v10, 0x1

    if-eq v1, v10, :cond_2

    if-nez v6, :cond_2

    .line 551
    packed-switch v1, :pswitch_data_0

    .line 564
    :cond_1
    :goto_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_1

    .line 553
    :pswitch_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 554
    .local v7, "tag":Ljava/lang/String;
    const-string v10, "LocalVersion"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 555
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 556
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    .line 557
    .local v8, "value":Ljava/lang/String;
    if-eqz v8, :cond_1

    const-string v10, ""

    if-eq v8, v10, :cond_1

    .line 558
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v9

    .line 559
    const/4 v6, 0x1

    goto :goto_2

    .line 571
    .end local v7    # "tag":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_2
    if-eqz v5, :cond_3

    .line 572
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 574
    :cond_3
    const/4 v6, 0x0

    move-object v4, v5

    .line 577
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    goto :goto_0

    .line 575
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 576
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 578
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    goto :goto_0

    .line 566
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "eventType":I
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v0

    .line 567
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    const/4 v9, -0x1

    .line 568
    :try_start_3
    const-string v10, "OppoPackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Couldn\'t getVersionNumber from file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 571
    if-eqz v4, :cond_4

    .line 572
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 574
    :cond_4
    const/4 v6, 0x0

    goto :goto_0

    .line 575
    :catch_2
    move-exception v0

    .line 576
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 570
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 571
    :goto_4
    if-eqz v4, :cond_5

    .line 572
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 574
    :cond_5
    const/4 v6, 0x0

    .line 577
    :goto_5
    throw v10

    .line 575
    :catch_3
    move-exception v0

    .line 576
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 570
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v10

    move-object v4, v5

    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 566
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    move-object v4, v5

    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 551
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static inNotUninstallList(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 583
    if-nez p0, :cond_0

    const-string v0, ""

    if-eq p0, v0, :cond_1

    .line 584
    :cond_0
    sget-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->mNotUninstallList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 586
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static initData()V
    .locals 9

    .prologue
    .line 774
    sget-object v6, Lcom/android/server/pm/OppoPackageManagerHelper;->mFiltrateMarketNameList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 775
    sget-object v6, Lcom/android/server/pm/OppoPackageManagerHelper;->mFiltrateMarketNameList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 777
    :cond_0
    sget-object v6, Lcom/android/server/pm/OppoPackageManagerHelper;->mFiltrateAppNameList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 778
    sget-object v6, Lcom/android/server/pm/OppoPackageManagerHelper;->mFiltrateAppNameList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 780
    :cond_1
    sget-object v6, Lcom/android/server/pm/OppoPackageManagerHelper;->mBlackList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 781
    sget-object v6, Lcom/android/server/pm/OppoPackageManagerHelper;->mBlackList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 783
    :cond_2
    sget-object v6, Lcom/android/server/pm/OppoPackageManagerHelper;->mWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 784
    sget-object v6, Lcom/android/server/pm/OppoPackageManagerHelper;->mWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 786
    :cond_3
    sget-object v6, Lcom/android/server/pm/OppoPackageManagerHelper;->mKnownMarketMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 787
    sget-object v6, Lcom/android/server/pm/OppoPackageManagerHelper;->mKnownMarketMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 789
    :cond_4
    sget-object v6, Lcom/android/server/pm/OppoPackageManagerHelper;->mNewMarketList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 790
    sget-object v6, Lcom/android/server/pm/OppoPackageManagerHelper;->mNewMarketList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 793
    :cond_5
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 794
    .local v4, "sb":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .line 796
    .local v5, "tempstr":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v6, "//data//oppo//permission//market_filter.xml"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 797
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 798
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 799
    .local v3, "inputStream":Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 800
    .local v0, "br":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 801
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 811
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 812
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v6, "OppoPackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "We can not get Filtrate app data from provider, because of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 817
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 803
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    :cond_6
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/pm/OppoPackageManagerHelper;->parserFilterAppList(Ljava/lang/String;)V

    .line 805
    if-eqz v3, :cond_7

    .line 806
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 810
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    :cond_7
    invoke-static {}, Lcom/android/server/pm/OppoPackageManagerHelper;->getKnownMarketMap()Ljava/util/Map;

    move-result-object v6

    sput-object v6, Lcom/android/server/pm/OppoPackageManagerHelper;->mKnownMarketMap:Ljava/util/Map;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 814
    .end local v2    # "file":Ljava/io/File;
    :catchall_0
    move-exception v6

    throw v6
.end method

.method private static initDir(Ljava/lang/String;)V
    .locals 9
    .param p0, "dir"    # Ljava/lang/String;

    .prologue
    .line 461
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 463
    .local v2, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 464
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 465
    const-string v6, "/system/etc/not_uninstall_packages.xml"

    const-string v7, "/data/system/not_uninstall_packages.xml"

    invoke-static {v6, v7}, Lcom/android/server/pm/OppoPackageManagerHelper;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 467
    :cond_1
    const-string v6, "/system/etc/not_uninstall_packages.xml"

    const-string v7, "/data/system/not_uninstall_packages.xml"

    invoke-static {v6, v7}, Lcom/android/server/pm/OppoPackageManagerHelper;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 468
    .local v3, "isCopy":Z
    if-nez v3, :cond_0

    .line 470
    const-string v6, "/data/system/not_uninstall_packages.xml"

    invoke-static {v6}, Lcom/android/server/pm/OppoPackageManagerHelper;->getVersionNumber(Ljava/lang/String;)I

    move-result v0

    .line 471
    .local v0, "dataVersion":I
    const-string v6, "/system/etc/not_uninstall_packages.xml"

    invoke-static {v6}, Lcom/android/server/pm/OppoPackageManagerHelper;->getVersionNumber(Ljava/lang/String;)I

    move-result v4

    .line 473
    .local v4, "localVersion":I
    if-le v4, v0, :cond_0

    .line 474
    new-instance v5, Ljava/io/File;

    const-string v6, "/data/system/not_uninstall_packages.xml"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 475
    .local v5, "targetFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 476
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 478
    :cond_2
    const-string v6, "/system/etc/not_uninstall_packages.xml"

    const-string v7, "/data/system/not_uninstall_packages.xml"

    invoke-static {v6, v7}, Lcom/android/server/pm/OppoPackageManagerHelper;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 482
    .end local v0    # "dataVersion":I
    .end local v3    # "isCopy":Z
    .end local v4    # "localVersion":I
    .end local v5    # "targetFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 483
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "OppoPackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mkdir failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static initNotUnintall()V
    .locals 1

    .prologue
    .line 456
    const-string v0, "/data/system"

    invoke-static {v0}, Lcom/android/server/pm/OppoPackageManagerHelper;->initDir(Ljava/lang/String;)V

    .line 457
    invoke-static {}, Lcom/android/server/pm/OppoPackageManagerHelper;->parseNotUninstallXml()V

    .line 458
    return-void
.end method

.method private static initOppoPackageManagerHelper(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 762
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 763
    .local v0, "pms":Landroid/content/pm/PackageManager;
    const-string v1, "oppo.filtrated.app"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 765
    const-string v1, "OppoPackageManager"

    const-string v2, "OppoPackageManagerHelper hasSystemFeature oppo.filtrated.app"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/pm/OppoPackageManagerHelper;->mFiltrateAppSwitch:Z

    .line 771
    :goto_0
    return-void

    .line 769
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/pm/OppoPackageManagerHelper;->mFiltrateAppSwitch:Z

    goto :goto_0
.end method

.method public static isSystemDefaultActivities(Lcom/android/server/pm/PreferredActivity;)Z
    .locals 6
    .param p0, "pa"    # Lcom/android/server/pm/PreferredActivity;

    .prologue
    .line 626
    const/4 v4, 0x0

    .line 627
    .local v4, "result":Z
    sget-object v0, Lcom/android/server/pm/OppoPackageManagerHelper;->SYSTEM_DEFAULT_PACKAGES:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 628
    .local v3, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v5, v5, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 629
    const/4 v4, 0x1

    .line 633
    .end local v3    # "name":Ljava/lang/String;
    :cond_0
    return v4

    .line 627
    .restart local v3    # "name":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static parseNotUninstallXml()V
    .locals 10

    .prologue
    .line 488
    new-instance v2, Ljava/io/File;

    const-string v7, "/data/system/not_uninstall_packages.xml"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 489
    .local v2, "file":Ljava/io/File;
    const/4 v4, 0x0

    .line 491
    .local v4, "permReader":Ljava/io/FileReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    .end local v4    # "permReader":Ljava/io/FileReader;
    .local v5, "permReader":Ljava/io/FileReader;
    sget-object v7, Lcom/android/server/pm/OppoPackageManagerHelper;->mNotUninstallList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 498
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 499
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 500
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 501
    .local v1, "eventType":I
    :goto_0
    const/4 v7, 0x1

    if-eq v1, v7, :cond_1

    .line 502
    packed-switch v1, :pswitch_data_0

    .line 520
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    goto :goto_0

    .line 492
    .end local v1    # "eventType":I
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "permReader":Ljava/io/FileReader;
    .restart local v4    # "permReader":Ljava/io/FileReader;
    :catch_0
    move-exception v0

    .line 493
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v7, "OppoPackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t find or open oppo_package file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    return-void

    .line 507
    .end local v4    # "permReader":Ljava/io/FileReader;
    .restart local v1    # "eventType":I
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "permReader":Ljava/io/FileReader;
    :pswitch_1
    :try_start_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "NotUninstall"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 508
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 509
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    .line 510
    .local v6, "value":Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string v7, ""

    if-eq v6, v7, :cond_0

    .line 511
    sget-object v7, Lcom/android/server/pm/OppoPackageManagerHelper;->mNotUninstallList:Ljava/util/ArrayList;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 522
    .end local v1    # "eventType":I
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "value":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 523
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v7, "OppoPackageManager"

    const-string v8, "Got execption parsing permissions."

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 529
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_3
    if-eqz v5, :cond_2

    .line 530
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_2
    :goto_4
    move-object v4, v5

    .line 535
    .end local v5    # "permReader":Ljava/io/FileReader;
    .restart local v4    # "permReader":Ljava/io/FileReader;
    goto :goto_2

    .line 524
    .end local v4    # "permReader":Ljava/io/FileReader;
    .restart local v5    # "permReader":Ljava/io/FileReader;
    :catch_2
    move-exception v0

    .line 525
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "OppoPackageManager"

    const-string v8, "Got execption parsing permissions."

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 532
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 533
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 502
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static parsePackagesXml(Ljava/io/File;)Z
    .locals 13
    .param p0, "xmlFile"    # Ljava/io/File;

    .prologue
    const/4 v9, 0x0

    .line 311
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 334
    :goto_0
    return v9

    .line 315
    :cond_0
    const/4 v2, 0x0

    .line 317
    .local v2, "input":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    .end local v2    # "input":Ljava/io/InputStream;
    .local v3, "input":Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v5

    .line 319
    .local v5, "spf":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v5}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    .line 320
    .local v4, "saxParser":Ljavax/xml/parsers/SAXParser;
    new-instance v10, Lorg/xml/sax/helpers/DefaultHandler;

    invoke-direct {v10}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    invoke-virtual {v4, v3, v10}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 321
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 322
    const/4 v9, 0x1

    goto :goto_0

    .line 323
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v4    # "saxParser":Ljavax/xml/parsers/SAXParser;
    .end local v5    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    .restart local v2    # "input":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 324
    .local v1, "ex":Ljava/lang/Exception;
    :goto_1
    const-string v10, "OppoPackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "parse "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " error!!!!!!!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 327
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 328
    .local v6, "t":J
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    .line 329
    .local v8, "time":Landroid/text/format/Time;
    invoke-virtual {v8, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 330
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/data/packages-error_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".xml"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "errFile":Ljava/lang/String;
    const-string v10, "OppoPackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "copyFile:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v10}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    goto/16 :goto_0

    .line 323
    .end local v0    # "errFile":Ljava/lang/String;
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "input":Ljava/io/InputStream;
    .end local v6    # "t":J
    .end local v8    # "time":Landroid/text/format/Time;
    .restart local v3    # "input":Ljava/io/InputStream;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "input":Ljava/io/InputStream;
    .restart local v2    # "input":Ljava/io/InputStream;
    goto :goto_1
.end method

.method private static parserFilterAppList(Ljava/lang/String;)V
    .locals 11
    .param p0, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 820
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_2

    .line 821
    :cond_0
    const-string v8, "OppoPackageManager"

    const-string v9, "parserFilterAppList() xml empty, return."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    :cond_1
    :goto_0
    return-void

    .line 826
    :cond_2
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v8

    invoke-virtual {v8}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 827
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v8, Ljava/io/StringReader;

    invoke-direct {v8, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 828
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 829
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 830
    .local v3, "evenType":I
    :goto_1
    const/4 v8, 0x1

    if-eq v3, v8, :cond_1

    .line 831
    const/4 v8, 0x2

    if-ne v8, v3, :cond_3

    .line 832
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 833
    .local v6, "tagName":Ljava/lang/String;
    const-string v8, "markets"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 834
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    .line 835
    .local v4, "marketName":Ljava/lang/String;
    const-string v8, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 836
    sget-object v8, Lcom/android/server/pm/OppoPackageManagerHelper;->mFiltrateMarketNameList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 867
    .end local v4    # "marketName":Ljava/lang/String;
    .end local v6    # "tagName":Ljava/lang/String;
    :cond_3
    :goto_2
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto :goto_1

    .line 841
    .restart local v6    # "tagName":Ljava/lang/String;
    :cond_4
    const-string v8, "apps"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 842
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 843
    .local v0, "appName":Ljava/lang/String;
    const-string v8, ""

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 844
    sget-object v8, Lcom/android/server/pm/OppoPackageManagerHelper;->mFiltrateAppNameList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 870
    .end local v0    # "appName":Ljava/lang/String;
    .end local v3    # "evenType":I
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "tagName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 871
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v8, "OppoPackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parserFilterAppList(), Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 873
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    throw v8

    .line 849
    .restart local v3    # "evenType":I
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "tagName":Ljava/lang/String;
    :cond_5
    :try_start_2
    const-string v8, "blacklist"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 850
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .line 851
    .local v1, "blackName":Ljava/lang/String;
    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 852
    sget-object v8, Lcom/android/server/pm/OppoPackageManagerHelper;->mBlackList:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 857
    .end local v1    # "blackName":Ljava/lang/String;
    :cond_6
    const-string v8, "whitelist"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 858
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    .line 859
    .local v7, "whiteName":Ljava/lang/String;
    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 860
    sget-object v8, Lcom/android/server/pm/OppoPackageManagerHelper;->mWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private static readMarketsFromXML(Ljava/io/FileInputStream;)Ljava/util/Map;
    .locals 10
    .param p0, "stream"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileInputStream;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1159
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1161
    .local v1, "marketMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 1162
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v7, 0x0

    invoke-interface {v3, p0, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1166
    :cond_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .line 1167
    .local v6, "type":I
    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 1168
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1169
    .local v4, "tag":Ljava/lang/String;
    const-string v7, "market"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_1

    .line 1170
    const/4 v2, 0x0

    .line 1171
    .local v2, "name":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1174
    .local v5, "text":Ljava/lang/String;
    const/4 v7, 0x0

    :try_start_1
    const-string v8, "packagename"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1175
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 1180
    :goto_0
    if-eqz v2, :cond_1

    if-eqz v5, :cond_1

    .line 1181
    :try_start_2
    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "text":Ljava/lang/String;
    :cond_1
    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 1196
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "type":I
    :goto_1
    return-object v1

    .line 1176
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "tag":Ljava/lang/String;
    .restart local v5    # "text":Ljava/lang/String;
    .restart local v6    # "type":I
    :catch_0
    move-exception v0

    .line 1177
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1189
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "text":Ljava/lang/String;
    .end local v6    # "type":I
    :catch_1
    move-exception v0

    .line 1190
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v7, "OppoPackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readMarketsFromXML() failed parsing: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1192
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    throw v7
.end method

.method public static removeActiveAdmin(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)V
    .locals 11
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 680
    const-string v8, "OppoPackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "removeActiveAdmin enter! packageName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    invoke-static {p0, p1}, Lcom/android/server/pm/OppoPackageManagerHelper;->checkSystemApp(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 683
    const-string v8, "OppoPackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "don\'t removeActiveAdmin package is system apk. packageName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_0
    :goto_0
    return-void

    .line 687
    :cond_1
    const-string v8, "device_policy"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v2

    .line 690
    .local v2, "dpm":Landroid/app/admin/IDevicePolicyManager;
    if-eqz v2, :cond_0

    .line 691
    new-instance v5, Landroid/content/Intent;

    const-string v8, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 692
    .local v5, "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    .line 693
    .local v6, "resolveType":Ljava/lang/String;
    const/16 v8, 0x80

    invoke-virtual {p0, v5, v6, v8, p2}, Lcom/android/server/pm/PackageManagerService;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 695
    .local v0, "avail":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_0

    .line 697
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_0

    .line 698
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 699
    .local v7, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 700
    const-string v8, "OppoPackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ri.activityInfo.name == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    new-instance v1, Landroid/content/ComponentName;

    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, p1, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 703
    .local v1, "componentName":Landroid/content/ComponentName;
    :try_start_1
    invoke-interface {v2, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 697
    .end local v1    # "componentName":Landroid/content/ComponentName;
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 704
    .restart local v1    # "componentName":Landroid/content/ComponentName;
    :catch_0
    move-exception v3

    .line 705
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 709
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v7    # "ri":Landroid/content/pm/ResolveInfo;
    :catch_1
    move-exception v3

    .line 710
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "OppoPackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception happened!!!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static resetDataCollection()V
    .locals 1

    .prologue
    const/16 v0, -0x63

    .line 344
    sput v0, Lcom/android/server/pm/OppoPackageManagerHelper;->Uid:I

    .line 345
    sput v0, Lcom/android/server/pm/OppoPackageManagerHelper;->Pid:I

    .line 346
    return-void
.end method

.method public static sendDataClearBroadcast()V
    .locals 15

    .prologue
    const/4 v10, 0x0

    .line 414
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 415
    .local v0, "am":Landroid/app/IActivityManager;
    const/4 v14, 0x0

    .line 416
    .local v14, "finishedReceiver":Landroid/content/IIntentReceiver;
    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.DATA_COLLECT_CLEAR"

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 417
    .local v2, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    if-eqz v14, :cond_0

    const/4 v10, 0x1

    :cond_0
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v0 .. v12}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 419
    :catch_0
    move-exception v13

    .line 420
    .local v13, "ex":Landroid/os/RemoteException;
    invoke-virtual {v13}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static sendPackageInstallBroadcast(Landroid/content/pm/ApplicationInfo;Landroid/os/Bundle;ILcom/android/server/pm/UserManagerService;)V
    .locals 25
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "extras"    # Landroid/os/Bundle;
    .param p2, "userId"    # I
    .param p3, "sUserManager"    # Lcom/android/server/pm/UserManagerService;

    .prologue
    .line 350
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 354
    .local v2, "am":Landroid/app/IActivityManager;
    if-eqz v2, :cond_0

    if-eqz p0, :cond_0

    .line 359
    :try_start_0
    const-string v3, "package"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v22

    .line 360
    .local v22, "pm":Landroid/content/pm/IPackageManager;
    const-string v21, "com.android.packageinstaller"

    .line 361
    .local v21, "packageinstaller":Ljava/lang/String;
    sget v3, Lcom/android/server/pm/OppoPackageManagerHelper;->Uid:I

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 410
    .end local v21    # "packageinstaller":Ljava/lang/String;
    .end local v22    # "pm":Landroid/content/pm/IPackageManager;
    :cond_0
    :goto_0
    return-void

    .line 365
    .restart local v21    # "packageinstaller":Ljava/lang/String;
    .restart local v22    # "pm":Landroid/content/pm/IPackageManager;
    :cond_1
    const/4 v3, -0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_7

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v24

    .line 367
    .local v24, "userIds":[I
    :goto_1
    move-object/from16 v15, v24

    .local v15, "arr$":[I
    array-length v0, v15

    move/from16 v19, v0

    .local v19, "len$":I
    const/16 v18, 0x0

    .local v18, "i$":I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    aget v14, v15, v18

    .line 368
    .local v14, "id":I
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.OPPO_PACKAGE_ADDED"

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_8

    const-string v3, "package"

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :goto_3
    invoke-direct {v4, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 371
    .local v4, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_2

    .line 372
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 375
    :cond_2
    const-string v3, "android.intent.extra.UID"

    const/4 v5, -0x1

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    .line 376
    .local v23, "uid":I
    if-lez v23, :cond_3

    if-lez v14, :cond_3

    .line 377
    invoke-static/range {v23 .. v23}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-static {v14, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v23

    .line 378
    const-string v3, "android.intent.extra.UID"

    move/from16 v0, v23

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 380
    :cond_3
    const-string v3, "UID"

    sget v5, Lcom/android/server/pm/OppoPackageManagerHelper;->Uid:I

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 381
    const-string v3, "PID"

    sget v5, Lcom/android/server/pm/OppoPackageManagerHelper;->Pid:I

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 384
    new-instance v16, Ljava/lang/StringBuffer;

    const-string v3, "dataCollection debug info "

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 385
    .local v16, "debugInfo":Ljava/lang/StringBuffer;
    sget v3, Lcom/android/server/pm/OppoPackageManagerHelper;->Pid:I

    invoke-static {v3}, Lcom/android/server/pm/OppoPackageManagerHelper;->getProcessNameByPid(I)Ljava/lang/String;

    move-result-object v20

    .line 386
    .local v20, "mCallingPkgName":Ljava/lang/String;
    if-eqz v20, :cond_4

    const-string v3, ""

    move-object/from16 v0, v20

    if-ne v0, v3, :cond_6

    .line 387
    :cond_4
    const-string v3, " get an empty package name by pid"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 388
    sget v3, Lcom/android/server/pm/OppoPackageManagerHelper;->Uid:I

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v20

    .line 389
    if-eqz v20, :cond_5

    const-string v3, ""

    move-object/from16 v0, v20

    if-ne v0, v3, :cond_6

    .line 390
    :cond_5
    const-string v3, " get an empty package name by uid"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 393
    :cond_6
    const-string v3, " UID "

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 394
    sget v3, Lcom/android/server/pm/OppoPackageManagerHelper;->Uid:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 395
    const-string v3, " PID "

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 396
    sget v3, Lcom/android/server/pm/OppoPackageManagerHelper;->Pid:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 397
    const-string v3, " mCallingPkgName "

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 398
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 399
    const-string v3, "oppo_extra_pkg_name"

    if-eqz v20, :cond_9

    .end local v20    # "mCallingPkgName":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, v20

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    const-string v3, "oppo_extra_debug_info"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface/range {v2 .. v14}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I

    .line 404
    invoke-static {}, Lcom/android/server/pm/OppoPackageManagerHelper;->resetDataCollection()V

    .line 367
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_2

    .line 365
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v14    # "id":I
    .end local v15    # "arr$":[I
    .end local v16    # "debugInfo":Ljava/lang/StringBuffer;
    .end local v18    # "i$":I
    .end local v19    # "len$":I
    .end local v23    # "uid":I
    .end local v24    # "userIds":[I
    :cond_7
    const/4 v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v24, v0

    const/4 v3, 0x0

    aput p2, v24, v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 406
    .end local v21    # "packageinstaller":Ljava/lang/String;
    .end local v22    # "pm":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v17

    .line 407
    .local v17, "ex":Landroid/os/RemoteException;
    invoke-virtual/range {v17 .. v17}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 368
    .end local v17    # "ex":Landroid/os/RemoteException;
    .restart local v14    # "id":I
    .restart local v15    # "arr$":[I
    .restart local v18    # "i$":I
    .restart local v19    # "len$":I
    .restart local v21    # "packageinstaller":Ljava/lang/String;
    .restart local v22    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v24    # "userIds":[I
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 399
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v16    # "debugInfo":Ljava/lang/StringBuffer;
    .restart local v20    # "mCallingPkgName":Ljava/lang/String;
    .restart local v23    # "uid":I
    :cond_9
    :try_start_1
    const-string v20, ""
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public static setAppNativeLibraryPath(Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/PackageSetting;Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "mAppLibInstallDir"    # Ljava/io/File;

    .prologue
    .line 739
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->deriveCodePathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 740
    .local v0, "apkLibPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 741
    .local v1, "nativeLibraryPath":Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x40000

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    .line 744
    .end local v1    # "nativeLibraryPath":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1    # "nativeLibraryPath":Ljava/lang/String;
    :cond_0
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setDataCollection()V
    .locals 1

    .prologue
    .line 339
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    sput v0, Lcom/android/server/pm/OppoPackageManagerHelper;->Uid:I

    .line 340
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    sput v0, Lcom/android/server/pm/OppoPackageManagerHelper;->Pid:I

    .line 341
    return-void
.end method

.method private static setKnownMarketMap(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1120
    .local p0, "marketMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "OppoPackageManager"

    const-string v4, "setKnownMarketMap()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v3

    if-gtz v3, :cond_0

    .line 1124
    const-string v3, "OppoPackageManager"

    const-string v4, "setKnownMarketList() empty map, return."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    :goto_0
    return-void

    .line 1128
    :cond_0
    sget-object v3, Lcom/android/server/pm/OppoPackageManagerHelper;->mMarketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1130
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v3, "//data//oppo//permission//known_markets.xml"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1131
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1132
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1133
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 1136
    :cond_1
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    const-string v3, "//data//oppo//permission//known_markets.xml"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1138
    .restart local v1    # "file":Ljava/io/File;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1144
    :cond_2
    :goto_1
    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1145
    .local v2, "outputStream":Ljava/io/FileOutputStream;
    invoke-static {v2, p0}, Lcom/android/server/pm/OppoPackageManagerHelper;->writeMarketsToXML(Ljava/io/FileOutputStream;Ljava/util/Map;)Z

    .line 1147
    if-eqz v2, :cond_3

    .line 1148
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1154
    :cond_3
    sget-object v3, Lcom/android/server/pm/OppoPackageManagerHelper;->mMarketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 1139
    .end local v2    # "outputStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 1140
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1150
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "file":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 1151
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v3, "OppoPackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setKnownMarketMap(), Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1154
    sget-object v3, Lcom/android/server/pm/OppoPackageManagerHelper;->mMarketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    sget-object v4, Lcom/android/server/pm/OppoPackageManagerHelper;->mMarketLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method private static writeMarketsToXML(Ljava/io/FileOutputStream;Ljava/util/Map;)Z
    .locals 8
    .param p0, "stream"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileOutputStream;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "marketMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x1

    .line 1201
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 1202
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v6, "utf-8"

    invoke-interface {v3, p0, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1203
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1204
    const-string v6, "\r\n"

    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1205
    const/4 v6, 0x0

    const-string v7, "marketlist"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1207
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1208
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1209
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1210
    .local v2, "name":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1212
    .local v4, "value":Ljava/lang/String;
    const-string v6, "\r\n"

    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1213
    const-string v6, "\t"

    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1214
    const/4 v6, 0x0

    const-string v7, "market"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1215
    const/4 v6, 0x0

    const-string v7, "packagename"

    invoke-interface {v3, v6, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1216
    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1217
    const/4 v6, 0x0

    const-string v7, "market"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1225
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1226
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "OppoPackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "writeMarketsToXML() Failed to write status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1228
    const/4 v5, 0x0

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return v5

    .line 1220
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_0
    :try_start_1
    const-string v6, "\r\n"

    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1221
    const/4 v6, 0x0

    const-string v7, "marketlist"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1222
    const-string v6, "\r\n"

    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1223
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
