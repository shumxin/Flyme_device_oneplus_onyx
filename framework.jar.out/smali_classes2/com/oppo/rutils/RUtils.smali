.class public Lcom/oppo/rutils/RUtils;
.super Ljava/lang/Object;
.source "RUtils.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mActivitymanager:Landroid/app/IActivityManager;

.field private static mOppoAm:Landroid/app/OppoActivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    const-string v0, "RUtils"

    sput-object v0, Lcom/oppo/rutils/RUtils;->TAG:Ljava/lang/String;

    .line 44
    sput-object v1, Lcom/oppo/rutils/RUtils;->mActivitymanager:Landroid/app/IActivityManager;

    .line 45
    sput-object v1, Lcom/oppo/rutils/RUtils;->mOppoAm:Landroid/app/OppoActivityManager;

    .line 50
    const-string v0, "rutils"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 51
    sget-object v0, Lcom/oppo/rutils/RUtils;->TAG:Ljava/lang/String;

    const-string v1, "Load RUtils!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native NativeCustPartConfigItemClrFlagOps(ZI)I
.end method

.method private static native NativeCustPartConfigItemUsbOps(ZII)I
.end method

.method private static native NativeCustPartCustPartClearRebootNumber()I
.end method

.method private static native NativeCustPartCustPartGetMcpId()Ljava/lang/String;
.end method

.method private static native NativeCustPartCustPartGetRebootNumber()I
.end method

.method private static native NativeCustPartCustPartGetRebootReason()I
.end method

.method private static native NativeGetPidByName(Ljava/lang/String;)I
.end method

.method private static native NativeOppoRUtilsCompareSystemMD5()I
.end method

.method private static native NativeOppoRutilsTestValue()I
.end method

.method private static native NativeRUtilsChmod(Ljava/lang/String;I)I
.end method

.method private static native NativeRUtilsCmd(Ljava/lang/String;)I
.end method

.method private static native NativeRUtilsCmdForExternal(Ljava/lang/String;)I
.end method

.method private static native NativeSetSystemProperties(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static OppoRUtilsCompareSystemMD5()I
    .locals 2

    .prologue
    .line 277
    invoke-static {}, Lcom/oppo/rutils/RUtils;->waitForRUtilsEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    const/4 v0, -0x1

    .line 282
    :goto_0
    return v0

    .line 281
    :cond_0
    sget-object v0, Lcom/oppo/rutils/RUtils;->TAG:Ljava/lang/String;

    const-string v1, "RUtils CompareSystemMD5 enter!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-static {}, Lcom/oppo/rutils/RUtils;->NativeOppoRUtilsCompareSystemMD5()I

    move-result v0

    goto :goto_0
.end method

.method public static RUtilsChmod(Ljava/lang/String;I)I
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "mod"    # I

    .prologue
    const/4 v0, -0x1

    .line 102
    invoke-static {}, Lcom/oppo/rutils/RUtils;->waitForRUtilsEnable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    :goto_0
    return v0

    .line 106
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x3e9

    if-eq v1, v2, :cond_1

    .line 107
    sget-object v1, Lcom/oppo/rutils/RUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Permission Denied ~"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    :cond_1
    invoke-static {p0, p1}, Lcom/oppo/rutils/RUtils;->NativeRUtilsChmod(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static RUtilsCmd(Ljava/lang/String;)I
    .locals 1
    .param p0, "cmd"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-static {}, Lcom/oppo/rutils/RUtils;->waitForRUtilsEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    const/4 v0, -0x1

    .line 120
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/oppo/rutils/RUtils;->NativeRUtilsCmd(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static RUtilsCmdForExternal(Ljava/lang/String;)I
    .locals 9
    .param p0, "cmd"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 153
    invoke-static {}, Lcom/oppo/rutils/RUtils;->waitForRUtilsEnable()Z

    move-result v6

    if-nez v6, :cond_0

    .line 186
    :goto_0
    return v5

    .line 157
    :cond_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 159
    .local v1, "mPackageManager":Landroid/content/pm/IPackageManager;
    if-nez v1, :cond_1

    .line 160
    sget-object v6, Lcom/oppo/rutils/RUtils;->TAG:Ljava/lang/String;

    const-string v7, "get PackageManager failed!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 164
    :cond_1
    const/4 v3, 0x0

    .line 165
    .local v3, "signature":Ljava/lang/String;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    .line 167
    .local v4, "uid":I
    :try_start_0
    invoke-interface {v1, v4}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, "pkgName":Ljava/lang/String;
    sget-object v6, Lcom/oppo/rutils/RUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pkgName == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/16 v6, 0x40

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-interface {v1, v2, v6, v7}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 171
    .local v0, "info":Landroid/content/pm/PackageInfo;
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v6, v6

    if-eqz v6, :cond_2

    .line 172
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v3

    .line 174
    :cond_2
    if-nez v3, :cond_3

    .line 175
    sget-object v6, Lcom/oppo/rutils/RUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has no signatures or error!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 178
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 181
    :cond_3
    invoke-static {}, Lcom/oppo/rutils/RUtils;->getLocalSignature()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 182
    sget-object v6, Lcom/oppo/rutils/RUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has error signatures! Permission Denial!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 186
    :cond_4
    invoke-static {p0}, Lcom/oppo/rutils/RUtils;->NativeRUtilsCmdForExternal(Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0
.end method

.method public static RUtilsCustPartConfigItemClrFlagOps(ZI)I
    .locals 1
    .param p0, "read"    # Z
    .param p1, "source"    # I

    .prologue
    .line 230
    invoke-static {}, Lcom/oppo/rutils/RUtils;->waitForRUtilsEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    const/4 v0, -0x1

    .line 233
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lcom/oppo/rutils/RUtils;->NativeCustPartConfigItemClrFlagOps(ZI)I

    move-result v0

    goto :goto_0
.end method

.method public static RUtilsCustPartConfigItemUsbOps(ZII)I
    .locals 1
    .param p0, "read"    # Z
    .param p1, "value"    # I
    .param p2, "voter"    # I

    .prologue
    .line 223
    invoke-static {}, Lcom/oppo/rutils/RUtils;->waitForRUtilsEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    const/4 v0, -0x1

    .line 226
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/oppo/rutils/RUtils;->NativeCustPartConfigItemUsbOps(ZII)I

    move-result v0

    goto :goto_0
.end method

.method public static RUtilsCustPartCustPartClearRebootNumber()I
    .locals 1

    .prologue
    .line 251
    invoke-static {}, Lcom/oppo/rutils/RUtils;->waitForRUtilsEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    const/4 v0, -0x1

    .line 254
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/oppo/rutils/RUtils;->NativeCustPartCustPartClearRebootNumber()I

    move-result v0

    goto :goto_0
.end method

.method public static RUtilsCustPartCustPartGetMcpId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    invoke-static {}, Lcom/oppo/rutils/RUtils;->waitForRUtilsEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    const-string v0, ""

    .line 240
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/oppo/rutils/RUtils;->NativeCustPartCustPartGetMcpId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static RUtilsCustPartCustPartGetRebootNumber()I
    .locals 1

    .prologue
    .line 244
    invoke-static {}, Lcom/oppo/rutils/RUtils;->waitForRUtilsEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    const/4 v0, -0x1

    .line 247
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/oppo/rutils/RUtils;->NativeCustPartCustPartGetRebootNumber()I

    move-result v0

    goto :goto_0
.end method

.method public static RUtilsCustPartCustPartGetRebootReason()I
    .locals 1

    .prologue
    .line 258
    invoke-static {}, Lcom/oppo/rutils/RUtils;->waitForRUtilsEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    const/4 v0, -0x1

    .line 261
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/oppo/rutils/RUtils;->NativeCustPartCustPartGetRebootReason()I

    move-result v0

    goto :goto_0
.end method

.method public static RUtilsGetPidByName(Ljava/lang/String;)I
    .locals 1
    .param p0, "processName"    # Ljava/lang/String;

    .prologue
    .line 190
    invoke-static {}, Lcom/oppo/rutils/RUtils;->waitForRUtilsEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    const/4 v0, -0x1

    .line 193
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/oppo/rutils/RUtils;->NativeGetPidByName(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static RUtilsSetSystemPropertiesString(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 208
    invoke-static {}, Lcom/oppo/rutils/RUtils;->waitForRUtilsEnable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 215
    :cond_0
    :goto_0
    return v0

    .line 212
    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 215
    invoke-static {p0, p1}, Lcom/oppo/rutils/RUtils;->NativeSetSystemProperties(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static RUtilsSetSystemPropertiesStringInt(Ljava/lang/String;I)I
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    const/4 v0, -0x1

    .line 197
    invoke-static {}, Lcom/oppo/rutils/RUtils;->waitForRUtilsEnable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 204
    :cond_0
    :goto_0
    return v0

    .line 201
    :cond_1
    if-eqz p0, :cond_0

    .line 204
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oppo/rutils/RUtils;->NativeSetSystemProperties(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private static getLocalSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    const-string v0, "308203633082024ba00302010202040875ec17300d06092a864886f70d01010b05003062310b300906035504061302383631123010060355040813096775616e67646f6e673111300f060355040713087368656e7a68656e310e300c060355040a13056368696e61310e300c060355040b13056368696e61310c300a06035504031303726f6d301e170d3135303130373036343930325a170d3235303130343036343930325a3062310b300906035504061302383631123010060355040813096775616e67646f6e673111300f060355040713087368656e7a68656e310e300c060355040a13056368696e61310e300c060355040b13056368696e61310c300a06035504031303726f6d30820122300d06092a864886f70d01010105000382010f003082010a0282010100a4677dd7cdd8f0066c813f78e6782aaa42c0b019984d5f7ac6e69bc4ed2d128ed0b88dde7cb6ac94a1c218ec8ab62f626fb35b2cb3306ea70e277fd3a8fa4d9602db220000e724433a0b66010bce499a5d9d70849f92a9594eaf39394ba13e18b0ac882f4c6e4254e8da03446d972a0e82ffb0b84ceb97aeecbeec79762155600fa08a1d4be9643169cd8a8661ae0d86049ceda147e6ab1880c3cc8292a26fa12aac2db1da46fef1b971360c6c35a6d7e22a37d2becbf2fa69ec1d6f154f7adc348e885bf2e7cc2c3174b06fb6b751fb31fa5633316cd8fef160cf930a625de865825feb9303e81656757b5eb43047bf4617ac094266f93fb1d312f94866e5270203010001a321301f301d0603551d0e04160414bbfa177b2f1423144ab1d1c9f9c8e74a048f0319300d06092a864886f70d01010b050003820101007cc9a375d39ca81864de289ed31d97a983db62175f36f2c4d2e332086daae50a2e6df83084b78f182519e5a7c3cff6250b76f382982a9adcc3094ee1a4d5790aca709b0df3a09c9c9f38d2a2bab96150812f564a7dba13c842b46619bb59b0957508045487b7d1fccddaaedb5e93d590a22147027822d6524a2af08336c3292d10cbf69959a024118e3686238649603ed88d7156a6c76429a8bad2bb446a70f06e7b7af6be347b7d898890143c782a17d13af243855035b38630a8f0f4c2367734880b30e9ba570d739fbcecc7947432fe653be187a280a4fc0bd36261a696b84970ea17a921936a6c6feb129c0b75959549930654f48eb823dbd842b767d4a4"

    .line 149
    .local v0, "signature":Ljava/lang/String;
    return-object v0
.end method

.method private static isRUtilsEnable()Z
    .locals 3

    .prologue
    .line 55
    const-string v1, "oppo.service.rutils.enable"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "value":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    sget-object v1, Lcom/oppo/rutils/RUtils;->TAG:Ljava/lang/String;

    const-string v2, "isRUtilsEnable oppo.service.rutils.enable = 1!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v1, 0x1

    .line 61
    :goto_0
    return v1

    .line 60
    :cond_0
    sget-object v1, Lcom/oppo/rutils/RUtils;->TAG:Ljava/lang/String;

    const-string v2, "isRUtilsEnable oppo.service.rutils.enable = 0!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static oppoRutilsTestValue()I
    .locals 2

    .prologue
    .line 266
    invoke-static {}, Lcom/oppo/rutils/RUtils;->waitForRUtilsEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    const/4 v0, -0x1

    .line 271
    :goto_0
    return v0

    .line 270
    :cond_0
    sget-object v0, Lcom/oppo/rutils/RUtils;->TAG:Ljava/lang/String;

    const-string v1, "RUtils oppoRutilsTestValue enter!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-static {}, Lcom/oppo/rutils/RUtils;->NativeOppoRutilsTestValue()I

    move-result v0

    goto :goto_0
.end method

.method private static setRutilsEnable()V
    .locals 4

    .prologue
    .line 65
    sget-object v1, Lcom/oppo/rutils/RUtils;->mActivitymanager:Landroid/app/IActivityManager;

    if-nez v1, :cond_0

    .line 66
    sget-object v1, Lcom/oppo/rutils/RUtils;->TAG:Ljava/lang/String;

    const-string v2, "mActivitymanager == null getService ACTIVITY_SERVICE!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string v1, "activity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v1

    sput-object v1, Lcom/oppo/rutils/RUtils;->mActivitymanager:Landroid/app/IActivityManager;

    .line 69
    new-instance v1, Landroid/app/OppoActivityManager;

    invoke-direct {v1}, Landroid/app/OppoActivityManager;-><init>()V

    sput-object v1, Lcom/oppo/rutils/RUtils;->mOppoAm:Landroid/app/OppoActivityManager;

    .line 72
    :cond_0
    sget-object v1, Lcom/oppo/rutils/RUtils;->mActivitymanager:Landroid/app/IActivityManager;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/oppo/rutils/RUtils;->mOppoAm:Landroid/app/OppoActivityManager;

    if-eqz v1, :cond_1

    .line 73
    sget-object v1, Lcom/oppo/rutils/RUtils;->TAG:Ljava/lang/String;

    const-string v2, "mActivitymanager != null setRutilsEnable!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :try_start_0
    sget-object v1, Lcom/oppo/rutils/RUtils;->mOppoAm:Landroid/app/OppoActivityManager;

    const-string v2, "oppo.service.rutils.enable"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/app/OppoActivityManager;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .local v0, "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void

    .line 76
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 77
    .restart local v0    # "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/oppo/rutils/RUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException happened! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static waitForRUtilsEnable()Z
    .locals 4

    .prologue
    .line 85
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    .line 87
    invoke-static {}, Lcom/oppo/rutils/RUtils;->isRUtilsEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    sget-object v1, Lcom/oppo/rutils/RUtils;->TAG:Ljava/lang/String;

    const-string v2, "waitForRUtilsEnable OK!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v1, 0x1

    .line 98
    :goto_1
    return v1

    .line 91
    :cond_0
    sget-object v1, Lcom/oppo/rutils/RUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRutilsEnable times == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {}, Lcom/oppo/rutils/RUtils;->setRutilsEnable()V

    .line 95
    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_1
    sget-object v1, Lcom/oppo/rutils/RUtils;->TAG:Ljava/lang/String;

    const-string v2, "waitForRUtilsEnable Failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v1, 0x0

    goto :goto_1
.end method
