.class public Lcom/oppo/theme/OppoIconParam;
.super Ljava/lang/Object;
.source "OppoIconParam.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/theme/OppoIconParam$ThemeXmlHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ThemeDiscription"

.field private static final TAG_SCALE:Ljava/lang/String; = "Scale"

.field private static final TAG_XOFFSETPCT:Ljava/lang/String; = "XOffsetPCT"

.field private static final TAG_YOFFSETPCT:Ljava/lang/String; = "YOffsetPCT"


# instance fields
.field private final LOGE:Z

.field mCurrentTag:Ljava/lang/String;

.field public mPath:Ljava/lang/String;

.field public mScale:F

.field public mXOffsetPCT:F

.field public mYOffsetPCT:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/theme/OppoIconParam;->LOGE:Z

    .line 42
    iput v1, p0, Lcom/oppo/theme/OppoIconParam;->mScale:F

    .line 43
    iput v1, p0, Lcom/oppo/theme/OppoIconParam;->mXOffsetPCT:F

    .line 44
    iput v1, p0, Lcom/oppo/theme/OppoIconParam;->mYOffsetPCT:F

    .line 50
    iput-object p1, p0, Lcom/oppo/theme/OppoIconParam;->mPath:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/oppo/theme/OppoIconParam;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/oppo/theme/OppoIconParam;->mScale:F

    return v0
.end method

.method public getXOffset()F
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/oppo/theme/OppoIconParam;->mXOffsetPCT:F

    return v0
.end method

.method public getYOffset()F
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/oppo/theme/OppoIconParam;->mYOffsetPCT:F

    return v0
.end method

.method public myLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 57
    return-void
.end method

.method public parseXml()Z
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 87
    const/4 v4, 0x0

    .line 88
    .local v4, "path":Ljava/lang/String;
    sget-boolean v9, Lcom/oppo/theme/OppoThirdPartUtil;->mIsDefaultTheme:Z

    if-nez v9, :cond_0

    .line 89
    const-string v4, "/data/theme/"

    .line 93
    :goto_0
    const/4 v2, 0x0

    .line 95
    .local v2, "param":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipFile;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "com.oppo.launcher"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 97
    .end local v2    # "param":Ljava/util/zip/ZipFile;
    .local v3, "param":Ljava/util/zip/ZipFile;
    const/4 v1, 0x0

    .line 98
    .local v1, "input":Ljava/io/InputStream;
    :try_start_1
    iget-object v9, p0, Lcom/oppo/theme/OppoIconParam;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 99
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    if-nez v0, :cond_1

    .line 100
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V

    .line 101
    const-string v9, "parseXml:entry is null"

    invoke-virtual {p0, v9}, Lcom/oppo/theme/OppoIconParam;->myLog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/util/zip/ZipException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v2, v3

    .line 122
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    .end local v1    # "input":Ljava/io/InputStream;
    .end local v3    # "param":Ljava/util/zip/ZipFile;
    .restart local v2    # "param":Ljava/util/zip/ZipFile;
    :goto_1
    return v8

    .line 91
    .end local v2    # "param":Ljava/util/zip/ZipFile;
    :cond_0
    const-string v4, "/system/media/theme/default/"

    goto :goto_0

    .line 104
    .restart local v0    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v1    # "input":Ljava/io/InputStream;
    .restart local v3    # "param":Ljava/util/zip/ZipFile;
    :cond_1
    :try_start_2
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 105
    if-nez v1, :cond_2

    .line 106
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V

    .line 107
    const-string v9, "parseXml:input is null"

    invoke-virtual {p0, v9}, Lcom/oppo/theme/OppoIconParam;->myLog(Ljava/lang/String;)V

    move-object v2, v3

    .line 108
    .end local v3    # "param":Ljava/util/zip/ZipFile;
    .restart local v2    # "param":Ljava/util/zip/ZipFile;
    goto :goto_1

    .line 111
    .end local v2    # "param":Ljava/util/zip/ZipFile;
    .restart local v3    # "param":Ljava/util/zip/ZipFile;
    :cond_2
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v6

    .line 112
    .local v6, "spf":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v6}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v5

    .line 113
    .local v5, "saxParser":Ljavax/xml/parsers/SAXParser;
    new-instance v9, Lcom/oppo/theme/OppoIconParam$ThemeXmlHandler;

    invoke-direct {v9, p0}, Lcom/oppo/theme/OppoIconParam$ThemeXmlHandler;-><init>(Lcom/oppo/theme/OppoIconParam;)V

    invoke-virtual {v5, v1, v9}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 114
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 115
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/util/zip/ZipException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v3

    .line 122
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    .end local v1    # "input":Ljava/io/InputStream;
    .end local v3    # "param":Ljava/util/zip/ZipFile;
    .end local v5    # "saxParser":Ljavax/xml/parsers/SAXParser;
    .end local v6    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    .restart local v2    # "param":Ljava/util/zip/ZipFile;
    :goto_2
    const/4 v8, 0x1

    goto :goto_1

    .line 116
    :catch_0
    move-exception v7

    .line 117
    .local v7, "zEx":Ljava/util/zip/ZipException;
    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseXml:ZipFile is destroyed, mPath = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/oppo/theme/OppoIconParam;->mPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/oppo/theme/OppoIconParam;->myLog(Ljava/lang/String;)V

    goto :goto_1

    .line 119
    .end local v7    # "zEx":Ljava/util/zip/ZipException;
    :catch_1
    move-exception v8

    goto :goto_2

    .end local v2    # "param":Ljava/util/zip/ZipFile;
    .restart local v1    # "input":Ljava/io/InputStream;
    .restart local v3    # "param":Ljava/util/zip/ZipFile;
    :catch_2
    move-exception v8

    move-object v2, v3

    .end local v3    # "param":Ljava/util/zip/ZipFile;
    .restart local v2    # "param":Ljava/util/zip/ZipFile;
    goto :goto_2

    .line 116
    .end local v2    # "param":Ljava/util/zip/ZipFile;
    .restart local v3    # "param":Ljava/util/zip/ZipFile;
    :catch_3
    move-exception v7

    move-object v2, v3

    .end local v3    # "param":Ljava/util/zip/ZipFile;
    .restart local v2    # "param":Ljava/util/zip/ZipFile;
    goto :goto_3
.end method
