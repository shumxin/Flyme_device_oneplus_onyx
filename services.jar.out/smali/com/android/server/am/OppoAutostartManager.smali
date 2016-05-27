.class public Lcom/android/server/am/OppoAutostartManager;
.super Ljava/lang/Object;
.source "OppoAutostartManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OppoAutostartManager$BootFileListener;
    }
.end annotation


# static fields
.field private static final DIR:Ljava/lang/String; = "//data//oppo//boot//"

.field private static final FILE_BOOT_OPTION:Ljava/lang/String; = "//data//oppo//boot//bootoption.txt"

.field private static final PATH:Ljava/lang/String; = "/data/oppo/boot/bootoption.txt"

.field private static final SAVE_FILE_NAME:Ljava/lang/String; = "bootoption.txt"

.field private static final TAG:Ljava/lang/String; = "OppoAutostartManager"

.field private static compareList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static file:Ljava/io/File;

.field private static listener:Lcom/android/server/am/OppoAutostartManager$BootFileListener;

.field private static mOppoAutostartManager:Lcom/android/server/am/OppoAutostartManager;

.field private static mWidgetActionList:Ljava/util/List;
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
    .locals 3

    .prologue
    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/OppoAutostartManager;->compareList:Ljava/util/List;

    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OppoAutostartManager;->mOppoAutostartManager:Lcom/android/server/am/OppoAutostartManager;

    .line 63
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.intent.action.MY_PACKAGE_REPLACED"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android.intent.action.PACKAGE_FULLY_REMOVED"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "android.intent.action.PHONE_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "android.intent.action.HEADSET_PLUG"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "qualcomm.intent.action.WIFI_DISPLAY_AUDIO"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "android.intent.action.ANALOG_AUDIO_DOCK_PLUG"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "android.appwidget.action.APPWIDGET_PICK"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "android.appwidget.action.APPWIDGET_BIND"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "android.appwidget.action.APPWIDGET_CONFIGURE"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "android.appwidget.action.APPWIDGET_UPDATE"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "android.appwidget.action.APPWIDGET_DELETED"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "android.appwidget.action.APPWIDGET_DISABLED"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "android.appwidget.action.APPWIDGET_ENABLED"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "android.provider.Telephony.SMS_DELIVER"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "android.provider.Telephony.WAP_PUSH_DELIVER"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "android.content.cts.ContextWrapperTest.STICKY_BROADCAST_RESULT"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OppoAutostartManager;->mWidgetActionList:Ljava/util/List;

    .line 86
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v2, Ljava/io/File;

    const-string v3, "//data//oppo//boot//bootoption.txt"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/android/server/am/OppoAutostartManager;->file:Ljava/io/File;

    .line 90
    sget-object v2, Lcom/android/server/am/OppoAutostartManager;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 91
    const-string v2, "OppoAutostartManager"

    const-string v3, "file.exists() is not exit!"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance v2, Ljava/io/File;

    const-string v3, "//data//oppo//boot//"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 93
    new-instance v2, Ljava/io/File;

    const-string v3, "//data//oppo//boot//bootoption.txt"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/android/server/am/OppoAutostartManager;->file:Ljava/io/File;

    .line 95
    :try_start_0
    sget-object v2, Lcom/android/server/am/OppoAutostartManager;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "chmod 777 /data/oppo/boot/bootoption.txt"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 108
    :goto_1
    new-instance v2, Lcom/android/server/am/OppoAutostartManager$BootFileListener;

    const-string v3, "/data/oppo/boot/bootoption.txt"

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/OppoAutostartManager$BootFileListener;-><init>(Lcom/android/server/am/OppoAutostartManager;Ljava/lang/String;)V

    sput-object v2, Lcom/android/server/am/OppoAutostartManager;->listener:Lcom/android/server/am/OppoAutostartManager$BootFileListener;

    .line 109
    sget-object v2, Lcom/android/server/am/OppoAutostartManager;->listener:Lcom/android/server/am/OppoAutostartManager$BootFileListener;

    invoke-virtual {v2}, Lcom/android/server/am/OppoAutostartManager$BootFileListener;->startWatching()V

    .line 110
    return-void

    .line 96
    :catch_0
    move-exception v1

    .line 97
    .local v1, "ioe":Ljava/io/IOException;
    const-string v2, "OppoAutostartManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File creation failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 101
    .end local v1    # "ioe":Ljava/io/IOException;
    :cond_0
    const-string v2, "OppoAutostartManager"

    const-string v3, "file.exists() is  exit!"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 105
    :catch_1
    move-exception v0

    .line 106
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "OppoAutostartManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic access$000()Ljava/io/File;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/server/am/OppoAutostartManager;->file:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/OppoAutostartManager;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OppoAutostartManager;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoAutostartManager;->getBootList(Ljava/io/File;)V

    return-void
.end method

.method public static final changeAutobootist(Ljava/lang/String;)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 149
    sget-object v0, Lcom/android/server/am/OppoAutostartManager;->compareList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    sget-object v0, Lcom/android/server/am/OppoAutostartManager;->compareList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 152
    :cond_0
    return-void
.end method

.method public static final checkAutoBootForbiddenStart(Lcom/android/server/am/BroadcastQueue;Landroid/content/pm/ResolveInfo;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 9
    .param p0, "queue"    # Lcom/android/server/am/BroadcastQueue;
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 156
    sget-object v1, Lcom/android/server/am/OppoAutostartManager;->mWidgetActionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 157
    .local v7, "action":Ljava/lang/String;
    iget-object v1, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v6, v0

    .line 186
    .end local v7    # "action":Ljava/lang/String;
    :goto_0
    return v6

    .line 162
    :cond_1
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {v1}, Lcom/android/server/am/OppoAutostartManager;->processCanStart(Landroid/content/pm/ActivityInfo;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 164
    iget v1, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/16 v2, 0x2710

    if-lt v1, v2, :cond_3

    .line 165
    iget-object v1, p2, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_2

    .line 166
    iget-object v1, p2, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_3

    iget-object v1, p2, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_3

    move v6, v0

    .line 167
    goto :goto_0

    .line 170
    :cond_2
    const-string v1, "OppoAutostartManager"

    const-string v2, "r.callerApp == null!!!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v0

    .line 171
    goto :goto_0

    .line 174
    :cond_3
    const-string v0, "OppoAutostartManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*Do not want to launch app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callUid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callPid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget v2, p2, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v5, p2, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 181
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    goto/16 :goto_0

    :cond_4
    move v6, v0

    .line 186
    goto/16 :goto_0
.end method

.method private getBootList(Ljava/io/File;)V
    .locals 7
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 205
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 206
    sget-object v4, Lcom/android/server/am/OppoAutostartManager;->compareList:Ljava/util/List;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/am/OppoAutostartManager;->compareList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 207
    sget-object v4, Lcom/android/server/am/OppoAutostartManager;->compareList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 210
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 211
    .local v1, "fr":Ljava/io/FileReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 212
    .local v2, "reader":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 213
    .local v3, "strT":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 214
    sget-object v4, Lcom/android/server/am/OppoAutostartManager;->compareList:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 218
    .end local v1    # "fr":Ljava/io/FileReader;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "strT":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "OppoAutostartManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 216
    .restart local v1    # "fr":Ljava/io/FileReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "strT":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 217
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 222
    .end local v1    # "fr":Ljava/io/FileReader;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "strT":Ljava/lang/String;
    :cond_2
    const-string v4, "OppoAutostartManager"

    const-string v5, "bootoption  file not exists!"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static final getInstance()Lcom/android/server/am/OppoAutostartManager;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/android/server/am/OppoAutostartManager;->mOppoAutostartManager:Lcom/android/server/am/OppoAutostartManager;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lcom/android/server/am/OppoAutostartManager;

    invoke-direct {v0}, Lcom/android/server/am/OppoAutostartManager;-><init>()V

    sput-object v0, Lcom/android/server/am/OppoAutostartManager;->mOppoAutostartManager:Lcom/android/server/am/OppoAutostartManager;

    .line 116
    :cond_0
    sget-object v0, Lcom/android/server/am/OppoAutostartManager;->mOppoAutostartManager:Lcom/android/server/am/OppoAutostartManager;

    return-object v0
.end method

.method private static processCanStart(Landroid/content/pm/ActivityInfo;)Z
    .locals 3
    .param p0, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 190
    const/4 v1, 0x1

    .line 191
    .local v1, "res":Z
    const/4 v0, 0x0

    .line 193
    .local v0, "pkgName":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 194
    const/4 v2, 0x0

    .line 201
    :goto_0
    return v2

    .line 196
    :cond_0
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 198
    sget-object v2, Lcom/android/server/am/OppoAutostartManager;->compareList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    const/4 v1, 0x0

    :cond_1
    move v2, v1

    .line 201
    goto :goto_0
.end method


# virtual methods
.method public initBootList(Z)V
    .locals 1
    .param p1, "clear"    # Z

    .prologue
    .line 139
    if-eqz p1, :cond_0

    .line 140
    sget-object v0, Lcom/android/server/am/OppoAutostartManager;->compareList:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/OppoAutostartManager;->compareList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    sget-object v0, Lcom/android/server/am/OppoAutostartManager;->compareList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 145
    :cond_0
    sget-object v0, Lcom/android/server/am/OppoAutostartManager;->file:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/server/am/OppoAutostartManager;->getBootList(Ljava/io/File;)V

    .line 146
    return-void
.end method
