.class public Landroid/service/theme/MaterialThemeManager;
.super Ljava/lang/Object;
.source "MaterialThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/theme/MaterialThemeManager$OnMaterialThemeChangedListener;,
        Landroid/service/theme/MaterialThemeManager$COLOR;
    }
.end annotation


# static fields
.field static final MSG_REPORT_COLOR_MODE_CHANGED:I = 0x2

.field static final MSG_REPORT_MATERIAL_THEME_CHANGED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MaterialThemeManager"

.field public static final THEME_DARK:I = 0x1

.field public static final THEME_DEFAULT:I

.field private static sColor:Ljava/lang/String;

.field private static sService:Landroid/service/theme/IMaterialTheme;

.field private static final sStaticLock:Ljava/lang/Object;

.field private static sTheme:I


# instance fields
.field private final mColors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/service/theme/MaterialThemeManager$COLOR;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mIMaterialThemeChangedServiceListener:Landroid/service/theme/IOnMaterialThemeChangedListener$Stub;

.field private final mMaterialThemeChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/service/theme/MaterialThemeManager$OnMaterialThemeChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 130
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/service/theme/MaterialThemeManager;->sStaticLock:Ljava/lang/Object;

    .line 133
    const/4 v0, 0x1

    sput v0, Landroid/service/theme/MaterialThemeManager;->sTheme:I

    .line 134
    const/4 v0, 0x0

    sput-object v0, Landroid/service/theme/MaterialThemeManager;->sColor:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/service/theme/MaterialThemeManager;->mColors:Ljava/util/Map;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/theme/MaterialThemeManager;->mMaterialThemeChangedListeners:Ljava/util/ArrayList;

    .line 170
    new-instance v0, Landroid/service/theme/MaterialThemeManager$1;

    invoke-direct {v0, p0}, Landroid/service/theme/MaterialThemeManager$1;-><init>(Landroid/service/theme/MaterialThemeManager;)V

    iput-object v0, p0, Landroid/service/theme/MaterialThemeManager;->mIMaterialThemeChangedServiceListener:Landroid/service/theme/IOnMaterialThemeChangedListener$Stub;

    .line 187
    new-instance v0, Landroid/service/theme/MaterialThemeManager$2;

    invoke-direct {v0, p0}, Landroid/service/theme/MaterialThemeManager$2;-><init>(Landroid/service/theme/MaterialThemeManager;)V

    iput-object v0, p0, Landroid/service/theme/MaterialThemeManager;->mHandler:Landroid/os/Handler;

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/theme/MaterialThemeManager;->mContext:Landroid/content/Context;

    .line 233
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/service/theme/MaterialThemeManager;->mColors:Ljava/util/Map;

    .line 167
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/service/theme/MaterialThemeManager;->mMaterialThemeChangedListeners:Ljava/util/ArrayList;

    .line 170
    new-instance v2, Landroid/service/theme/MaterialThemeManager$1;

    invoke-direct {v2, p0}, Landroid/service/theme/MaterialThemeManager$1;-><init>(Landroid/service/theme/MaterialThemeManager;)V

    iput-object v2, p0, Landroid/service/theme/MaterialThemeManager;->mIMaterialThemeChangedServiceListener:Landroid/service/theme/IOnMaterialThemeChangedListener$Stub;

    .line 187
    new-instance v2, Landroid/service/theme/MaterialThemeManager$2;

    invoke-direct {v2, p0}, Landroid/service/theme/MaterialThemeManager$2;-><init>(Landroid/service/theme/MaterialThemeManager;)V

    iput-object v2, p0, Landroid/service/theme/MaterialThemeManager;->mHandler:Landroid/os/Handler;

    .line 210
    iput-object p1, p0, Landroid/service/theme/MaterialThemeManager;->mContext:Landroid/content/Context;

    .line 211
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 212
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Landroid/service/theme/MaterialThemeManager;->mColors:Ljava/util/Map;

    sget-object v3, Landroid/service/theme/MaterialThemeManager$COLOR;->GRAY:Landroid/service/theme/MaterialThemeManager$COLOR;

    const v4, 0x406001c

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v2, p0, Landroid/service/theme/MaterialThemeManager;->mColors:Ljava/util/Map;

    sget-object v3, Landroid/service/theme/MaterialThemeManager$COLOR;->CHAMPAGNE:Landroid/service/theme/MaterialThemeManager$COLOR;

    const v4, 0x406001d

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v2, p0, Landroid/service/theme/MaterialThemeManager;->mColors:Ljava/util/Map;

    sget-object v3, Landroid/service/theme/MaterialThemeManager$COLOR;->PEAR:Landroid/service/theme/MaterialThemeManager$COLOR;

    const v4, 0x406001e

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v2, p0, Landroid/service/theme/MaterialThemeManager;->mColors:Ljava/util/Map;

    sget-object v3, Landroid/service/theme/MaterialThemeManager$COLOR;->GREEN:Landroid/service/theme/MaterialThemeManager$COLOR;

    const v4, 0x406001f

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v2, p0, Landroid/service/theme/MaterialThemeManager;->mColors:Ljava/util/Map;

    sget-object v3, Landroid/service/theme/MaterialThemeManager$COLOR;->PURPLE:Landroid/service/theme/MaterialThemeManager$COLOR;

    const v4, 0x4060020

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v2, p0, Landroid/service/theme/MaterialThemeManager;->mColors:Ljava/util/Map;

    sget-object v3, Landroid/service/theme/MaterialThemeManager$COLOR;->TURQUOISE:Landroid/service/theme/MaterialThemeManager$COLOR;

    const v4, 0x4060021

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v2, p0, Landroid/service/theme/MaterialThemeManager;->mColors:Ljava/util/Map;

    sget-object v3, Landroid/service/theme/MaterialThemeManager$COLOR;->PINK:Landroid/service/theme/MaterialThemeManager$COLOR;

    const v4, 0x4060022

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v2, p0, Landroid/service/theme/MaterialThemeManager;->mColors:Ljava/util/Map;

    sget-object v3, Landroid/service/theme/MaterialThemeManager$COLOR;->FLAMINGO:Landroid/service/theme/MaterialThemeManager$COLOR;

    const v4, 0x4060023

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    :try_start_0
    invoke-static {}, Landroid/service/theme/MaterialThemeManager;->getService()Landroid/service/theme/IMaterialTheme;

    move-result-object v1

    .line 222
    .local v1, "service":Landroid/service/theme/IMaterialTheme;
    iget-object v2, p0, Landroid/service/theme/MaterialThemeManager;->mIMaterialThemeChangedServiceListener:Landroid/service/theme/IOnMaterialThemeChangedListener$Stub;

    invoke-interface {v1, v2}, Landroid/service/theme/IMaterialTheme;->addMaterialThemeChangedListener(Landroid/service/theme/IOnMaterialThemeChangedListener;)V

    .line 223
    invoke-interface {v1}, Landroid/service/theme/IMaterialTheme;->getMaterialTheme()I

    move-result v2

    sput v2, Landroid/service/theme/MaterialThemeManager;->sTheme:I

    .line 224
    invoke-interface {v1}, Landroid/service/theme/IMaterialTheme;->getColorCode()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/service/theme/MaterialThemeManager;->sColor:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .end local v1    # "service":Landroid/service/theme/IMaterialTheme;
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/service/theme/MaterialThemeManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/service/theme/MaterialThemeManager;

    .prologue
    .line 103
    iget-object v0, p0, Landroid/service/theme/MaterialThemeManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 103
    sput p0, Landroid/service/theme/MaterialThemeManager;->sTheme:I

    return p0
.end method

.method static synthetic access$200()Landroid/service/theme/IMaterialTheme;
    .locals 1

    .prologue
    .line 103
    invoke-static {}, Landroid/service/theme/MaterialThemeManager;->getService()Landroid/service/theme/IMaterialTheme;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/service/theme/MaterialThemeManager;)V
    .locals 0
    .param p0, "x0"    # Landroid/service/theme/MaterialThemeManager;

    .prologue
    .line 103
    invoke-direct {p0}, Landroid/service/theme/MaterialThemeManager;->reportMaterialThemeChanged()V

    return-void
.end method

.method static synthetic access$402(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 103
    sput-object p0, Landroid/service/theme/MaterialThemeManager;->sColor:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Landroid/service/theme/MaterialThemeManager;)V
    .locals 0
    .param p0, "x0"    # Landroid/service/theme/MaterialThemeManager;

    .prologue
    .line 103
    invoke-direct {p0}, Landroid/service/theme/MaterialThemeManager;->reportColorModeChanged()V

    return-void
.end method

.method private checkPermissions()V
    .locals 5

    .prologue
    .line 485
    iget-object v1, p0, Landroid/service/theme/MaterialThemeManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.SWITCH_MATERIAL_THEME"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    .line 487
    .local v0, "permission":I
    if-eqz v0, :cond_0

    .line 488
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "MaterialThemeManager: android.permission.SWITCH_MATERIAL_THEME required to change color"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 492
    :cond_0
    return-void
.end method

.method private static getService()Landroid/service/theme/IMaterialTheme;
    .locals 3

    .prologue
    .line 154
    sget-object v2, Landroid/service/theme/MaterialThemeManager;->sStaticLock:Ljava/lang/Object;

    monitor-enter v2

    .line 155
    :try_start_0
    sget-object v1, Landroid/service/theme/MaterialThemeManager;->sService:Landroid/service/theme/IMaterialTheme;

    if-eqz v1, :cond_0

    .line 156
    sget-object v1, Landroid/service/theme/MaterialThemeManager;->sService:Landroid/service/theme/IMaterialTheme;

    monitor-exit v2

    .line 160
    .local v0, "b":Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 158
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    const-string/jumbo v1, "material_theme"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 159
    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/service/theme/IMaterialTheme$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/theme/IMaterialTheme;

    move-result-object v1

    sput-object v1, Landroid/service/theme/MaterialThemeManager;->sService:Landroid/service/theme/IMaterialTheme;

    .line 160
    sget-object v1, Landroid/service/theme/MaterialThemeManager;->sService:Landroid/service/theme/IMaterialTheme;

    monitor-exit v2

    goto :goto_0

    .line 161
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private reportColorModeChanged()V
    .locals 3

    .prologue
    .line 479
    iget-object v2, p0, Landroid/service/theme/MaterialThemeManager;->mMaterialThemeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/theme/MaterialThemeManager$OnMaterialThemeChangedListener;

    .line 480
    .local v1, "listener":Landroid/service/theme/MaterialThemeManager$OnMaterialThemeChangedListener;
    invoke-interface {v1}, Landroid/service/theme/MaterialThemeManager$OnMaterialThemeChangedListener;->onColorModeChanged()V

    goto :goto_0

    .line 482
    .end local v1    # "listener":Landroid/service/theme/MaterialThemeManager$OnMaterialThemeChangedListener;
    :cond_0
    return-void
.end method

.method private reportMaterialThemeChanged()V
    .locals 4

    .prologue
    .line 472
    invoke-virtual {p0}, Landroid/service/theme/MaterialThemeManager;->getMaterialTheme()I

    move-result v2

    .line 473
    .local v2, "theme":I
    iget-object v3, p0, Landroid/service/theme/MaterialThemeManager;->mMaterialThemeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/theme/MaterialThemeManager$OnMaterialThemeChangedListener;

    .line 474
    .local v1, "listener":Landroid/service/theme/MaterialThemeManager$OnMaterialThemeChangedListener;
    invoke-interface {v1, v2}, Landroid/service/theme/MaterialThemeManager$OnMaterialThemeChangedListener;->onMaterialThemeChanged(I)V

    goto :goto_0

    .line 476
    .end local v1    # "listener":Landroid/service/theme/MaterialThemeManager$OnMaterialThemeChangedListener;
    :cond_0
    return-void
.end method


# virtual methods
.method public addMaterialThemeChangedListener(Landroid/service/theme/MaterialThemeManager$OnMaterialThemeChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/service/theme/MaterialThemeManager$OnMaterialThemeChangedListener;

    .prologue
    .line 452
    iget-object v0, p0, Landroid/service/theme/MaterialThemeManager;->mMaterialThemeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    :goto_0
    return-void

    .line 455
    :cond_0
    iget-object v0, p0, Landroid/service/theme/MaterialThemeManager;->mMaterialThemeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getColorId()Landroid/service/theme/MaterialThemeManager$COLOR;
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/service/theme/MaterialThemeManager;->getColorId(Z)Landroid/service/theme/MaterialThemeManager$COLOR;

    move-result-object v0

    return-object v0
.end method

.method public getColorId(Ljava/lang/String;)Landroid/service/theme/MaterialThemeManager$COLOR;
    .locals 5
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 404
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 405
    sget-object v3, Landroid/service/theme/MaterialThemeManager$COLOR;->UNKNOWN:Landroid/service/theme/MaterialThemeManager$COLOR;

    .line 414
    :goto_0
    return-object v3

    .line 407
    :cond_0
    iget-object v4, p0, Landroid/service/theme/MaterialThemeManager;->mColors:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 408
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/service/theme/MaterialThemeManager$COLOR;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/theme/MaterialThemeManager$COLOR;

    .line 409
    .local v3, "key":Landroid/service/theme/MaterialThemeManager$COLOR;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 410
    .local v0, "colorCode":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 414
    .end local v0    # "colorCode":Ljava/lang/String;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/service/theme/MaterialThemeManager$COLOR;Ljava/lang/String;>;"
    .end local v3    # "key":Landroid/service/theme/MaterialThemeManager$COLOR;
    :cond_2
    sget-object v3, Landroid/service/theme/MaterialThemeManager$COLOR;->UNKNOWN:Landroid/service/theme/MaterialThemeManager$COLOR;

    goto :goto_0
.end method

.method public getColorId(Z)Landroid/service/theme/MaterialThemeManager$COLOR;
    .locals 1
    .param p1, "force"    # Z

    .prologue
    .line 393
    invoke-virtual {p0, p1}, Landroid/service/theme/MaterialThemeManager;->getColorString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/service/theme/MaterialThemeManager;->getColorId(Ljava/lang/String;)Landroid/service/theme/MaterialThemeManager$COLOR;

    move-result-object v0

    return-object v0
.end method

.method public getColorInt()I
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/service/theme/MaterialThemeManager;->getColorInt(Z)I

    move-result v0

    return v0
.end method

.method public getColorInt(Z)I
    .locals 2
    .param p1, "force"    # Z

    .prologue
    .line 366
    invoke-virtual {p0, p1}, Landroid/service/theme/MaterialThemeManager;->getColorString(Z)Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "color":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    const/4 v1, -0x1

    .line 370
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getColorNamesResIds()[I
    .locals 1

    .prologue
    .line 306
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x409000a
        0x4090022
        0x4090023
        0x409000d
        0x409000f
        0x4090024
        0x409000b
        0x4090025
    .end array-data
.end method

.method public getColorString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/service/theme/MaterialThemeManager;->getColorString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColorString(Z)Ljava/lang/String;
    .locals 5
    .param p1, "force"    # Z

    .prologue
    const/4 v1, 0x0

    .line 426
    invoke-virtual {p0}, Landroid/service/theme/MaterialThemeManager;->getMaterialTheme()I

    move-result v2

    if-nez v2, :cond_0

    .line 439
    :goto_0
    return-object v1

    .line 431
    :cond_0
    if-eqz p1, :cond_1

    .line 432
    :try_start_0
    invoke-static {}, Landroid/service/theme/MaterialThemeManager;->getService()Landroid/service/theme/IMaterialTheme;

    move-result-object v2

    invoke-interface {v2}, Landroid/service/theme/IMaterialTheme;->getForceColorCode()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/service/theme/MaterialThemeManager;->sColor:Ljava/lang/String;

    .line 434
    :cond_1
    sget-object v1, Landroid/service/theme/MaterialThemeManager;->sColor:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MaterialThemeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error accessing service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getColors()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 290
    const/16 v0, 0x8

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/service/theme/MaterialThemeManager;->mColors:Ljava/util/Map;

    sget-object v3, Landroid/service/theme/MaterialThemeManager$COLOR;->GRAY:Landroid/service/theme/MaterialThemeManager$COLOR;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v1, v2

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/service/theme/MaterialThemeManager;->mColors:Ljava/util/Map;

    sget-object v3, Landroid/service/theme/MaterialThemeManager$COLOR;->CHAMPAGNE:Landroid/service/theme/MaterialThemeManager$COLOR;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v1, v2

    const/4 v2, 0x2

    iget-object v0, p0, Landroid/service/theme/MaterialThemeManager;->mColors:Ljava/util/Map;

    sget-object v3, Landroid/service/theme/MaterialThemeManager$COLOR;->PEAR:Landroid/service/theme/MaterialThemeManager$COLOR;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v1, v2

    const/4 v2, 0x3

    iget-object v0, p0, Landroid/service/theme/MaterialThemeManager;->mColors:Ljava/util/Map;

    sget-object v3, Landroid/service/theme/MaterialThemeManager$COLOR;->GREEN:Landroid/service/theme/MaterialThemeManager$COLOR;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v1, v2

    const/4 v2, 0x4

    iget-object v0, p0, Landroid/service/theme/MaterialThemeManager;->mColors:Ljava/util/Map;

    sget-object v3, Landroid/service/theme/MaterialThemeManager$COLOR;->PURPLE:Landroid/service/theme/MaterialThemeManager$COLOR;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v1, v2

    const/4 v2, 0x5

    iget-object v0, p0, Landroid/service/theme/MaterialThemeManager;->mColors:Ljava/util/Map;

    sget-object v3, Landroid/service/theme/MaterialThemeManager$COLOR;->TURQUOISE:Landroid/service/theme/MaterialThemeManager$COLOR;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v1, v2

    const/4 v2, 0x6

    iget-object v0, p0, Landroid/service/theme/MaterialThemeManager;->mColors:Ljava/util/Map;

    sget-object v3, Landroid/service/theme/MaterialThemeManager$COLOR;->PINK:Landroid/service/theme/MaterialThemeManager$COLOR;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v1, v2

    const/4 v2, 0x7

    iget-object v0, p0, Landroid/service/theme/MaterialThemeManager;->mColors:Ljava/util/Map;

    sget-object v3, Landroid/service/theme/MaterialThemeManager$COLOR;->FLAMINGO:Landroid/service/theme/MaterialThemeManager$COLOR;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v1, v2

    return-object v1
.end method

.method public getMaterialTheme()I
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/service/theme/MaterialThemeManager;->getMaterialTheme(Z)I

    move-result v0

    return v0
.end method

.method public getMaterialTheme(Z)I
    .locals 4
    .param p1, "force"    # Z

    .prologue
    .line 274
    if-eqz p1, :cond_0

    .line 275
    :try_start_0
    invoke-static {}, Landroid/service/theme/MaterialThemeManager;->getService()Landroid/service/theme/IMaterialTheme;

    move-result-object v1

    invoke-interface {v1}, Landroid/service/theme/IMaterialTheme;->getForceMaterialTheme()I

    move-result v1

    sput v1, Landroid/service/theme/MaterialThemeManager;->sTheme:I

    .line 277
    :cond_0
    sget v1, Landroid/service/theme/MaterialThemeManager;->sTheme:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :goto_0
    return v1

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MaterialThemeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error accessing service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 282
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeMaterialThemeChangedListener(Landroid/service/theme/MaterialThemeManager$OnMaterialThemeChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/service/theme/MaterialThemeManager$OnMaterialThemeChangedListener;

    .prologue
    .line 468
    iget-object v0, p0, Landroid/service/theme/MaterialThemeManager;->mMaterialThemeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 469
    return-void
.end method

.method public setColorString(Ljava/lang/String;)V
    .locals 4
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 326
    invoke-direct {p0}, Landroid/service/theme/MaterialThemeManager;->checkPermissions()V

    .line 328
    :try_start_0
    invoke-static {}, Landroid/service/theme/MaterialThemeManager;->getService()Landroid/service/theme/IMaterialTheme;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/service/theme/IMaterialTheme;->setColorCode(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :goto_0
    return-void

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MaterialThemeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error accessing service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setMaterialTheme(I)V
    .locals 4
    .param p1, "theme"    # I

    .prologue
    .line 244
    invoke-direct {p0}, Landroid/service/theme/MaterialThemeManager;->checkPermissions()V

    .line 246
    :try_start_0
    invoke-static {}, Landroid/service/theme/MaterialThemeManager;->getService()Landroid/service/theme/IMaterialTheme;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/service/theme/IMaterialTheme;->setMaterialTheme(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MaterialThemeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error accessing service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
