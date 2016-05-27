.class public Lcom/oppo/os/OppoApkInstallHelper;
.super Ljava/lang/Object;
.source "OppoApkInstallHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OppoApkInstallHelper"

.field private static external:Z

.field private static internal:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    sput-boolean v0, Lcom/oppo/os/OppoApkInstallHelper;->internal:Z

    .line 38
    sput-boolean v0, Lcom/oppo/os/OppoApkInstallHelper;->external:Z

    .line 112
    invoke-static {}, Lcom/oppo/os/OppoApkInstallHelper;->parsexml()V

    .line 113
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static InstallUIDisplay(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, "result":Z
    sget-boolean v1, Lcom/oppo/os/OppoApkInstallHelper;->internal:Z

    if-eqz v1, :cond_1

    .line 43
    const/4 v0, 0x1

    .line 49
    :cond_0
    :goto_0
    return v0

    .line 44
    :cond_1
    sget-boolean v1, Lcom/oppo/os/OppoApkInstallHelper;->external:Z

    if-eqz v1, :cond_0

    .line 45
    invoke-static {p0}, Lcom/oppo/os/OppoUsbEnvironment;->isExternalSDRemoved(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static IsInstallSdMounted(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, "result":Z
    sget-boolean v1, Lcom/oppo/os/OppoApkInstallHelper;->internal:Z

    if-eqz v1, :cond_1

    .line 55
    const-string v1, "mounted"

    invoke-static {p0}, Lcom/oppo/os/OppoUsbEnvironment;->getInternalSdState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 59
    :cond_0
    :goto_0
    return v0

    .line 56
    :cond_1
    sget-boolean v1, Lcom/oppo/os/OppoApkInstallHelper;->external:Z

    if-eqz v1, :cond_0

    .line 57
    const-string v1, "mounted"

    invoke-static {p0}, Lcom/oppo/os/OppoUsbEnvironment;->getExternalSdState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static parsexml()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 64
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v6

    const-string v9, "etc/apk_install.xml"

    invoke-direct {v3, v6, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 66
    .local v3, "permFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 68
    .local v4, "permReader":Ljava/io/FileReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v4    # "permReader":Ljava/io/FileReader;
    .local v5, "permReader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 76
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 78
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 79
    .local v1, "eventType":I
    :goto_0
    if-eq v1, v7, :cond_1

    .line 80
    packed-switch v1, :pswitch_data_0

    .line 95
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    goto :goto_0

    .line 69
    .end local v1    # "eventType":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "permReader":Ljava/io/FileReader;
    .restart local v4    # "permReader":Ljava/io/FileReader;
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v6, "OppoApkInstallHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t find or open apk_install file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    return-void

    .line 85
    .end local v4    # "permReader":Ljava/io/FileReader;
    .restart local v1    # "eventType":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "permReader":Ljava/io/FileReader;
    :pswitch_1
    :try_start_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v9, "path"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 86
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 87
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    const-string v9, "internal"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v7

    :goto_3
    sput-boolean v6, Lcom/oppo/os/OppoApkInstallHelper;->internal:Z

    .line 88
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    const-string v9, "external"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v7

    :goto_4
    sput-boolean v6, Lcom/oppo/os/OppoApkInstallHelper;->external:Z
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 97
    .end local v1    # "eventType":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v0

    .line 98
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v6, "OppoApkInstallHelper"

    const-string v7, "Got execption parsing permissions."

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_5
    if-eqz v5, :cond_2

    .line 105
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_2
    :goto_6
    move-object v4, v5

    .line 110
    .end local v5    # "permReader":Ljava/io/FileReader;
    .restart local v4    # "permReader":Ljava/io/FileReader;
    goto :goto_2

    .end local v4    # "permReader":Ljava/io/FileReader;
    .restart local v1    # "eventType":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "permReader":Ljava/io/FileReader;
    :cond_3
    move v6, v8

    .line 87
    goto :goto_3

    :cond_4
    move v6, v8

    .line 88
    goto :goto_4

    .line 99
    .end local v1    # "eventType":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v0

    .line 100
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "OppoApkInstallHelper"

    const-string v7, "Got execption parsing permissions."

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 107
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 108
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 80
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
