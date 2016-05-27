.class public Lcom/android/internal/telephony/ColorOSBlackListPhone;
.super Ljava/lang/Object;
.source "ColorOSBlackListPhone.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.color.provider.SafeProvider"

.field private static final AUTHORITY_URI:Landroid/net/Uri;

.field private static final BLACKLIST_APP_INFO:Ljava/lang/String; = "oppo.intent.action.OPPO_ACTION_NOTIFICATION"

.field private static final BLACKLIST_BLOCK_CONTENT_URI:Landroid/net/Uri;

.field private static final BLACKLIST_BLOCK_SMS_AND_CALL_CONTENT_URI:Landroid/net/Uri;

.field private static final BLACKLIST_CONTENT_URI:Landroid/net/Uri;

.field private static final BLACKLIST_TABLE:Ljava/lang/String; = "bl_list"

.field private static final BLOCK_TYPE:Ljava/lang/String; = "block_type"

.field private static final BL_ANTI_HARASSMENT:Ljava/lang/String; = "bl_anti_harassment"

.field private static final CALLSLOG_CONTENT_URI:Landroid/net/Uri;

.field private static final CALLSLOG_TABLE:Ljava/lang/String; = "bl_blocked_call"

.field public static final COLUMN_LIST_TYPE:Ljava/lang/String; = "list_type"

.field private static final CONFIG_BLOCK_SETTING_SWITCH:Ljava/lang/String; = "block_setting_switch"

.field private static final CONFIG_CONTENT_URI:Landroid/net/Uri;

.field private static final CONFIG_PHONE_BLACKLIST_NAME:Ljava/lang/String; = "phone_blacklist_switch"

.field private static final CONFIG_TABLE:Ljava/lang/String; = "settings"

.field private static final DATE:Ljava/lang/String; = "date"

.field private static final DURNNING:Ljava/lang/String; = "duration"

.field public static final LIST_TYPE_BLACK:I = 0x1

.field public static final LIST_TYPE_DEFAULT_WHITE:I = 0x3

.field public static final LIST_TYPE_WHITE:I = 0x2

.field private static final NAME:Ljava/lang/String; = "key"

.field private static final NEW:Ljava/lang/String; = "new"

.field private static final NUMBER:Ljava/lang/String; = "number"

.field private static final SIMID:Ljava/lang/String; = "simid"

.field private static final SMS_WHITELIST_CONTENT_URI:Landroid/net/Uri;

.field private static final SMS_WHITELIST_NUMBER_CONTENT_URI:Landroid/net/Uri;

.field private static final SMS_WHITELIST_TABLE:Ljava/lang/String; = "sms_whitelist"

.field private static final TAG:Ljava/lang/String; = "ColorOSBlackListPhone"

.field private static final TYPE_BLACK_PHONE:I = 0x2

.field private static final TYPE_BLOCK_BOTH:I = 0x3

.field private static final URI_PATH_NUMBER:Ljava/lang/String; = "number"

.field private static final URI_PATH_SMS_AND_CALL_BLOCK:Ljava/lang/String; = "sms_and_call_block"

.field private static final URI_PATH_WHITELIST_NUMBER:Ljava/lang/String; = "number"

.field private static final VALUE:Ljava/lang/String; = "value"

.field private static final WHITELIST_BLOCK_SMS_AND_CALL_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const-string v0, "content://com.color.provider.SafeProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ColorOSBlackListPhone;->AUTHORITY_URI:Landroid/net/Uri;

    .line 41
    sget-object v0, Lcom/android/internal/telephony/ColorOSBlackListPhone;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "bl_list"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ColorOSBlackListPhone;->BLACKLIST_CONTENT_URI:Landroid/net/Uri;

    .line 44
    sget-object v0, Lcom/android/internal/telephony/ColorOSBlackListPhone;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "bl_list"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ColorOSBlackListPhone;->BLACKLIST_BLOCK_CONTENT_URI:Landroid/net/Uri;

    .line 45
    sget-object v0, Lcom/android/internal/telephony/ColorOSBlackListPhone;->BLACKLIST_BLOCK_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "sms_and_call_block"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ColorOSBlackListPhone;->BLACKLIST_BLOCK_SMS_AND_CALL_CONTENT_URI:Landroid/net/Uri;

    .line 47
    sget-object v0, Lcom/android/internal/telephony/ColorOSBlackListPhone;->BLACKLIST_BLOCK_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "number"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ColorOSBlackListPhone;->WHITELIST_BLOCK_SMS_AND_CALL_CONTENT_URI:Landroid/net/Uri;

    .line 67
    sget-object v0, Lcom/android/internal/telephony/ColorOSBlackListPhone;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "bl_blocked_call"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ColorOSBlackListPhone;->CALLSLOG_CONTENT_URI:Landroid/net/Uri;

    .line 71
    sget-object v0, Lcom/android/internal/telephony/ColorOSBlackListPhone;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "settings"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ColorOSBlackListPhone;->CONFIG_CONTENT_URI:Landroid/net/Uri;

    .line 76
    sget-object v0, Lcom/android/internal/telephony/ColorOSBlackListPhone;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "sms_whitelist"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ColorOSBlackListPhone;->SMS_WHITELIST_CONTENT_URI:Landroid/net/Uri;

    .line 78
    sget-object v0, Lcom/android/internal/telephony/ColorOSBlackListPhone;->SMS_WHITELIST_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "number"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ColorOSBlackListPhone;->SMS_WHITELIST_NUMBER_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBlockSetting(Landroid/content/Context;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/ColorOSBlackListPhone;->CONFIG_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "key"

    aput-object v3, v2, v10

    const-string v3, "value"

    aput-object v3, v2, v9

    const-string v3, "key=?"

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "bl_anti_harassment"

    aput-object v5, v4, v10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 92
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v10

    .line 96
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt v0, v9, :cond_0

    .line 101
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 102
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v7

    .line 111
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 106
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 107
    .local v8, "i":I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 109
    if-lez v8, :cond_3

    move v0, v9

    :goto_1
    move v10, v0

    goto :goto_0

    :cond_3
    move v0, v10

    goto :goto_1
.end method

.method private static getWhere()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    const-string v0, "block_type=? OR block_type=?"

    return-object v0
.end method

.method private static isBlockOpened(Landroid/content/Context;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/ColorOSBlackListPhone;->CONFIG_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "key"

    aput-object v3, v2, v10

    const-string v3, "value"

    aput-object v3, v2, v9

    const-string v3, "key=?"

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "phone_blacklist_switch"

    aput-object v5, v4, v10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 121
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 141
    :cond_0
    :goto_0
    return v10

    .line 125
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt v0, v9, :cond_0

    .line 130
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 131
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    :catch_0
    move-exception v7

    .line 140
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 135
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 136
    .local v8, "i":I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 138
    if-lez v8, :cond_3

    move v0, v9

    :goto_1
    move v10, v0

    goto :goto_0

    :cond_3
    move v0, v10

    goto :goto_1
.end method

.method private static isInBlackList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 12
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 150
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v9

    .line 153
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/ColorOSBlackListPhone;->BLACKLIST_BLOCK_SMS_AND_CALL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 154
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/internal/telephony/ColorOSBlackListPhone;->getWhere()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "list_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v11, [Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 157
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 161
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 163
    .local v7, "i":I
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 164
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 166
    :cond_2
    if-lez v7, :cond_3

    move v0, v8

    :goto_1
    move v9, v0

    goto :goto_0

    :cond_3
    move v0, v9

    goto :goto_1
.end method

.method private static isInWhiteList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 188
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    :cond_0
    :goto_0
    return v9

    .line 192
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/ColorOSBlackListPhone;->WHITELIST_BLOCK_SMS_AND_CALL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 193
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "list_type=?"

    new-array v4, v8, [Ljava/lang/String;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 195
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 199
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 201
    .local v7, "i":I
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 202
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 204
    :cond_2
    if-lez v7, :cond_3

    move v0, v8

    :goto_1
    move v9, v0

    goto :goto_0

    :cond_3
    move v0, v9

    goto :goto_1
.end method

.method public static isJudgeBlackListPhone(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 7
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "pbNumber"    # Ljava/lang/String;
    .param p2, "vSimID"    # I

    .prologue
    const/4 v3, 0x1

    .line 212
    const-string v4, "ColorOSBlackListPhone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isJudgeBlackListPhone pbNumber = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",  vSimID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const-string v4, "ColorOSBlackListPhone"

    const-string v5, "isJudgeBlackListPhone_TYP1"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-static {p0}, Lcom/android/internal/telephony/ColorOSBlackListPhone;->getBlockSetting(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 219
    const-string v4, "ColorOSBlackListPhone"

    const-string v5, "Blacklist is enabled"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-static {p0, p1}, Lcom/android/internal/telephony/ColorOSBlackListPhone;->isInWhiteList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 222
    .local v0, "bInWhite":Z
    const-string v4, "ColorOSBlackListPhone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isJudgeBlackListPhone_TYPE4 bInWhite = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    if-nez v0, :cond_0

    .line 225
    invoke-static {p0, p1}, Lcom/android/internal/telephony/ColorOSBlackListPhone;->isInBlackList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 226
    .local v1, "isExitBlackList":Z
    if-ne v1, v3, :cond_0

    .line 228
    invoke-static {p0, p2, p1}, Lcom/android/internal/telephony/ColorOSBlackListPhone;->writeDabaseByNumber(Landroid/content/Context;ILjava/lang/String;)V

    .line 229
    const-string v4, "ColorOSBlackListPhone"

    const-string v5, "isJudgeBlackListPhone_TYPE5"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    new-instance v2, Landroid/content/Intent;

    const-string v4, "oppo.intent.action.OPPO_ACTION_NOTIFICATION"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 232
    .local v2, "newintent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 274
    .end local v0    # "bInWhite":Z
    .end local v1    # "isExitBlackList":Z
    .end local v2    # "newintent":Landroid/content/Intent;
    :goto_0
    return v3

    .line 239
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/ColorOSHolidayMode;->isHolidayMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ColorOSHolidayMode;->isHolidayModeContacts(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ColorOSHolidayMode;->insertOrUpdateIncomingCall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 242
    const-string v4, "ColorOSBlackListPhone"

    const-string v5, "isJudgeBlackListPhone_TYP2"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/ColorOSHolidayMode;->insertCallLog(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 272
    :cond_1
    const-string v3, "ColorOSBlackListPhone"

    const-string v4, "isJudgeBlackListPhone_TYPEND"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static writeDabaseByNumber(Landroid/content/Context;ILjava/lang/String;)V
    .locals 6
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "simId"    # I
    .param p2, "pbNumber"    # Ljava/lang/String;

    .prologue
    .line 171
    move-object v0, p2

    .line 172
    .local v0, "number":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    :goto_0
    return-void

    .line 177
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 178
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "number"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v2, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 180
    const-string v2, "duration"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v2, "new"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 182
    const-string v2, "simid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 184
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/ColorOSBlackListPhone;->CALLSLOG_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method
