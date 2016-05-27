.class public Loppo/content/res/OppoThemeResourcesSystem;
.super Loppo/content/res/OppoThemeResources;
.source "OppoThemeResourcesSystem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OppoThemeResourcesSystem"

.field private static sIcons:Loppo/content/res/OppoThemeResources;

.field private static sOppo:Loppo/content/res/OppoThemeResources;


# instance fields
.field private final DEBUG:Z


# direct methods
.method public constructor <init>(Loppo/content/res/OppoThemeResourcesSystem;Landroid/content/res/Resources;Loppo/content/res/OppoThemeResources$MetaData;)V
    .locals 1
    .param p1, "themeResourcesSystem"    # Loppo/content/res/OppoThemeResourcesSystem;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "metaData"    # Loppo/content/res/OppoThemeResources$MetaData;

    .prologue
    .line 41
    const-string v0, "framework-res"

    invoke-direct {p0, p1, p2, v0, p3}, Loppo/content/res/OppoThemeResources;-><init>(Loppo/content/res/OppoThemeResources;Landroid/content/res/Resources;Ljava/lang/String;Loppo/content/res/OppoThemeResources$MetaData;)V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Loppo/content/res/OppoThemeResourcesSystem;->DEBUG:Z

    .line 43
    return-void
.end method

.method private getThemeFileStreamOPPO(Ljava/lang/String;Ljava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "subPath"    # Ljava/lang/String;

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "themeFileInfo":Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    sget-object v1, Loppo/content/res/OppoThemeResourcesSystem;->sOppo:Loppo/content/res/OppoThemeResources;

    if-eqz v1, :cond_0

    .line 125
    sget-object v1, Loppo/content/res/OppoThemeResourcesSystem;->sOppo:Loppo/content/res/OppoThemeResources;

    invoke-virtual {v1, p1}, Loppo/content/res/OppoThemeResources;->getThemeFileStream(Ljava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 127
    :cond_0
    return-object v0
.end method

.method private getThemeFileStreamSystem(Ljava/lang/String;Ljava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "subPath"    # Ljava/lang/String;

    .prologue
    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, "themeFileInfo":Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    invoke-virtual {p0, p1}, Loppo/content/res/OppoThemeResourcesSystem;->getThemeFileStreamInner(Ljava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 119
    return-object v0
.end method

.method public static getTopLevelThemeResources(Landroid/content/res/Resources;)Loppo/content/res/OppoThemeResourcesSystem;
    .locals 4
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 46
    const-string v3, "icons"

    invoke-static {p0, v3}, Loppo/content/res/OppoThemeResources;->getTopLevelThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Loppo/content/res/OppoThemeResources;

    move-result-object v3

    sput-object v3, Loppo/content/res/OppoThemeResourcesSystem;->sIcons:Loppo/content/res/OppoThemeResources;

    .line 47
    const-string v3, "oppo-framework-res"

    invoke-static {p0, v3}, Loppo/content/res/OppoThemeResources;->getTopLevelThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Loppo/content/res/OppoThemeResources;

    move-result-object v3

    sput-object v3, Loppo/content/res/OppoThemeResourcesSystem;->sOppo:Loppo/content/res/OppoThemeResources;

    .line 49
    const/4 v2, 0x0

    .line 51
    .local v2, "themeresourcessystem":Loppo/content/res/OppoThemeResourcesSystem;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Loppo/content/res/OppoThemeResourcesSystem;->THEME_PATHS:[Loppo/content/res/OppoThemeResources$MetaData;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 52
    new-instance v1, Loppo/content/res/OppoThemeResourcesSystem;

    sget-object v3, Loppo/content/res/OppoThemeResourcesSystem;->THEME_PATHS:[Loppo/content/res/OppoThemeResources$MetaData;

    aget-object v3, v3, v0

    invoke-direct {v1, v2, p0, v3}, Loppo/content/res/OppoThemeResourcesSystem;-><init>(Loppo/content/res/OppoThemeResourcesSystem;Landroid/content/res/Resources;Loppo/content/res/OppoThemeResources$MetaData;)V

    .line 54
    .local v1, "res":Loppo/content/res/OppoThemeResourcesSystem;
    move-object v2, v1

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    .end local v1    # "res":Loppo/content/res/OppoThemeResourcesSystem;
    :cond_0
    return-object v2
.end method


# virtual methods
.method public checkUpdate()Z
    .locals 1

    .prologue
    .line 60
    sget-object v0, Loppo/content/res/OppoThemeResourcesSystem;->sIcons:Loppo/content/res/OppoThemeResources;

    invoke-virtual {v0}, Loppo/content/res/OppoThemeResources;->checkUpdate()Z

    .line 61
    sget-object v0, Loppo/content/res/OppoThemeResourcesSystem;->sOppo:Loppo/content/res/OppoThemeResources;

    invoke-virtual {v0}, Loppo/content/res/OppoThemeResources;->checkUpdate()Z

    .line 62
    invoke-super {p0}, Loppo/content/res/OppoThemeResources;->checkUpdate()Z

    move-result v0

    return v0
.end method

.method public getIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 68
    .local v4, "themeFileInfo":Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    const/4 v2, 0x0

    .line 69
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    invoke-virtual {p0, p2, v5}, Loppo/content/res/OppoThemeResourcesSystem;->getIconStream(Ljava/lang/String;Z)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;

    move-result-object v4

    .line 71
    if-nez v4, :cond_0

    .line 72
    :try_start_0
    iget v5, v4, Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;->mDensity:I

    if-lez v5, :cond_0

    .line 73
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    :try_start_1
    iget v5, v4, Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;->mDensity:I

    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 75
    iget-object v5, v4, Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    const/4 v6, 0x0

    invoke-static {v5, v6, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    move-object v2, v3

    .line 85
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    if-eqz v4, :cond_1

    .line 86
    :try_start_2
    iget-object v5, v4, Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 95
    :cond_1
    :goto_0
    return-object v0

    .line 88
    :catch_0
    move-exception v1

    .line 91
    .local v1, "ex":Ljava/io/IOException;
    const-string v5, "OppoThemeResourcesSystem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OppoThemeResourcesSystem IOException ex: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 78
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 81
    .local v1, "ex":Ljava/lang/OutOfMemoryError;
    :goto_1
    :try_start_3
    const-string v5, "OppoThemeResourcesSystem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OppoThemeResourcesSystem OutOfMemoryError ex: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 85
    if-eqz v4, :cond_1

    .line 86
    :try_start_4
    iget-object v5, v4, Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 88
    :catch_2
    move-exception v1

    .line 91
    .local v1, "ex":Ljava/io/IOException;
    const-string v5, "OppoThemeResourcesSystem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OppoThemeResourcesSystem IOException ex: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 84
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 85
    :goto_2
    if-eqz v4, :cond_2

    .line 86
    :try_start_5
    iget-object v6, v4, Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 93
    :cond_2
    :goto_3
    throw v5

    .line 88
    :catch_3
    move-exception v1

    .line 91
    .restart local v1    # "ex":Ljava/io/IOException;
    const-string v6, "OppoThemeResourcesSystem"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OppoThemeResourcesSystem IOException ex: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 84
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    goto :goto_2

    .line 78
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    goto :goto_1
.end method

.method public getIconStream(Ljava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 99
    sget-object v0, Loppo/content/res/OppoThemeResourcesSystem;->sIcons:Loppo/content/res/OppoThemeResources;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Loppo/content/res/OppoThemeResources;->getThemeFileStream(Ljava/lang/String;Z)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getIconStream(Ljava/lang/String;Z)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "useWrap"    # Z

    .prologue
    .line 102
    sget-object v0, Loppo/content/res/OppoThemeResourcesSystem;->sIcons:Loppo/content/res/OppoThemeResources;

    invoke-virtual {v0, p1, p2}, Loppo/content/res/OppoThemeResources;->getThemeFileStream(Ljava/lang/String;Z)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLockscreenWallpaper()Ljava/io/File;
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    .line 182
    .local v0, "lockWallpaperFile":Ljava/io/File;
    return-object v0
.end method

.method public getThemeCharSequence(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "res":Ljava/lang/CharSequence;
    sget-object v1, Loppo/content/res/OppoThemeResourcesSystem;->sOppo:Loppo/content/res/OppoThemeResources;

    if-eqz v1, :cond_0

    .line 108
    sget-object v1, Loppo/content/res/OppoThemeResourcesSystem;->sOppo:Loppo/content/res/OppoThemeResources;

    invoke-virtual {v1, p1}, Loppo/content/res/OppoThemeResources;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 110
    :cond_0
    if-nez v0, :cond_1

    .line 111
    invoke-virtual {p0, p1}, Loppo/content/res/OppoThemeResourcesSystem;->getThemeCharSequenceInner(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 113
    :cond_1
    return-object v0
.end method

.method public getThemeFileStream(ILjava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    .locals 3
    .param p1, "index"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 131
    const/4 v1, 0x0

    .line 132
    .local v1, "themeFileInfo":Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    if-eqz p2, :cond_0

    .line 133
    const/16 v2, 0x2f

    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "res":Ljava/lang/String;
    const/4 v2, 0x2

    if-ne v2, p1, :cond_1

    .line 135
    invoke-direct {p0, p2, v0}, Loppo/content/res/OppoThemeResourcesSystem;->getThemeFileStreamOPPO(Ljava/lang/String;Ljava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;

    move-result-object v1

    .line 140
    .end local v0    # "res":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 137
    .restart local v0    # "res":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p2, v0}, Loppo/content/res/OppoThemeResourcesSystem;->getThemeFileStreamSystem(Ljava/lang/String;Ljava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;

    move-result-object v1

    goto :goto_0
.end method

.method public getThemeInt(I)Ljava/lang/Integer;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "res":Ljava/lang/Integer;
    sget-object v1, Loppo/content/res/OppoThemeResourcesSystem;->sOppo:Loppo/content/res/OppoThemeResources;

    if-eqz v1, :cond_0

    .line 146
    sget-object v1, Loppo/content/res/OppoThemeResourcesSystem;->sOppo:Loppo/content/res/OppoThemeResources;

    invoke-virtual {v1, p1}, Loppo/content/res/OppoThemeResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 148
    :cond_0
    if-nez v0, :cond_1

    .line 149
    invoke-virtual {p0, p1}, Loppo/content/res/OppoThemeResourcesSystem;->getThemeIntInner(I)Ljava/lang/Integer;

    move-result-object v0

    .line 151
    :cond_1
    return-object v0
.end method

.method public hasIcon(Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, "flage":Z
    sget-object v1, Loppo/content/res/OppoThemeResourcesSystem;->sIcons:Loppo/content/res/OppoThemeResources;

    if-eqz v1, :cond_0

    .line 157
    sget-object v1, Loppo/content/res/OppoThemeResourcesSystem;->sIcons:Loppo/content/res/OppoThemeResources;

    invoke-virtual {v1, p1}, Loppo/content/res/OppoThemeResources;->containsEntry(Ljava/lang/String;)Z

    move-result v0

    .line 159
    :cond_0
    return v0
.end method

.method public hasValues()Z
    .locals 2

    .prologue
    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "flage":Z
    invoke-super {p0}, Loppo/content/res/OppoThemeResources;->hasValues()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Loppo/content/res/OppoThemeResourcesSystem;->sOppo:Loppo/content/res/OppoThemeResources;

    invoke-virtual {v1}, Loppo/content/res/OppoThemeResources;->hasValues()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    :cond_0
    const/4 v0, 0x1

    .line 169
    :goto_0
    return v0

    .line 167
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0}, Loppo/content/res/OppoThemeResourcesSystem;->isValidInner()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Loppo/content/res/OppoThemeResourcesSystem;->sOppo:Loppo/content/res/OppoThemeResources;

    invoke-virtual {v0}, Loppo/content/res/OppoThemeResources;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetIcons()V
    .locals 1

    .prologue
    .line 177
    sget-object v0, Loppo/content/res/OppoThemeResourcesSystem;->sIcons:Loppo/content/res/OppoThemeResources;

    invoke-virtual {v0}, Loppo/content/res/OppoThemeResources;->checkUpdate()Z

    .line 178
    return-void
.end method
