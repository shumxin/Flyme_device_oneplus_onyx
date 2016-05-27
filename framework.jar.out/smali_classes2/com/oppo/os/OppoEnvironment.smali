.class public Lcom/oppo/os/OppoEnvironment;
.super Ljava/lang/Object;
.source "OppoEnvironment.java"


# static fields
.field public static final PARENT_STORAGE_DIRECTORY:Ljava/io/File;

.field public static final SUB_STORAGE_DIRECTORY:Ljava/io/File;

.field private static final TAG:Ljava/lang/String; = "OppoEnvironment"

.field private static externalSdDir:Ljava/lang/String;

.field private static internalSdDir:Ljava/lang/String;

.field private static mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 106
    const-string v0, "EXTERNAL_STORAGE"

    const-string v1, "/storage/sdcard0"

    invoke-static {v0, v1}, Lcom/oppo/os/OppoEnvironment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/oppo/os/OppoEnvironment;->PARENT_STORAGE_DIRECTORY:Ljava/io/File;

    .line 109
    const-string v0, "INTERNAL_STORAGE"

    const-string v1, "/storage/sdcard0/external_sd"

    invoke-static {v0, v1}, Lcom/oppo/os/OppoEnvironment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/oppo/os/OppoEnvironment;->SUB_STORAGE_DIRECTORY:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "variableName"    # Ljava/lang/String;
    .param p1, "defaultPath"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "path":Ljava/lang/String;
    if-nez v0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getExternalSdDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-static {p0}, Lcom/oppo/os/OppoEnvironment;->update(Landroid/content/Context;)V

    .line 72
    sget-object v0, Lcom/oppo/os/OppoEnvironment;->externalSdDir:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/oppo/os/OppoEnvironment;->externalSdDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getExternalSdState(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-static {p0}, Lcom/oppo/os/OppoEnvironment;->update(Landroid/content/Context;)V

    .line 88
    sget-object v0, Lcom/oppo/os/OppoEnvironment;->externalSdDir:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/oppo/os/OppoEnvironment;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v1, Lcom/oppo/os/OppoEnvironment;->externalSdDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInternalSdDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-static {p0}, Lcom/oppo/os/OppoEnvironment;->update(Landroid/content/Context;)V

    .line 64
    sget-object v0, Lcom/oppo/os/OppoEnvironment;->internalSdDir:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/oppo/os/OppoEnvironment;->internalSdDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInternalSdState(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-static {p0}, Lcom/oppo/os/OppoEnvironment;->update(Landroid/content/Context;)V

    .line 80
    sget-object v0, Lcom/oppo/os/OppoEnvironment;->internalSdDir:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/oppo/os/OppoEnvironment;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v1, Lcom/oppo/os/OppoEnvironment;->internalSdDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isExternalSDRemoved(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    invoke-static {p0}, Lcom/oppo/os/OppoEnvironment;->update(Landroid/content/Context;)V

    .line 96
    sget-object v0, Lcom/oppo/os/OppoEnvironment;->externalSdDir:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 97
    const/4 v0, 0x1

    .line 99
    :goto_0
    return v0

    :cond_0
    const-string v0, "removed"

    sget-object v1, Lcom/oppo/os/OppoEnvironment;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v2, Lcom/oppo/os/OppoEnvironment;->externalSdDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static update(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const-string v2, "storage"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    sput-object v2, Lcom/oppo/os/OppoEnvironment;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 41
    sget-object v2, Lcom/oppo/os/OppoEnvironment;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v2, :cond_1

    .line 57
    :cond_0
    return-void

    .line 44
    :cond_1
    sget-object v2, Lcom/oppo/os/OppoEnvironment;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 46
    .local v1, "volumes":[Landroid/os/storage/StorageVolume;
    if-eqz v1, :cond_0

    .line 50
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 51
    aget-object v2, v1, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 52
    aget-object v2, v1, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/oppo/os/OppoEnvironment;->externalSdDir:Ljava/lang/String;

    .line 50
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_2
    aget-object v2, v1, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/oppo/os/OppoEnvironment;->internalSdDir:Ljava/lang/String;

    goto :goto_1
.end method
