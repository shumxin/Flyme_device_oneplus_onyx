.class public Lcom/oneplus/camera/ui/menu/StorageMenuItem;
.super Lcom/oneplus/camera/ui/menu/MenuItem;
.source "StorageMenuItem.java"


# instance fields
.field private final m_Key:Ljava/lang/String;

.field private final m_Settings:Lcom/oneplus/base/Settings;

.field private final m_StorageManager:Lcom/oneplus/io/StorageManager;


# direct methods
.method public constructor <init>(Lcom/oneplus/base/Settings;Ljava/lang/String;Lcom/oneplus/io/StorageManager;)V
    .locals 2
    .param p1, "settings"    # Lcom/oneplus/base/Settings;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "storageManager"    # Lcom/oneplus/io/StorageManager;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/oneplus/camera/ui/menu/MenuItem;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/oneplus/camera/ui/menu/StorageMenuItem;->m_Settings:Lcom/oneplus/base/Settings;

    .line 32
    iput-object p2, p0, Lcom/oneplus/camera/ui/menu/StorageMenuItem;->m_Key:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/oneplus/camera/ui/menu/StorageMenuItem;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    .line 34
    sget-object v0, Lcom/oneplus/camera/ui/menu/StorageMenuItem;->PROP_IS_CHECKED:Lcom/oneplus/base/PropertyKey;

    new-instance v1, Lcom/oneplus/camera/ui/menu/StorageMenuItem$1;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ui/menu/StorageMenuItem$1;-><init>(Lcom/oneplus/camera/ui/menu/StorageMenuItem;)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/menu/StorageMenuItem;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/camera/ui/menu/StorageMenuItem;)Lcom/oneplus/io/StorageManager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/menu/StorageMenuItem;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/oneplus/camera/ui/menu/StorageMenuItem;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/camera/ui/menu/StorageMenuItem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/menu/StorageMenuItem;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/oneplus/camera/ui/menu/StorageMenuItem;->m_Key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/camera/ui/menu/StorageMenuItem;)Lcom/oneplus/base/Settings;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/menu/StorageMenuItem;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/oneplus/camera/ui/menu/StorageMenuItem;->m_Settings:Lcom/oneplus/base/Settings;

    return-object v0
.end method
