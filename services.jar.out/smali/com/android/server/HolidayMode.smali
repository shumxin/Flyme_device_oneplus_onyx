.class public Lcom/android/server/HolidayMode;
.super Ljava/lang/Object;
.source "HolidayMode.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.oppo.holidaymode.db.HolidayModeProvider"

.field public static final CONTACTS_ALL:Ljava/lang/String; = "all"

.field public static final CONTACTS_ID:Ljava/lang/String; = "cts_id"

.field public static final CONTACTS_MY_COLLECTION:Ljava/lang/String; = "my collection"

.field public static final CONTACTS_NAME:Ljava/lang/String; = "name"

.field public static final CONTACTS_NONE:Ljava/lang/String; = "none"

.field public static final CONTACTS_NUMBER:Ljava/lang/String; = "number"

.field public static final CONTACTS_TABLE_NAME:Ljava/lang/String; = "holidaymode_contacts"

.field public static final CONTACTS_USER_DEFINED:Ljava/lang/String; = "user defined"

.field public static final CONTENT_URI_CONTACTS:Landroid/net/Uri;

.field public static final CONTENT_URI_INCOMING_CALL:Landroid/net/Uri;

.field public static final CONTENT_URI_STATES:Landroid/net/Uri;

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final INCOMING_CALL_TABLE_NAME:Ljava/lang/String; = "holidaymode_incoming_call"

.field public static final PROJECTION_CONTACTS:[Ljava/lang/String;

.field public static final PROJECTION_STATES:[Ljava/lang/String;

.field public static final STATES_HOLIDAY_MODE:Ljava/lang/String; = "states_holiday_mode"

.field public static final STATES_HOLIDAY_MODE_ALWAYS:Ljava/lang/String; = "states_holiday_mode_always"

.field public static final STATES_HOLIDAY_MODE_CONTACTS_GROUP:Ljava/lang/String; = "states_holiday_mode_contacts_group"

.field public static final STATES_HOLIDAY_MODE_TIME_END:Ljava/lang/String; = "states_holiday_mode_time_end"

.field public static final STATES_HOLIDAY_MODE_TIME_START:Ljava/lang/String; = "states_holiday_mode_time_start"

.field public static final STATES_NAME:Ljava/lang/String; = "name"

.field public static final STATES_TABLE_NAME:Ljava/lang/String; = "holidaymode_states"

.field public static final STATES_VALUE:Ljava/lang/String; = "value"

.field private static final TAG:Ljava/lang/String; = "HolidayMode"

.field public static final TIME_00_00:Ljava/lang/String; = "00:00"

.field public static final TIME_24_00:Ljava/lang/String; = "24:00"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    const-string v0, "content://com.oppo.holidaymode.db.HolidayModeProvider/holidaymode_contacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/HolidayMode;->CONTENT_URI_CONTACTS:Landroid/net/Uri;

    .line 39
    const-string v0, "content://com.oppo.holidaymode.db.HolidayModeProvider/holidaymode_states"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/HolidayMode;->CONTENT_URI_STATES:Landroid/net/Uri;

    .line 41
    const-string v0, "content://com.oppo.holidaymode.db.HolidayModeProvider/holidaymode_incoming_call"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/HolidayMode;->CONTENT_URI_INCOMING_CALL:Landroid/net/Uri;

    .line 64
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "cts_id"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "number"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/HolidayMode;->PROJECTION_CONTACTS:[Ljava/lang/String;

    .line 70
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "value"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/HolidayMode;->PROJECTION_STATES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getTimeFormat(I)Ljava/lang/String;
    .locals 3
    .param p0, "time"    # I

    .prologue
    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, "string":Ljava/lang/String;
    const/16 v1, 0xa

    if-ge p0, v1, :cond_0

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    :goto_0
    return-object v0

    .line 237
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static isContactsAll(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 129
    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "data1"

    aput-object v0, v2, v9

    .line 131
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data1 = \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 139
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    move v0, v8

    .line 157
    :goto_0
    return v0

    .line 143
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 145
    .local v7, "strNumber":Ljava/lang/String;
    const-string v0, "HolidayMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dzc isContactsAll  strNumber = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    if-eqz v6, :cond_1

    .line 152
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 153
    const/4 v6, 0x0

    :cond_1
    move v0, v9

    goto :goto_0

    .line 151
    .end local v7    # "strNumber":Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    .line 152
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 153
    const/4 v6, 0x0

    :cond_3
    move v0, v8

    .line 157
    goto :goto_0

    .line 151
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 152
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 153
    const/4 v6, 0x0

    :cond_4
    throw v0
.end method

.method private static isContactsGroup(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 76
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "value"

    aput-object v0, v2, v1

    .line 77
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/HolidayMode;->CONTENT_URI_STATES:Landroid/net/Uri;

    const-string v3, "name = \'states_holiday_mode_contacts_group\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 80
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 82
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 84
    .local v7, "value":Ljava/lang/String;
    const-string v0, "HolidayMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dzc isContactsGroup  value = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    if-eqz v6, :cond_0

    .line 89
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 90
    const/4 v6, 0x0

    .line 94
    .end local v7    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v7

    .line 88
    :cond_1
    if-eqz v6, :cond_2

    .line 89
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 90
    const/4 v6, 0x0

    :cond_2
    move-object v7, v4

    .line 94
    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 89
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 90
    const/4 v6, 0x0

    :cond_3
    throw v0
.end method

.method private static isContactsUserDefined(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 162
    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "number"

    aput-object v0, v2, v9

    .line 164
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/HolidayMode;->CONTENT_URI_CONTACTS:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "number = \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 167
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    move v0, v8

    .line 185
    :goto_0
    return v0

    .line 171
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 173
    .local v7, "strNumber":Ljava/lang/String;
    const-string v0, "HolidayMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dzc isContactsUserDefined  strNumber = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    if-eqz v6, :cond_1

    .line 180
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 181
    const/4 v6, 0x0

    :cond_1
    move v0, v9

    goto :goto_0

    .line 179
    .end local v7    # "strNumber":Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    .line 180
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 181
    const/4 v6, 0x0

    :cond_3
    move v0, v8

    .line 185
    goto :goto_0

    .line 179
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 180
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 181
    const/4 v6, 0x0

    :cond_4
    throw v0
.end method

.method public static isHolidayMode(Landroid/content/Context;)Z
    .locals 15
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v14, 0x1

    const/4 v3, 0x0

    .line 250
    const/4 v8, 0x0

    .line 251
    .local v8, "HolidayModeStates":Z
    const/4 v7, 0x0

    .line 252
    .local v7, "HolidayModeAlwaysStates":Z
    const/4 v9, 0x0

    .line 253
    .local v9, "StartTime":Ljava/lang/String;
    const/4 v6, 0x0

    .line 255
    .local v6, "EndTime":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/HolidayMode;->CONTENT_URI_STATES:Landroid/net/Uri;

    sget-object v2, Lcom/android/server/HolidayMode;->PROJECTION_STATES:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 257
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_5

    .line 259
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 260
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v11, v0, :cond_4

    .line 261
    invoke-interface {v10, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 262
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 263
    .local v12, "name":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 264
    .local v13, "value":Ljava/lang/String;
    const-string v0, "states_holiday_mode"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 260
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 266
    :cond_1
    const-string v0, "states_holiday_mode_always"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 267
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    goto :goto_1

    .line 268
    :cond_2
    const-string v0, "states_holiday_mode_time_start"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 269
    move-object v9, v13

    goto :goto_1

    .line 270
    :cond_3
    const-string v0, "states_holiday_mode_time_end"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    move-object v6, v13

    goto :goto_1

    .line 276
    .end local v11    # "i":I
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    :cond_4
    if-eqz v10, :cond_5

    .line 277
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 278
    const/4 v10, 0x0

    .line 283
    :cond_5
    const-string v0, "HolidayMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dzc isHolidayMode  HolidayModeStates = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const-string v0, "HolidayMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dzc isHolidayMode  HolidayModeAlwaysStates = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const-string v0, "HolidayMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dzc isHolidayMode  StartTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const-string v0, "HolidayMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dzc isHolidayMode  EndTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-static {v8, v7, v9, v6}, Lcom/android/server/HolidayMode;->isTimeCompare(ZZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v14

    .line 290
    :goto_2
    return v0

    .line 276
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_6

    .line 277
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 278
    const/4 v10, 0x0

    :cond_6
    throw v0

    .line 290
    :cond_7
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static isHolidayModeContacts(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 294
    invoke-static {p0}, Lcom/android/server/HolidayMode;->isContactsGroup(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "isHolidayModeContactsGroup":Ljava/lang/String;
    const-string v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    const-string v2, "HolidayMode"

    const-string v3, "dzc isHolidayModeContacts = true"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :goto_0
    return v1

    .line 298
    :cond_0
    const-string v2, "my collection"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 299
    invoke-static {p0, p1}, Lcom/android/server/HolidayMode;->isMyCollection(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 300
    :cond_1
    const-string v2, "all"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 301
    invoke-static {p0, p1}, Lcom/android/server/HolidayMode;->isContactsAll(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 302
    :cond_2
    const-string v2, "user defined"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 303
    invoke-static {p0, p1}, Lcom/android/server/HolidayMode;->isContactsUserDefined(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 305
    :cond_3
    const-string v2, "HolidayMode"

    const-string v3, "dzc isHolidayModeContacts = true"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isMyCollection(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 98
    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "data1"

    aput-object v0, v2, v9

    .line 99
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "starred =  1 AND data1 = \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 106
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    move v0, v8

    .line 125
    :goto_0
    return v0

    .line 110
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 112
    .local v7, "strNumber":Ljava/lang/String;
    const-string v0, "HolidayMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dzc isContactsGroup  strNumber = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    if-eqz v6, :cond_1

    .line 119
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 120
    const/4 v6, 0x0

    :cond_1
    move v0, v9

    goto :goto_0

    .line 118
    .end local v7    # "strNumber":Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    .line 119
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 120
    const/4 v6, 0x0

    :cond_3
    move v0, v8

    .line 125
    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 119
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 120
    const/4 v6, 0x0

    :cond_4
    throw v0
.end method

.method public static isScreenOn(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 243
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 244
    .local v1, "pm":Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 245
    .local v0, "isScreenOn":Z
    const-string v2, "HolidayMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dzc isScreenOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return v0
.end method

.method private static isTimeCompare(ZZLjava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "HolidayModeStates"    # Z
    .param p1, "HolidayModeAlwaysStates"    # Z
    .param p2, "StartTime"    # Ljava/lang/String;
    .param p3, "EndTime"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 191
    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    :cond_0
    move v4, v5

    .line 229
    :cond_1
    :goto_0
    return v4

    .line 196
    :cond_2
    if-eqz p0, :cond_7

    .line 197
    if-nez p1, :cond_1

    .line 200
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 201
    .local v2, "t":Landroid/text/format/Time;
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 202
    iget v0, v2, Landroid/text/format/Time;->hour:I

    .line 203
    .local v0, "hour":I
    iget v1, v2, Landroid/text/format/Time;->minute:I

    .line 204
    .local v1, "minute":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/android/server/HolidayMode;->getTimeFormat(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Lcom/android/server/HolidayMode;->getTimeFormat(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 206
    .local v3, "timeString":Ljava/lang/String;
    const-string v6, "HolidayMode"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dzc timeCompare timeString = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {p3, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_4

    .line 208
    const-string v6, "HolidayMode"

    const-string v7, "dzc timeCompare EndTime.compareTo(StartTime) > 0"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {v3, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_3

    invoke-virtual {v3, p3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_1

    :cond_3
    move v4, v5

    .line 213
    goto :goto_0

    .line 215
    :cond_4
    invoke-virtual {p3, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_7

    .line 216
    const-string v6, "HolidayMode"

    const-string v7, "dzc timeCompare EndTime.compareTo(StartTime) < 0"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {v3, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_5

    const-string v6, "24:00"

    invoke-virtual {v3, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_1

    .line 220
    :cond_5
    const-string v6, "00:00"

    invoke-virtual {v3, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_6

    invoke-virtual {v3, p3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_1

    :cond_6
    move v4, v5

    .line 224
    goto/16 :goto_0

    .end local v0    # "hour":I
    .end local v1    # "minute":I
    .end local v2    # "t":Landroid/text/format/Time;
    .end local v3    # "timeString":Ljava/lang/String;
    :cond_7
    move v4, v5

    .line 229
    goto/16 :goto_0
.end method
