.class public Loppo/content/res/OppoThemeZipFile;
.super Ljava/lang/Object;
.source "OppoThemeZipFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    }
.end annotation


# static fields
.field private static final ANDROID_PACKAGE:Ljava/lang/String; = "android"

.field private static final ASSETS_THEME_VALUE_FILES:[Ljava/lang/String;

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final OPPO_PACKAGE:Ljava/lang/String; = "oppo"

.field private static final RESOURCES_PATHS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "OppoThemeZipFile"

.field private static final TAG_BOOLEAN:Ljava/lang/String; = "bool"

.field private static final TAG_COLOR:Ljava/lang/String; = "color"

.field private static final TAG_DIMEN:Ljava/lang/String; = "dimen"

.field private static final TAG_DRAWABLE:Ljava/lang/String; = "drawable"

.field private static final TAG_INTEGER:Ljava/lang/String; = "integer"

.field private static final TAG_STRING:Ljava/lang/String; = "string"

.field private static final TRUE:Ljava/lang/String; = "true"

.field private static final sDensities:[I

.field private static final sDensity:I

.field protected static final sThemeZipFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Loppo/content/res/OppoThemeZipFile;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final DEBUG:Z

.field private mCharSequences:Landroid/util/SparseArray;

.field private mIntegers:Landroid/util/SparseArray;

.field private mLastModifyTime:J

.field private mMetaData:Loppo/content/res/OppoThemeResources$MetaData;

.field private mPackageName:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mResources:Landroid/content/res/Resources;

.field private mZipFile:Ljava/util/zip/ZipFile;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "assets/colors.xml"

    aput-object v1, v0, v2

    const-string v1, "framework-res/assets/colors.xml"

    aput-object v1, v0, v3

    const-string v1, "oppo-framework-res/assets/colors.xml"

    aput-object v1, v0, v4

    sput-object v0, Loppo/content/res/OppoThemeZipFile;->ASSETS_THEME_VALUE_FILES:[Ljava/lang/String;

    .line 72
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "res/drawable"

    aput-object v1, v0, v2

    const-string v1, "framework-res/res/drawable"

    aput-object v1, v0, v3

    const-string v1, "oppo-framework-res/res/drawable"

    aput-object v1, v0, v4

    const-string v1, "res/drawable"

    aput-object v1, v0, v5

    sput-object v0, Loppo/content/res/OppoThemeZipFile;->RESOURCES_PATHS:[Ljava/lang/String;

    .line 89
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    sput v0, Loppo/content/res/OppoThemeZipFile;->sDensity:I

    .line 92
    sget v0, Loppo/content/res/OppoThemeZipFile;->sDensity:I

    invoke-static {v0}, Loppo/util/OppoDisplayUtils;->getBestDensityOrder(I)[I

    move-result-object v0

    sput-object v0, Loppo/content/res/OppoThemeZipFile;->sDensities:[I

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Loppo/content/res/OppoThemeZipFile;->sThemeZipFiles:Ljava/util/Map;

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Loppo/content/res/OppoThemeResources$MetaData;Ljava/lang/String;Landroid/content/res/Resources;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "metaData"    # Loppo/content/res/OppoThemeResources$MetaData;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "resources"    # Landroid/content/res/Resources;

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Loppo/content/res/OppoThemeZipFile;->DEBUG:Z

    .line 79
    iput-wide v2, p0, Loppo/content/res/OppoThemeZipFile;->mLastModifyTime:J

    .line 80
    iput-object v1, p0, Loppo/content/res/OppoThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    .line 81
    iput-object v1, p0, Loppo/content/res/OppoThemeZipFile;->mCharSequences:Landroid/util/SparseArray;

    .line 82
    iput-object v1, p0, Loppo/content/res/OppoThemeZipFile;->mResources:Landroid/content/res/Resources;

    .line 83
    iput-object v1, p0, Loppo/content/res/OppoThemeZipFile;->mPackageName:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Loppo/content/res/OppoThemeZipFile;->mPath:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Loppo/content/res/OppoThemeZipFile;->mMetaData:Loppo/content/res/OppoThemeResources$MetaData;

    .line 87
    iput-object v1, p0, Loppo/content/res/OppoThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    .line 98
    iput-wide v2, p0, Loppo/content/res/OppoThemeZipFile;->mLastModifyTime:J

    .line 99
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Loppo/content/res/OppoThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    .line 100
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Loppo/content/res/OppoThemeZipFile;->mCharSequences:Landroid/util/SparseArray;

    .line 101
    iput-object p4, p0, Loppo/content/res/OppoThemeZipFile;->mResources:Landroid/content/res/Resources;

    .line 102
    iput-object p3, p0, Loppo/content/res/OppoThemeZipFile;->mPackageName:Ljava/lang/String;

    .line 103
    iput-object p1, p0, Loppo/content/res/OppoThemeZipFile;->mPath:Ljava/lang/String;

    .line 104
    iput-object p2, p0, Loppo/content/res/OppoThemeZipFile;->mMetaData:Loppo/content/res/OppoThemeResources$MetaData;

    .line 105
    return-void
.end method

.method private clean()V
    .locals 4

    .prologue
    .line 237
    iget-object v1, p0, Loppo/content/res/OppoThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v1, :cond_0

    .line 239
    :try_start_0
    iget-object v1, p0, Loppo/content/res/OppoThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Loppo/content/res/OppoThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    .line 248
    :cond_0
    iget-object v1, p0, Loppo/content/res/OppoThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 249
    iget-object v1, p0, Loppo/content/res/OppoThemeZipFile;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 250
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 243
    .local v0, "exception":Ljava/lang/Exception;
    const-string v1, "OppoThemeZipFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OppoThemeZipFile Exception exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getInputStreamInner(ILjava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    .locals 8
    .param p1, "index"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 159
    invoke-direct {p0, p2}, Loppo/content/res/OppoThemeZipFile;->getZipInputStream(Ljava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;

    move-result-object v5

    .line 160
    .local v5, "themeFileInfo":Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    if-nez v5, :cond_3

    invoke-virtual {p0}, Loppo/content/res/OppoThemeZipFile;->isValid()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 161
    sget-object v6, Loppo/content/res/OppoThemeZipFile;->RESOURCES_PATHS:[Ljava/lang/String;

    aget-object v4, v6, p1

    .line 162
    .local v4, "str2":Ljava/lang/String;
    const-string v6, "/"

    invoke-virtual {p2, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 164
    .local v1, "i":I
    if-lez v1, :cond_3

    .line 165
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, "str1":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    sget-object v6, Loppo/content/res/OppoThemeZipFile;->sDensities:[I

    array-length v6, v6

    if-ge v2, v6, :cond_3

    .line 170
    const/4 v6, 0x3

    new-array v0, v6, [Ljava/lang/Object;

    .line 171
    .local v0, "arrayOfString":[Ljava/lang/Object;
    const/4 v6, 0x0

    aput-object v4, v0, v6

    .line 172
    sget-object v6, Loppo/content/res/OppoThemeZipFile;->sDensities:[I

    aget v6, v6, v2

    invoke-static {v6}, Loppo/util/OppoDisplayUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v7

    .line 173
    const/4 v6, 0x2

    aput-object v3, v0, v6

    .line 174
    const-string v6, "%s%s%s"

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Loppo/content/res/OppoThemeZipFile;->getZipInputStream(Ljava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;

    move-result-object v5

    .line 177
    if-nez v5, :cond_1

    .line 169
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    :cond_1
    sget-object v6, Loppo/content/res/OppoThemeZipFile;->sDensities:[I

    aget v6, v6, v2

    if-le v6, v7, :cond_2

    .line 181
    sget-object v6, Loppo/content/res/OppoThemeZipFile;->sDensities:[I

    aget v6, v6, v2

    iput v6, v5, Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;->mDensity:I

    .line 183
    :cond_2
    if-eqz v5, :cond_0

    .line 189
    .end local v0    # "arrayOfString":[Ljava/lang/Object;
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "str1":Ljava/lang/String;
    .end local v4    # "str2":Ljava/lang/String;
    :cond_3
    return-object v5
.end method

.method private static final getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 219
    const-string v0, "framework-res"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "icons"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 220
    const-string v0, "oppo-framework-res"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "lockscreen"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    :cond_0
    const-string p0, "oppo"

    .line 229
    :cond_1
    :goto_0
    return-object p0

    .line 227
    :cond_2
    const-string p0, "android"

    goto :goto_0
.end method

.method protected static declared-synchronized getThemeZipFile(Loppo/content/res/OppoThemeResources$MetaData;Ljava/lang/String;Landroid/content/res/Resources;)Loppo/content/res/OppoThemeZipFile;
    .locals 11
    .param p0, "metadata"    # Loppo/content/res/OppoThemeResources$MetaData;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 109
    const-class v8, Loppo/content/res/OppoThemeZipFile;

    monitor-enter v8

    const/4 v4, 0x0

    .line 110
    .local v4, "themeZipFile":Loppo/content/res/OppoThemeZipFile;
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Loppo/content/res/OppoThemeResources$MetaData;->themePath:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 115
    .local v2, "packageFile":Ljava/io/File;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-nez v7, :cond_0

    .line 116
    const/4 v5, 0x0

    .line 121
    const/4 v2, 0x0

    .line 141
    :goto_0
    monitor-exit v8

    return-object v5

    .line 121
    :cond_0
    const/4 v2, 0x0

    .line 124
    :goto_1
    :try_start_2
    sget-object v7, Loppo/content/res/OppoThemeZipFile;->sThemeZipFiles:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 126
    .local v6, "weakreference":Ljava/lang/ref/WeakReference;
    if-eqz v6, :cond_1

    .line 127
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Loppo/content/res/OppoThemeZipFile;

    move-object v4, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v5, v4

    .line 132
    .end local v4    # "themeZipFile":Loppo/content/res/OppoThemeZipFile;
    .local v5, "themeZipFile":Loppo/content/res/OppoThemeZipFile;
    :goto_2
    if-eqz v5, :cond_2

    move-object v4, v5

    .line 133
    .end local v5    # "themeZipFile":Loppo/content/res/OppoThemeZipFile;
    .restart local v4    # "themeZipFile":Loppo/content/res/OppoThemeZipFile;
    goto :goto_0

    .line 118
    .end local v6    # "weakreference":Ljava/lang/ref/WeakReference;
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v7, "OppoThemeZipFile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getThemeZipFile Exception e: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 121
    const/4 v2, 0x0

    .line 122
    goto :goto_1

    .line 121
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    const/4 v2, 0x0

    :try_start_4
    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 109
    .end local v2    # "packageFile":Ljava/io/File;
    .end local v3    # "path":Ljava/lang/String;
    :catchall_1
    move-exception v7

    :goto_3
    monitor-exit v8

    throw v7

    .line 129
    .restart local v2    # "packageFile":Ljava/io/File;
    .restart local v3    # "path":Ljava/lang/String;
    .restart local v6    # "weakreference":Ljava/lang/ref/WeakReference;
    :cond_1
    const/4 v4, 0x0

    move-object v5, v4

    .end local v4    # "themeZipFile":Loppo/content/res/OppoThemeZipFile;
    .restart local v5    # "themeZipFile":Loppo/content/res/OppoThemeZipFile;
    goto :goto_2

    .line 135
    :cond_2
    :try_start_5
    new-instance v4, Loppo/content/res/OppoThemeZipFile;

    invoke-static {p1}, Loppo/content/res/OppoThemeZipFile;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v3, p0, v7, p2}, Loppo/content/res/OppoThemeZipFile;-><init>(Ljava/lang/String;Loppo/content/res/OppoThemeResources$MetaData;Ljava/lang/String;Landroid/content/res/Resources;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 137
    .end local v5    # "themeZipFile":Loppo/content/res/OppoThemeZipFile;
    .restart local v4    # "themeZipFile":Loppo/content/res/OppoThemeZipFile;
    :try_start_6
    new-instance v6, Ljava/lang/ref/WeakReference;

    .end local v6    # "weakreference":Ljava/lang/ref/WeakReference;
    invoke-direct {v6, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 138
    .restart local v6    # "weakreference":Ljava/lang/ref/WeakReference;
    sget-object v7, Loppo/content/res/OppoThemeZipFile;->sThemeZipFiles:Ljava/util/Map;

    invoke-interface {v7, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v5, v4

    .line 141
    goto :goto_0

    .line 109
    .end local v4    # "themeZipFile":Loppo/content/res/OppoThemeZipFile;
    .restart local v5    # "themeZipFile":Loppo/content/res/OppoThemeZipFile;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5    # "themeZipFile":Loppo/content/res/OppoThemeZipFile;
    .restart local v4    # "themeZipFile":Loppo/content/res/OppoThemeZipFile;
    goto :goto_3
.end method

.method private getZipInputStream(Ljava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 193
    const/4 v2, 0x0

    .line 194
    .local v2, "themeFileInfo":Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    invoke-virtual {p0}, Loppo/content/res/OppoThemeZipFile;->isValid()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 195
    const/4 v4, 0x0

    .line 196
    .local v4, "zipEntry":Ljava/util/zip/ZipEntry;
    iget-object v5, p0, Loppo/content/res/OppoThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v5, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v4

    .line 198
    if-eqz v4, :cond_0

    .line 200
    :try_start_0
    iget-object v5, p0, Loppo/content/res/OppoThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v5, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 201
    .local v1, "inputStream":Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 202
    new-instance v3, Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v6

    invoke-direct {v3, p0, v1, v6, v7}, Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;-><init>(Loppo/content/res/OppoThemeZipFile;Ljava/io/InputStream;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .end local v2    # "themeFileInfo":Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    .local v3, "themeFileInfo":Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    if-eqz v3, :cond_1

    move-object v2, v3

    .line 215
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "themeFileInfo":Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    .end local v4    # "zipEntry":Ljava/util/zip/ZipEntry;
    :goto_0
    return-object v3

    .line 207
    .restart local v2    # "themeFileInfo":Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    .restart local v4    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "OppoThemeZipFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OppoThemeZipFile Exception e: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_0
    :goto_1
    move-object v3, v2

    .line 215
    .local v3, "themeFileInfo":Ljava/lang/Object;
    goto :goto_0

    .end local v2    # "themeFileInfo":Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    .local v3, "themeFileInfo":Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    .restart local v4    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_1
    move-object v2, v3

    .end local v3    # "themeFileInfo":Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    .restart local v2    # "themeFileInfo":Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    goto :goto_1
.end method

.method private loadThemeValues(I)V
    .locals 12
    .param p1, "index"    # I

    .prologue
    .line 308
    sget-object v8, Loppo/content/res/OppoThemeZipFile;->sDensities:[I

    array-length v8, v8

    add-int/lit8 v3, v8, -0x1

    .line 309
    .local v3, "i":I
    const/4 v8, 0x1

    new-array v5, v8, [Ljava/lang/Object;

    .line 310
    .local v5, "suffix":[Ljava/lang/Object;
    const/4 v8, 0x0

    sget-object v9, Loppo/content/res/OppoThemeZipFile;->sDensities:[I

    aget v9, v9, v3

    invoke-static {v9}, Loppo/util/OppoDisplayUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    .line 311
    sget-object v8, Loppo/content/res/OppoThemeZipFile;->ASSETS_THEME_VALUE_FILES:[Ljava/lang/String;

    aget-object v8, v8, p1

    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Loppo/content/res/OppoThemeZipFile;->getZipInputStream(Ljava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;

    move-result-object v6

    .line 313
    .local v6, "themeFileInfo":Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    if-nez v6, :cond_1

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    const/4 v4, 0x0

    .line 317
    .local v4, "in":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 319
    .local v0, "bufferedinputstream":Ljava/io/BufferedInputStream;
    :try_start_0
    iget-object v4, v6, Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    .line 320
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v8

    invoke-virtual {v8}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 321
    .local v7, "xmlpullparser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v8, 0x2000

    invoke-direct {v1, v4, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    .end local v0    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    .local v1, "bufferedinputstream":Ljava/io/BufferedInputStream;
    const/4 v8, 0x0

    :try_start_1
    invoke-interface {v7, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 323
    invoke-direct {p0, p1, v7}, Loppo/content/res/OppoThemeZipFile;->mergeThemeValues(ILorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 330
    if-eqz v1, :cond_2

    .line 331
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 339
    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    .line 340
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    move-object v0, v1

    .line 344
    .end local v1    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    .restart local v0    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    goto :goto_0

    .line 333
    .end local v0    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    .restart local v1    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    :catch_0
    move-exception v2

    .line 334
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "OppoThemeZipFile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bufferedinputstream IOException happened when loadThemeValues, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 342
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 343
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v8, "OppoThemeZipFile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "in IOException happened when loadThemeValues, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 345
    .end local v1    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    .restart local v0    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    goto :goto_0

    .line 325
    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "xmlpullparser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v2

    .line 326
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_2
    :try_start_4
    const-string v8, "OppoThemeZipFile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "XmlPullParserException happened when loadThemeValues, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 330
    if-eqz v0, :cond_4

    .line 331
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 339
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_4
    :goto_3
    if-eqz v4, :cond_0

    .line 340
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 342
    :catch_3
    move-exception v2

    .line 343
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "OppoThemeZipFile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "in IOException happened when loadThemeValues, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 333
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_4
    move-exception v2

    .line 334
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "OppoThemeZipFile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bufferedinputstream IOException happened when loadThemeValues, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 329
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 330
    :goto_4
    if-eqz v0, :cond_5

    .line 331
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 339
    :cond_5
    :goto_5
    if-eqz v4, :cond_6

    .line 340
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 344
    :cond_6
    :goto_6
    throw v8

    .line 333
    :catch_5
    move-exception v2

    .line 334
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v9, "OppoThemeZipFile"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bufferedinputstream IOException happened when loadThemeValues, msg = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 342
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 343
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v9, "OppoThemeZipFile"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "in IOException happened when loadThemeValues, msg = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 329
    .end local v0    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    .restart local v7    # "xmlpullparser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    .restart local v0    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    goto :goto_4

    .line 325
    .end local v0    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    .restart local v1    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    .restart local v0    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    goto/16 :goto_2
.end method

.method private mergeThemeValues(ILorg/xmlpull/v1/XmlPullParser;)V
    .locals 15
    .param p1, "index"    # I
    .param p2, "xmlpullparser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 349
    const/4 v7, 0x0

    .line 350
    .local v7, "packageName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 354
    .local v9, "resourceName":Ljava/lang/String;
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 355
    .local v4, "eventType":I
    :goto_0
    const/4 v12, 0x1

    if-eq v4, v12, :cond_6

    .line 356
    packed-switch v4, :pswitch_data_0

    .line 436
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_0

    .line 360
    :pswitch_1
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 361
    .local v10, "resourceType":Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 365
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    .line 366
    .local v2, "count":I
    if-lez v2, :cond_0

    .line 367
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v2, :cond_3

    .line 368
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, "attributeName":Ljava/lang/String;
    const-string v12, "name"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 370
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    .line 367
    :cond_1
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 371
    :cond_2
    const-string v12, "package"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 372
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 376
    .end local v1    # "attributeName":Ljava/lang/String;
    :cond_3
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    .line 377
    .local v11, "resourceValue":Ljava/lang/String;
    if-eqz v9, :cond_0

    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_0

    .line 379
    if-nez v7, :cond_4

    .line 380
    if-nez p1, :cond_7

    .line 381
    iget-object v7, p0, Loppo/content/res/OppoThemeZipFile;->mPackageName:Ljava/lang/String;

    .line 389
    :cond_4
    :goto_4
    iget-object v12, p0, Loppo/content/res/OppoThemeZipFile;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v12, v9, v10, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 392
    .local v8, "resourceId":I
    if-lez v8, :cond_0

    .line 396
    const-string v12, "bool"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    .line 397
    const-string v12, "color"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    const-string v12, "integer"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    const-string v12, "drawable"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 400
    :cond_5
    iget-object v12, p0, Loppo/content/res/OppoThemeZipFile;->mMetaData:Loppo/content/res/OppoThemeResources$MetaData;

    iget-boolean v12, v12, Loppo/content/res/OppoThemeResources$MetaData;->supportInt:Z

    if-eqz v12, :cond_0

    iget-object v12, p0, Loppo/content/res/OppoThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v12, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v12

    if-gez v12, :cond_0

    .line 402
    iget-object v12, p0, Loppo/content/res/OppoThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/android/internal/util/XmlUtils;->convertValueToUnsignedInt(Ljava/lang/String;I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v8, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 438
    .end local v2    # "count":I
    .end local v4    # "eventType":I
    .end local v5    # "i":I
    .end local v8    # "resourceId":I
    .end local v10    # "resourceType":Ljava/lang/String;
    .end local v11    # "resourceValue":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 439
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v12, "OppoThemeZipFile"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mergeThemeValues XmlPullParserException happened when loadThemeValues, msg = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_6
    :goto_5
    return-void

    .line 382
    .restart local v2    # "count":I
    .restart local v4    # "eventType":I
    .restart local v5    # "i":I
    .restart local v10    # "resourceType":Ljava/lang/String;
    .restart local v11    # "resourceValue":Ljava/lang/String;
    :cond_7
    const/4 v12, 0x1

    move/from16 v0, p1

    if-ne v0, v12, :cond_8

    .line 383
    :try_start_1
    const-string v7, "android"

    goto :goto_4

    .line 384
    :cond_8
    const/4 v12, 0x2

    move/from16 v0, p1

    if-ne v0, v12, :cond_4

    .line 385
    const-string v7, "oppo"

    goto :goto_4

    .line 406
    .restart local v8    # "resourceId":I
    :cond_9
    const-string v12, "string"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 407
    iget-object v12, p0, Loppo/content/res/OppoThemeZipFile;->mMetaData:Loppo/content/res/OppoThemeResources$MetaData;

    iget-boolean v12, v12, Loppo/content/res/OppoThemeResources$MetaData;->supportCharSequence:Z

    if-eqz v12, :cond_0

    iget-object v12, p0, Loppo/content/res/OppoThemeZipFile;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v12, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v12

    if-gez v12, :cond_0

    .line 409
    iget-object v12, p0, Loppo/content/res/OppoThemeZipFile;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v12, v8, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 442
    .end local v2    # "count":I
    .end local v4    # "eventType":I
    .end local v5    # "i":I
    .end local v8    # "resourceId":I
    .end local v10    # "resourceType":Ljava/lang/String;
    .end local v11    # "resourceValue":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 443
    .local v3, "e":Ljava/io/IOException;
    const-string v12, "OppoThemeZipFile"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mergeThemeValues IOException happened when loadThemeValues, msg = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 410
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "count":I
    .restart local v4    # "eventType":I
    .restart local v5    # "i":I
    .restart local v8    # "resourceId":I
    .restart local v10    # "resourceType":Ljava/lang/String;
    .restart local v11    # "resourceValue":Ljava/lang/String;
    :cond_a
    :try_start_2
    const-string v12, "dimen"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    iget-object v12, p0, Loppo/content/res/OppoThemeZipFile;->mMetaData:Loppo/content/res/OppoThemeResources$MetaData;

    iget-boolean v12, v12, Loppo/content/res/OppoThemeResources$MetaData;->supportInt:Z

    if-eqz v12, :cond_0

    iget-object v12, p0, Loppo/content/res/OppoThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v12, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v12

    if-gez v12, :cond_0

    .line 412
    iget-object v12, p0, Loppo/content/res/OppoThemeZipFile;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/app/OppoThemeHelper;->parseDimension(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 414
    .local v6, "integer":Ljava/lang/Integer;
    if-eqz v6, :cond_0

    .line 415
    iget-object v12, p0, Loppo/content/res/OppoThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v12, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 418
    .end local v6    # "integer":Ljava/lang/Integer;
    :cond_b
    iget-object v12, p0, Loppo/content/res/OppoThemeZipFile;->mMetaData:Loppo/content/res/OppoThemeResources$MetaData;

    iget-boolean v12, v12, Loppo/content/res/OppoThemeResources$MetaData;->supportInt:Z

    if-eqz v12, :cond_0

    iget-object v12, p0, Loppo/content/res/OppoThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v12, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v12

    if-gez v12, :cond_0

    .line 419
    const-string v12, "true"

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_c

    .line 420
    iget-object v12, p0, Loppo/content/res/OppoThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v8, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 422
    :cond_c
    iget-object v12, p0, Loppo/content/res/OppoThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v8, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 356
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private openZipFile()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 292
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Loppo/content/res/OppoThemeZipFile;->mPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 293
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 294
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, p0, Loppo/content/res/OppoThemeZipFile;->mLastModifyTime:J

    .line 295
    iget-wide v2, p0, Loppo/content/res/OppoThemeZipFile;->mLastModifyTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 297
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Loppo/content/res/OppoThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "exception":Ljava/lang/Exception;
    iput-object v6, p0, Loppo/content/res/OppoThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    goto :goto_0

    .line 303
    .end local v0    # "exception":Ljava/lang/Exception;
    :cond_1
    iput-object v6, p0, Loppo/content/res/OppoThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    goto :goto_0
.end method


# virtual methods
.method public checkUpdate()Z
    .locals 6

    .prologue
    .line 272
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Loppo/content/res/OppoThemeZipFile;->mPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 273
    .local v2, "l":J
    iget-wide v4, p0, Loppo/content/res/OppoThemeZipFile;->mLastModifyTime:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_0

    .line 274
    const/4 v0, 0x0

    .line 288
    .local v0, "flag":Z
    :goto_0
    return v0

    .line 276
    .end local v0    # "flag":Z
    :cond_0
    invoke-direct {p0}, Loppo/content/res/OppoThemeZipFile;->clean()V

    .line 277
    invoke-direct {p0}, Loppo/content/res/OppoThemeZipFile;->openZipFile()V

    .line 279
    iget-object v4, p0, Loppo/content/res/OppoThemeZipFile;->mPackageName:Ljava/lang/String;

    const-string v5, "android"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Loppo/content/res/OppoThemeZipFile;->mPackageName:Ljava/lang/String;

    const-string v5, "oppo"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 280
    :cond_1
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Loppo/content/res/OppoThemeZipFile;->loadThemeValues(I)V

    .line 286
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "flag":Z
    goto :goto_0

    .line 282
    .end local v0    # "flag":Z
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v4, Loppo/content/res/OppoThemeZipFile;->ASSETS_THEME_VALUE_FILES:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 283
    invoke-direct {p0, v1}, Loppo/content/res/OppoThemeZipFile;->loadThemeValues(I)V

    .line 282
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public containsEntry(Ljava/lang/String;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 450
    const/4 v0, 0x0

    .line 451
    .local v0, "flag":Z
    invoke-virtual {p0}, Loppo/content/res/OppoThemeZipFile;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Loppo/content/res/OppoThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 452
    const/4 v0, 0x1

    .line 456
    :goto_0
    return v0

    .line 454
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public exists()Z
    .locals 2

    .prologue
    .line 460
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Loppo/content/res/OppoThemeZipFile;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public getInputStream(ILjava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    .locals 2
    .param p1, "index"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 150
    iget-object v1, p0, Loppo/content/res/OppoThemeZipFile;->mMetaData:Loppo/content/res/OppoThemeResources$MetaData;

    iget-boolean v1, v1, Loppo/content/res/OppoThemeResources$MetaData;->supportFile:Z

    if-eqz v1, :cond_0

    .line 151
    invoke-direct {p0, p1, p2}, Loppo/content/res/OppoThemeZipFile;->getInputStreamInner(ILjava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 155
    .local v0, "themeFileInfo":Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    :goto_0
    return-object v0

    .line 153
    .end local v0    # "themeFileInfo":Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "themeFileInfo":Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    goto :goto_0
.end method

.method public getInputStream(Ljava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Loppo/content/res/OppoThemeZipFile;->getInputStream(ILjava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getThemeCharSequence(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 253
    iget-object v0, p0, Loppo/content/res/OppoThemeZipFile;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getThemeInt(I)Ljava/lang/Integer;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 257
    iget-object v0, p0, Loppo/content/res/OppoThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public hasValues()Z
    .locals 2

    .prologue
    .line 262
    iget-object v1, p0, Loppo/content/res/OppoThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Loppo/content/res/OppoThemeZipFile;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 263
    :cond_0
    const/4 v0, 0x1

    .line 267
    .local v0, "flag":Z
    :goto_0
    return v0

    .line 265
    .end local v0    # "flag":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "flag":Z
    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Loppo/content/res/OppoThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
