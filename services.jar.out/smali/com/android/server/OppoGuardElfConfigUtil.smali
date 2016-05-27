.class public Lcom/android/server/OppoGuardElfConfigUtil;
.super Ljava/lang/Object;
.source "OppoGuardElfConfigUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OppoGuardElfConfigUtil$FileObserverPolicy;
    }
.end annotation


# static fields
.field public static final ABNORMAL_START_COUNT:Ljava/lang/String; = "AbnormalStartCount"

.field private static final ABNORMAL_START_COUNT_DEFA_VALUE:I = 0x32

.field public static final CHECK_START_TIME_INTERVAL:Ljava/lang/String; = "CheckStartTimeInterval"

.field private static final CHECK_START_TIME_INTERVAL_DEFA_VALUE:J = 0x493e0L

.field public static final COLLECT_START_COUNT:Ljava/lang/String; = "CollectStartCount"

.field private static final COLLECT_START_COUNT_DEFA_VALUE:I = 0x1e

.field private static final OPPO_GUARD_ELF_CONFIG_PATH:Ljava/lang/String; = "/data/system/oppoguardelf/oppoguardelf_config.xml"

.field private static final OPPO_GUARD_ELF_PATH:Ljava/lang/String; = "/data/system/oppoguardelf"

.field public static TAG:Ljava/lang/String; = null

.field public static final THRESHOLD_INTERVAL_PER_WAKEUP:Ljava/lang/String; = "ThresholdIntervalPerWakeup"

.field private static final THRESHOLD_INTERVAL_PER_WAKEUP_DEFA_VALUE:J = 0xb4L

.field public static final THRESHOLD_WARNING_INTERVAL_PER_WAKEUP:Ljava/lang/String; = "ThresholdWarningIntervalPerWakeup"

.field private static final THRESHOLD_WARNING_INTERVAL_PER_WAKEUP_DEFA_VALUE:J = 0x12cL

.field public static final THRESHOLD_WORST_INTERVAL_PER_WAKEUP:Ljava/lang/String; = "ThresholdWorstIntervalPerWakeup"

.field private static final THRESHOLD_WORST_INTERVAL_PER_WAKEUP_DEFA_VALUE:J = 0x3cL

.field private static mOppoGuardElfConfigUtil:Lcom/android/server/OppoGuardElfConfigUtil;


# instance fields
.field public mAbnormalStartCount:I

.field public mCheckStartTimeInterval:J

.field public mCollectStartCount:I

.field private mGuardElfConfigFileObserver:Lcom/android/server/OppoGuardElfConfigUtil$FileObserverPolicy;

.field public mThresholdIntervalPerWakeup:J

.field public mThresholdWarningIntervalPerWakeup:J

.field public mThresholdWorstIntervalPerWakeup:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "OppoGuardElfConfigUtil"

    sput-object v0, Lcom/android/server/OppoGuardElfConfigUtil;->TAG:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/OppoGuardElfConfigUtil;->mOppoGuardElfConfigUtil:Lcom/android/server/OppoGuardElfConfigUtil;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mAbnormalStartCount:I

    .line 70
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mCollectStartCount:I

    .line 73
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mCheckStartTimeInterval:J

    .line 76
    const-wide/16 v0, 0xb4

    iput-wide v0, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mThresholdIntervalPerWakeup:J

    .line 79
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mThresholdWarningIntervalPerWakeup:J

    .line 82
    const-wide/16 v0, 0x3c

    iput-wide v0, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mThresholdWorstIntervalPerWakeup:J

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mGuardElfConfigFileObserver:Lcom/android/server/OppoGuardElfConfigUtil$FileObserverPolicy;

    .line 89
    invoke-direct {p0}, Lcom/android/server/OppoGuardElfConfigUtil;->initDir()V

    .line 90
    invoke-direct {p0}, Lcom/android/server/OppoGuardElfConfigUtil;->initFileObserver()V

    .line 93
    invoke-direct {p0}, Lcom/android/server/OppoGuardElfConfigUtil;->readConfigFile()V

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/OppoGuardElfConfigUtil;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OppoGuardElfConfigUtil;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/server/OppoGuardElfConfigUtil;->readConfigFile()V

    return-void
.end method

.method public static final getInstance()Lcom/android/server/OppoGuardElfConfigUtil;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/android/server/OppoGuardElfConfigUtil;->mOppoGuardElfConfigUtil:Lcom/android/server/OppoGuardElfConfigUtil;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/android/server/OppoGuardElfConfigUtil;

    invoke-direct {v0}, Lcom/android/server/OppoGuardElfConfigUtil;-><init>()V

    sput-object v0, Lcom/android/server/OppoGuardElfConfigUtil;->mOppoGuardElfConfigUtil:Lcom/android/server/OppoGuardElfConfigUtil;

    .line 100
    :cond_0
    sget-object v0, Lcom/android/server/OppoGuardElfConfigUtil;->mOppoGuardElfConfigUtil:Lcom/android/server/OppoGuardElfConfigUtil;

    return-object v0
.end method

.method private initDir()V
    .locals 5

    .prologue
    .line 104
    sget-object v3, Lcom/android/server/OppoGuardElfConfigUtil;->TAG:Ljava/lang/String;

    const-string v4, "initDir start"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/oppoguardelf"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .local v2, "oppoGuardElfFilePath":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/system/oppoguardelf/oppoguardelf_config.xml"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    .local v1, "oppoGuardElfConfigPath":Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 111
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 114
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 115
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :cond_1
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/server/OppoGuardElfConfigUtil;->TAG:Ljava/lang/String;

    const-string v4, "init OppoGuardElfConfigUtil Dir failed!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initFileObserver()V
    .locals 2

    .prologue
    .line 124
    new-instance v0, Lcom/android/server/OppoGuardElfConfigUtil$FileObserverPolicy;

    const-string v1, "/data/system/oppoguardelf/oppoguardelf_config.xml"

    invoke-direct {v0, p0, v1}, Lcom/android/server/OppoGuardElfConfigUtil$FileObserverPolicy;-><init>(Lcom/android/server/OppoGuardElfConfigUtil;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mGuardElfConfigFileObserver:Lcom/android/server/OppoGuardElfConfigUtil$FileObserverPolicy;

    .line 125
    iget-object v0, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mGuardElfConfigFileObserver:Lcom/android/server/OppoGuardElfConfigUtil$FileObserverPolicy;

    invoke-virtual {v0}, Lcom/android/server/OppoGuardElfConfigUtil$FileObserverPolicy;->startWatching()V

    .line 126
    return-void
.end method

.method private readConfigFile()V
    .locals 10

    .prologue
    .line 173
    const/4 v5, 0x0

    .line 174
    .local v5, "xmlReader":Ljava/io/FileReader;
    const/4 v3, 0x0

    .line 177
    .local v3, "strReader":Ljava/io/StringReader;
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 178
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v4, Ljava/io/File;

    const-string v7, "/data/system/oppoguardelf/oppoguardelf_config.xml"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 180
    .local v4, "xmlFile":Ljava/io/File;
    :try_start_1
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 186
    .end local v5    # "xmlReader":Ljava/io/FileReader;
    .local v6, "xmlReader":Ljava/io/FileReader;
    :try_start_2
    invoke-interface {v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 188
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 189
    .local v1, "eventType":I
    :goto_0
    const/4 v7, 0x1

    if-eq v1, v7, :cond_c

    .line 190
    packed-switch v1, :pswitch_data_0

    .line 219
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    goto :goto_0

    .line 181
    .end local v1    # "eventType":I
    .end local v6    # "xmlReader":Ljava/io/FileReader;
    .restart local v5    # "xmlReader":Ljava/io/FileReader;
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_3
    sget-object v7, Lcom/android/server/OppoGuardElfConfigUtil;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t find or open alarm_filter_packages file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 227
    if-eqz v5, :cond_1

    .line 228
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 230
    :cond_1
    if-eqz v3, :cond_2

    .line 231
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 237
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "xmlFile":Ljava/io/File;
    :cond_2
    :goto_2
    return-void

    .line 233
    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "xmlFile":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 234
    .local v0, "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/OppoGuardElfConfigUtil;->TAG:Ljava/lang/String;

    const-string v8, "Got execption close permReader."

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 195
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "xmlReader":Ljava/io/FileReader;
    .restart local v1    # "eventType":I
    .restart local v6    # "xmlReader":Ljava/io/FileReader;
    :pswitch_1
    :try_start_5
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "AbnormalStartCount"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 196
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 197
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/OppoGuardElfConfigUtil;->updateAbnormalStartCount(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 221
    .end local v1    # "eventType":I
    :catch_2
    move-exception v0

    move-object v5, v6

    .line 222
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "xmlFile":Ljava/io/File;
    .end local v6    # "xmlReader":Ljava/io/FileReader;
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v5    # "xmlReader":Ljava/io/FileReader;
    :goto_3
    :try_start_6
    sget-object v7, Lcom/android/server/OppoGuardElfConfigUtil;->TAG:Ljava/lang/String;

    const-string v8, "Got execption parsing permissions."

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 227
    if-eqz v5, :cond_3

    .line 228
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 230
    :cond_3
    if-eqz v3, :cond_2

    .line 231
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 233
    :catch_3
    move-exception v0

    .line 234
    .local v0, "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/OppoGuardElfConfigUtil;->TAG:Ljava/lang/String;

    const-string v8, "Got execption close permReader."

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 198
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "xmlReader":Ljava/io/FileReader;
    .restart local v1    # "eventType":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "xmlFile":Ljava/io/File;
    .restart local v6    # "xmlReader":Ljava/io/FileReader;
    :cond_4
    :try_start_8
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "CollectStartCount"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 199
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 200
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/OppoGuardElfConfigUtil;->updateCollectStartCount(Ljava/lang/String;)V
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 223
    .end local v1    # "eventType":I
    :catch_4
    move-exception v0

    move-object v5, v6

    .line 224
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "xmlFile":Ljava/io/File;
    .end local v6    # "xmlReader":Ljava/io/FileReader;
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v5    # "xmlReader":Ljava/io/FileReader;
    :goto_4
    :try_start_9
    sget-object v7, Lcom/android/server/OppoGuardElfConfigUtil;->TAG:Ljava/lang/String;

    const-string v8, "Got execption parsing permissions."

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 227
    if-eqz v5, :cond_5

    .line 228
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 230
    :cond_5
    if-eqz v3, :cond_2

    .line 231
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_2

    .line 233
    :catch_5
    move-exception v0

    .line 234
    sget-object v7, Lcom/android/server/OppoGuardElfConfigUtil;->TAG:Ljava/lang/String;

    const-string v8, "Got execption close permReader."

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 201
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "xmlReader":Ljava/io/FileReader;
    .restart local v1    # "eventType":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "xmlFile":Ljava/io/File;
    .restart local v6    # "xmlReader":Ljava/io/FileReader;
    :cond_6
    :try_start_b
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "CheckStartTimeInterval"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 202
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 203
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/OppoGuardElfConfigUtil;->updateCheckStartTimeInterval(Ljava/lang/String;)V
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_1

    .line 226
    .end local v1    # "eventType":I
    :catchall_0
    move-exception v7

    move-object v5, v6

    .line 227
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "xmlFile":Ljava/io/File;
    .end local v6    # "xmlReader":Ljava/io/FileReader;
    .restart local v5    # "xmlReader":Ljava/io/FileReader;
    :goto_5
    if-eqz v5, :cond_7

    .line 228
    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 230
    :cond_7
    if-eqz v3, :cond_8

    .line 231
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 235
    :cond_8
    :goto_6
    throw v7

    .line 204
    .end local v5    # "xmlReader":Ljava/io/FileReader;
    .restart local v1    # "eventType":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "xmlFile":Ljava/io/File;
    .restart local v6    # "xmlReader":Ljava/io/FileReader;
    :cond_9
    :try_start_d
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ThresholdIntervalPerWakeup"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 205
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 206
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/OppoGuardElfConfigUtil;->updateThresholdIntervalPerWakeup(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 207
    :cond_a
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ThresholdWarningIntervalPerWakeup"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 208
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 209
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/OppoGuardElfConfigUtil;->updateThresholdWarningIntervalPerWakeup(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 210
    :cond_b
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ThresholdWorstIntervalPerWakeup"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 211
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 212
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/OppoGuardElfConfigUtil;->updateThresholdWorstIntervalPerWakeup(Ljava/lang/String;)V
    :try_end_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_1

    .line 227
    :cond_c
    if-eqz v6, :cond_d

    .line 228
    :try_start_e
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 230
    :cond_d
    if-eqz v3, :cond_e

    .line 231
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    :cond_e
    move-object v5, v6

    .line 235
    .end local v6    # "xmlReader":Ljava/io/FileReader;
    .restart local v5    # "xmlReader":Ljava/io/FileReader;
    goto/16 :goto_2

    .line 233
    .end local v5    # "xmlReader":Ljava/io/FileReader;
    .restart local v6    # "xmlReader":Ljava/io/FileReader;
    :catch_6
    move-exception v0

    .line 234
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/OppoGuardElfConfigUtil;->TAG:Ljava/lang/String;

    const-string v8, "Got execption close permReader."

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v5, v6

    .line 236
    .end local v6    # "xmlReader":Ljava/io/FileReader;
    .restart local v5    # "xmlReader":Ljava/io/FileReader;
    goto/16 :goto_2

    .line 233
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "eventType":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "xmlFile":Ljava/io/File;
    :catch_7
    move-exception v0

    .line 234
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v8, Lcom/android/server/OppoGuardElfConfigUtil;->TAG:Ljava/lang/String;

    const-string v9, "Got execption close permReader."

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 226
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v7

    goto :goto_5

    .line 223
    :catch_8
    move-exception v0

    goto/16 :goto_4

    .line 221
    :catch_9
    move-exception v0

    goto/16 :goto_3

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getAbnormalStartCount()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mAbnormalStartCount:I

    return v0
.end method

.method public getCheckStartTimeInterval()J
    .locals 2

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mCheckStartTimeInterval:J

    return-wide v0
.end method

.method public getCollectStartCount()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mCollectStartCount:I

    return v0
.end method

.method public getThresholdIntervalPerWakeup()J
    .locals 2

    .prologue
    .line 153
    iget-wide v0, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mThresholdIntervalPerWakeup:J

    return-wide v0
.end method

.method public getThresholdWarningIntervalPerWakeup()J
    .locals 2

    .prologue
    .line 161
    iget-wide v0, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mThresholdWarningIntervalPerWakeup:J

    return-wide v0
.end method

.method public getThresholdWorstIntervalPerWakeup()J
    .locals 2

    .prologue
    .line 169
    iget-wide v0, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mThresholdWorstIntervalPerWakeup:J

    return-wide v0
.end method

.method public setAbnormalStartCount(I)V
    .locals 0
    .param p1, "abnormalStartCount"    # I

    .prologue
    .line 133
    iput p1, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mAbnormalStartCount:I

    .line 134
    return-void
.end method

.method public setCheckStartTimeInterval(J)V
    .locals 1
    .param p1, "checkStartTimeInterval"    # J

    .prologue
    .line 149
    iput-wide p1, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mCheckStartTimeInterval:J

    .line 150
    return-void
.end method

.method public setCollectStartCount(I)V
    .locals 0
    .param p1, "collectStartCount"    # I

    .prologue
    .line 141
    iput p1, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mCollectStartCount:I

    .line 142
    return-void
.end method

.method public setThresholdIntervalPerWakeup(J)V
    .locals 1
    .param p1, "thresholdIntervalPerWakeup"    # J

    .prologue
    .line 157
    iput-wide p1, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mThresholdIntervalPerWakeup:J

    .line 158
    return-void
.end method

.method public setThresholdWarningIntervalPerWakeup(J)V
    .locals 1
    .param p1, "thresholdWarningIntervalPerWakeup"    # J

    .prologue
    .line 165
    iput-wide p1, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mThresholdWarningIntervalPerWakeup:J

    .line 166
    return-void
.end method

.method public updateAbnormalStartCount(Ljava/lang/String;)V
    .locals 4
    .param p1, "abnormalStartCount"    # Ljava/lang/String;

    .prologue
    .line 240
    sget-object v1, Lcom/android/server/OppoGuardElfConfigUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAbnormalStartCount abnormalStartCount == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mAbnormalStartCount:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/16 v1, 0x32

    iput v1, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mAbnormalStartCount:I

    .line 245
    sget-object v1, Lcom/android/server/OppoGuardElfConfigUtil;->TAG:Ljava/lang/String;

    const-string v2, "updateAbnormalStartCount NumberFormatException: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateCheckStartTimeInterval(Ljava/lang/String;)V
    .locals 4
    .param p1, "checkStartTimeInterval"    # Ljava/lang/String;

    .prologue
    .line 260
    sget-object v1, Lcom/android/server/OppoGuardElfConfigUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCheckStartTimeInterval checkStartTimeInterval == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mCheckStartTimeInterval:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-wide/32 v2, 0x493e0

    iput-wide v2, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mCheckStartTimeInterval:J

    .line 265
    sget-object v1, Lcom/android/server/OppoGuardElfConfigUtil;->TAG:Ljava/lang/String;

    const-string v2, "updateCheckStartTimeInterval NumberFormatException: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateCollectStartCount(Ljava/lang/String;)V
    .locals 4
    .param p1, "collectStartCount"    # Ljava/lang/String;

    .prologue
    .line 250
    sget-object v1, Lcom/android/server/OppoGuardElfConfigUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCollectStartCount collectStartCount == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mCollectStartCount:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/16 v1, 0x1e

    iput v1, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mCollectStartCount:I

    .line 255
    sget-object v1, Lcom/android/server/OppoGuardElfConfigUtil;->TAG:Ljava/lang/String;

    const-string v2, "updateCollectStartCount NumberFormatException: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateThresholdIntervalPerWakeup(Ljava/lang/String;)V
    .locals 4
    .param p1, "thresholdIntervalPerWakeup"    # Ljava/lang/String;

    .prologue
    .line 270
    sget-object v1, Lcom/android/server/OppoGuardElfConfigUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateThresholdIntervalPerWakeup thresholdIntervalPerWakeup == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mThresholdIntervalPerWakeup:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :goto_0
    return-void

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-wide/16 v2, 0xb4

    iput-wide v2, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mThresholdIntervalPerWakeup:J

    .line 275
    sget-object v1, Lcom/android/server/OppoGuardElfConfigUtil;->TAG:Ljava/lang/String;

    const-string v2, "updateThresholdIntervalPerWakeup NumberFormatException: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateThresholdWarningIntervalPerWakeup(Ljava/lang/String;)V
    .locals 4
    .param p1, "thresholdWarningIntervalPerWakeup"    # Ljava/lang/String;

    .prologue
    .line 280
    sget-object v1, Lcom/android/server/OppoGuardElfConfigUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateThresholdWarningIntervalPerWakeup thresholdWarningIntervalPerWakeup == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mThresholdWarningIntervalPerWakeup:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_0
    return-void

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-wide/16 v2, 0x12c

    iput-wide v2, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mThresholdWarningIntervalPerWakeup:J

    .line 285
    sget-object v1, Lcom/android/server/OppoGuardElfConfigUtil;->TAG:Ljava/lang/String;

    const-string v2, "updateThresholdWarningIntervalPerWakeup NumberFormatException: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateThresholdWorstIntervalPerWakeup(Ljava/lang/String;)V
    .locals 4
    .param p1, "thresholdWorstIntervalPerWakeup"    # Ljava/lang/String;

    .prologue
    .line 290
    sget-object v1, Lcom/android/server/OppoGuardElfConfigUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateThresholdWorstIntervalPerWakeup thresholdWorstIntervalPerWakeup == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mThresholdWorstIntervalPerWakeup:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :goto_0
    return-void

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-wide/16 v2, 0x3c

    iput-wide v2, p0, Lcom/android/server/OppoGuardElfConfigUtil;->mThresholdWorstIntervalPerWakeup:J

    .line 295
    sget-object v1, Lcom/android/server/OppoGuardElfConfigUtil;->TAG:Ljava/lang/String;

    const-string v2, "updateThresholdWorstIntervalPerWakeup NumberFormatException: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
