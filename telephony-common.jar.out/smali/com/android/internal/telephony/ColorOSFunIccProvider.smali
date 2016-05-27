.class public Lcom/android/internal/telephony/ColorOSFunIccProvider;
.super Ljava/lang/Object;
.source "ColorOSFunIccProvider.java"


# static fields
.field protected static final OPPO_BOOK_COLUMN_NAMES:[Ljava/lang/String;

.field protected static final OPPO_BOOK_COLUMN_NUM:I = 0x1

.field protected static final STR_ID:Ljava/lang/String; = "id"

.field protected static final STR_NUMBER2:Ljava/lang/String; = "anr"

.field public static final TAG:Ljava/lang/String; = "ColorOSFunIccProvider"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "count"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/ColorOSFunIccProvider;->OPPO_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static colorOSAddIccRecordToEfEx(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p0, "subscription"    # I
    .param p1, "efType"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number1"    # Ljava/lang/String;
    .param p4, "number2"    # Ljava/lang/String;
    .param p5, "emails"    # [Ljava/lang/String;
    .param p6, "pin2"    # Ljava/lang/String;

    .prologue
    .line 131
    const/4 v10, -0x1

    .line 132
    .local v10, "index":I
    const/4 v9, 0x0

    .line 134
    .local v9, "email":Ljava/lang/String;
    if-eqz p5, :cond_0

    .line 135
    const/4 v1, 0x0

    aget-object v9, p5, v1

    .line 139
    :cond_0
    :try_start_0
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 141
    .local v0, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_1

    .line 142
    const-string v3, ""

    const-string v4, ""

    move v1, p0

    move v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p6

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/IIccPhoneBook;->colorAddAdnRecordsInEfBySearchExUsingSubId(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 151
    .end local v0    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    return v10

    .line 148
    :catch_0
    move-exception v1

    goto :goto_0

    .line 146
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static colorOSGetSubscription(Landroid/net/Uri;)I
    .locals 3
    .param p0, "url"    # Landroid/net/Uri;

    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 46
    .local v0, "s":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static colorOSMSimCheckPhoneBookReady(Landroid/net/Uri;)Landroid/database/MatrixCursor;
    .locals 9
    .param p0, "url"    # Landroid/net/Uri;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 181
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v8, Lcom/android/internal/telephony/ColorOSFunIccProvider;->OPPO_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v0, v8, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 182
    .local v0, "cursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x0

    .line 183
    .local v5, "success":Z
    const/4 v2, 0x0

    .line 186
    .local v2, "index":I
    :try_start_0
    invoke-static {p0}, Lcom/android/internal/telephony/ColorOSFunIccProvider;->colorOSGetSubscription(Landroid/net/Uri;)I

    move-result v4

    .line 187
    .local v4, "subscription":I
    const-string v8, "simphonebook"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 189
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 190
    invoke-interface {v1, v4}, Lcom/android/internal/telephony/IIccPhoneBook;->colorISPhoneBookReady(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 198
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v4    # "subscription":I
    :cond_0
    :goto_0
    if-ne v5, v6, :cond_1

    move v2, v6

    .line 199
    :goto_1
    new-array v3, v6, [Ljava/lang/Object;

    .line 200
    .local v3, "object":[Ljava/lang/Object;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v7

    .line 201
    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 202
    return-object v0

    .end local v3    # "object":[Ljava/lang/Object;
    :cond_1
    move v2, v7

    .line 198
    goto :goto_1

    .line 195
    :catch_0
    move-exception v8

    goto :goto_0

    .line 193
    :catch_1
    move-exception v8

    goto :goto_0
.end method

.method public static colorOSMixEmailLen(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/MatrixCursor;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x1

    .line 206
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v5, Lcom/android/internal/telephony/ColorOSFunIccProvider;->OPPO_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v0, v5, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 207
    .local v0, "cursor":Landroid/database/MatrixCursor;
    const/4 v2, -0x1

    .line 210
    .local v2, "index":I
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/ColorOSFunIccProvider;->colorOSGetSubscription(Landroid/net/Uri;)I

    move-result v4

    .line 211
    .local v4, "subscription":I
    const-string v5, "simphonebook"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 213
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 214
    invoke-interface {v1, v4}, Lcom/android/internal/telephony/IIccPhoneBook;->colorGetAdnEmailLenUsingSubId(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 222
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v4    # "subscription":I
    :cond_0
    :goto_0
    new-array v3, v6, [Ljava/lang/Object;

    .line 223
    .local v3, "object":[Ljava/lang/Object;
    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    .line 224
    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 226
    return-object v0

    .line 219
    .end local v3    # "object":[Ljava/lang/Object;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 217
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method public static colorOSMixSimAllSpace(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/MatrixCursor;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x1

    .line 55
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v5, Lcom/android/internal/telephony/ColorOSFunIccProvider;->OPPO_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v0, v5, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 56
    .local v0, "cursor":Landroid/database/MatrixCursor;
    const/4 v2, -0x1

    .line 59
    .local v2, "index":I
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/ColorOSFunIccProvider;->colorOSGetSubscription(Landroid/net/Uri;)I

    move-result v4

    .line 60
    .local v4, "subscription":I
    const-string v5, "simphonebook"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 62
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 64
    invoke-interface {v1, v4}, Lcom/android/internal/telephony/IIccPhoneBook;->colorGetSimPhonebookAllSpace(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 72
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v4    # "subscription":I
    :cond_0
    :goto_0
    new-array v3, v6, [Ljava/lang/Object;

    .line 73
    .local v3, "object":[Ljava/lang/Object;
    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    .line 74
    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 76
    return-object v0

    .line 69
    .end local v3    # "object":[Ljava/lang/Object;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 67
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method public static colorOSMixSimNameLen(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/MatrixCursor;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x1

    .line 105
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v5, Lcom/android/internal/telephony/ColorOSFunIccProvider;->OPPO_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v0, v5, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 106
    .local v0, "cursor":Landroid/database/MatrixCursor;
    const/4 v2, -0x1

    .line 109
    .local v2, "index":I
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/ColorOSFunIccProvider;->colorOSGetSubscription(Landroid/net/Uri;)I

    move-result v4

    .line 110
    .local v4, "subscription":I
    const-string v5, "simphonebook"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 112
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 113
    invoke-interface {v1, v4}, Lcom/android/internal/telephony/IIccPhoneBook;->colorGetSimNameLenUsingSubId(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 121
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v4    # "subscription":I
    :cond_0
    :goto_0
    new-array v3, v6, [Ljava/lang/Object;

    .line 122
    .local v3, "object":[Ljava/lang/Object;
    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    .line 123
    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 125
    return-object v0

    .line 118
    .end local v3    # "object":[Ljava/lang/Object;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 116
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method public static colorOSMixSimUsedSpace(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/MatrixCursor;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x1

    .line 80
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v5, Lcom/android/internal/telephony/ColorOSFunIccProvider;->OPPO_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v0, v5, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 81
    .local v0, "cursor":Landroid/database/MatrixCursor;
    const/4 v2, -0x1

    .line 84
    .local v2, "index":I
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/ColorOSFunIccProvider;->colorOSGetSubscription(Landroid/net/Uri;)I

    move-result v4

    .line 85
    .local v4, "subscription":I
    const-string v5, "simphonebook"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 87
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 89
    invoke-interface {v1, v4}, Lcom/android/internal/telephony/IIccPhoneBook;->colorGetSimPhonebookUsedSpace(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 97
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v4    # "subscription":I
    :cond_0
    :goto_0
    new-array v3, v6, [Ljava/lang/Object;

    .line 98
    .local v3, "object":[Ljava/lang/Object;
    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    .line 99
    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 101
    return-object v0

    .line 94
    .end local v3    # "object":[Ljava/lang/Object;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 92
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method public static colorOSUpdateIccRecordInEfByIdEx(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p0, "subscription"    # I
    .param p1, "efType"    # I
    .param p2, "id"    # I
    .param p3, "newName"    # Ljava/lang/String;
    .param p4, "newNumber1"    # Ljava/lang/String;
    .param p5, "newNumber2"    # Ljava/lang/String;
    .param p6, "emails"    # [Ljava/lang/String;
    .param p7, "pin2"    # Ljava/lang/String;

    .prologue
    .line 158
    const/4 v9, 0x0

    .line 159
    .local v9, "success":Z
    const/4 v8, 0x0

    .line 161
    .local v8, "email":Ljava/lang/String;
    if-eqz p6, :cond_0

    .line 162
    const/4 v1, 0x0

    aget-object v8, p6, v1

    .line 166
    :cond_0
    :try_start_0
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 168
    .local v0, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_1

    .line 169
    const/4 v7, 0x0

    move v1, p0

    move v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p2

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/IIccPhoneBook;->colorUpdateAdnRecordsInEfByIndexExUsingSubId(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 177
    .end local v0    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    return v9

    .line 175
    :catch_0
    move-exception v1

    goto :goto_0

    .line 173
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static getIccPhoneBookService()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 50
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 51
    .local v0, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    return-object v0
.end method

.method protected static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 230
    const-string v0, "ColorOSFunIccProvider"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-void
.end method
