.class public Lcom/oppo/os/OppoUsbEnvironment;
.super Landroid/os/Environment;
.source "OppoUsbEnvironment.java"


# static fields
.field public static final EXTERNAL:I = 0x2

.field public static final INTERNAL:I = 0x1

.field public static final NONE:I = -0x1

.field public static final OTG:I = 0x3

.field private static final TAG:Ljava/lang/String; = "OppoUsbEnvironment"

.field private static mExternalSdDir:Ljava/lang/String;

.field private static mInternalSdDir:Ljava/lang/String;

.field private static mStorageManager:Landroid/os/storage/StorageManager;

.field private static mSwap:Z

.field private static otgPathes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oppo/os/OppoUsbEnvironment;->mSwap:Z

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/oppo/os/OppoUsbEnvironment;->otgPathes:Ljava/util/List;

    .line 218
    invoke-static {}, Lcom/oppo/os/OppoUsbEnvironment;->parsexml()V

    .line 219
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/os/Environment;-><init>()V

    return-void
.end method

.method public static getExternalPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    sget-object v0, Lcom/oppo/os/OppoUsbEnvironment;->mExternalSdDir:Ljava/lang/String;

    return-object v0
.end method

.method public static getExternalSdDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-static {p0}, Lcom/oppo/os/OppoUsbEnvironment;->update(Landroid/content/Context;)V

    .line 68
    sget-object v0, Lcom/oppo/os/OppoUsbEnvironment;->mExternalSdDir:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/oppo/os/OppoUsbEnvironment;->mExternalSdDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getExternalSdState(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-static {p0}, Lcom/oppo/os/OppoUsbEnvironment;->update(Landroid/content/Context;)V

    .line 80
    sget-object v0, Lcom/oppo/os/OppoUsbEnvironment;->mExternalSdDir:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/oppo/os/OppoUsbEnvironment;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v1, Lcom/oppo/os/OppoUsbEnvironment;->mExternalSdDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInternalPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    sget-object v0, Lcom/oppo/os/OppoUsbEnvironment;->mInternalSdDir:Ljava/lang/String;

    .line 119
    .local v0, "temp":Ljava/lang/String;
    sget-boolean v1, Lcom/oppo/os/OppoUsbEnvironment;->mSwap:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/oppo/os/OppoUsbEnvironment;->mExternalSdDir:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/oppo/os/OppoUsbEnvironment;->isVolumeMounted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    sget-object v0, Lcom/oppo/os/OppoUsbEnvironment;->mExternalSdDir:Ljava/lang/String;

    .line 122
    :cond_0
    return-object v0
.end method

.method public static getInternalSdDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-static {p0}, Lcom/oppo/os/OppoUsbEnvironment;->update(Landroid/content/Context;)V

    .line 62
    sget-object v0, Lcom/oppo/os/OppoUsbEnvironment;->mInternalSdDir:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/oppo/os/OppoUsbEnvironment;->mInternalSdDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInternalSdState(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-static {p0}, Lcom/oppo/os/OppoUsbEnvironment;->update(Landroid/content/Context;)V

    .line 74
    sget-object v0, Lcom/oppo/os/OppoUsbEnvironment;->mInternalSdDir:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/oppo/os/OppoUsbEnvironment;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v1, Lcom/oppo/os/OppoUsbEnvironment;->mInternalSdDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getOtgPath(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    sget-object v0, Lcom/oppo/os/OppoUsbEnvironment;->otgPathes:Ljava/util/List;

    return-object v0
.end method

.method public static getPathType(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 130
    if-nez p1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v0

    .line 133
    :cond_1
    sget-object v1, Lcom/oppo/os/OppoUsbEnvironment;->mInternalSdDir:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 134
    const/4 v0, 0x1

    goto :goto_0

    .line 136
    :cond_2
    sget-object v1, Lcom/oppo/os/OppoUsbEnvironment;->mExternalSdDir:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 137
    const/4 v0, 0x2

    goto :goto_0

    .line 139
    :cond_3
    sget-object v1, Lcom/oppo/os/OppoUsbEnvironment;->otgPathes:Ljava/util/List;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/oppo/os/OppoUsbEnvironment;->otgPathes:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static isExternalSDRemoved(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    invoke-static {p0}, Lcom/oppo/os/OppoUsbEnvironment;->update(Landroid/content/Context;)V

    .line 86
    sget-object v0, Lcom/oppo/os/OppoUsbEnvironment;->mExternalSdDir:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 87
    const/4 v0, 0x1

    .line 90
    :goto_0
    return v0

    .line 89
    :cond_0
    const-string v0, "OppoUsbEnvironment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the state of volume is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oppo/os/OppoUsbEnvironment;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v3, Lcom/oppo/os/OppoUsbEnvironment;->mExternalSdDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string v0, "removed"

    sget-object v1, Lcom/oppo/os/OppoUsbEnvironment;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v2, Lcom/oppo/os/OppoUsbEnvironment;->mExternalSdDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isNestMounted()Z
    .locals 3

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "result":Z
    sget-object v1, Lcom/oppo/os/OppoUsbEnvironment;->mInternalSdDir:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/oppo/os/OppoUsbEnvironment;->mExternalSdDir:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 98
    sget-object v1, Lcom/oppo/os/OppoUsbEnvironment;->mInternalSdDir:Ljava/lang/String;

    sget-object v2, Lcom/oppo/os/OppoUsbEnvironment;->mExternalSdDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/oppo/os/OppoUsbEnvironment;->mExternalSdDir:Ljava/lang/String;

    sget-object v2, Lcom/oppo/os/OppoUsbEnvironment;->mInternalSdDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    :cond_0
    const/4 v0, 0x1

    .line 102
    :cond_1
    return v0
.end method

.method public static isVolumeMounted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-static {p0}, Lcom/oppo/os/OppoUsbEnvironment;->update(Landroid/content/Context;)V

    .line 111
    if-eqz p1, :cond_0

    sget-object v0, Lcom/oppo/os/OppoUsbEnvironment;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    .line 112
    const-string v0, "mounted"

    sget-object v1, Lcom/oppo/os/OppoUsbEnvironment;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1, p1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 114
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parsexml()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 148
    new-instance v2, Ljava/io/File;

    const-string v7, "/system/etc/oppo_usbsd.xml"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    .local v2, "file":Ljava/io/File;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sput-object v7, Lcom/oppo/os/OppoUsbEnvironment;->otgPathes:Ljava/util/List;

    .line 150
    const/4 v4, 0x0

    .line 152
    .local v4, "reader":Ljava/io/FileReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v4    # "reader":Ljava/io/FileReader;
    .local v5, "reader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 160
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 162
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 163
    .local v1, "eventType":I
    :goto_0
    if-eq v1, v9, :cond_2

    .line 164
    packed-switch v1, :pswitch_data_0

    .line 200
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    goto :goto_0

    .line 153
    .end local v1    # "eventType":I
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v7, "OppoUsbEnvironment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t find or open apk_install file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    return-void

    .line 169
    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v1    # "eventType":I
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "reader":Ljava/io/FileReader;
    :pswitch_1
    :try_start_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "swap"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 170
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 171
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    .line 172
    .local v6, "temp":Ljava/lang/String;
    const-string v7, "true"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "yes"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "1"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 173
    :cond_1
    const/4 v7, 0x1

    sput-boolean v7, Lcom/oppo/os/OppoUsbEnvironment;->mSwap:Z
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 202
    .end local v1    # "eventType":I
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "temp":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 203
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v7, "OppoUsbEnvironment"

    const-string v8, "Got execption parsing permissions."

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_2
    :goto_3
    if-eqz v5, :cond_3

    .line 210
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_4
    move-object v4, v5

    .line 215
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    goto :goto_2

    .line 176
    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v1    # "eventType":I
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "reader":Ljava/io/FileReader;
    :cond_4
    :try_start_4
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "hotplug"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 177
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_1

    .line 183
    :cond_5
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "internalsd"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 184
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 185
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/oppo/os/OppoUsbEnvironment;->mInternalSdDir:Ljava/lang/String;
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 204
    .end local v1    # "eventType":I
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v0

    .line 205
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "OppoUsbEnvironment"

    const-string v8, "Got execption parsing permissions."

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 187
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "eventType":I
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_6
    :try_start_5
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "externalsd"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 188
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 189
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/oppo/os/OppoUsbEnvironment;->mExternalSdDir:Ljava/lang/String;

    goto/16 :goto_1

    .line 191
    :cond_7
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "otgpath"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 192
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 193
    sget-object v7, Lcom/oppo/os/OppoUsbEnvironment;->otgPathes:Ljava/util/List;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    .line 212
    .end local v1    # "eventType":I
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_3
    move-exception v0

    .line 213
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static update(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    sget-object v0, Lcom/oppo/os/OppoUsbEnvironment;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 55
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    sput-object v0, Lcom/oppo/os/OppoUsbEnvironment;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 57
    :cond_0
    return-void
.end method
