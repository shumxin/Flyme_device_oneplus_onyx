.class public Lcom/android/server/am/OppoAppStartupManagerUtils;
.super Ljava/lang/Object;
.source "OppoAppStartupManagerUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OppoAppStartupManagerUtils$FileObserverPolicy;
    }
.end annotation


# static fields
.field private static final ACTION_NAME:Ljava/lang/String; = "action"

.field private static final BLACKGUARD_NAME:Ljava/lang/String; = "blackguard"

.field private static final OPPO_STARTUP_MANAGER_FILE_PATH:Ljava/lang/String; = "/data/system/startup_manager.xml"

.field private static final RECEIVER_NAME:Ljava/lang/String; = "receiver"

.field private static final SEVICECPN_NAME:Ljava/lang/String; = "sevicecpn"

.field private static final TAG:Ljava/lang/String;

.field private static mAsmUtils:Lcom/android/server/am/OppoAppStartupManagerUtils;


# instance fields
.field private DEBUG_DETAIL:Z

.field mActionBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mBlackguardList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mReceiverBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSeviceCpnBlacklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStartupManagerFileObserver:Lcom/android/server/am/OppoAppStartupManagerUtils$FileObserverPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/server/am/OppoAppStartupManager;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/server/am/OppoAppStartupManagerUtils;->TAG:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mAsmUtils:Lcom/android/server/am/OppoAppStartupManagerUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget-boolean v0, Lcom/android/server/am/OppoAppStartupManager;->DEBUG_DETAIL:Z

    iput-boolean v0, p0, Lcom/android/server/am/OppoAppStartupManagerUtils;->DEBUG_DETAIL:Z

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mStartupManagerFileObserver:Lcom/android/server/am/OppoAppStartupManagerUtils$FileObserverPolicy;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mSeviceCpnBlacklist:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mReceiverBlackList:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mActionBlackList:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mBlackguardList:Ljava/util/List;

    .line 65
    invoke-direct {p0}, Lcom/android/server/am/OppoAppStartupManagerUtils;->initDir()V

    .line 66
    invoke-direct {p0}, Lcom/android/server/am/OppoAppStartupManagerUtils;->initFileObserver()V

    .line 67
    invoke-virtual {p0}, Lcom/android/server/am/OppoAppStartupManagerUtils;->readStartupManagerFile()V

    .line 68
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/server/am/OppoAppStartupManagerUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/android/server/am/OppoAppStartupManagerUtils;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mAsmUtils:Lcom/android/server/am/OppoAppStartupManagerUtils;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/android/server/am/OppoAppStartupManagerUtils;

    invoke-direct {v0}, Lcom/android/server/am/OppoAppStartupManagerUtils;-><init>()V

    sput-object v0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mAsmUtils:Lcom/android/server/am/OppoAppStartupManagerUtils;

    .line 74
    :cond_0
    sget-object v0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mAsmUtils:Lcom/android/server/am/OppoAppStartupManagerUtils;

    return-object v0
.end method

.method private initDir()V
    .locals 4

    .prologue
    .line 78
    sget-object v2, Lcom/android/server/am/OppoAppStartupManagerUtils;->TAG:Ljava/lang/String;

    const-string v3, "initDir start"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/startup_manager.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    .local v1, "startupManagerFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 84
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/android/server/am/OppoAppStartupManagerUtils;->TAG:Ljava/lang/String;

    const-string v3, "initDir failed!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private initFileObserver()V
    .locals 2

    .prologue
    .line 93
    new-instance v0, Lcom/android/server/am/OppoAppStartupManagerUtils$FileObserverPolicy;

    const-string v1, "/data/system/startup_manager.xml"

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OppoAppStartupManagerUtils$FileObserverPolicy;-><init>(Lcom/android/server/am/OppoAppStartupManagerUtils;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mStartupManagerFileObserver:Lcom/android/server/am/OppoAppStartupManagerUtils$FileObserverPolicy;

    .line 94
    iget-object v0, p0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mStartupManagerFileObserver:Lcom/android/server/am/OppoAppStartupManagerUtils$FileObserverPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/OppoAppStartupManagerUtils$FileObserverPolicy;->startWatching()V

    .line 95
    return-void
.end method

.method private readFromFileLocked(Ljava/io/File;)V
    .locals 14
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 122
    iget-boolean v10, p0, Lcom/android/server/am/OppoAppStartupManagerUtils;->DEBUG_DETAIL:Z

    if-eqz v10, :cond_0

    .line 123
    sget-object v10, Lcom/android/server/am/OppoAppStartupManagerUtils;->TAG:Ljava/lang/String;

    const-string v11, "readFromFileLocked start"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    iget-object v10, p0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mSeviceCpnBlacklist:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 126
    iget-object v10, p0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mSeviceCpnBlacklist:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 128
    :cond_1
    iget-object v10, p0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mReceiverBlackList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 129
    iget-object v10, p0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mReceiverBlackList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 131
    :cond_2
    iget-object v10, p0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mActionBlackList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    .line 132
    iget-object v10, p0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mActionBlackList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 135
    :cond_3
    const/4 v6, 0x0

    .line 137
    .local v6, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .local v7, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 140
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v10, 0x0

    invoke-interface {v3, v7, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 144
    :cond_4
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .line 145
    .local v9, "type":I
    const/4 v10, 0x2

    if-ne v9, v10, :cond_6

    .line 146
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 147
    .local v8, "tagName":Ljava/lang/String;
    iget-boolean v10, p0, Lcom/android/server/am/OppoAppStartupManagerUtils;->DEBUG_DETAIL:Z

    if-eqz v10, :cond_5

    .line 148
    sget-object v10, Lcom/android/server/am/OppoAppStartupManagerUtils;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " readFromFileLocked tagName="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_5
    const-string v10, "sevicecpn"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 152
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    .line 153
    .local v5, "sevicecpn":Ljava/lang/String;
    const-string v10, ""

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 154
    iget-object v10, p0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mSeviceCpnBlacklist:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    iget-boolean v10, p0, Lcom/android/server/am/OppoAppStartupManagerUtils;->DEBUG_DETAIL:Z

    if-eqz v10, :cond_6

    .line 156
    sget-object v10, Lcom/android/server/am/OppoAppStartupManagerUtils;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " readFromFileLocked sevicecpn = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 185
    .end local v5    # "sevicecpn":Ljava/lang/String;
    .end local v8    # "tagName":Ljava/lang/String;
    :cond_6
    :goto_0
    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    .line 198
    if-eqz v7, :cond_7

    .line 199
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    :cond_7
    move-object v6, v7

    .line 205
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .end local v9    # "type":I
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :cond_8
    :goto_1
    return-void

    .line 159
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "tagName":Ljava/lang/String;
    .restart local v9    # "type":I
    :cond_9
    :try_start_3
    const-string v10, "receiver"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 160
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    .line 161
    .local v4, "receiver":Ljava/lang/String;
    const-string v10, ""

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 162
    iget-object v10, p0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mReceiverBlackList:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iget-boolean v10, p0, Lcom/android/server/am/OppoAppStartupManagerUtils;->DEBUG_DETAIL:Z

    if-eqz v10, :cond_6

    .line 164
    sget-object v10, Lcom/android/server/am/OppoAppStartupManagerUtils;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " readFromFileLocked receiver = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 186
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "receiver":Ljava/lang/String;
    .end local v8    # "tagName":Ljava/lang/String;
    .end local v9    # "type":I
    :catch_0
    move-exception v2

    move-object v6, v7

    .line 187
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .local v2, "e":Ljava/lang/NullPointerException;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :goto_2
    :try_start_4
    sget-object v10, Lcom/android/server/am/OppoAppStartupManagerUtils;->TAG:Ljava/lang/String;

    const-string v11, "failed parsing "

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 198
    if-eqz v6, :cond_8

    .line 199
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 201
    :catch_1
    move-exception v2

    .line 202
    .local v2, "e":Ljava/io/IOException;
    sget-object v10, Lcom/android/server/am/OppoAppStartupManagerUtils;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to close state FileInputStream "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 167
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "tagName":Ljava/lang/String;
    .restart local v9    # "type":I
    :cond_a
    :try_start_6
    const-string v10, "action"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 168
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "action":Ljava/lang/String;
    const-string v10, ""

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 170
    iget-object v10, p0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mActionBlackList:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    iget-boolean v10, p0, Lcom/android/server/am/OppoAppStartupManagerUtils;->DEBUG_DETAIL:Z

    if-eqz v10, :cond_6

    .line 172
    sget-object v10, Lcom/android/server/am/OppoAppStartupManagerUtils;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " readFromFileLocked action = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_c
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_0

    .line 188
    .end local v0    # "action":Ljava/lang/String;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "tagName":Ljava/lang/String;
    .end local v9    # "type":I
    :catch_2
    move-exception v2

    move-object v6, v7

    .line 189
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .local v2, "e":Ljava/lang/NumberFormatException;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :goto_3
    :try_start_7
    sget-object v10, Lcom/android/server/am/OppoAppStartupManagerUtils;->TAG:Ljava/lang/String;

    const-string v11, "failed parsing "

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 198
    if-eqz v6, :cond_8

    .line 199
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_1

    .line 201
    :catch_3
    move-exception v2

    .line 202
    .local v2, "e":Ljava/io/IOException;
    sget-object v10, Lcom/android/server/am/OppoAppStartupManagerUtils;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to close state FileInputStream "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 175
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "tagName":Ljava/lang/String;
    .restart local v9    # "type":I
    :cond_b
    :try_start_9
    const-string v10, "blackguard"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 176
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "blackguard":Ljava/lang/String;
    const-string v10, ""

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 178
    iget-object v10, p0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mBlackguardList:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    iget-boolean v10, p0, Lcom/android/server/am/OppoAppStartupManagerUtils;->DEBUG_DETAIL:Z

    if-eqz v10, :cond_6

    .line 180
    sget-object v10, Lcom/android/server/am/OppoAppStartupManagerUtils;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " readFromFileLocked blackguard = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_c
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_0

    .line 190
    .end local v1    # "blackguard":Ljava/lang/String;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "tagName":Ljava/lang/String;
    .end local v9    # "type":I
    :catch_4
    move-exception v2

    move-object v6, v7

    .line 191
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :goto_4
    :try_start_a
    sget-object v10, Lcom/android/server/am/OppoAppStartupManagerUtils;->TAG:Ljava/lang/String;

    const-string v11, "failed parsing "

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 198
    if-eqz v6, :cond_8

    .line 199
    :try_start_b
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_1

    .line 201
    :catch_5
    move-exception v2

    .line 202
    .local v2, "e":Ljava/io/IOException;
    sget-object v10, Lcom/android/server/am/OppoAppStartupManagerUtils;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to close state FileInputStream "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 201
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "type":I
    :catch_6
    move-exception v2

    .line 202
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v10, Lcom/android/server/am/OppoAppStartupManagerUtils;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to close state FileInputStream "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    .line 204
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 192
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "type":I
    :catch_7
    move-exception v2

    .line 193
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_c
    sget-object v10, Lcom/android/server/am/OppoAppStartupManagerUtils;->TAG:Ljava/lang/String;

    const-string v11, "failed IOException "

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 198
    if-eqz v6, :cond_8

    .line 199
    :try_start_d
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    goto/16 :goto_1

    .line 201
    :catch_8
    move-exception v2

    .line 202
    sget-object v10, Lcom/android/server/am/OppoAppStartupManagerUtils;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to close state FileInputStream "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 194
    .end local v2    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v2

    .line 195
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_6
    :try_start_e
    sget-object v10, Lcom/android/server/am/OppoAppStartupManagerUtils;->TAG:Ljava/lang/String;

    const-string v11, "failed parsing "

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 198
    if-eqz v6, :cond_8

    .line 199
    :try_start_f
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    goto/16 :goto_1

    .line 201
    :catch_a
    move-exception v2

    .line 202
    .local v2, "e":Ljava/io/IOException;
    sget-object v10, Lcom/android/server/am/OppoAppStartupManagerUtils;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to close state FileInputStream "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 197
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 198
    :goto_7
    if-eqz v6, :cond_c

    .line 199
    :try_start_10
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    .line 203
    :cond_c
    :goto_8
    throw v10

    .line 201
    :catch_b
    move-exception v2

    .line 202
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v11, Lcom/android/server/am/OppoAppStartupManagerUtils;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to close state FileInputStream "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 197
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v10

    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto :goto_7

    .line 194
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catch_c
    move-exception v2

    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto :goto_6

    .line 192
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catch_d
    move-exception v2

    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto :goto_5

    .line 190
    :catch_e
    move-exception v2

    goto/16 :goto_4

    .line 188
    :catch_f
    move-exception v2

    goto/16 :goto_3

    .line 186
    :catch_10
    move-exception v2

    goto/16 :goto_2
.end method


# virtual methods
.method public getActionBlackList()Ljava/util/List;
    .locals 1
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
    .line 106
    iget-object v0, p0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mActionBlackList:Ljava/util/List;

    return-object v0
.end method

.method public getBlackguardList()Ljava/util/List;
    .locals 1
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
    .line 110
    iget-object v0, p0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mBlackguardList:Ljava/util/List;

    return-object v0
.end method

.method public getReceiverBlackList()Ljava/util/List;
    .locals 1
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
    .line 102
    iget-object v0, p0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mReceiverBlackList:Ljava/util/List;

    return-object v0
.end method

.method public getSeviceCpnBlacklist()Ljava/util/List;
    .locals 1
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
    .line 98
    iget-object v0, p0, Lcom/android/server/am/OppoAppStartupManagerUtils;->mSeviceCpnBlacklist:Ljava/util/List;

    return-object v0
.end method

.method public readStartupManagerFile()V
    .locals 3

    .prologue
    .line 114
    iget-boolean v1, p0, Lcom/android/server/am/OppoAppStartupManagerUtils;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_0

    .line 115
    sget-object v1, Lcom/android/server/am/OppoAppStartupManagerUtils;->TAG:Ljava/lang/String;

    const-string v2, "readFile start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/startup_manager.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, "startupManagerFile":Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/android/server/am/OppoAppStartupManagerUtils;->readFromFileLocked(Ljava/io/File;)V

    .line 118
    return-void
.end method
