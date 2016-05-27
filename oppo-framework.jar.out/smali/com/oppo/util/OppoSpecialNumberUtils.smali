.class public Lcom/oppo/util/OppoSpecialNumberUtils;
.super Ljava/lang/Object;
.source "OppoSpecialNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/util/OppoSpecialNumberUtils$OppoSpecialNumColumns;
    }
.end annotation


# static fields
.field private static final CALLER_ID_PROJECTION:[Ljava/lang/String;

.field public static final SPECIAL_NUMBER_CONTENT_URI:Landroid/net/Uri;

.field public static final SpecialNumberTable:Ljava/lang/String; = "special_contacts"

.field private static final TAG:Ljava/lang/String; = "OppoSpecialNumberUtils"


# instance fields
.field private final EN_LANGUAGE:I

.field private final TW_LANGUAGE:I

.field private final ZH_LANGUAGE:I

.field private mContext:Landroid/content/Context;

.field private mImagedata:[B

.field private mLanguage:Ljava/lang/String;

.field private mLanguageInt:I

.field private mLocale:Ljava/util/Locale;

.field private mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 81
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "special_contacts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oppo/util/OppoSpecialNumberUtils;->SPECIAL_NUMBER_CONTENT_URI:Landroid/net/Uri;

    .line 108
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "en_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "cn_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "tw_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "photo_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/util/OppoSpecialNumberUtils;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object v1, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mName:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mLocale:Ljava/util/Locale;

    .line 61
    iput-object v1, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mLanguage:Ljava/lang/String;

    .line 64
    iput v2, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mLanguageInt:I

    .line 66
    const/4 v0, 0x2

    iput v0, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->ZH_LANGUAGE:I

    .line 67
    iput v2, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->EN_LANGUAGE:I

    .line 68
    const/4 v0, 0x3

    iput v0, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->TW_LANGUAGE:I

    .line 69
    iput-object v1, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mImagedata:[B

    .line 117
    iput-object p1, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mContext:Landroid/content/Context;

    .line 118
    invoke-direct {p0}, Lcom/oppo/util/OppoSpecialNumberUtils;->getLanguage()V

    .line 119
    return-void
.end method

.method private getLanguage()V
    .locals 2

    .prologue
    .line 342
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mLocale:Ljava/util/Locale;

    .line 343
    iget-object v0, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mLanguage:Ljava/lang/String;

    .line 344
    iget-object v0, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mLanguage:Ljava/lang/String;

    const-string v1, "CHN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    const/4 v0, 0x2

    iput v0, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mLanguageInt:I

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mLanguage:Ljava/lang/String;

    const-string v1, "USA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 347
    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mLanguageInt:I

    goto :goto_0

    .line 348
    :cond_2
    iget-object v0, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mLanguage:Ljava/lang/String;

    const-string v1, "TWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    const/4 v0, 0x3

    iput v0, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mLanguageInt:I

    goto :goto_0
.end method


# virtual methods
.method public getImageOfnumber()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 330
    iget-object v2, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mImagedata:[B

    if-nez v2, :cond_0

    .line 331
    const/4 v1, 0x0

    .line 335
    :goto_0
    return-object v1

    .line 333
    :cond_0
    iget-object v2, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mImagedata:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mImagedata:[B

    array-length v4, v4

    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 334
    .local v0, "image":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 335
    .local v1, "mImagedraw":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public getInputStreamImageOfnumber()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mImagedata:[B

    if-nez v0, :cond_0

    .line 321
    const/4 v0, 0x0

    .line 323
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mImagedata:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0
.end method

.method public getNameOfnumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public isNumberStoredInContacts(Ljava/lang/String;)Z
    .locals 10
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 276
    const/4 v6, 0x0

    .line 278
    .local v6, "cursorOriginal":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "display_name"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data1=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 282
    if-eqz v6, :cond_3

    .line 283
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    if-eqz v6, :cond_0

    .line 302
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 303
    const/4 v6, 0x0

    :cond_0
    move v0, v8

    :goto_0
    return v0

    .line 301
    :cond_1
    if-eqz v6, :cond_2

    .line 302
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 303
    const/4 v6, 0x0

    :cond_2
    move v0, v9

    goto :goto_0

    .line 301
    :cond_3
    if-eqz v6, :cond_4

    .line 302
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 303
    const/4 v6, 0x0

    :cond_4
    move v0, v9

    goto :goto_0

    .line 297
    :catch_0
    move-exception v7

    .line 298
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    if-eqz v6, :cond_5

    .line 302
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 303
    const/4 v6, 0x0

    :cond_5
    move v0, v9

    goto :goto_0

    .line 301
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 302
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 303
    const/4 v6, 0x0

    :cond_6
    throw v0
.end method

.method public isSpecialNumber(Ljava/lang/String;)Z
    .locals 12
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 142
    const-string v0, "persist.sys.oppo.region"

    const-string v1, "CN"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 143
    .local v9, "region":Ljava/lang/String;
    const-string v0, "TH"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CN"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v10

    .line 229
    :goto_0
    return v0

    .line 147
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, ""

    if-ne v0, p1, :cond_2

    :cond_1
    move v0, v10

    .line 148
    goto :goto_0

    .line 151
    :cond_2
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 198
    .local v8, "mNumber":Ljava/lang/String;
    const/4 v6, 0x0

    .line 200
    .local v6, "cursorOriginal":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/oppo/util/OppoSpecialNumberUtils;->SPECIAL_NUMBER_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/oppo/util/OppoSpecialNumberUtils;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "number=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 203
    if-eqz v6, :cond_b

    .line 204
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 205
    iget v0, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mLanguageInt:I

    if-ne v0, v11, :cond_5

    .line 206
    const-string v0, "en_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mName:Ljava/lang/String;

    .line 216
    :cond_3
    :goto_1
    const-string v0, "photo_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mImagedata:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    if-eqz v6, :cond_4

    .line 228
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 229
    const/4 v6, 0x0

    :cond_4
    move v0, v11

    goto :goto_0

    .line 208
    :cond_5
    :try_start_1
    iget v0, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mLanguageInt:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 209
    const-string v0, "cn_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 223
    :catch_0
    move-exception v7

    .line 224
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 227
    if-eqz v6, :cond_6

    .line 228
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 229
    const/4 v6, 0x0

    :cond_6
    move v0, v10

    goto/16 :goto_0

    .line 211
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_7
    :try_start_3
    iget v0, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mLanguageInt:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 212
    const-string v0, "tw_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mName:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 227
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_8

    .line 228
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 229
    const/4 v6, 0x0

    :cond_8
    throw v0

    .line 227
    :cond_9
    if-eqz v6, :cond_a

    .line 228
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 229
    const/4 v6, 0x0

    :cond_a
    move v0, v10

    goto/16 :goto_0

    .line 227
    :cond_b
    if-eqz v6, :cond_c

    .line 228
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 229
    const/4 v6, 0x0

    :cond_c
    move v0, v10

    goto/16 :goto_0
.end method

.method public numberNeedSpecialHandle(Ljava/lang/String;)Z
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 125
    invoke-virtual {p0, p1}, Lcom/oppo/util/OppoSpecialNumberUtils;->isSpecialNumber(Ljava/lang/String;)Z

    move-result v1

    .line 126
    .local v1, "sflag":Z
    if-nez v1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v2

    .line 129
    :cond_1
    invoke-virtual {p0, p1}, Lcom/oppo/util/OppoSpecialNumberUtils;->isNumberStoredInContacts(Ljava/lang/String;)Z

    move-result v0

    .line 130
    .local v0, "cflag":Z
    if-eqz v0, :cond_0

    .line 133
    const/4 v2, 0x1

    goto :goto_0
.end method
