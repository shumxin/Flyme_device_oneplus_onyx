.class public Lcom/android/server/am/OppoAamUtils;
.super Ljava/lang/Object;
.source "OppoAamUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;
    }
.end annotation


# static fields
.field private static final OPPO_GUARD_ELF_PATH:Ljava/lang/String; = "/data/system/oppoguardelf"

.field private static final PERSIST_RESTRICT_PATH:Ljava/lang/String; = "/data/system/oppoguardelf/persist_restrict.xml"

.field private static final SCREENOFF_RESTRICT_PATH:Ljava/lang/String; = "/data/system/oppoguardelf/screenoff_restrict.xml"

.field private static final SCREEN_STATUS_PATH:Ljava/lang/String; = "/data/system/oppoguardelf/screen_status.xml"

.field private static final STARTINFO_WHITE_PATH:Ljava/lang/String; = "/data/system/oppoguardelf/startinfo_white.xml"

.field private static final TAG:Ljava/lang/String;

.field private static mAamUtils:Lcom/android/server/am/OppoAamUtils;


# instance fields
.field private DEBUG_DETAIL:Z

.field private mScreenOffRestrictFileObserver:Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;

.field private mScreenStatusFileObserver:Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;

.field private mStartInfoWhiteFileObserver:Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OppoAamUtils;->mAamUtils:Lcom/android/server/am/OppoAamUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-boolean v0, Lcom/android/server/am/OppoAbnormalAppManager;->DEBUG_DETAIL:Z

    iput-boolean v0, p0, Lcom/android/server/am/OppoAamUtils;->DEBUG_DETAIL:Z

    .line 50
    iput-object v1, p0, Lcom/android/server/am/OppoAamUtils;->mScreenStatusFileObserver:Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;

    .line 51
    iput-object v1, p0, Lcom/android/server/am/OppoAamUtils;->mScreenOffRestrictFileObserver:Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;

    .line 52
    iput-object v1, p0, Lcom/android/server/am/OppoAamUtils;->mStartInfoWhiteFileObserver:Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;

    .line 55
    invoke-direct {p0}, Lcom/android/server/am/OppoAamUtils;->initDir()V

    .line 56
    invoke-direct {p0}, Lcom/android/server/am/OppoAamUtils;->initFileObserver()V

    .line 57
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private ensureFileExist(Ljava/io/File;Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "fileObserver"    # Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;

    .prologue
    .line 110
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 111
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 116
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    if-eqz p2, :cond_1

    .line 122
    new-instance p2, Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;

    .end local p2    # "fileObserver":Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;
    const-string v1, "/data/system/oppoguardelf/screenoff_restrict.xml"

    invoke-direct {p2, p0, v1}, Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;-><init>(Lcom/android/server/am/OppoAamUtils;Ljava/lang/String;)V

    .line 123
    .restart local p2    # "fileObserver":Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;
    invoke-virtual {p2}, Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;->startWatching()V

    .line 126
    :cond_1
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/server/am/OppoAamUtils;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/server/am/OppoAamUtils;->mAamUtils:Lcom/android/server/am/OppoAamUtils;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/android/server/am/OppoAamUtils;

    invoke-direct {v0}, Lcom/android/server/am/OppoAamUtils;-><init>()V

    sput-object v0, Lcom/android/server/am/OppoAamUtils;->mAamUtils:Lcom/android/server/am/OppoAamUtils;

    .line 63
    :cond_0
    sget-object v0, Lcom/android/server/am/OppoAamUtils;->mAamUtils:Lcom/android/server/am/OppoAamUtils;

    return-object v0
.end method

.method private initDir()V
    .locals 8

    .prologue
    .line 67
    sget-object v6, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    const-string v7, "initDir start"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v1, Ljava/io/File;

    const-string v6, "/data/system/oppoguardelf"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .local v1, "oppoGuardElfFilePath":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v6, "/data/system/oppoguardelf/screen_status.xml"

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    .local v4, "screenStatusFile":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v6, "/data/system/oppoguardelf/screenoff_restrict.xml"

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    .local v3, "screenOffRestrictFile":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string v6, "/data/system/oppoguardelf/startinfo_white.xml"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .local v5, "startInfoWhiteFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v6, "/data/system/oppoguardelf/persist_restrict.xml"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    .local v2, "persistRestrictFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 76
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 79
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 80
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 83
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 84
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 87
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    .line 88
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 91
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_4

    .line 92
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_4
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/io/IOException;
    sget-object v6, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    const-string v7, "initDir failed!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private initFileObserver()V
    .locals 2

    .prologue
    .line 101
    new-instance v0, Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;

    const-string v1, "/data/system/oppoguardelf/screen_status.xml"

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;-><init>(Lcom/android/server/am/OppoAamUtils;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OppoAamUtils;->mScreenStatusFileObserver:Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;

    .line 102
    iget-object v0, p0, Lcom/android/server/am/OppoAamUtils;->mScreenStatusFileObserver:Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;->startWatching()V

    .line 103
    new-instance v0, Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;

    const-string v1, "/data/system/oppoguardelf/screenoff_restrict.xml"

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;-><init>(Lcom/android/server/am/OppoAamUtils;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OppoAamUtils;->mScreenOffRestrictFileObserver:Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;

    .line 104
    iget-object v0, p0, Lcom/android/server/am/OppoAamUtils;->mScreenOffRestrictFileObserver:Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;->startWatching()V

    .line 105
    new-instance v0, Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;

    const-string v1, "/data/system/oppoguardelf/startinfo_white.xml"

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;-><init>(Lcom/android/server/am/OppoAamUtils;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OppoAamUtils;->mStartInfoWhiteFileObserver:Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;

    .line 106
    iget-object v0, p0, Lcom/android/server/am/OppoAamUtils;->mStartInfoWhiteFileObserver:Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;->startWatching()V

    .line 107
    return-void
.end method

.method private readFromFileLocked(Ljava/io/File;)Ljava/util/List;
    .locals 11
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    iget-boolean v8, p0, Lcom/android/server/am/OppoAamUtils;->DEBUG_DETAIL:Z

    if-eqz v8, :cond_0

    .line 190
    sget-object v8, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    const-string v9, "readFromFileLocked start"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_0
    const/4 v4, 0x0

    .line 192
    .local v4, "stream":Ljava/io/FileInputStream;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .local v5, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 197
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v8, 0x0

    invoke-interface {v2, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 201
    :cond_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .line 202
    .local v7, "type":I
    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 203
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 204
    .local v6, "tag":Ljava/lang/String;
    const-string v8, "p"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 205
    const/4 v8, 0x0

    const-string v9, "att"

    invoke-interface {v2, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 206
    .local v3, "pkg":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 207
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    iget-boolean v8, p0, Lcom/android/server/am/OppoAamUtils;->DEBUG_DETAIL:Z

    if-eqz v8, :cond_2

    .line 209
    sget-object v8, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readFromFileLocked  pkg == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 213
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v6    # "tag":Ljava/lang/String;
    :cond_2
    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 226
    if-eqz v5, :cond_3

    .line 227
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_0
    move-object v4, v5

    .line 233
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .end local v7    # "type":I
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    :cond_4
    :goto_1
    return-object v1

    .line 229
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "type":I
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/io/IOException;
    sget-object v8, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to close state FileInputStream "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 214
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .end local v7    # "type":I
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/NullPointerException;
    :goto_2
    :try_start_3
    sget-object v8, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    const-string v9, "failed parsing "

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 226
    if-eqz v4, :cond_4

    .line 227
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 229
    :catch_2
    move-exception v0

    .line 230
    .local v0, "e":Ljava/io/IOException;
    sget-object v8, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to close state FileInputStream "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 216
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/NumberFormatException;
    :goto_3
    :try_start_5
    sget-object v8, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    const-string v9, "failed parsing "

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 226
    if-eqz v4, :cond_4

    .line 227
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 229
    :catch_4
    move-exception v0

    .line 230
    .local v0, "e":Ljava/io/IOException;
    sget-object v8, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to close state FileInputStream "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 218
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 219
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_4
    :try_start_7
    sget-object v8, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    const-string v9, "failed parsing "

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 226
    if-eqz v4, :cond_4

    .line 227
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_1

    .line 229
    :catch_6
    move-exception v0

    .line 230
    .local v0, "e":Ljava/io/IOException;
    sget-object v8, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to close state FileInputStream "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 220
    .end local v0    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v0

    .line 221
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_9
    sget-object v8, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    const-string v9, "failed IOException "

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 226
    if-eqz v4, :cond_4

    .line 227
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto/16 :goto_1

    .line 229
    :catch_8
    move-exception v0

    .line 230
    sget-object v8, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to close state FileInputStream "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 222
    .end local v0    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_6
    :try_start_b
    sget-object v8, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    const-string v9, "failed parsing "

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 226
    if-eqz v4, :cond_4

    .line 227
    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    goto/16 :goto_1

    .line 229
    :catch_a
    move-exception v0

    .line 230
    .local v0, "e":Ljava/io/IOException;
    sget-object v8, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to close state FileInputStream "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 225
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 226
    :goto_7
    if-eqz v4, :cond_4

    .line 227
    :try_start_d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    goto/16 :goto_1

    .line 229
    :catch_b
    move-exception v0

    .line 230
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v8, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to close state FileInputStream "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 225
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    goto :goto_7

    .line 222
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    :catch_c
    move-exception v0

    move-object v4, v5

    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    goto :goto_6

    .line 220
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    :catch_d
    move-exception v0

    move-object v4, v5

    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    goto :goto_5

    .line 218
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    :catch_e
    move-exception v0

    move-object v4, v5

    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_4

    .line 216
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    :catch_f
    move-exception v0

    move-object v4, v5

    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_3

    .line 214
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    :catch_10
    move-exception v0

    move-object v4, v5

    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method private readFromStatusFileLocked(Ljava/io/File;)Z
    .locals 12
    .param p1, "screenStatusFile"    # Ljava/io/File;

    .prologue
    .line 298
    iget-boolean v9, p0, Lcom/android/server/am/OppoAamUtils;->DEBUG_DETAIL:Z

    if-eqz v9, :cond_0

    .line 299
    sget-object v9, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    const-string v10, "readFromStatusFileLocked!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_0
    const/4 v5, 0x0

    .line 301
    .local v5, "stream":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 303
    .local v2, "status":Z
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .local v6, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 306
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v9, 0x0

    invoke-interface {v1, v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 310
    :cond_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .line 311
    .local v8, "type":I
    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    .line 312
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 313
    .local v7, "tag":Ljava/lang/String;
    const-string v9, "p"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 314
    const/4 v9, 0x0

    const-string v10, "att"

    invoke-interface {v1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 315
    .local v4, "str":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 316
    sget-object v9, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "readFromStatusFileLocked  status == "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    .line 321
    .end local v4    # "str":Ljava/lang/String;
    .end local v7    # "tag":Ljava/lang/String;
    :cond_2
    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 334
    if-eqz v6, :cond_3

    .line 335
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_0
    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    move v3, v2

    .line 341
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "status":Z
    .end local v8    # "type":I
    .local v3, "status":Z
    :goto_1
    return v3

    .line 337
    .end local v3    # "status":Z
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "status":Z
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "type":I
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Ljava/io/IOException;
    sget-object v9, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to close state FileInputStream "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 322
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .end local v8    # "type":I
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 323
    .local v0, "e":Ljava/lang/NullPointerException;
    :goto_2
    :try_start_3
    sget-object v9, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    const-string v10, "failed parsing "

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 334
    if-eqz v5, :cond_4

    .line 335
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_4
    :goto_3
    move v3, v2

    .line 341
    .end local v2    # "status":Z
    .restart local v3    # "status":Z
    goto :goto_1

    .line 337
    .end local v3    # "status":Z
    .restart local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v2    # "status":Z
    :catch_2
    move-exception v0

    .line 338
    .local v0, "e":Ljava/io/IOException;
    sget-object v9, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to close state FileInputStream "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 324
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 325
    .local v0, "e":Ljava/lang/NumberFormatException;
    :goto_4
    :try_start_5
    sget-object v9, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    const-string v10, "failed parsing "

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 334
    if-eqz v5, :cond_5

    .line 335
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    :goto_5
    move v3, v2

    .line 341
    .end local v2    # "status":Z
    .restart local v3    # "status":Z
    goto :goto_1

    .line 337
    .end local v3    # "status":Z
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "status":Z
    :catch_4
    move-exception v0

    .line 338
    .local v0, "e":Ljava/io/IOException;
    sget-object v9, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to close state FileInputStream "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 326
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 327
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_6
    :try_start_7
    sget-object v9, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    const-string v10, "failed parsing "

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 334
    if-eqz v5, :cond_6

    .line 335
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_6
    :goto_7
    move v3, v2

    .line 341
    .end local v2    # "status":Z
    .restart local v3    # "status":Z
    goto :goto_1

    .line 337
    .end local v3    # "status":Z
    .restart local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2    # "status":Z
    :catch_6
    move-exception v0

    .line 338
    .local v0, "e":Ljava/io/IOException;
    sget-object v9, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to close state FileInputStream "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 328
    .end local v0    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v0

    .line 329
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_8
    :try_start_9
    sget-object v9, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    const-string v10, "failed IOException "

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 334
    if-eqz v5, :cond_7

    .line 335
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    :cond_7
    :goto_9
    move v3, v2

    .line 341
    .end local v2    # "status":Z
    .restart local v3    # "status":Z
    goto/16 :goto_1

    .line 337
    .end local v3    # "status":Z
    .restart local v2    # "status":Z
    :catch_8
    move-exception v0

    .line 338
    sget-object v9, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to close state FileInputStream "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 330
    .end local v0    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v0

    .line 331
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_a
    :try_start_b
    sget-object v9, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    const-string v10, "failed parsing "

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 334
    if-eqz v5, :cond_8

    .line 335
    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_8
    :goto_b
    move v3, v2

    .line 341
    .end local v2    # "status":Z
    .restart local v3    # "status":Z
    goto/16 :goto_1

    .line 337
    .end local v3    # "status":Z
    .restart local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v2    # "status":Z
    :catch_a
    move-exception v0

    .line 338
    .local v0, "e":Ljava/io/IOException;
    sget-object v9, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to close state FileInputStream "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 333
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 334
    :goto_c
    if-eqz v5, :cond_9

    .line 335
    :try_start_d
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    :cond_9
    :goto_d
    move v3, v2

    .line 341
    .end local v2    # "status":Z
    .restart local v3    # "status":Z
    goto/16 :goto_1

    .line 337
    .end local v3    # "status":Z
    .restart local v2    # "status":Z
    :catch_b
    move-exception v0

    .line 338
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v9, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to close state FileInputStream "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 333
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto :goto_c

    .line 330
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_c
    move-exception v0

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto :goto_a

    .line 328
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_d
    move-exception v0

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto :goto_8

    .line 326
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_e
    move-exception v0

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_6

    .line 324
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_f
    move-exception v0

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_4

    .line 322
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_10
    move-exception v0

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method private writeToFileLocked(Ljava/io/File;Ljava/util/List;)V
    .locals 11
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 238
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v7, p0, Lcom/android/server/am/OppoAamUtils;->DEBUG_DETAIL:Z

    if-eqz v7, :cond_0

    .line 239
    sget-object v7, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    const-string v8, "writeToFileLocked!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    const/4 v0, 0x0

    .line 241
    .local v0, "N":I
    const/4 v5, 0x0

    .line 244
    .local v5, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    .end local v5    # "stream":Ljava/io/FileOutputStream;
    .local v6, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 247
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v7, "utf-8"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 248
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 249
    const/4 v7, 0x0

    const-string v8, "gs"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 251
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 252
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 253
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 254
    .local v4, "pkg":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 255
    const/4 v7, 0x0

    const-string v8, "p"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 256
    const/4 v7, 0x0

    const-string v8, "att"

    invoke-interface {v3, v7, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 257
    const/4 v7, 0x0

    const-string v8, "p"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 252
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 261
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_2
    const/4 v7, 0x0

    const-string v8, "gs"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 262
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 267
    if-eqz v6, :cond_3

    .line 268
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    move-object v5, v6

    .line 274
    .end local v2    # "i":I
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v6    # "stream":Ljava/io/FileOutputStream;
    .restart local v5    # "stream":Ljava/io/FileOutputStream;
    :cond_4
    :goto_1
    return-void

    .line 270
    .end local v5    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "i":I
    .restart local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v6    # "stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 271
    .local v1, "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to close state FileInputStream "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 273
    .end local v6    # "stream":Ljava/io/FileOutputStream;
    .restart local v5    # "stream":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 263
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "i":I
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_1
    move-exception v1

    .line 264
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    sget-object v7, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to write IOException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 267
    if-eqz v5, :cond_4

    .line 268
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 270
    :catch_2
    move-exception v1

    .line 271
    sget-object v7, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to close state FileInputStream "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 266
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 267
    :goto_3
    if-eqz v5, :cond_5

    .line 268
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 272
    :cond_5
    :goto_4
    throw v7

    .line 270
    :catch_3
    move-exception v1

    .line 271
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v8, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to close state FileInputStream "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 266
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "stream":Ljava/io/FileOutputStream;
    .restart local v6    # "stream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileOutputStream;
    .restart local v5    # "stream":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 263
    .end local v5    # "stream":Ljava/io/FileOutputStream;
    .restart local v6    # "stream":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v1

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileOutputStream;
    .restart local v5    # "stream":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private writeToStatusFileLocked(Ljava/io/File;Z)V
    .locals 9
    .param p1, "aamStatusFile"    # Ljava/io/File;
    .param p2, "status"    # Z

    .prologue
    .line 346
    iget-boolean v5, p0, Lcom/android/server/am/OppoAamUtils;->DEBUG_DETAIL:Z

    if-eqz v5, :cond_0

    .line 347
    sget-object v5, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    const-string v6, "writeToStatusFileLocked!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_0
    const/4 v3, 0x0

    .line 351
    .local v3, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .local v4, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 354
    .local v1, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v5, "utf-8"

    invoke-interface {v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 355
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 356
    const/4 v5, 0x0

    const-string v6, "gs"

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 359
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 360
    .local v2, "str":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 361
    const/4 v5, 0x0

    const-string v6, "p"

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 362
    const/4 v5, 0x0

    const-string v6, "att"

    invoke-interface {v1, v5, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 363
    const/4 v5, 0x0

    const-string v6, "p"

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 366
    :cond_1
    const/4 v5, 0x0

    const-string v6, "gs"

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 367
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 372
    if-eqz v4, :cond_2

    .line 373
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    move-object v3, v4

    .line 379
    .end local v1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v2    # "str":Ljava/lang/String;
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :cond_3
    :goto_0
    return-void

    .line 375
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v2    # "str":Ljava/lang/String;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 376
    .local v0, "e":Ljava/io/IOException;
    sget-object v5, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close state FileInputStream "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 378
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 368
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v2    # "str":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 369
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    sget-object v5, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to write IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 372
    if-eqz v3, :cond_3

    .line 373
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 375
    :catch_2
    move-exception v0

    .line 376
    sget-object v5, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close state FileInputStream "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 371
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 372
    :goto_2
    if-eqz v3, :cond_4

    .line 373
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 377
    :cond_4
    :goto_3
    throw v5

    .line 375
    :catch_3
    move-exception v0

    .line 376
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v6, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close state FileInputStream "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 371
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 368
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method


# virtual methods
.method public readPersistRestrictFile()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    iget-boolean v1, p0, Lcom/android/server/am/OppoAamUtils;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_0

    .line 170
    sget-object v1, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    const-string v2, "readPersistRestrictFile start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/oppoguardelf/persist_restrict.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 172
    .local v0, "persistRestrictFile":Ljava/io/File;
    sget-object v2, Lcom/android/server/am/OppoAamUtils;->mAamUtils:Lcom/android/server/am/OppoAamUtils;

    monitor-enter v2

    .line 173
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/am/OppoAamUtils;->readFromFileLocked(Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 174
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public readScreenOffResrictFile()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    iget-boolean v1, p0, Lcom/android/server/am/OppoAamUtils;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_0

    .line 130
    sget-object v1, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    const-string v2, "readScreenOffResrictFile start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/oppoguardelf/screenoff_restrict.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, "screenOffResrictFile":Ljava/io/File;
    sget-object v2, Lcom/android/server/am/OppoAamUtils;->mAamUtils:Lcom/android/server/am/OppoAamUtils;

    monitor-enter v2

    .line 133
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/am/OppoAamUtils;->readFromFileLocked(Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 134
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public readScreenStatusFile()Z
    .locals 3

    .prologue
    .line 278
    iget-boolean v1, p0, Lcom/android/server/am/OppoAamUtils;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_0

    .line 279
    sget-object v1, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    const-string v2, "readScreenStatusFile start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/oppoguardelf/screen_status.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 281
    .local v0, "screenStatusFile":Ljava/io/File;
    sget-object v2, Lcom/android/server/am/OppoAamUtils;->mAamUtils:Lcom/android/server/am/OppoAamUtils;

    monitor-enter v2

    .line 282
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/am/OppoAamUtils;->readFromStatusFileLocked(Ljava/io/File;)Z

    move-result v1

    monitor-exit v2

    return v1

    .line 283
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public readStartInfoWhiteFile()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    iget-boolean v1, p0, Lcom/android/server/am/OppoAamUtils;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_0

    .line 150
    sget-object v1, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    const-string v2, "readStartInfoWhiteFile start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/oppoguardelf/startinfo_white.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    .local v0, "startInfoWhiteFile":Ljava/io/File;
    sget-object v2, Lcom/android/server/am/OppoAamUtils;->mAamUtils:Lcom/android/server/am/OppoAamUtils;

    monitor-enter v2

    .line 153
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/am/OppoAamUtils;->readFromFileLocked(Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 154
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public savePersistRestrictFile(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v1, p0, Lcom/android/server/am/OppoAamUtils;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_0

    .line 179
    sget-object v1, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    const-string v2, "savePersistRestrictFile start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/oppoguardelf/persist_restrict.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    .local v0, "persistRestrictFile":Ljava/io/File;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/OppoAamUtils;->ensureFileExist(Ljava/io/File;Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;)V

    .line 183
    sget-object v2, Lcom/android/server/am/OppoAamUtils;->mAamUtils:Lcom/android/server/am/OppoAamUtils;

    monitor-enter v2

    .line 184
    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/android/server/am/OppoAamUtils;->writeToFileLocked(Ljava/io/File;Ljava/util/List;)V

    .line 185
    monitor-exit v2

    .line 186
    return-void

    .line 185
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public saveScreenOffResrictFile(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v1, p0, Lcom/android/server/am/OppoAamUtils;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_0

    .line 139
    sget-object v1, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    const-string v2, "saveScreenOffResrictFile start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/oppoguardelf/screenoff_restrict.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, "screenOffResrictFile":Ljava/io/File;
    iget-object v1, p0, Lcom/android/server/am/OppoAamUtils;->mScreenOffRestrictFileObserver:Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/OppoAamUtils;->ensureFileExist(Ljava/io/File;Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;)V

    .line 143
    sget-object v2, Lcom/android/server/am/OppoAamUtils;->mAamUtils:Lcom/android/server/am/OppoAamUtils;

    monitor-enter v2

    .line 144
    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/android/server/am/OppoAamUtils;->writeToFileLocked(Ljava/io/File;Ljava/util/List;)V

    .line 145
    monitor-exit v2

    .line 146
    return-void

    .line 145
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public saveScreenStatusFile(Z)V
    .locals 3
    .param p1, "status"    # Z

    .prologue
    .line 287
    iget-boolean v1, p0, Lcom/android/server/am/OppoAamUtils;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_0

    .line 288
    sget-object v1, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    const-string v2, "saveScreenStatusFile start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/oppoguardelf/screen_status.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    .local v0, "screenStatusFile":Ljava/io/File;
    iget-object v1, p0, Lcom/android/server/am/OppoAamUtils;->mScreenStatusFileObserver:Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/OppoAamUtils;->ensureFileExist(Ljava/io/File;Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;)V

    .line 292
    sget-object v2, Lcom/android/server/am/OppoAamUtils;->mAamUtils:Lcom/android/server/am/OppoAamUtils;

    monitor-enter v2

    .line 293
    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/android/server/am/OppoAamUtils;->writeToStatusFileLocked(Ljava/io/File;Z)V

    .line 294
    monitor-exit v2

    .line 295
    return-void

    .line 294
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public saveStartInfoWhiteFile(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v1, p0, Lcom/android/server/am/OppoAamUtils;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_0

    .line 159
    sget-object v1, Lcom/android/server/am/OppoAamUtils;->TAG:Ljava/lang/String;

    const-string v2, "saveStartInfoWhiteFile start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/oppoguardelf/startinfo_white.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    .local v0, "startInfoWhiteFile":Ljava/io/File;
    iget-object v1, p0, Lcom/android/server/am/OppoAamUtils;->mStartInfoWhiteFileObserver:Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/OppoAamUtils;->ensureFileExist(Ljava/io/File;Lcom/android/server/am/OppoAamUtils$FileObserverPolicy;)V

    .line 163
    sget-object v2, Lcom/android/server/am/OppoAamUtils;->mAamUtils:Lcom/android/server/am/OppoAamUtils;

    monitor-enter v2

    .line 164
    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/android/server/am/OppoAamUtils;->writeToFileLocked(Ljava/io/File;Ljava/util/List;)V

    .line 165
    monitor-exit v2

    .line 166
    return-void

    .line 165
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
