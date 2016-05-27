.class public Lcom/oppo/theme/OppoThirdPartUtil;
.super Ljava/lang/Object;
.source "OppoThirdPartUtil.java"


# static fields
.field public static final DATA_SYSTEM_THEME:Ljava/lang/String; = "/data/theme/"

.field private static final DIRS_DRAWABLE:[Ljava/lang/String;

.field private static final DIRS_DRAWABLE_XH:[Ljava/lang/String;

.field private static final DIRS_DRAWABLE_XXH:[Ljava/lang/String;

.field private static final NUM:I = 0x3

.field public static final SYSTEM_THEME_PATH:Ljava/lang/String; = "/system/media/theme/default/"

.field private static final TAG:Ljava/lang/String; = "OppoThirdPartUtil"

.field public static final ZIPICONS:Ljava/lang/String; = "icons"

.field public static final ZIPLAUNCHER:Ljava/lang/String; = "com.oppo.launcher"

.field public static mIsDefaultTheme:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 44
    sput-boolean v2, Lcom/oppo/theme/OppoThirdPartUtil;->mIsDefaultTheme:Z

    .line 47
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "res/drawable-hdpi/"

    aput-object v1, v0, v3

    const-string v1, "res/drawable-xhdpi/"

    aput-object v1, v0, v2

    const-string v1, "res/drawable-xxhdpi/"

    aput-object v1, v0, v4

    sput-object v0, Lcom/oppo/theme/OppoThirdPartUtil;->DIRS_DRAWABLE:[Ljava/lang/String;

    .line 60
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "res/drawable-xhdpi/"

    aput-object v1, v0, v3

    const-string v1, "res/drawable-hdpi/"

    aput-object v1, v0, v2

    const-string v1, "res/drawable-xxhdpi/"

    aput-object v1, v0, v4

    sput-object v0, Lcom/oppo/theme/OppoThirdPartUtil;->DIRS_DRAWABLE_XH:[Ljava/lang/String;

    .line 64
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "res/drawable-xxhdpi/"

    aput-object v1, v0, v3

    const-string v1, "res/drawable-xhdpi/"

    aput-object v1, v0, v2

    const-string v1, "res/drawable-hdpi/"

    aput-object v1, v0, v4

    sput-object v0, Lcom/oppo/theme/OppoThirdPartUtil;->DIRS_DRAWABLE_XXH:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearDir(Ljava/lang/String;)Z
    .locals 8
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 99
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v6, "themeDir":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 101
    .local v5, "str":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .local v4, "oldTheme":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 103
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "oldTheme":Ljava/io/File;
    .end local v5    # "str":Ljava/lang/String;
    .end local v6    # "themeDir":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/Exception;
    const/4 v7, 0x0

    .line 110
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return v7

    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v6    # "themeDir":Ljava/io/File;
    :cond_1
    const/4 v7, 0x1

    goto :goto_1
.end method

.method public static getDrawable(ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "id"    # I
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 114
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "nameString":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {p1, v0}, Lcom/oppo/theme/OppoThirdPartUtil;->getLauncherDrawableByName(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public static getDrawableByName(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "nameString"    # Ljava/lang/String;

    .prologue
    .line 128
    const-string v0, "com.oppo.launcher"

    invoke-static {p0, p1, v0}, Lcom/oppo/theme/OppoThirdPartUtil;->getDrawableByName(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getDrawableByName(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "nameString"    # Ljava/lang/String;
    .param p2, "zipPath"    # Ljava/lang/String;

    .prologue
    .line 133
    const/4 v1, 0x0

    .line 135
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    const-string v6, "/data/theme/"

    .line 136
    .local v6, "path":Ljava/lang/String;
    sget-boolean v7, Lcom/oppo/theme/OppoThirdPartUtil;->mIsDefaultTheme:Z

    if-eqz v7, :cond_0

    .line 137
    const-string v6, "/system/media/theme/default/"

    .line 140
    :cond_0
    const/4 v5, 0x0

    .line 141
    .local v5, "iStream":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 144
    .local v3, "file":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v4, Ljava/util/zip/ZipFile;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    .end local v3    # "file":Ljava/util/zip/ZipFile;
    .local v4, "file":Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-static {p0, v4, p1}, Lcom/oppo/theme/OppoThirdPartUtil;->getDrawableStream(Landroid/content/res/Resources;Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 146
    if-eqz v5, :cond_1

    .line 147
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 148
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v1, v2

    .line 154
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    if-eqz v4, :cond_2

    .line 156
    :try_start_2
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 161
    :cond_2
    :goto_0
    if-eqz v5, :cond_7

    .line 163
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v3, v4

    .line 170
    .end local v4    # "file":Ljava/util/zip/ZipFile;
    .restart local v3    # "file":Ljava/util/zip/ZipFile;
    :cond_3
    :goto_1
    return-object v1

    .line 164
    .end local v3    # "file":Ljava/util/zip/ZipFile;
    .restart local v4    # "file":Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v7

    move-object v3, v4

    .line 166
    .end local v4    # "file":Ljava/util/zip/ZipFile;
    .restart local v3    # "file":Ljava/util/zip/ZipFile;
    goto :goto_1

    .line 150
    :catch_1
    move-exception v7

    .line 154
    :goto_2
    if-eqz v3, :cond_4

    .line 156
    :try_start_4
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 161
    :cond_4
    :goto_3
    if-eqz v5, :cond_3

    .line 163
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 164
    :catch_2
    move-exception v7

    goto :goto_1

    .line 154
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v3, :cond_5

    .line 156
    :try_start_6
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 161
    :cond_5
    :goto_5
    if-eqz v5, :cond_6

    .line 163
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 166
    :cond_6
    :goto_6
    throw v7

    .line 157
    .end local v3    # "file":Ljava/util/zip/ZipFile;
    .restart local v4    # "file":Ljava/util/zip/ZipFile;
    :catch_3
    move-exception v7

    goto :goto_0

    .end local v4    # "file":Ljava/util/zip/ZipFile;
    .restart local v3    # "file":Ljava/util/zip/ZipFile;
    :catch_4
    move-exception v7

    goto :goto_3

    :catch_5
    move-exception v8

    goto :goto_5

    .line 164
    :catch_6
    move-exception v8

    goto :goto_6

    .line 154
    .end local v3    # "file":Ljava/util/zip/ZipFile;
    .restart local v4    # "file":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "file":Ljava/util/zip/ZipFile;
    .restart local v3    # "file":Ljava/util/zip/ZipFile;
    goto :goto_4

    .line 150
    .end local v3    # "file":Ljava/util/zip/ZipFile;
    .restart local v4    # "file":Ljava/util/zip/ZipFile;
    :catch_7
    move-exception v7

    move-object v3, v4

    .end local v4    # "file":Ljava/util/zip/ZipFile;
    .restart local v3    # "file":Ljava/util/zip/ZipFile;
    goto :goto_2

    .end local v3    # "file":Ljava/util/zip/ZipFile;
    .restart local v4    # "file":Ljava/util/zip/ZipFile;
    :cond_7
    move-object v3, v4

    .end local v4    # "file":Ljava/util/zip/ZipFile;
    .restart local v3    # "file":Ljava/util/zip/ZipFile;
    goto :goto_1
.end method

.method private static getDrawableStream(Landroid/content/res/Resources;Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 7
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "file"    # Ljava/util/zip/ZipFile;
    .param p2, "entryname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 175
    sget-object v4, Lcom/oppo/theme/OppoThirdPartUtil;->DIRS_DRAWABLE:[Ljava/lang/String;

    .line 176
    .local v4, "temdirs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    .line 177
    .local v0, "dpi":F
    const/high16 v5, 0x40400000    # 3.0f

    cmpl-float v5, v0, v5

    if-ltz v5, :cond_1

    .line 178
    sget-object v4, Lcom/oppo/theme/OppoThirdPartUtil;->DIRS_DRAWABLE_XXH:[Ljava/lang/String;

    .line 182
    :cond_0
    :goto_0
    const/4 v2, 0x2

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_3

    .line 183
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v4, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 184
    .local v1, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v1, :cond_2

    .line 185
    invoke-virtual {p1, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    .line 189
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    :goto_2
    return-object v3

    .line 179
    .end local v2    # "i":I
    :cond_1
    const/high16 v5, 0x40000000    # 2.0f

    cmpl-float v5, v0, v5

    if-ltz v5, :cond_0

    .line 180
    sget-object v4, Lcom/oppo/theme/OppoThirdPartUtil;->DIRS_DRAWABLE_XH:[Ljava/lang/String;

    goto :goto_0

    .line 182
    .restart local v1    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v2    # "i":I
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 189
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    :cond_3
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public static getIconDrawableByName(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "nameString"    # Ljava/lang/String;

    .prologue
    .line 124
    const-string v0, "icons"

    invoke-static {p0, p1, v0}, Lcom/oppo/theme/OppoThirdPartUtil;->getDrawableByName(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getLauncherDrawableByName(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "nameString"    # Ljava/lang/String;

    .prologue
    .line 120
    const-string v0, "com.oppo.launcher"

    invoke-static {p0, p1, v0}, Lcom/oppo/theme/OppoThirdPartUtil;->getDrawableByName(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static moveFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "themeFileName"    # Ljava/lang/String;
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "destName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 80
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 81
    .local v5, "zipFile":Ljava/util/zip/ZipFile;
    invoke-virtual {v5, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 82
    .local v2, "entry":Ljava/util/zip/ZipEntry;
    if-nez v2, :cond_0

    .line 94
    :goto_0
    return v6

    .line 85
    :cond_0
    invoke-virtual {v5, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    .line 86
    .local v4, "stream":Ljava/io/InputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 87
    .local v3, "out":Ljava/io/FileOutputStream;
    const v7, 0xfa000

    new-array v0, v7, [B

    .line 89
    .local v0, "buf":[B
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "count":I
    if-lez v1, :cond_1

    .line 90
    invoke-virtual {v3, v0, v6, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    .line 92
    :cond_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 93
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 94
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public static setDefaultTheme()V
    .locals 2

    .prologue
    .line 193
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/theme/icons"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lcom/oppo/theme/OppoThirdPartUtil;->mIsDefaultTheme:Z

    .line 195
    return-void

    .line 194
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
