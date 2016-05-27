.class final Landroid/app/OppoApplicationPackageManagerHelper;
.super Ljava/lang/Object;
.source "OppoApplicationPackageManager.java"


# static fields
.field private static final COLUMN_NAME_1:Ljava/lang/String; = "version"

.field private static final COLUMN_NAME_2:Ljava/lang/String; = "xml"

.field private static final CONTENT_URI_FILTRATE_APP_LIST:Landroid/net/Uri;

.field private static final DEBUG:Z = false

.field private static final FILTRATE_APP_FEATURE_NAME:Ljava/lang/String; = "oppo.filtrated.app"

.field private static final FILTRATE_APP_NAME:Ljava/lang/String; = "market-filter"

.field private static final TAG:Ljava/lang/String; = "OppoApplicationPackageManagerHelper"

.field private static final UID:I = 0x2710

.field private static mFiltrateAppNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mFiltrateAppSwitch:Z

.field private static mFiltrateMarketNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
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
    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/app/OppoApplicationPackageManagerHelper;->mFiltrateMarketNameList:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/app/OppoApplicationPackageManagerHelper;->mFiltrateAppNameList:Ljava/util/ArrayList;

    .line 52
    const-string v0, "content://com.nearme.romupdate.provider.db/update_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/app/OppoApplicationPackageManagerHelper;->CONTENT_URI_FILTRATE_APP_LIST:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filtratingApp(Landroid/app/ContextImpl;Landroid/content/pm/IPackageManager;Ljava/util/List;)V
    .locals 8
    .param p0, "Context"    # Landroid/app/ContextImpl;
    .param p1, "pm"    # Landroid/content/pm/IPackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ContextImpl;",
            "Landroid/content/pm/IPackageManager;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/16 v7, 0x2710

    .line 153
    invoke-static {p0}, Landroid/app/OppoApplicationPackageManagerHelper;->initOppoApplicationPackageManagerHelper(Landroid/app/ContextImpl;)V

    .line 155
    :try_start_0
    sget-boolean v6, Landroid/app/OppoApplicationPackageManagerHelper;->mFiltrateAppSwitch:Z

    if-eqz v6, :cond_5

    .line 157
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    if-ge v6, v7, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    invoke-static {p0}, Landroid/app/OppoApplicationPackageManagerHelper;->getDataFromProvider(Landroid/app/ContextImpl;)V

    .line 167
    sget-object v6, Landroid/app/OppoApplicationPackageManagerHelper;->mFiltrateAppNameList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Landroid/app/OppoApplicationPackageManagerHelper;->mFiltrateMarketNameList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 168
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 169
    .local v1, "callingUid":I
    const/4 v4, 0x0

    .line 186
    .local v4, "isBadMarket":Z
    if-le v1, v7, :cond_0

    .line 187
    invoke-interface {p1, v1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "MarketName":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    array-length v6, v0

    if-ge v5, v6, :cond_2

    .line 189
    sget-object v6, Landroid/app/OppoApplicationPackageManagerHelper;->mFiltrateMarketNameList:Ljava/util/ArrayList;

    aget-object v7, v0, v5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 200
    if-eqz v4, :cond_4

    .line 205
    :cond_2
    if-eqz v4, :cond_0

    .line 206
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 207
    sget-object v7, Landroid/app/OppoApplicationPackageManagerHelper;->mFiltrateAppNameList:Ljava/util/ArrayList;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 212
    invoke-interface {p2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 206
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 188
    .end local v3    # "i":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 224
    .end local v0    # "MarketName":[Ljava/lang/String;
    .end local v1    # "callingUid":I
    .end local v4    # "isBadMarket":Z
    .end local v5    # "j":I
    :cond_5
    const-string v6, "OppoApplicationPackageManagerHelper"

    const-string v7, "OppoApplicationPackageManagerHelper do not hasSystemFeature oppo.filtrated.app !!!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 227
    :catch_0
    move-exception v2

    .line 228
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Package manager has died"

    invoke-direct {v6, v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private static getDataFromProvider(Landroid/app/ContextImpl;)V
    .locals 12
    .param p0, "Context"    # Landroid/app/ContextImpl;

    .prologue
    .line 74
    const/4 v7, 0x0

    .line 75
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 76
    .local v9, "filtrateappStr":Ljava/lang/String;
    const/4 v6, 0x0

    .line 77
    .local v6, "configVersion":I
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "version"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v1, "xml"

    aput-object v1, v2, v0

    .line 79
    .local v2, "projection":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/app/OppoApplicationPackageManagerHelper;->CONTENT_URI_FILTRATE_APP_LIST:Landroid/net/Uri;

    const-string v3, "filtername=\"market-filter\""

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 82
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 83
    const-string/jumbo v0, "version"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 84
    .local v10, "versioncolumnIndex":I
    const-string/jumbo v0, "xml"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 85
    .local v11, "xmlcolumnIndex":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 86
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 87
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 92
    invoke-static {v9}, Landroid/app/OppoApplicationPackageManagerHelper;->parserFilterAppList(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    .end local v10    # "versioncolumnIndex":I
    .end local v11    # "xmlcolumnIndex":I
    :cond_0
    if-eqz v7, :cond_1

    .line 100
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 101
    const/4 v7, 0x0

    .line 104
    :cond_1
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v8

    .line 97
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "OppoApplicationPackageManagerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "We can not get Filtrate app data from provider,because of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    if-eqz v7, :cond_1

    .line 100
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 101
    const/4 v7, 0x0

    goto :goto_0

    .line 99
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 100
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 101
    const/4 v7, 0x0

    :cond_2
    throw v0
.end method

.method private static initOppoApplicationPackageManagerHelper(Landroid/app/ContextImpl;)V
    .locals 2
    .param p0, "Context"    # Landroid/app/ContextImpl;

    .prologue
    .line 61
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 62
    .local v0, "pms":Landroid/content/pm/PackageManager;
    const-string/jumbo v1, "oppo.filtrated.app"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    const/4 v1, 0x1

    sput-boolean v1, Landroid/app/OppoApplicationPackageManagerHelper;->mFiltrateAppSwitch:Z

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Landroid/app/OppoApplicationPackageManagerHelper;->mFiltrateAppSwitch:Z

    goto :goto_0
.end method

.method private static parserFilterAppList(Ljava/lang/String;)V
    .locals 6
    .param p0, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    sget-object v5, Landroid/app/OppoApplicationPackageManagerHelper;->mFiltrateMarketNameList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 108
    sget-object v5, Landroid/app/OppoApplicationPackageManagerHelper;->mFiltrateMarketNameList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 110
    :cond_0
    sget-object v5, Landroid/app/OppoApplicationPackageManagerHelper;->mFiltrateAppNameList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 111
    sget-object v5, Landroid/app/OppoApplicationPackageManagerHelper;->mFiltrateAppNameList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 114
    :cond_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 115
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 116
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 117
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 118
    .local v1, "evenType":I
    :goto_0
    const/4 v5, 0x1

    if-eq v1, v5, :cond_4

    .line 119
    const/4 v5, 0x2

    if-ne v5, v1, :cond_2

    .line 120
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 121
    .local v4, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "markets"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 125
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "marketName":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 127
    sget-object v5, Landroid/app/OppoApplicationPackageManagerHelper;->mFiltrateMarketNameList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    .end local v2    # "marketName":Ljava/lang/String;
    .end local v4    # "tagName":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 132
    .restart local v4    # "tagName":Ljava/lang/String;
    :cond_3
    const-string v5, "apps"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 136
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "appName":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 138
    sget-object v5, Landroid/app/OppoApplicationPackageManagerHelper;->mFiltrateAppNameList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 147
    .end local v0    # "appName":Ljava/lang/String;
    .end local v4    # "tagName":Ljava/lang/String;
    :cond_4
    return-void
.end method
