.class public final Landroid/content/res/OppoResources;
.super Landroid/content/res/Resources;
.source "OppoResources.java"


# static fields
.field public static final COOKIE_TYPE_FRAMEWORK:I = 0x1

.field public static final COOKIE_TYPE_OPPO:I = 0x2

.field public static final COOKIE_TYPE_OTHERPACKAGE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "OppoResources"


# instance fields
.field private final DEBUG:Z

.field private mCharSequences:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mCookies:Landroid/util/SparseIntArray;

.field private mIntegers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsHasValues:Z

.field private mSkipFiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mThemeResources:Loppo/content/res/OppoThemeResources;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Landroid/content/res/Resources;-><init>()V

    .line 44
    iput-boolean v0, p0, Landroid/content/res/OppoResources;->DEBUG:Z

    .line 50
    iput-boolean v0, p0, Landroid/content/res/OppoResources;->mIsHasValues:Z

    .line 52
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/OppoResources;->mCharSequences:Landroid/util/SparseArray;

    .line 53
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/OppoResources;->mCookies:Landroid/util/SparseIntArray;

    .line 54
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/OppoResources;->mIntegers:Landroid/util/SparseArray;

    .line 55
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/OppoResources;->mSkipFiles:Landroid/util/SparseArray;

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/res/OppoResources;->init(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "assetmanager"    # Landroid/content/res/AssetManager;
    .param p2, "displaymetrics"    # Landroid/util/DisplayMetrics;
    .param p3, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 44
    iput-boolean v0, p0, Landroid/content/res/OppoResources;->DEBUG:Z

    .line 50
    iput-boolean v0, p0, Landroid/content/res/OppoResources;->mIsHasValues:Z

    .line 52
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/OppoResources;->mCharSequences:Landroid/util/SparseArray;

    .line 53
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/OppoResources;->mCookies:Landroid/util/SparseIntArray;

    .line 54
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/OppoResources;->mIntegers:Landroid/util/SparseArray;

    .line 55
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/OppoResources;->mSkipFiles:Landroid/util/SparseArray;

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/res/OppoResources;->init(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "assetmanager"    # Landroid/content/res/AssetManager;
    .param p2, "displaymetrics"    # Landroid/util/DisplayMetrics;
    .param p3, "configuration"    # Landroid/content/res/Configuration;
    .param p4, "compatibilityinfo"    # Landroid/content/res/CompatibilityInfo;
    .param p5, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct/range {p0 .. p5}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/IBinder;)V

    .line 44
    iput-boolean v0, p0, Landroid/content/res/OppoResources;->DEBUG:Z

    .line 50
    iput-boolean v0, p0, Landroid/content/res/OppoResources;->mIsHasValues:Z

    .line 52
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/OppoResources;->mCharSequences:Landroid/util/SparseArray;

    .line 53
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/OppoResources;->mCookies:Landroid/util/SparseIntArray;

    .line 54
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/OppoResources;->mIntegers:Landroid/util/SparseArray;

    .line 55
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/OppoResources;->mSkipFiles:Landroid/util/SparseArray;

    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/res/OppoResources;->init(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method private getCookieType(I)I
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 129
    iget-object v2, p0, Landroid/content/res/OppoResources;->mCookies:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 130
    .local v0, "i":I
    const/4 v1, 0x0

    .line 131
    .local v1, "packageName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 132
    iget-object v2, p0, Landroid/content/res/OppoResources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->getCookieName(I)Ljava/lang/String;

    move-result-object v1

    .line 136
    const-string v2, "/system/framework/framework-res.apk"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    const/4 v0, 0x1

    .line 144
    :goto_0
    iget-object v2, p0, Landroid/content/res/OppoResources;->mCookies:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 146
    :cond_0
    return v0

    .line 138
    :cond_1
    const-string v2, "/system/framework/oppo-framework-res.apk"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 139
    const/4 v0, 0x2

    goto :goto_0

    .line 141
    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method


# virtual methods
.method public getText(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Landroid/content/res/OppoResources;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 152
    .local v0, "res":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 153
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 156
    :cond_0
    return-object v0
.end method

.method public getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "id"    # I
    .param p2, "def"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Landroid/content/res/OppoResources;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 162
    .local v0, "res":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 163
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 166
    :cond_0
    return-object v0
.end method

.method public getThemeCharSequence(I)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 170
    const/4 v1, 0x0

    .line 171
    .local v1, "res":Ljava/lang/CharSequence;
    iget-boolean v2, p0, Landroid/content/res/OppoResources;->mIsHasValues:Z

    if-nez v2, :cond_0

    .line 172
    const/4 v1, 0x0

    .line 183
    :goto_0
    return-object v1

    .line 174
    :cond_0
    iget-object v2, p0, Landroid/content/res/OppoResources;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 175
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 176
    iget-object v2, p0, Landroid/content/res/OppoResources;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "res":Ljava/lang/CharSequence;
    check-cast v1, Ljava/lang/CharSequence;

    .restart local v1    # "res":Ljava/lang/CharSequence;
    goto :goto_0

    .line 178
    :cond_1
    iget-object v2, p0, Landroid/content/res/OppoResources;->mThemeResources:Loppo/content/res/OppoThemeResources;

    invoke-virtual {v2, p1}, Loppo/content/res/OppoThemeResources;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 179
    iget-object v2, p0, Landroid/content/res/OppoResources;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public getThemeInt(I)Ljava/lang/Integer;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 188
    iget-boolean v2, p0, Landroid/content/res/OppoResources;->mIsHasValues:Z

    if-nez v2, :cond_0

    .line 189
    const/4 v1, 0x0

    .line 200
    .local v1, "res":Ljava/lang/Integer;
    :goto_0
    return-object v1

    .line 191
    .end local v1    # "res":Ljava/lang/Integer;
    :cond_0
    iget-object v2, p0, Landroid/content/res/OppoResources;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 192
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 193
    iget-object v2, p0, Landroid/content/res/OppoResources;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .restart local v1    # "res":Ljava/lang/Integer;
    goto :goto_0

    .line 195
    .end local v1    # "res":Ljava/lang/Integer;
    :cond_1
    iget-object v2, p0, Landroid/content/res/OppoResources;->mThemeResources:Loppo/content/res/OppoThemeResources;

    invoke-virtual {v2, p1}, Loppo/content/res/OppoThemeResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v1

    .line 196
    .restart local v1    # "res":Ljava/lang/Integer;
    iget-object v2, p0, Landroid/content/res/OppoResources;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public getValue(ILandroid/util/TypedValue;Z)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 206
    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-le v1, v2, :cond_1

    :cond_0
    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 207
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/res/OppoResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 208
    .local v0, "res":Ljava/lang/Integer;
    if-eqz v0, :cond_2

    .line 209
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p2, Landroid/util/TypedValue;->data:I

    .line 212
    .end local v0    # "res":Ljava/lang/Integer;
    :cond_2
    return-void
.end method

.method public init(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "oppo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    :cond_0
    invoke-static {p0}, Loppo/content/res/OppoThemeResources;->getSystem(Landroid/content/res/Resources;)Loppo/content/res/OppoThemeResources;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/OppoResources;->mThemeResources:Loppo/content/res/OppoThemeResources;

    .line 81
    :goto_0
    iget-object v0, p0, Landroid/content/res/OppoResources;->mThemeResources:Loppo/content/res/OppoThemeResources;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Landroid/content/res/OppoResources;->mThemeResources:Loppo/content/res/OppoThemeResources;

    invoke-virtual {v0}, Loppo/content/res/OppoThemeResources;->hasValues()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/res/OppoResources;->mIsHasValues:Z

    .line 84
    :cond_1
    return-void

    .line 78
    :cond_2
    invoke-static {p0, p1}, Loppo/content/res/OppoThemeResourcesPackage;->getThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Loppo/content/res/OppoThemeResourcesPackage;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/OppoResources;->mThemeResources:Loppo/content/res/OppoThemeResources;

    goto :goto_0
.end method

.method public loadIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "id"    # I

    .prologue
    const/4 v7, 0x1

    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 239
    .local v3, "path":Ljava/lang/String;
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 240
    .local v5, "value":Landroid/util/TypedValue;
    invoke-virtual {p0, p1, v5, v7}, Landroid/content/res/OppoResources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 241
    iget-object v6, v5, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 243
    iget-object v6, p0, Landroid/content/res/OppoResources;->mSkipFiles:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    iget-object v6, p0, Landroid/content/res/OppoResources;->mThemeResources:Loppo/content/res/OppoThemeResources;

    if-eqz v6, :cond_2

    .line 244
    iget-object v6, p0, Landroid/content/res/OppoResources;->mThemeResources:Loppo/content/res/OppoThemeResources;

    invoke-static {}, Loppo/content/res/OppoThemeResources;->getSystem()Loppo/content/res/OppoThemeResourcesSystem;

    move-result-object v6

    invoke-virtual {v6, v3}, Loppo/content/res/OppoThemeResourcesSystem;->getIconStream(Ljava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;

    move-result-object v4

    .line 246
    .local v4, "themeFileInfo":Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    if-nez v4, :cond_0

    .line 247
    iget-object v6, p0, Landroid/content/res/OppoResources;->mSkipFiles:Landroid/util/SparseArray;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 248
    const/4 v6, 0x0

    .line 269
    .end local v4    # "themeFileInfo":Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    :goto_0
    return-object v6

    .line 252
    .restart local v4    # "themeFileInfo":Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    :cond_0
    if-eqz v4, :cond_1

    .line 253
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 254
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    iget v6, v4, Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;->mDensity:I

    iput v6, v2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 255
    iget-object v1, v4, Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    .line 256
    .local v1, "input":Ljava/io/InputStream;
    invoke-static {p0, v5, v1, v3, v2}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 262
    .end local v1    # "input":Ljava/io/InputStream;
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    if-eqz v4, :cond_2

    .line 263
    :try_start_1
    iget-object v6, v4, Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .end local v4    # "themeFileInfo":Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    :cond_2
    :goto_1
    move-object v6, v0

    .line 269
    goto :goto_0

    .line 258
    .restart local v4    # "themeFileInfo":Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    :catch_0
    move-exception v6

    .line 262
    if-eqz v4, :cond_2

    .line 263
    :try_start_2
    iget-object v6, v4, Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 265
    :catch_1
    move-exception v6

    goto :goto_1

    .line 261
    :catchall_0
    move-exception v6

    .line 262
    if-eqz v4, :cond_3

    .line 263
    :try_start_3
    iget-object v7, v4, Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 266
    :cond_3
    :goto_2
    throw v6

    .line 265
    :catch_2
    move-exception v7

    goto :goto_2

    :catch_3
    move-exception v6

    goto :goto_1
.end method

.method public loadOverlayDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Landroid/content/res/OppoResources;->mSkipFiles:Landroid/util/SparseArray;

    invoke-virtual {v7, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_2

    iget-object v7, p0, Landroid/content/res/OppoResources;->mThemeResources:Loppo/content/res/OppoThemeResources;

    if-eqz v7, :cond_2

    .line 92
    iget-object v7, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 96
    .local v5, "path":Ljava/lang/String;
    iget-object v7, p0, Landroid/content/res/OppoResources;->mThemeResources:Loppo/content/res/OppoThemeResources;

    iget v8, p1, Landroid/util/TypedValue;->assetCookie:I

    invoke-direct {p0, v8}, Landroid/content/res/OppoResources;->getCookieType(I)I

    move-result v8

    invoke-virtual {v7, v8, v5}, Loppo/content/res/OppoThemeResources;->getThemeFileStream(ILjava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;

    move-result-object v6

    .line 98
    .local v6, "themeFileInfo":Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    if-nez v6, :cond_0

    .line 99
    iget-object v7, p0, Landroid/content/res/OppoResources;->mSkipFiles:Landroid/util/SparseArray;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, p2, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v1, v0

    .line 125
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "themeFileInfo":Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    .line 108
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v6    # "themeFileInfo":Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    :cond_0
    :try_start_0
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 109
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    iget v7, v6, Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;->mDensity:I

    iput v7, v4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 110
    iget-object v2, v6, Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    .line 111
    .local v2, "input":Ljava/io/InputStream;
    const-string v7, ".9.png"

    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 113
    :cond_1
    invoke-static {p0, p1, v2, v5, v4}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 118
    if-eqz v6, :cond_2

    .line 119
    :try_start_1
    iget-object v7, v6, Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .end local v2    # "input":Ljava/io/InputStream;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "themeFileInfo":Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    :cond_2
    :goto_1
    move-object v1, v0

    .line 125
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 114
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v6    # "themeFileInfo":Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    :catch_0
    move-exception v3

    .line 115
    .local v3, "localOutOfMemoryError":Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v7, "OppoResources"

    const-string/jumbo v8, "out of memory !!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    if-eqz v6, :cond_2

    .line 119
    :try_start_3
    iget-object v7, v6, Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 121
    :catch_1
    move-exception v7

    goto :goto_1

    .line 117
    .end local v3    # "localOutOfMemoryError":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v7

    .line 118
    if-eqz v6, :cond_3

    .line 119
    :try_start_4
    iget-object v8, v6, Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 122
    :cond_3
    :goto_2
    throw v7

    .line 121
    :catch_2
    move-exception v8

    goto :goto_2

    .restart local v2    # "input":Ljava/io/InputStream;
    .restart local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_3
    move-exception v7

    goto :goto_1
.end method
