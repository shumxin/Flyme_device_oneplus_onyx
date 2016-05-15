.class public Lcom/android/server/theme/MaterialThemeService;
.super Landroid/service/theme/IMaterialTheme$Stub;
.source "MaterialThemeService.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "MaterialThemeService"

.field private static sSystemContext:Landroid/content/Context;


# instance fields
.field private mColor:Ljava/lang/String;

.field private final mFile:Landroid/util/AtomicFile;

.field private mRead:Z

.field private mTheme:I

.field private final materialThemeListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/service/theme/IOnMaterialThemeChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/service/theme/IMaterialTheme$Stub;-><init>()V

    .line 70
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/theme/MaterialThemeService;->materialThemeListeners:Landroid/os/RemoteCallbackList;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/theme/MaterialThemeService;->mRead:Z

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/theme/MaterialThemeService;->mColor:Ljava/lang/String;

    .line 77
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/theme/MaterialThemeService;->mTheme:I

    .line 80
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/system"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "material.theme"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/theme/MaterialThemeService;->mFile:Landroid/util/AtomicFile;

    .line 82
    return-void
.end method

.method private readTheme(Z)V
    .locals 8
    .param p1, "force"    # Z

    .prologue
    .line 187
    if-nez p1, :cond_0

    iget-boolean v4, p0, Lcom/android/server/theme/MaterialThemeService;->mRead:Z

    if-eqz v4, :cond_0

    .line 226
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v5, p0, Lcom/android/server/theme/MaterialThemeService;->mFile:Landroid/util/AtomicFile;

    monitor-enter v5

    .line 191
    const/4 v3, 0x0

    .line 193
    .local v3, "stream":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/theme/MaterialThemeService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 202
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 203
    .local v2, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "line":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 205
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/theme/MaterialThemeService;->mTheme:I

    .line 209
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 211
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/theme/MaterialThemeService;->mColor:Ljava/lang/String;

    .line 215
    :goto_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/theme/MaterialThemeService;->mRead:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 219
    if-eqz v3, :cond_1

    .line 220
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 225
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :goto_3
    :try_start_3
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 194
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    const-string v4, "MaterialThemeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Creating theme file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/theme/MaterialThemeService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-direct {p0}, Lcom/android/server/theme/MaterialThemeService;->writeTheme()V

    .line 199
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 207
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :cond_2
    :try_start_5
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/theme/MaterialThemeService;->mTheme:I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 216
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v4

    .line 219
    if-eqz v3, :cond_1

    .line 220
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 222
    :catch_2
    move-exception v4

    goto :goto_3

    .line 213
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :cond_3
    :try_start_7
    iput-object v1, p0, Lcom/android/server/theme/MaterialThemeService;->mColor:Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    .line 218
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    .line 219
    if-eqz v3, :cond_4

    .line 220
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 223
    :cond_4
    :goto_4
    :try_start_9
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 222
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v4

    goto :goto_3

    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v6

    goto :goto_4
.end method

.method public static setSystemContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    sput-object p0, Lcom/android/server/theme/MaterialThemeService;->sSystemContext:Landroid/content/Context;

    .line 68
    return-void
.end method

.method private writeTheme()V
    .locals 7

    .prologue
    .line 229
    iget-object v4, p0, Lcom/android/server/theme/MaterialThemeService;->mFile:Landroid/util/AtomicFile;

    monitor-enter v4

    .line 230
    const/4 v2, 0x0

    .line 232
    .local v2, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/theme/MaterialThemeService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 240
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/android/server/theme/MaterialThemeService;->mTheme:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 241
    iget-object v3, p0, Lcom/android/server/theme/MaterialThemeService;->mColor:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, ""

    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 242
    iget-object v3, p0, Lcom/android/server/theme/MaterialThemeService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 248
    if-eqz v2, :cond_0

    .line 249
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 254
    :cond_0
    :goto_1
    :try_start_3
    monitor-exit v4

    .line 255
    :goto_2
    return-void

    .line 233
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "MaterialThemeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail writing file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    monitor-exit v4

    goto :goto_2

    .line 254
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 241
    :cond_1
    :try_start_4
    iget-object v3, p0, Lcom/android/server/theme/MaterialThemeService;->mColor:Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 243
    :catch_1
    move-exception v1

    .line 244
    .local v1, "ex":Ljava/io/IOException;
    :try_start_5
    iget-object v3, p0, Lcom/android/server/theme/MaterialThemeService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 245
    const-string v3, "MaterialThemeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to write theme: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 248
    if-eqz v2, :cond_0

    .line 249
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 251
    :catch_2
    move-exception v3

    goto :goto_1

    .line 247
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_1
    move-exception v3

    .line 248
    if-eqz v2, :cond_2

    .line 249
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 252
    :cond_2
    :goto_3
    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 251
    :catch_3
    move-exception v3

    goto :goto_1

    :catch_4
    move-exception v5

    goto :goto_3
.end method


# virtual methods
.method public addMaterialThemeChangedListener(Landroid/service/theme/IOnMaterialThemeChangedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/service/theme/IOnMaterialThemeChangedListener;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/server/theme/MaterialThemeService;->materialThemeListeners:Landroid/os/RemoteCallbackList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 180
    return-void
.end method

.method public getColorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/theme/MaterialThemeService;->readTheme(Z)V

    .line 166
    iget-object v0, p0, Lcom/android/server/theme/MaterialThemeService;->mColor:Ljava/lang/String;

    return-object v0
.end method

.method public getForceColorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/theme/MaterialThemeService;->readTheme(Z)V

    .line 175
    iget-object v0, p0, Lcom/android/server/theme/MaterialThemeService;->mColor:Ljava/lang/String;

    return-object v0
.end method

.method public getForceMaterialTheme()I
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/theme/MaterialThemeService;->readTheme(Z)V

    .line 132
    iget v0, p0, Lcom/android/server/theme/MaterialThemeService;->mTheme:I

    return v0
.end method

.method public getMaterialTheme()I
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/theme/MaterialThemeService;->readTheme(Z)V

    .line 121
    iget v0, p0, Lcom/android/server/theme/MaterialThemeService;->mTheme:I

    return v0
.end method

.method public removeMaterialThemeChangedListener(Landroid/service/theme/IOnMaterialThemeChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/service/theme/IOnMaterialThemeChangedListener;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/server/theme/MaterialThemeService;->materialThemeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 184
    return-void
.end method

.method public setColorCode(Ljava/lang/String;)V
    .locals 6
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/server/theme/MaterialThemeService;->mColor:Ljava/lang/String;

    .line 141
    invoke-direct {p0}, Lcom/android/server/theme/MaterialThemeService;->writeTheme()V

    .line 142
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 143
    .local v2, "ident":J
    iget-object v4, p0, Lcom/android/server/theme/MaterialThemeService;->materialThemeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 145
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 147
    :try_start_0
    iget-object v4, p0, Lcom/android/server/theme/MaterialThemeService;->materialThemeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/service/theme/IOnMaterialThemeChangedListener;

    invoke-interface {v4}, Landroid/service/theme/IOnMaterialThemeChangedListener;->dispatchColorCodeChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_0
    iget-object v4, p0, Lcom/android/server/theme/MaterialThemeService;->materialThemeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 156
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 158
    return-void

    .line 155
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/android/server/theme/MaterialThemeService;->materialThemeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 156
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 149
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public setMaterialTheme(I)V
    .locals 7
    .param p1, "theme"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/android/server/theme/MaterialThemeService;->mTheme:I

    .line 90
    sget-object v4, Lcom/android/server/theme/MaterialThemeService;->sSystemContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    .line 91
    sget-object v5, Lcom/android/server/theme/MaterialThemeService;->sSystemContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/server/theme/MaterialThemeService;->mTheme:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1

    const v4, 0x1030128

    :goto_0
    invoke-virtual {v5, v4}, Landroid/content/Context;->setTheme(I)V

    .line 94
    :cond_0
    invoke-direct {p0}, Lcom/android/server/theme/MaterialThemeService;->writeTheme()V

    .line 95
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 96
    .local v2, "ident":J
    iget-object v4, p0, Lcom/android/server/theme/MaterialThemeService;->materialThemeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 98
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 100
    :try_start_0
    iget-object v4, p0, Lcom/android/server/theme/MaterialThemeService;->materialThemeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/service/theme/IOnMaterialThemeChangedListener;

    invoke-interface {v4}, Landroid/service/theme/IOnMaterialThemeChangedListener;->dispatchMaterialThemeChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 91
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v2    # "ident":J
    :cond_1
    const v4, 0x103013f

    goto :goto_0

    .line 108
    .restart local v0    # "i":I
    .restart local v1    # "n":I
    .restart local v2    # "ident":J
    :cond_2
    iget-object v4, p0, Lcom/android/server/theme/MaterialThemeService;->materialThemeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 109
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 111
    return-void

    .line 108
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/android/server/theme/MaterialThemeService;->materialThemeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 109
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 102
    :catch_0
    move-exception v4

    goto :goto_2
.end method
