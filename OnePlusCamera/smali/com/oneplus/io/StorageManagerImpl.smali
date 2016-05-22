.class public Lcom/oneplus/io/StorageManagerImpl;
.super Lcom/oneplus/base/component/BasicComponent;
.source "StorageManagerImpl.java"

# interfaces
.implements Lcom/oneplus/io/StorageManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/io/StorageManagerImpl$3;
    }
.end annotation


# static fields
.field private static STORAGE_INTERNAL_L:I

.field private static STORAGE_SD_CARD_L:I

.field private static STORAGE_USB_L:I


# instance fields
.field private m_BroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private m_Context:Landroid/content/Context;

.field private m_GetDescriptionId:Ljava/lang/reflect/Method;

.field private m_GetPath:Ljava/lang/reflect/Method;

.field private m_GetVolumes:Ljava/lang/reflect/Method;

.field private m_MediaMounted:Landroid/content/IntentFilter;

.field private m_ShutterDown:Landroid/content/IntentFilter;

.field private m_ShutterDownReceiver:Landroid/content/BroadcastReceiver;

.field private m_StorageManager:Landroid/os/storage/StorageManager;

.field private m_StorageVolumeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private m_StorageVolumes:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 29
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "storage_internal"

    const-string v2, "string"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oneplus/io/StorageManagerImpl;->STORAGE_INTERNAL_L:I

    .line 30
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "storage_sd_card"

    const-string v2, "string"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oneplus/io/StorageManagerImpl;->STORAGE_SD_CARD_L:I

    .line 31
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "storage_usb"

    const-string v2, "string"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oneplus/io/StorageManagerImpl;->STORAGE_USB_L:I

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/base/component/ComponentOwner;Landroid/content/Context;)V
    .locals 3
    .param p1, "owner"    # Lcom/oneplus/base/component/ComponentOwner;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 45
    const-string v0, "StorageManager"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/base/component/BasicComponent;-><init>(Ljava/lang/String;Lcom/oneplus/base/component/ComponentOwner;Z)V

    .line 23
    iput-object v2, p0, Lcom/oneplus/io/StorageManagerImpl;->m_Context:Landroid/content/Context;

    .line 24
    iput-object v2, p0, Lcom/oneplus/io/StorageManagerImpl;->m_MediaMounted:Landroid/content/IntentFilter;

    .line 25
    iput-object v2, p0, Lcom/oneplus/io/StorageManagerImpl;->m_BroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 26
    iput-object v2, p0, Lcom/oneplus/io/StorageManagerImpl;->m_StorageManager:Landroid/os/storage/StorageManager;

    .line 33
    iput-object v2, p0, Lcom/oneplus/io/StorageManagerImpl;->m_StorageVolumeClass:Ljava/lang/Class;

    .line 34
    iput-object v2, p0, Lcom/oneplus/io/StorageManagerImpl;->m_StorageVolumes:[Ljava/lang/Object;

    .line 35
    iput-object v2, p0, Lcom/oneplus/io/StorageManagerImpl;->m_GetVolumes:Ljava/lang/reflect/Method;

    .line 36
    iput-object v2, p0, Lcom/oneplus/io/StorageManagerImpl;->m_GetDescriptionId:Ljava/lang/reflect/Method;

    .line 37
    iput-object v2, p0, Lcom/oneplus/io/StorageManagerImpl;->m_GetPath:Ljava/lang/reflect/Method;

    .line 46
    iput-object p2, p0, Lcom/oneplus/io/StorageManagerImpl;->m_Context:Landroid/content/Context;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/io/StorageManagerImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/io/StorageManagerImpl;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/oneplus/io/StorageManagerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/io/StorageManagerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/io/StorageManagerImpl;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/oneplus/io/StorageManagerImpl;->is_L_SDKVersion()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/io/StorageManagerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/io/StorageManagerImpl;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/oneplus/io/StorageManagerImpl;->scans_L_Storages()V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/io/StorageManagerImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/io/StorageManagerImpl;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/oneplus/io/StorageManagerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/io/StorageManagerImpl;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/io/StorageManagerImpl;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/oneplus/io/StorageManagerImpl;->m_BroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$402(Lcom/oneplus/io/StorageManagerImpl;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/io/StorageManagerImpl;
    .param p1, "x1"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/oneplus/io/StorageManagerImpl;->m_BroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$500(Lcom/oneplus/io/StorageManagerImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/io/StorageManagerImpl;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/oneplus/io/StorageManagerImpl;->m_Context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/io/StorageManagerImpl;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/io/StorageManagerImpl;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/oneplus/io/StorageManagerImpl;->m_ShutterDownReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$602(Lcom/oneplus/io/StorageManagerImpl;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/io/StorageManagerImpl;
    .param p1, "x1"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/oneplus/io/StorageManagerImpl;->m_ShutterDownReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$702(Lcom/oneplus/io/StorageManagerImpl;Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/io/StorageManagerImpl;
    .param p1, "x1"    # Landroid/content/IntentFilter;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/oneplus/io/StorageManagerImpl;->m_MediaMounted:Landroid/content/IntentFilter;

    return-object p1
.end method

.method static synthetic access$802(Lcom/oneplus/io/StorageManagerImpl;Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/io/StorageManagerImpl;
    .param p1, "x1"    # Landroid/content/IntentFilter;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/oneplus/io/StorageManagerImpl;->m_ShutterDown:Landroid/content/IntentFilter;

    return-object p1
.end method

.method private instanceStorage(Lcom/oneplus/io/Storage$Type;Ljava/lang/String;)Lcom/oneplus/io/Storage;
    .locals 2
    .param p1, "type"    # Lcom/oneplus/io/Storage$Type;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 203
    sget-object v0, Lcom/oneplus/io/StorageManagerImpl$3;->$SwitchMap$com$oneplus$io$Storage$Type:[I

    invoke-virtual {p1}, Lcom/oneplus/io/Storage$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 212
    new-instance v0, Lcom/oneplus/io/StorageImpl;

    sget-object v1, Lcom/oneplus/io/Storage$Type;->UNKNOWN:Lcom/oneplus/io/Storage$Type;

    invoke-direct {v0, v1, p2}, Lcom/oneplus/io/StorageImpl;-><init>(Lcom/oneplus/io/Storage$Type;Ljava/lang/String;)V

    :goto_0
    return-object v0

    .line 206
    :pswitch_0
    new-instance v0, Lcom/oneplus/io/StorageImpl;

    sget-object v1, Lcom/oneplus/io/Storage$Type;->INTERNAL:Lcom/oneplus/io/Storage$Type;

    invoke-direct {v0, v1, p2}, Lcom/oneplus/io/StorageImpl;-><init>(Lcom/oneplus/io/Storage$Type;Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :pswitch_1
    new-instance v0, Lcom/oneplus/io/StorageImpl;

    sget-object v1, Lcom/oneplus/io/Storage$Type;->SD_CARD:Lcom/oneplus/io/Storage$Type;

    invoke-direct {v0, v1, p2}, Lcom/oneplus/io/StorageImpl;-><init>(Lcom/oneplus/io/Storage$Type;Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :pswitch_2
    new-instance v0, Lcom/oneplus/io/StorageImpl;

    sget-object v1, Lcom/oneplus/io/Storage$Type;->USB:Lcom/oneplus/io/Storage$Type;

    invoke-direct {v0, v1, p2}, Lcom/oneplus/io/StorageImpl;-><init>(Lcom/oneplus/io/Storage$Type;Ljava/lang/String;)V

    goto :goto_0

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private is_L_SDKVersion()Z
    .locals 2

    .prologue
    .line 220
    const/16 v0, 0x16

    .line 221
    .local v0, "version":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v0, :cond_0

    .line 223
    const/4 v1, 0x0

    .line 225
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private registerReceivers()V
    .locals 3

    .prologue
    .line 53
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/oneplus/io/StorageManagerImpl;->m_MediaMounted:Landroid/content/IntentFilter;

    .line 54
    iget-object v0, p0, Lcom/oneplus/io/StorageManagerImpl;->m_MediaMounted:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/oneplus/io/StorageManagerImpl;->m_MediaMounted:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/oneplus/io/StorageManagerImpl;->m_MediaMounted:Landroid/content/IntentFilter;

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 57
    new-instance v0, Lcom/oneplus/io/StorageManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/oneplus/io/StorageManagerImpl$1;-><init>(Lcom/oneplus/io/StorageManagerImpl;)V

    iput-object v0, p0, Lcom/oneplus/io/StorageManagerImpl;->m_BroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 77
    iget-object v0, p0, Lcom/oneplus/io/StorageManagerImpl;->m_Context:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/io/StorageManagerImpl;->m_BroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/oneplus/io/StorageManagerImpl;->m_MediaMounted:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 80
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/oneplus/io/StorageManagerImpl;->m_ShutterDown:Landroid/content/IntentFilter;

    .line 81
    iget-object v0, p0, Lcom/oneplus/io/StorageManagerImpl;->m_ShutterDown:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    new-instance v0, Lcom/oneplus/io/StorageManagerImpl$2;

    invoke-direct {v0, p0}, Lcom/oneplus/io/StorageManagerImpl$2;-><init>(Lcom/oneplus/io/StorageManagerImpl;)V

    iput-object v0, p0, Lcom/oneplus/io/StorageManagerImpl;->m_ShutterDownReceiver:Landroid/content/BroadcastReceiver;

    .line 100
    iget-object v0, p0, Lcom/oneplus/io/StorageManagerImpl;->m_Context:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/io/StorageManagerImpl;->m_ShutterDownReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/oneplus/io/StorageManagerImpl;->m_ShutterDown:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    return-void
.end method

.method private scans_L_Storages()V
    .locals 13

    .prologue
    .line 154
    :try_start_0
    iget-object v10, p0, Lcom/oneplus/io/StorageManagerImpl;->m_StorageManager:Landroid/os/storage/StorageManager;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/oneplus/io/StorageManagerImpl;->m_GetVolumes:Ljava/lang/reflect/Method;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/oneplus/io/StorageManagerImpl;->m_GetPath:Ljava/lang/reflect/Method;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/oneplus/io/StorageManagerImpl;->m_GetDescriptionId:Ljava/lang/reflect/Method;

    if-nez v10, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v10, p0, Lcom/oneplus/io/StorageManagerImpl;->m_GetVolumes:Ljava/lang/reflect/Method;

    iget-object v11, p0, Lcom/oneplus/io/StorageManagerImpl;->m_StorageManager:Landroid/os/storage/StorageManager;

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Object;

    check-cast v10, [Ljava/lang/Object;

    iput-object v10, p0, Lcom/oneplus/io/StorageManagerImpl;->m_StorageVolumes:[Ljava/lang/Object;

    .line 158
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v5, "newlist":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/io/Storage;>;"
    iget-object v0, p0, Lcom/oneplus/io/StorageManagerImpl;->m_StorageVolumes:[Ljava/lang/Object;

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_6

    aget-object v8, v0, v3

    .line 162
    .local v8, "storageVolume":Ljava/lang/Object;
    iget-object v10, p0, Lcom/oneplus/io/StorageManagerImpl;->m_GetPath:Ljava/lang/reflect/Method;

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v10, v8, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 164
    .local v6, "path":Ljava/lang/String;
    iget-object v10, p0, Lcom/oneplus/io/StorageManagerImpl;->m_GetDescriptionId:Ljava/lang/reflect/Method;

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v10, v8, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 165
    .local v1, "decrip":I
    sget-object v9, Lcom/oneplus/io/Storage$Type;->UNKNOWN:Lcom/oneplus/io/Storage$Type;

    .line 166
    .local v9, "type":Lcom/oneplus/io/Storage$Type;
    sget v10, Lcom/oneplus/io/StorageManagerImpl;->STORAGE_INTERNAL_L:I

    if-ne v1, v10, :cond_2

    .line 168
    sget-object v9, Lcom/oneplus/io/Storage$Type;->INTERNAL:Lcom/oneplus/io/Storage$Type;

    .line 183
    :goto_2
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Landroid/os/Environment;->getExternalStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    .line 184
    .local v7, "state":Ljava/lang/String;
    const-string v10, "mounted"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 159
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 170
    .end local v7    # "state":Ljava/lang/String;
    :cond_2
    sget v10, Lcom/oneplus/io/StorageManagerImpl;->STORAGE_SD_CARD_L:I

    if-ne v1, v10, :cond_3

    .line 172
    sget-object v9, Lcom/oneplus/io/Storage$Type;->SD_CARD:Lcom/oneplus/io/Storage$Type;

    goto :goto_2

    .line 174
    :cond_3
    sget v10, Lcom/oneplus/io/StorageManagerImpl;->STORAGE_USB_L:I

    if-ne v1, v10, :cond_4

    .line 176
    sget-object v9, Lcom/oneplus/io/Storage$Type;->USB:Lcom/oneplus/io/Storage$Type;

    goto :goto_2

    .line 180
    :cond_4
    sget-object v9, Lcom/oneplus/io/Storage$Type;->UNKNOWN:Lcom/oneplus/io/Storage$Type;

    goto :goto_2

    .line 186
    .restart local v7    # "state":Ljava/lang/String;
    :cond_5
    iget-object v10, p0, Lcom/oneplus/io/StorageManagerImpl;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Path: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ,Type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ,decrip: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-direct {p0, v9, v6}, Lcom/oneplus/io/StorageManagerImpl;->instanceStorage(Lcom/oneplus/io/Storage$Type;Ljava/lang/String;)Lcom/oneplus/io/Storage;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 193
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v1    # "decrip":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "newlist":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/io/Storage;>;"
    .end local v6    # "path":Ljava/lang/String;
    .end local v7    # "state":Ljava/lang/String;
    .end local v8    # "storageVolume":Ljava/lang/Object;
    .end local v9    # "type":Lcom/oneplus/io/Storage$Type;
    :catch_0
    move-exception v2

    .line 195
    .local v2, "e":Ljava/lang/Throwable;
    iget-object v10, p0, Lcom/oneplus/io/StorageManagerImpl;->TAG:Ljava/lang/String;

    const-string v11, "failed to scans_L_Storages"

    invoke-static {v10, v11, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 191
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v0    # "arr$":[Ljava/lang/Object;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "newlist":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/io/Storage;>;"
    :cond_6
    :try_start_1
    sget-object v10, Lcom/oneplus/io/StorageManagerImpl;->PROP_STORAGE_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v10, v5}, Lcom/oneplus/io/StorageManagerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method protected onDeinitialize()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 140
    iget-object v0, p0, Lcom/oneplus/io/StorageManagerImpl;->m_Context:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/io/StorageManagerImpl;->m_BroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 141
    iput-object v2, p0, Lcom/oneplus/io/StorageManagerImpl;->m_MediaMounted:Landroid/content/IntentFilter;

    .line 142
    iput-object v2, p0, Lcom/oneplus/io/StorageManagerImpl;->m_BroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 143
    iget-object v0, p0, Lcom/oneplus/io/StorageManagerImpl;->m_Context:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/io/StorageManagerImpl;->m_ShutterDownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 144
    iput-object v2, p0, Lcom/oneplus/io/StorageManagerImpl;->m_ShutterDown:Landroid/content/IntentFilter;

    .line 145
    iput-object v2, p0, Lcom/oneplus/io/StorageManagerImpl;->m_ShutterDownReceiver:Landroid/content/BroadcastReceiver;

    .line 146
    iput-object v2, p0, Lcom/oneplus/io/StorageManagerImpl;->m_Context:Landroid/content/Context;

    .line 148
    return-void
.end method

.method protected onInitialize()V
    .locals 4

    .prologue
    .line 107
    iget-object v1, p0, Lcom/oneplus/io/StorageManagerImpl;->m_Context:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/oneplus/io/StorageManagerImpl;->TAG:Ljava/lang/String;

    const-string v2, "onInitialize"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Lcom/oneplus/io/StorageManagerImpl;->registerReceivers()V

    .line 114
    iget-object v1, p0, Lcom/oneplus/io/StorageManagerImpl;->m_Context:Landroid/content/Context;

    const-string v2, "storage"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/oneplus/io/StorageManagerImpl;->m_StorageManager:Landroid/os/storage/StorageManager;

    .line 117
    invoke-direct {p0}, Lcom/oneplus/io/StorageManagerImpl;->is_L_SDKVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/io/StorageManagerImpl;->m_StorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getVolumeList"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/io/StorageManagerImpl;->m_GetVolumes:Ljava/lang/reflect/Method;

    .line 122
    const-string v1, "android.os.storage.StorageVolume"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/io/StorageManagerImpl;->m_StorageVolumeClass:Ljava/lang/Class;

    .line 124
    iget-object v1, p0, Lcom/oneplus/io/StorageManagerImpl;->m_StorageVolumeClass:Ljava/lang/Class;

    const-string v2, "getDescriptionId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/io/StorageManagerImpl;->m_GetDescriptionId:Ljava/lang/reflect/Method;

    .line 126
    iget-object v1, p0, Lcom/oneplus/io/StorageManagerImpl;->m_StorageVolumeClass:Ljava/lang/Class;

    const-string v2, "getPath"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/io/StorageManagerImpl;->m_GetPath:Ljava/lang/reflect/Method;

    .line 127
    invoke-direct {p0}, Lcom/oneplus/io/StorageManagerImpl;->scans_L_Storages()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/io/StorageManagerImpl;->TAG:Ljava/lang/String;

    const-string v2, "onInitialize failed"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
