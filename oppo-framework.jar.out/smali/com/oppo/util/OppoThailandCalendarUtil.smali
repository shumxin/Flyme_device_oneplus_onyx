.class public Lcom/oppo/util/OppoThailandCalendarUtil;
.super Ljava/lang/Object;
.source "OppoThailandCalendarUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;,
        Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;,
        Lcom/oppo/util/OppoThailandCalendarUtil$OppoAndroidDateFormat;,
        Lcom/oppo/util/OppoThailandCalendarUtil$OppoAndroidDateUtils;,
        Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateUtils;
    }
.end annotation


# static fields
.field private static final FILE_FULL_PATH_NAME_FOR_THAI_CALENDAR_DIR:Ljava/lang/String; = "/data/thaicalendar/"

.field private static final FILE_FULL_PATH_NAME_FOR_THAI_CALENDAR_FILE:Ljava/lang/String; = "enable_state.properties"

.field private static final KEY_THAI_CALENDAR_ENABLE_STATE:Ljava/lang/String; = "key_thai_calendar_enable_state"

.field private static final TAG:Ljava/lang/String; = "OppoThailandCalendarUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1765
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Lcom/oppo/util/OppoThailandCalendarUtil;->isThaiCalendarEnabled()Z

    move-result v0

    return v0
.end method

.method private static isThaiCalendarEnabled()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 86
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 87
    .local v3, "prop":Ljava/util/Properties;
    const/4 v1, 0x0

    .line 88
    .local v1, "fis":Ljava/io/FileInputStream;
    const-string v4, "false"

    .line 90
    .local v4, "state":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v6, "/data/thaicalendar/enable_state.properties"

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, "file":Ljava/io/File;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 94
    const-string v6, "key_thai_calendar_enable_state"

    invoke-virtual {v3, v6, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 97
    if-eqz v2, :cond_4

    .line 99
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 104
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    if-nez v4, :cond_3

    :cond_1
    :goto_1
    return v5

    .line 100
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "file":Ljava/io/File;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v6

    move-object v1, v2

    .line 101
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_0

    .line 95
    .end local v0    # "file":Ljava/io/File;
    :catch_1
    move-exception v6

    .line 97
    :goto_2
    if-eqz v1, :cond_0

    .line 99
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 100
    :catch_2
    move-exception v6

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v1, :cond_2

    .line 99
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 101
    :cond_2
    :goto_4
    throw v5

    .line 104
    :cond_3
    const-string v6, "true"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    .line 100
    :catch_3
    move-exception v6

    goto :goto_4

    .line 97
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "file":Ljava/io/File;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 95
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v6

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :cond_4
    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_0
.end method
