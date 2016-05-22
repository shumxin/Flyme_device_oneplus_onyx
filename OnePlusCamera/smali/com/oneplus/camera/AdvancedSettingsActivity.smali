.class public final Lcom/oneplus/camera/AdvancedSettingsActivity;
.super Landroid/app/Activity;
.source "AdvancedSettingsActivity.java"


# static fields
.field public static final EXTRA_IS_MIRROR_SUPPORTED:Ljava/lang/String; = "IsMirrorSupported"

.field public static final EXTRA_IS_RAW_CAPTURE_OPTION_VISIBLE:Ljava/lang/String; = "IsRawCaptureVisible"

.field public static final EXTRA_IS_SMILE_CAPTURE_OPTION_VISIBLE:Ljava/lang/String; = "IsSmileCaptureVisible"

.field public static final EXTRA_SETTINGS_IS_VOLATILE:Ljava/lang/String; = "Settings.IsVolatile"

.field public static final EXTRA_SETTINGS_NAME:Ljava/lang/String; = "Settings.Name"

.field public static final EXTRA_START_MODE:Ljava/lang/String; = "StartMode"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private m_AboutMenuItem:Lcom/oneplus/camera/ui/menu/AboutMenuItem;

.field private m_HasRawCaptureSetting:Z

.field private m_HasSmileCaptureSetting:Z

.field private m_IsMirrorSupported:Z

.field private m_IsMirroredMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

.field private m_LocationMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

.field private final m_MenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/ui/menu/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_MenuListView:Lcom/oneplus/camera/ui/menu/MenuListView;

.field private m_RawCaptureMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

.field private m_Settings:Lcom/oneplus/base/Settings;

.field private m_ShutdownReceiver:Landroid/content/BroadcastReceiver;

.field private m_ShutterSoundMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

.field private m_SmileCaptureMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

.field private m_StartMode:Lcom/oneplus/camera/StartMode;

.field private m_StorageManager:Lcom/oneplus/io/StorageManager;

.field private m_StorageManagerCallBack:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/io/Storage;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_StorageMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-class v0, Lcom/oneplus/camera/AdvancedSettingsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/camera/AdvancedSettingsActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/camera/AdvancedSettingsActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/AdvancedSettingsActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/camera/AdvancedSettingsActivity;Lcom/oneplus/camera/ui/menu/MenuItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/AdvancedSettingsActivity;
    .param p1, "x1"    # Lcom/oneplus/camera/ui/menu/MenuItem;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/oneplus/camera/AdvancedSettingsActivity;->onMenuItemClicked(Lcom/oneplus/camera/ui/menu/MenuItem;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/camera/AdvancedSettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/AdvancedSettingsActivity;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->handleStorageMenuItem()V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/camera/AdvancedSettingsActivity;)Lcom/oneplus/camera/ui/menu/MenuListView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/AdvancedSettingsActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuListView:Lcom/oneplus/camera/ui/menu/MenuListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/camera/AdvancedSettingsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/AdvancedSettingsActivity;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->isSecureMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/oneplus/camera/AdvancedSettingsActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private handleStorageMenuItem()V
    .locals 4

    .prologue
    .line 95
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    sget-object v1, Lcom/oneplus/io/Storage$Type;->SD_CARD:Lcom/oneplus/io/Storage$Type;

    invoke-static {v0, v1}, Lcom/oneplus/io/StorageUtils;->findStorage(Lcom/oneplus/io/StorageManager;Lcom/oneplus/io/Storage$Type;)Lcom/oneplus/io/Storage;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    if-eqz v0, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->setStoragePosition()V

    .line 119
    :goto_0
    return-void

    .line 103
    :cond_0
    new-instance v0, Lcom/oneplus/camera/ui/menu/StorageMenuItem;

    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    const-string v2, "StorageType"

    iget-object v3, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/camera/ui/menu/StorageMenuItem;-><init>(Lcom/oneplus/base/Settings;Ljava/lang/String;Lcom/oneplus/io/StorageManager;)V

    iput-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    .line 104
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v1, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_TITLE:Lcom/oneplus/base/PropertyKey;

    const v2, 0x7f09000a

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 105
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->setStoragePosition()V

    .line 107
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    if-eqz v0, :cond_3

    .line 114
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 116
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    .line 117
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    const-string v1, "StorageType"

    sget-object v2, Lcom/oneplus/io/Storage$Type;->INTERNAL:Lcom/oneplus/io/Storage$Type;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private isSecureMode()Z
    .locals 3

    .prologue
    .line 125
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StartMode:Lcom/oneplus/camera/StartMode;

    if-nez v1, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 128
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "StartMode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/StartMode;

    iput-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StartMode:Lcom/oneplus/camera/StartMode;

    .line 130
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StartMode:Lcom/oneplus/camera/StartMode;

    sget-object v2, Lcom/oneplus/camera/StartMode;->SECURE_PHOTO:Lcom/oneplus/camera/StartMode;

    if-ne v1, v2, :cond_1

    .line 131
    const/4 v1, 0x1

    .line 133
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onMenuItemClicked(Lcom/oneplus/camera/ui/menu/MenuItem;)V
    .locals 2
    .param p1, "menuItem"    # Lcom/oneplus/camera/ui/menu/MenuItem;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_AboutMenuItem:Lcom/oneplus/camera/ui/menu/AboutMenuItem;

    if-ne p1, v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_AboutMenuItem:Lcom/oneplus/camera/ui/menu/AboutMenuItem;

    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StartMode:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/ui/menu/AboutMenuItem;->showAboutActivity(Lcom/oneplus/camera/StartMode;)V

    .line 229
    :cond_0
    return-void
.end method

.method private registerReceivers()V
    .locals 4

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->isSecureMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ShutdownReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    .line 285
    sget-object v2, Lcom/oneplus/camera/AdvancedSettingsActivity;->TAG:Ljava/lang/String;

    const-string v3, "registerReceivers() - Shutdown receiver"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    new-instance v2, Lcom/oneplus/camera/AdvancedSettingsActivity$3;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$3;-><init>(Lcom/oneplus/camera/AdvancedSettingsActivity;)V

    iput-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 300
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 301
    .local v0, "filterScreenOff":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 304
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 305
    .local v1, "filterUserUnlock":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/oneplus/camera/AdvancedSettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 308
    .end local v0    # "filterScreenOff":Landroid/content/IntentFilter;
    .end local v1    # "filterUserUnlock":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private setStoragePosition()V
    .locals 5

    .prologue
    .line 314
    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    iget-object v3, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    sget-object v4, Lcom/oneplus/io/Storage$Type;->INTERNAL:Lcom/oneplus/io/Storage$Type;

    invoke-static {v2, v3, v4}, Lcom/oneplus/io/StorageUtils;->findStorageFromSettings(Lcom/oneplus/io/StorageManager;Lcom/oneplus/base/Settings;Lcom/oneplus/io/Storage$Type;)Lcom/oneplus/io/Storage;

    move-result-object v1

    .line 315
    .local v1, "storage":Lcom/oneplus/io/Storage;
    const/4 v0, 0x0

    .line 316
    .local v0, "isChecked":Z
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/oneplus/io/Storage;->getType()Lcom/oneplus/io/Storage$Type;

    move-result-object v2

    sget-object v3, Lcom/oneplus/io/Storage$Type;->SD_CARD:Lcom/oneplus/io/Storage$Type;

    if-ne v2, v3, :cond_0

    invoke-interface {v1}, Lcom/oneplus/io/Storage;->isReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 317
    const/4 v0, 0x1

    .line 318
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v3, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_IS_CHECKED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 319
    return-void
.end method

.method private setupMenuItems()V
    .locals 3

    .prologue
    .line 326
    new-instance v0, Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem;

    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    const-string v2, "Location.Save"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem;-><init>(Lcom/oneplus/base/Settings;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_LocationMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    .line 327
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_LocationMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v1, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_TITLE:Lcom/oneplus/base/PropertyKey;

    const v2, 0x7f090003

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 328
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_LocationMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    new-instance v0, Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem;

    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    const-string v2, "ShutterSound"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem;-><init>(Lcom/oneplus/base/Settings;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ShutterSoundMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    .line 332
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ShutterSoundMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v1, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_TITLE:Lcom/oneplus/base/PropertyKey;

    const v2, 0x7f090007

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 333
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ShutterSoundMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    iget-boolean v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_HasRawCaptureSetting:Z

    if-eqz v0, :cond_0

    .line 338
    new-instance v0, Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem;

    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    const-string v2, "RawCapture"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem;-><init>(Lcom/oneplus/base/Settings;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_RawCaptureMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    .line 339
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_RawCaptureMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v1, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_TITLE:Lcom/oneplus/base/PropertyKey;

    const v2, 0x7f090006

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 340
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_RawCaptureMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_IsMirrorSupported:Z

    if-eqz v0, :cond_1

    .line 355
    new-instance v0, Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem;

    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    const-string v2, "IsMirrored"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem;-><init>(Lcom/oneplus/base/Settings;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_IsMirroredMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    .line 356
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_IsMirroredMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v1, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_TITLE:Lcom/oneplus/base/PropertyKey;

    const v2, 0x7f090001

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 357
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_IsMirroredMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    :cond_1
    new-instance v0, Lcom/oneplus/camera/ui/menu/AboutMenuItem;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/menu/AboutMenuItem;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_AboutMenuItem:Lcom/oneplus/camera/ui/menu/AboutMenuItem;

    .line 362
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_AboutMenuItem:Lcom/oneplus/camera/ui/menu/AboutMenuItem;

    sget-object v1, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_TITLE:Lcom/oneplus/base/PropertyKey;

    const v2, 0x7f09000b

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/ui/menu/AboutMenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 363
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_AboutMenuItem:Lcom/oneplus/camera/ui/menu/AboutMenuItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    return-void
.end method

.method private unregisterReceivers()V
    .locals 2

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->isSecureMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ShutdownReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 374
    sget-object v0, Lcom/oneplus/camera/AdvancedSettingsActivity;->TAG:Ljava/lang/String;

    const-string v1, "unregisterReceivers() - Shutdown receiver"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 376
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 379
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 142
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 145
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 148
    .local v1, "extras":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 149
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 151
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 154
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->isSecureMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x80000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 158
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->registerReceivers()V

    .line 161
    const v2, 0x7f030004

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/AdvancedSettingsActivity;->setContentView(I)V

    .line 162
    const v2, 0x7f0b000b

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/AdvancedSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/ui/menu/MenuListView;

    iput-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuListView:Lcom/oneplus/camera/ui/menu/MenuListView;

    .line 163
    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuListView:Lcom/oneplus/camera/ui/menu/MenuListView;

    new-instance v3, Lcom/oneplus/camera/AdvancedSettingsActivity$1;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$1;-><init>(Lcom/oneplus/camera/AdvancedSettingsActivity;)V

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/ui/menu/MenuListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 173
    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuListView:Lcom/oneplus/camera/ui/menu/MenuListView;

    iget-object v3, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuListView:Lcom/oneplus/camera/ui/menu/MenuListView;

    invoke-virtual {v3}, Lcom/oneplus/camera/ui/menu/MenuListView;->getSystemUiVisibility()I

    move-result v3

    or-int/lit8 v3, v3, 0x4

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/ui/menu/MenuListView;->setSystemUiVisibility(I)V

    .line 176
    new-instance v2, Lcom/oneplus/base/Settings;

    const-string v3, "Settings.Name"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Settings.IsVolatile"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-direct {v2, p0, v3, v4}, Lcom/oneplus/base/Settings;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    .line 179
    const-string v2, "IsRawCaptureVisible"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_HasRawCaptureSetting:Z

    .line 180
    const-string v2, "IsSmileCaptureVisible"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_HasSmileCaptureSetting:Z

    .line 182
    invoke-static {}, Lcom/oneplus/camera/CameraApplication;->current()Lcom/oneplus/camera/CameraApplication;

    move-result-object v2

    const-class v3, Lcom/oneplus/io/StorageManager;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/io/StorageManager;

    iput-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    .line 183
    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    if-eqz v2, :cond_2

    .line 185
    new-instance v2, Lcom/oneplus/camera/AdvancedSettingsActivity$2;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$2;-><init>(Lcom/oneplus/camera/AdvancedSettingsActivity;)V

    iput-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageManagerCallBack:Lcom/oneplus/base/PropertyChangedCallback;

    .line 194
    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    sget-object v3, Lcom/oneplus/io/StorageManager;->PROP_STORAGE_LIST:Lcom/oneplus/base/PropertyKey;

    iget-object v4, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageManagerCallBack:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v2, v3, v4}, Lcom/oneplus/io/StorageManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 198
    :cond_2
    const-string v2, "IsMirrorSupported"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_IsMirrorSupported:Z

    .line 201
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->setupMenuItems()V

    .line 202
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->unregisterReceivers()V

    .line 210
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    sget-object v1, Lcom/oneplus/io/StorageManager;->PROP_STORAGE_LIST:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageManagerCallBack:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/io/StorageManager;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 212
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 213
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 220
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 235
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 236
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->finish()V

    .line 238
    const/4 v1, 0x1

    .line 240
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p2}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 248
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 249
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 256
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 259
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_LocationMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v1, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_IS_CHECKED:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    const-string v3, "Location.Save"

    invoke-virtual {v2, v3}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 260
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ShutterSoundMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v1, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_IS_CHECKED:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    const-string v3, "ShutterSound"

    invoke-virtual {v2, v3}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 261
    iget-boolean v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_HasRawCaptureSetting:Z

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_RawCaptureMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v1, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_IS_CHECKED:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    const-string v3, "RawCapture"

    invoke-virtual {v2, v3}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 267
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->handleStorageMenuItem()V

    .line 270
    iget-boolean v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_IsMirrorSupported:Z

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_IsMirroredMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v1, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_IS_CHECKED:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    const-string v3, "IsMirrored"

    invoke-virtual {v2, v3}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuListView:Lcom/oneplus/camera/ui/menu/MenuListView;

    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/ui/menu/MenuListView;->setMenuItems(Ljava/util/List;)V

    .line 275
    return-void
.end method
