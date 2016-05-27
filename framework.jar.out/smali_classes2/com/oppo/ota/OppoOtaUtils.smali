.class public Lcom/oppo/ota/OppoOtaUtils;
.super Ljava/lang/Object;
.source "OppoOtaUtils.java"


# annotations
.annotation build Landroid/annotation/OppoHook;
    level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_CLASS:Landroid/annotation/OppoHook$OppoHookType;
    note = "ZhiYong.Lin@Plf.Framework add for ota update result "
    property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
.end annotation


# static fields
.field private static final OTA_UPDATE_FAILED:Ljava/lang/String; = "1"

.field private static final OTA_UPDATE_OK:Ljava/lang/String; = "0"

.field private static final RECOVER_UPDATE_FAILED:Ljava/lang/String; = "3"

.field private static final RECOVER_UPDATE_OK:Ljava/lang/String; = "2"

.field private static final TAG:Ljava/lang/String; = "OppoOtaUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notifyOTAUpdateResult(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    const-string v1, "/cache/recovery/intent"

    .line 59
    .local v1, "otaFilePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, "file":Ljava/io/File;
    const-string v4, "OppoOtaUtils"

    const-string v5, "check /cache/recovery/intent"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 63
    const-string v4, "OppoOtaUtils"

    const-string v5, "/cache/recovery/intent file is exist!!!"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {v1}, Lcom/oppo/ota/OppoOtaUtils;->readOTAUpdateResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, "otaResultStr":Ljava/lang/String;
    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 67
    const-string v4, "OppoOtaUtils"

    const-string v5, "OTA update successed!!!"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.OPPO_OTA_UPDATE_SUCCESSED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    .local v2, "otaIntent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 74
    const-string v4, "persist.sys.panictime"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .end local v2    # "otaIntent":Landroid/content/Intent;
    .end local v3    # "otaResultStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 75
    .restart local v3    # "otaResultStr":Ljava/lang/String;
    :cond_1
    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 76
    const-string v4, "OppoOtaUtils"

    const-string v5, "OTA update failed!!!"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.OPPO_OTA_UPDATE_FAILED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .restart local v2    # "otaIntent":Landroid/content/Intent;
    invoke-static {p0, v2}, Lcom/oppo/ota/OppoOtaUtils;->sendOTAFailLogIntent(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 81
    .end local v2    # "otaIntent":Landroid/content/Intent;
    :cond_2
    const-string v4, "2"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 82
    const-string v4, "OppoOtaUtils"

    const-string v5, "Recover update ok!!!"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.OPPO_RECOVER_UPDATE_SUCCESSED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .restart local v2    # "otaIntent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 86
    .end local v2    # "otaIntent":Landroid/content/Intent;
    :cond_3
    const-string v4, "3"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 87
    const-string v4, "OppoOtaUtils"

    const-string v5, "Recover update failed!!!"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.OPPO_RECOVER_UPDATE_FAILED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    .restart local v2    # "otaIntent":Landroid/content/Intent;
    invoke-static {p0, v2}, Lcom/oppo/ota/OppoOtaUtils;->sendOTAFailLogIntent(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 93
    .end local v2    # "otaIntent":Landroid/content/Intent;
    :cond_4
    const-string v4, "OppoOtaUtils"

    const-string v5, "OTA update file\'s date is invalid!!!"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static readOTAUpdateResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 172
    const/4 v5, 0x0

    .line 173
    .local v5, "resultStr":Ljava/lang/String;
    const/4 v3, 0x0

    .line 175
    .local v3, "reader":Ljava/io/BufferedReader;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    .local v2, "file":Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 183
    if-eqz v4, :cond_2

    .line 185
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 192
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    return-object v5

    .line 186
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 187
    .local v1, "e1":Ljava/io/IOException;
    const-string v6, "OppoOtaUtils"

    const-string v7, "readOTAUpdateResult close the reader failed!!!"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 188
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 180
    .end local v1    # "e1":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 181
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v6, "OppoOtaUtils"

    const-string v7, "readOTAUpdateResult failed!!!"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 183
    if-eqz v3, :cond_0

    .line 185
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 186
    :catch_2
    move-exception v1

    .line 187
    .restart local v1    # "e1":Ljava/io/IOException;
    const-string v6, "OppoOtaUtils"

    const-string v7, "readOTAUpdateResult close the reader failed!!!"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 183
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v3, :cond_1

    .line 185
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 188
    :cond_1
    :goto_3
    throw v6

    .line 186
    :catch_3
    move-exception v1

    .line 187
    .restart local v1    # "e1":Ljava/io/IOException;
    const-string v7, "OppoOtaUtils"

    const-string v8, "readOTAUpdateResult close the reader failed!!!"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 183
    .end local v1    # "e1":Ljava/io/IOException;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 180
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_1

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_2
    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_0
.end method

.method private static sendOTAFailLogIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "otaIntent"    # Landroid/content/Intent;

    .prologue
    .line 99
    const-string v15, "ERROR: Open file"

    .line 100
    .local v15, "updatePackageNotExist":Ljava/lang/String;
    const-string v14, "signature verification failed"

    .line 101
    .local v14, "signVerifiFailed":Ljava/lang/String;
    const-string v7, "has unexpected contents"

    .line 103
    .local v7, "fileNotMatch":Ljava/lang/String;
    const/4 v6, -0x1

    .line 104
    .local v6, "failTypeUpdatePackageNotExist":I
    const/4 v5, -0x2

    .line 105
    .local v5, "failTypeSignVerifiFailed":I
    const/4 v4, -0x3

    .line 107
    .local v4, "failTypeFileNotMatch":I
    const-string v9, "/cache/recovery/last_log"

    .line 108
    .local v9, "otaLogPath":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    .local v10, "otaLogfile":Ljava/io/File;
    const-string v16, "OppoOtaUtils"

    const-string v17, "check /cache/recovery/last_log"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 112
    const-string v16, "OppoOtaUtils"

    const-string v17, "/cache/recovery/last_log file is exist!!!"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v13, 0x0

    .line 115
    .local v13, "resultStr":Ljava/lang/String;
    const/4 v11, 0x0

    .line 116
    .local v11, "reader":Ljava/io/BufferedReader;
    const/4 v8, 0x0

    .line 119
    .local v8, "hasSendIntent":Z
    :try_start_0
    new-instance v12, Ljava/io/BufferedReader;

    new-instance v16, Ljava/io/FileReader;

    move-object/from16 v0, v16

    invoke-direct {v0, v10}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    .end local v11    # "reader":Ljava/io/BufferedReader;
    .local v12, "reader":Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 121
    invoke-virtual {v13, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 122
    const-string v16, "OppoOtaUtils"

    const-string v17, "update package not found!!!!!!"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string v16, "errType"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    const-string v16, "errLine"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    invoke-virtual/range {p0 .. p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 127
    const-string v16, "OppoOtaUtils"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "error log is \""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v8, 0x1

    .line 150
    :cond_1
    :goto_0
    if-nez v8, :cond_2

    .line 151
    invoke-virtual/range {p0 .. p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 156
    :cond_2
    if-eqz v12, :cond_3

    .line 158
    :try_start_2
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 165
    .end local v8    # "hasSendIntent":Z
    .end local v12    # "reader":Ljava/io/BufferedReader;
    .end local v13    # "resultStr":Ljava/lang/String;
    :cond_3
    :goto_1
    const-string v16, "OppoOtaUtils"

    const-string v17, "deal ota log pass!!!"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void

    .line 130
    .restart local v8    # "hasSendIntent":Z
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    .restart local v13    # "resultStr":Ljava/lang/String;
    :cond_4
    :try_start_3
    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 131
    const-string v16, "OppoOtaUtils"

    const-string v17, "signature verification failed!!!!!!"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const-string v16, "errType"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    const-string v16, "errLine"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    invoke-virtual/range {p0 .. p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 136
    const-string v16, "OppoOtaUtils"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "error log is \""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v8, 0x1

    .line 138
    goto :goto_0

    .line 139
    :cond_5
    invoke-virtual {v13, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 140
    const-string v16, "OppoOtaUtils"

    const-string v17, "some file not match original!!!!!!"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const-string v16, "errType"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 143
    const-string v16, "errLine"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    invoke-virtual/range {p0 .. p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 145
    const-string v16, "OppoOtaUtils"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "error log is \""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 146
    const/4 v8, 0x1

    .line 147
    goto/16 :goto_0

    .line 159
    :catch_0
    move-exception v3

    .line 160
    .local v3, "e1":Ljava/io/IOException;
    const-string v16, "OppoOtaUtils"

    const-string v17, "read_last_log close the reader failed!!!"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 153
    .end local v3    # "e1":Ljava/io/IOException;
    .end local v12    # "reader":Ljava/io/BufferedReader;
    .restart local v11    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    .line 154
    .local v2, "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string v16, "OppoOtaUtils"

    const-string v17, "get OTA error message failed!!!"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 156
    if-eqz v11, :cond_3

    .line 158
    :try_start_5
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    .line 159
    :catch_2
    move-exception v3

    .line 160
    .restart local v3    # "e1":Ljava/io/IOException;
    const-string v16, "OppoOtaUtils"

    const-string v17, "read_last_log close the reader failed!!!"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 156
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v16

    :goto_3
    if-eqz v11, :cond_6

    .line 158
    :try_start_6
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 161
    :cond_6
    :goto_4
    throw v16

    .line 159
    :catch_3
    move-exception v3

    .line 160
    .restart local v3    # "e1":Ljava/io/IOException;
    const-string v17, "OppoOtaUtils"

    const-string v18, "read_last_log close the reader failed!!!"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 156
    .end local v3    # "e1":Ljava/io/IOException;
    .end local v11    # "reader":Ljava/io/BufferedReader;
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v16

    move-object v11, v12

    .end local v12    # "reader":Ljava/io/BufferedReader;
    .restart local v11    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 153
    .end local v11    # "reader":Ljava/io/BufferedReader;
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    move-object v11, v12

    .end local v12    # "reader":Ljava/io/BufferedReader;
    .restart local v11    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method
