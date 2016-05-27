.class public Lcom/android/server/am/OppoProtectEyeManagerService;
.super Ljava/lang/Object;
.source "OppoProtectEyeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OppoProtectEyeManagerService$FileObserverPolicy;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static OppoProtectEyeManagerService:Lcom/android/server/am/OppoProtectEyeManagerService; = null

.field private static final PROTECT_EYE_DIR:Ljava/lang/String; = "/data/system/protecteye"

.field private static final PROTECT_EYE_FEATURE_NAME:Ljava/lang/String; = "oppo.eye.protection.support"

.field private static final PROTECT_EYE_STATUS_PATH:Ljava/lang/String; = "/data/system/protecteye/status.xml"

.field private static final PROTECT_EYE_WHITE_PATH:Ljava/lang/String; = "/data/system/protecteye/whitelist.xml"

.field private static final TAG:Ljava/lang/String; = "OppoProtectEyeManagerService"

.field private static mHaveProtectEyeFeature:Z


# instance fields
.field private mProtectEyeStatus:Z

.field private mProtectEyeStatusFileObserver:Lcom/android/server/am/OppoProtectEyeManagerService$FileObserverPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    const-string v0, "persist.sys.assert.panic"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OppoProtectEyeManagerService;->DEBUG:Z

    .line 46
    sput-boolean v1, Lcom/android/server/am/OppoProtectEyeManagerService;->mHaveProtectEyeFeature:Z

    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OppoProtectEyeManagerService;->OppoProtectEyeManagerService:Lcom/android/server/am/OppoProtectEyeManagerService;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/OppoProtectEyeManagerService;->mProtectEyeStatus:Z

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/OppoProtectEyeManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OppoProtectEyeManagerService;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/server/am/OppoProtectEyeManagerService;->loadStatus()V

    return-void
.end method

.method private changeMod()V
    .locals 4

    .prologue
    .line 172
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "chmod 744 /data/system/protecteye"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 173
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "chmod 777 /data/system/protecteye/status.xml"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 174
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "chmod 777 /data/system/protecteye/whitelist.xml"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "OppoProtectEyeManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "fromFile"    # Ljava/lang/String;
    .param p2, "toFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    .local v1, "targetFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    .local v0, "sourceFile":Ljava/io/File;
    invoke-static {v0, v1}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    goto :goto_0
.end method

.method public static final getInstance()Lcom/android/server/am/OppoProtectEyeManagerService;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/server/am/OppoProtectEyeManagerService;->OppoProtectEyeManagerService:Lcom/android/server/am/OppoProtectEyeManagerService;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/android/server/am/OppoProtectEyeManagerService;

    invoke-direct {v0}, Lcom/android/server/am/OppoProtectEyeManagerService;-><init>()V

    sput-object v0, Lcom/android/server/am/OppoProtectEyeManagerService;->OppoProtectEyeManagerService:Lcom/android/server/am/OppoProtectEyeManagerService;

    .line 104
    :cond_0
    sget-object v0, Lcom/android/server/am/OppoProtectEyeManagerService;->OppoProtectEyeManagerService:Lcom/android/server/am/OppoProtectEyeManagerService;

    return-object v0
.end method

.method private initDir()V
    .locals 5

    .prologue
    .line 182
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/protecteye"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 184
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 187
    :cond_0
    const-string v2, "/system/protecteye/status.xml"

    const-string v3, "/data/system/protecteye/status.xml"

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/OppoProtectEyeManagerService;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v2, "/system/protecteye/whitelist.xml"

    const-string v3, "/data/system/protecteye/whitelist.xml"

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/OppoProtectEyeManagerService;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-direct {p0}, Lcom/android/server/am/OppoProtectEyeManagerService;->changeMod()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .end local v1    # "file":Ljava/io/File;
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "OppoProtectEyeManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mkdir failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadStatus()V
    .locals 6

    .prologue
    .line 206
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/system/protecteye/status.xml"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    .local v1, "file":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 209
    .local v2, "stream":Ljava/io/FileInputStream;
    invoke-direct {p0, v2}, Lcom/android/server/am/OppoProtectEyeManagerService;->readStatusFromFile(Ljava/io/FileInputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 211
    if-eqz v2, :cond_0

    .line 213
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 221
    .end local v2    # "stream":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return-void

    .line 214
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string v3, "OppoProtectEyeManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to close state FileInputStream "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 218
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 219
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v3, "OppoProtectEyeManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readStatusFromFile(Ljava/io/FileInputStream;)V
    .locals 9
    .param p1, "stream"    # Ljava/io/FileInputStream;

    .prologue
    const/4 v8, 0x1

    .line 225
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 226
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x0

    invoke-interface {v1, p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 230
    :cond_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 231
    .local v4, "type":I
    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 232
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 233
    .local v3, "tag":Ljava/lang/String;
    const-string v5, "p"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 234
    const/4 v5, 0x0

    const-string v6, "att"

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, "sts":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 236
    const-string v5, "true"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 237
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/am/OppoProtectEyeManagerService;->mProtectEyeStatus:Z

    .line 241
    :goto_0
    const-string v5, "OppoProtectEyeManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mProtectEyeStatus == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/am/OppoProtectEyeManagerService;->mProtectEyeStatus:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    .end local v2    # "sts":Ljava/lang/String;
    .end local v3    # "tag":Ljava/lang/String;
    :cond_1
    if-ne v4, v8, :cond_0

    .line 258
    if-eqz p1, :cond_2

    .line 259
    :try_start_1
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 265
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "type":I
    :cond_2
    :goto_1
    return-void

    .line 239
    .restart local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "sts":Ljava/lang/String;
    .restart local v3    # "tag":Ljava/lang/String;
    .restart local v4    # "type":I
    :cond_3
    const/4 v5, 0x0

    :try_start_2
    iput-boolean v5, p0, Lcom/android/server/am/OppoProtectEyeManagerService;->mProtectEyeStatus:Z
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 246
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "sts":Ljava/lang/String;
    .end local v3    # "tag":Ljava/lang/String;
    .end local v4    # "type":I
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/NullPointerException;
    :try_start_3
    const-string v5, "OppoProtectEyeManagerService"

    const-string v6, "failed parsing "

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 258
    if-eqz p1, :cond_2

    .line 259
    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 261
    :catch_1
    move-exception v0

    .line 262
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 261
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "type":I
    :catch_2
    move-exception v0

    .line 262
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 248
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "type":I
    :catch_3
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_5
    const-string v5, "OppoProtectEyeManagerService"

    const-string v6, "failed parsing "

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 258
    if-eqz p1, :cond_2

    .line 259
    :try_start_6
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 261
    :catch_4
    move-exception v0

    .line 262
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 250
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 251
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_7
    const-string v5, "OppoProtectEyeManagerService"

    const-string v6, "failed parsing "

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 258
    if-eqz p1, :cond_2

    .line 259
    :try_start_8
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_1

    .line 261
    :catch_6
    move-exception v0

    .line 262
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 252
    .end local v0    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v0

    .line 253
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_9
    const-string v5, "OppoProtectEyeManagerService"

    const-string v6, "failed parsing "

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 258
    if-eqz p1, :cond_2

    .line 259
    :try_start_a
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_1

    .line 261
    :catch_8
    move-exception v0

    .line 262
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 254
    .end local v0    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_b
    const-string v5, "OppoProtectEyeManagerService"

    const-string v6, "failed parsing "

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 258
    if-eqz p1, :cond_2

    .line 259
    :try_start_c
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    goto :goto_1

    .line 261
    :catch_a
    move-exception v0

    .line 262
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 257
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 258
    if-eqz p1, :cond_4

    .line 259
    :try_start_d
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    .line 263
    :cond_4
    :goto_2
    throw v5

    .line 261
    :catch_b
    move-exception v0

    .line 262
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public getProtectEyeEnable()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/server/am/OppoProtectEyeManagerService;->mProtectEyeStatus:Z

    return v0
.end method

.method public handleProtectEyeMode(Landroid/content/Context;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "next"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 120
    if-nez p3, :cond_1

    .line 121
    sget-boolean v0, Lcom/android/server/am/OppoProtectEyeManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 122
    const-string v0, "OppoProtectEyeManagerService"

    const-string v1, "handleProtectEyeMode next == null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    if-eqz p2, :cond_5

    .line 127
    iget-object v0, p3, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 128
    sget-boolean v0, Lcom/android/server/am/OppoProtectEyeManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 129
    const-string v0, "OppoProtectEyeManagerService"

    const-string v1, "handleProtectEyeMode: next.packageName == null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 133
    :cond_2
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 134
    iget-object v0, p3, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p3, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/OppoProtectEyeManagerService;->sendProtectEyeBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_3
    sget-boolean v0, Lcom/android/server/am/OppoProtectEyeManagerService;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 145
    const-string v0, "OppoProtectEyeManagerService"

    const-string v1, "handleProtectEyeMode: prev.packageName == null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_4
    iget-object v0, p3, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/OppoProtectEyeManagerService;->sendProtectEyeBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_5
    sget-boolean v0, Lcom/android/server/am/OppoProtectEyeManagerService;->DEBUG:Z

    if-eqz v0, :cond_6

    .line 151
    const-string v0, "OppoProtectEyeManagerService"

    const-string v1, "handleProtectEyeMode: prev == null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_6
    iget-object v0, p3, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/OppoProtectEyeManagerService;->sendProtectEyeBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 83
    .local v0, "pms":Landroid/content/pm/PackageManager;
    const-string v1, "oppo.eye.protection.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/OppoProtectEyeManagerService;->mHaveProtectEyeFeature:Z

    .line 84
    const-string v1, "OppoProtectEyeManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHaveProtectEyeFeature  == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/am/OppoProtectEyeManagerService;->mHaveProtectEyeFeature:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    sget-boolean v1, Lcom/android/server/am/OppoProtectEyeManagerService;->mHaveProtectEyeFeature:Z

    if-eqz v1, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/android/server/am/OppoProtectEyeManagerService;->initDir()V

    .line 90
    invoke-direct {p0}, Lcom/android/server/am/OppoProtectEyeManagerService;->loadStatus()V

    .line 92
    new-instance v1, Lcom/android/server/am/OppoProtectEyeManagerService$FileObserverPolicy;

    const-string v2, "/data/system/protecteye/status.xml"

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/OppoProtectEyeManagerService$FileObserverPolicy;-><init>(Lcom/android/server/am/OppoProtectEyeManagerService;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/am/OppoProtectEyeManagerService;->mProtectEyeStatusFileObserver:Lcom/android/server/am/OppoProtectEyeManagerService$FileObserverPolicy;

    .line 93
    iget-object v1, p0, Lcom/android/server/am/OppoProtectEyeManagerService;->mProtectEyeStatusFileObserver:Lcom/android/server/am/OppoProtectEyeManagerService$FileObserverPolicy;

    invoke-virtual {v1}, Lcom/android/server/am/OppoProtectEyeManagerService$FileObserverPolicy;->startWatching()V

    .line 95
    :cond_0
    return-void
.end method

.method public sendProtectEyeBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nextPkgName"    # Ljava/lang/String;
    .param p3, "prePkgName"    # Ljava/lang/String;

    .prologue
    .line 157
    if-nez p2, :cond_0

    .line 158
    const-string v1, "OppoProtectEyeManagerService"

    const-string v2, "handleProtectEyeMode: nextPkgName == null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-string p2, ""

    .line 162
    :cond_0
    sget-boolean v1, Lcom/android/server/am/OppoProtectEyeManagerService;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 163
    const-string v1, "OppoProtectEyeManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendProtectEyeBroadcast: prePkgName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    nextPkgName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPPO_ROM_APP_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "next_app_pkgname"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const-string v1, "pre_app_pkgname"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 168
    return-void
.end method
