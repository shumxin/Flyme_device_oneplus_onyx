.class public Loppo/content/res/OppoThemeResources;
.super Ljava/lang/Object;
.source "OppoThemeResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loppo/content/res/OppoThemeResources$MetaData;
    }
.end annotation


# static fields
.field public static final FRAMEWORK_NAME:Ljava/lang/String; = "framework-res"

.field public static final FRAMEWORK_PACKAGE:Ljava/lang/String; = "android"

.field public static final ICONS_NAME:Ljava/lang/String; = "icons"

.field public static final OPPO_NAME:Ljava/lang/String; = "oppo-framework-res"

.field public static final OPPO_PACKAGE:Ljava/lang/String; = "oppo"

.field public static final SYSTEM_THEME_PATH:Ljava/lang/String; = "/system/media/theme/default/"

.field private static final TAG:Ljava/lang/String; = "OppoThemeResources"

.field public static final THEME_PATH:Ljava/lang/String; = "/data/theme/"

.field public static final THEME_PATHS:[Loppo/content/res/OppoThemeResources$MetaData;

.field private static sSystem:Loppo/content/res/OppoThemeResourcesSystem;


# instance fields
.field private final debug:Z

.field protected mHasValue:Z

.field protected mIsHasValue:Z

.field protected mIsHasWrapped:Z

.field private mMetaData:Loppo/content/res/OppoThemeResources$MetaData;

.field private mPackageName:Ljava/lang/String;

.field protected mPackageZipFile:Loppo/content/res/OppoThemeZipFile;

.field protected mResources:Landroid/content/res/Resources;

.field protected mSupportWrapper:Z

.field protected mWrapped:Loppo/content/res/OppoThemeResources;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 60
    const/4 v1, 0x2

    new-array v0, v1, [Loppo/content/res/OppoThemeResources$MetaData;

    .line 61
    .local v0, "metadata":[Loppo/content/res/OppoThemeResources$MetaData;
    const/4 v1, 0x0

    new-instance v2, Loppo/content/res/OppoThemeResources$MetaData;

    const-string v3, "/system/media/theme/default/"

    invoke-direct {v2, v3, v4, v4, v4}, Loppo/content/res/OppoThemeResources$MetaData;-><init>(Ljava/lang/String;ZZZ)V

    aput-object v2, v0, v1

    .line 62
    new-instance v1, Loppo/content/res/OppoThemeResources$MetaData;

    const-string v2, "/data/theme/"

    invoke-direct {v1, v2, v4, v4, v4}, Loppo/content/res/OppoThemeResources$MetaData;-><init>(Ljava/lang/String;ZZZ)V

    aput-object v1, v0, v4

    .line 63
    sput-object v0, Loppo/content/res/OppoThemeResources;->THEME_PATHS:[Loppo/content/res/OppoThemeResources$MetaData;

    .line 64
    return-void
.end method

.method public constructor <init>(Loppo/content/res/OppoThemeResources;Landroid/content/res/Resources;Ljava/lang/String;Loppo/content/res/OppoThemeResources$MetaData;)V
    .locals 3
    .param p1, "themeResources"    # Loppo/content/res/OppoThemeResources;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "metaData"    # Loppo/content/res/OppoThemeResources$MetaData;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Loppo/content/res/OppoThemeResources;->debug:Z

    .line 40
    iput-boolean v2, p0, Loppo/content/res/OppoThemeResources;->mIsHasValue:Z

    .line 41
    iput-boolean v2, p0, Loppo/content/res/OppoThemeResources;->mIsHasWrapped:Z

    .line 42
    iput-object v1, p0, Loppo/content/res/OppoThemeResources;->mPackageZipFile:Loppo/content/res/OppoThemeZipFile;

    .line 43
    iput-object v1, p0, Loppo/content/res/OppoThemeResources;->mResources:Landroid/content/res/Resources;

    .line 44
    iput-boolean v2, p0, Loppo/content/res/OppoThemeResources;->mSupportWrapper:Z

    .line 45
    iput-object v1, p0, Loppo/content/res/OppoThemeResources;->mWrapped:Loppo/content/res/OppoThemeResources;

    .line 82
    iput-object v1, p0, Loppo/content/res/OppoThemeResources;->mMetaData:Loppo/content/res/OppoThemeResources$MetaData;

    .line 83
    iput-object v1, p0, Loppo/content/res/OppoThemeResources;->mPackageName:Ljava/lang/String;

    .line 87
    if-eqz p1, :cond_0

    .line 88
    iget-object v0, p1, Loppo/content/res/OppoThemeResources;->mPackageZipFile:Loppo/content/res/OppoThemeZipFile;

    if-eqz v0, :cond_1

    .line 89
    iput-object p1, p0, Loppo/content/res/OppoThemeResources;->mWrapped:Loppo/content/res/OppoThemeResources;

    .line 94
    :cond_0
    :goto_0
    iput-object p4, p0, Loppo/content/res/OppoThemeResources;->mMetaData:Loppo/content/res/OppoThemeResources$MetaData;

    .line 95
    iput-object p3, p0, Loppo/content/res/OppoThemeResources;->mPackageName:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Loppo/content/res/OppoThemeResources;->mResources:Landroid/content/res/Resources;

    .line 97
    invoke-virtual {p0}, Loppo/content/res/OppoThemeResources;->checkUpdate()Z

    .line 98
    return-void

    .line 91
    :cond_1
    iput-object v1, p0, Loppo/content/res/OppoThemeResources;->mWrapped:Loppo/content/res/OppoThemeResources;

    goto :goto_0
.end method

.method public static getSystem(Landroid/content/res/Resources;)Loppo/content/res/OppoThemeResources;
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 105
    sget-object v0, Loppo/content/res/OppoThemeResources;->sSystem:Loppo/content/res/OppoThemeResourcesSystem;

    if-nez v0, :cond_0

    .line 106
    invoke-static {p0}, Loppo/content/res/OppoThemeResourcesSystem;->getTopLevelThemeResources(Landroid/content/res/Resources;)Loppo/content/res/OppoThemeResourcesSystem;

    move-result-object v0

    sput-object v0, Loppo/content/res/OppoThemeResources;->sSystem:Loppo/content/res/OppoThemeResourcesSystem;

    .line 108
    :cond_0
    sget-object v0, Loppo/content/res/OppoThemeResources;->sSystem:Loppo/content/res/OppoThemeResourcesSystem;

    return-object v0
.end method

.method public static getSystem()Loppo/content/res/OppoThemeResourcesSystem;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Loppo/content/res/OppoThemeResources;->sSystem:Loppo/content/res/OppoThemeResourcesSystem;

    if-eqz v0, :cond_0

    .line 113
    sget-object v0, Loppo/content/res/OppoThemeResources;->sSystem:Loppo/content/res/OppoThemeResourcesSystem;

    .line 115
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getTopLevelThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Loppo/content/res/OppoThemeResources;
    .locals 4
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 119
    const/4 v2, 0x0

    .line 120
    .local v2, "themeResources":Loppo/content/res/OppoThemeResources;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Loppo/content/res/OppoThemeResources;->THEME_PATHS:[Loppo/content/res/OppoThemeResources$MetaData;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 121
    new-instance v1, Loppo/content/res/OppoThemeResources;

    sget-object v3, Loppo/content/res/OppoThemeResources;->THEME_PATHS:[Loppo/content/res/OppoThemeResources$MetaData;

    aget-object v3, v3, v0

    invoke-direct {v1, v2, p0, p1, v3}, Loppo/content/res/OppoThemeResources;-><init>(Loppo/content/res/OppoThemeResources;Landroid/content/res/Resources;Ljava/lang/String;Loppo/content/res/OppoThemeResources$MetaData;)V

    .line 123
    .local v1, "res":Loppo/content/res/OppoThemeResources;
    move-object v2, v1

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    .end local v1    # "res":Loppo/content/res/OppoThemeResources;
    :cond_0
    return-object v2
.end method


# virtual methods
.method public checkUpdate()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, "isFileUpdata":Z
    const/4 v1, 0x0

    .line 132
    .local v1, "isWrappedUpdata":Z
    iget-object v4, p0, Loppo/content/res/OppoThemeResources;->mPackageZipFile:Loppo/content/res/OppoThemeZipFile;

    if-nez v4, :cond_0

    .line 133
    iget-object v4, p0, Loppo/content/res/OppoThemeResources;->mMetaData:Loppo/content/res/OppoThemeResources$MetaData;

    iget-object v5, p0, Loppo/content/res/OppoThemeResources;->mPackageName:Ljava/lang/String;

    iget-object v6, p0, Loppo/content/res/OppoThemeResources;->mResources:Landroid/content/res/Resources;

    invoke-static {v4, v5, v6}, Loppo/content/res/OppoThemeZipFile;->getThemeZipFile(Loppo/content/res/OppoThemeResources$MetaData;Ljava/lang/String;Landroid/content/res/Resources;)Loppo/content/res/OppoThemeZipFile;

    move-result-object v4

    iput-object v4, p0, Loppo/content/res/OppoThemeResources;->mPackageZipFile:Loppo/content/res/OppoThemeZipFile;

    .line 136
    :cond_0
    iget-object v4, p0, Loppo/content/res/OppoThemeResources;->mPackageZipFile:Loppo/content/res/OppoThemeZipFile;

    if-eqz v4, :cond_1

    .line 137
    iget-object v4, p0, Loppo/content/res/OppoThemeResources;->mPackageZipFile:Loppo/content/res/OppoThemeZipFile;

    invoke-virtual {v4}, Loppo/content/res/OppoThemeZipFile;->checkUpdate()Z

    move-result v0

    .line 140
    :cond_1
    iget-object v4, p0, Loppo/content/res/OppoThemeResources;->mWrapped:Loppo/content/res/OppoThemeResources;

    if-eqz v4, :cond_5

    .line 141
    iput-boolean v3, p0, Loppo/content/res/OppoThemeResources;->mIsHasWrapped:Z

    .line 146
    :goto_0
    iget-boolean v4, p0, Loppo/content/res/OppoThemeResources;->mIsHasWrapped:Z

    if-eqz v4, :cond_2

    .line 147
    iget-object v4, p0, Loppo/content/res/OppoThemeResources;->mWrapped:Loppo/content/res/OppoThemeResources;

    iget-object v4, v4, Loppo/content/res/OppoThemeResources;->mPackageZipFile:Loppo/content/res/OppoThemeZipFile;

    invoke-virtual {v4}, Loppo/content/res/OppoThemeZipFile;->checkUpdate()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Loppo/content/res/OppoThemeResources;->mWrapped:Loppo/content/res/OppoThemeResources;

    if-eqz v4, :cond_6

    .line 148
    const/4 v1, 0x1

    .line 153
    :cond_2
    :goto_1
    invoke-virtual {p0}, Loppo/content/res/OppoThemeResources;->hasValuesInner()Z

    move-result v4

    iput-boolean v4, p0, Loppo/content/res/OppoThemeResources;->mHasValue:Z

    .line 155
    if-nez v0, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    move v2, v3

    .line 159
    :cond_4
    return v2

    .line 143
    :cond_5
    iput-boolean v2, p0, Loppo/content/res/OppoThemeResources;->mIsHasWrapped:Z

    goto :goto_0

    .line 150
    :cond_6
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public containsEntry(Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, "isExists":Z
    iget-object v1, p0, Loppo/content/res/OppoThemeResources;->mPackageZipFile:Loppo/content/res/OppoThemeZipFile;

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Loppo/content/res/OppoThemeResources;->mPackageZipFile:Loppo/content/res/OppoThemeZipFile;

    invoke-virtual {v1, p1}, Loppo/content/res/OppoThemeZipFile;->containsEntry(Ljava/lang/String;)Z

    move-result v0

    .line 183
    if-nez v0, :cond_0

    iget-object v1, p0, Loppo/content/res/OppoThemeResources;->mPackageZipFile:Loppo/content/res/OppoThemeZipFile;

    invoke-virtual {v1}, Loppo/content/res/OppoThemeZipFile;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Loppo/content/res/OppoThemeResources;->mWrapped:Loppo/content/res/OppoThemeResources;

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Loppo/content/res/OppoThemeResources;->mWrapped:Loppo/content/res/OppoThemeResources;

    iget-object v1, v1, Loppo/content/res/OppoThemeResources;->mPackageZipFile:Loppo/content/res/OppoThemeZipFile;

    invoke-virtual {v1, p1}, Loppo/content/res/OppoThemeZipFile;->containsEntry(Ljava/lang/String;)Z

    move-result v0

    .line 188
    :cond_0
    return v0
.end method

.method public getPackageThemeFileStream(ILjava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    .locals 1
    .param p1, "index"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 211
    invoke-virtual {p0, p1, p2}, Loppo/content/res/OppoThemeResources;->getPackageThemeFileStreamInner(ILjava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getPackageThemeFileStreamInner(ILjava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    .locals 2
    .param p1, "index"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, "themeFileInfo":Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    iget-object v1, p0, Loppo/content/res/OppoThemeResources;->mPackageZipFile:Loppo/content/res/OppoThemeZipFile;

    if-eqz v1, :cond_0

    .line 240
    iget-object v1, p0, Loppo/content/res/OppoThemeResources;->mPackageZipFile:Loppo/content/res/OppoThemeZipFile;

    invoke-virtual {v1, p1, p2}, Loppo/content/res/OppoThemeZipFile;->getInputStream(ILjava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 243
    :cond_0
    iget-object v1, p0, Loppo/content/res/OppoThemeResources;->mWrapped:Loppo/content/res/OppoThemeResources;

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    iget-boolean v1, p0, Loppo/content/res/OppoThemeResources;->mIsHasWrapped:Z

    if-eqz v1, :cond_1

    .line 244
    iget-object v1, p0, Loppo/content/res/OppoThemeResources;->mWrapped:Loppo/content/res/OppoThemeResources;

    iget-object v1, v1, Loppo/content/res/OppoThemeResources;->mPackageZipFile:Loppo/content/res/OppoThemeZipFile;

    invoke-virtual {v1, p1, p2}, Loppo/content/res/OppoThemeZipFile;->getInputStream(ILjava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 247
    :cond_1
    return-object v0
.end method

.method public getThemeCharSequence(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Loppo/content/res/OppoThemeResources;->getThemeCharSequenceInner(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected getThemeCharSequenceInner(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 196
    const/4 v0, 0x0

    .line 197
    .local v0, "res":Ljava/lang/CharSequence;
    iget-object v1, p0, Loppo/content/res/OppoThemeResources;->mPackageZipFile:Loppo/content/res/OppoThemeZipFile;

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Loppo/content/res/OppoThemeResources;->mPackageZipFile:Loppo/content/res/OppoThemeZipFile;

    invoke-virtual {v1, p1}, Loppo/content/res/OppoThemeZipFile;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 200
    :cond_0
    if-nez v0, :cond_1

    iget-boolean v1, p0, Loppo/content/res/OppoThemeResources;->mIsHasWrapped:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Loppo/content/res/OppoThemeResources;->mWrapped:Loppo/content/res/OppoThemeResources;

    if-eqz v1, :cond_1

    .line 201
    iget-object v1, p0, Loppo/content/res/OppoThemeResources;->mWrapped:Loppo/content/res/OppoThemeResources;

    iget-object v1, v1, Loppo/content/res/OppoThemeResources;->mPackageZipFile:Loppo/content/res/OppoThemeZipFile;

    invoke-virtual {v1, p1}, Loppo/content/res/OppoThemeZipFile;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 203
    :cond_1
    return-object v0
.end method

.method public getThemeFileStream(ILjava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    .locals 1
    .param p1, "id"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 207
    invoke-virtual {p0, p2}, Loppo/content/res/OppoThemeResources;->getThemeFileStream(Ljava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getThemeFileStream(Ljava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 215
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Loppo/content/res/OppoThemeResources;->getThemeFileStreamInner(Ljava/lang/String;Z)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getThemeFileStream(Ljava/lang/String;Z)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "useWrap"    # Z

    .prologue
    .line 222
    invoke-virtual {p0, p1, p2}, Loppo/content/res/OppoThemeResources;->getThemeFileStreamInner(Ljava/lang/String;Z)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getThemeFileStreamInner(Ljava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 219
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Loppo/content/res/OppoThemeResources;->getThemeFileStreamInner(Ljava/lang/String;Z)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getThemeFileStreamInner(Ljava/lang/String;Z)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "useWrap"    # Z

    .prologue
    .line 225
    const/4 v0, 0x0

    .line 226
    .local v0, "themeFileInfo":Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;
    iget-object v1, p0, Loppo/content/res/OppoThemeResources;->mPackageZipFile:Loppo/content/res/OppoThemeZipFile;

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Loppo/content/res/OppoThemeResources;->mPackageZipFile:Loppo/content/res/OppoThemeZipFile;

    invoke-virtual {v1, p1}, Loppo/content/res/OppoThemeZipFile;->getInputStream(Ljava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 230
    :cond_0
    iget-object v1, p0, Loppo/content/res/OppoThemeResources;->mWrapped:Loppo/content/res/OppoThemeResources;

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    iget-boolean v1, p0, Loppo/content/res/OppoThemeResources;->mIsHasWrapped:Z

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    .line 231
    iget-object v1, p0, Loppo/content/res/OppoThemeResources;->mWrapped:Loppo/content/res/OppoThemeResources;

    iget-object v1, v1, Loppo/content/res/OppoThemeResources;->mPackageZipFile:Loppo/content/res/OppoThemeZipFile;

    invoke-virtual {v1, p1}, Loppo/content/res/OppoThemeZipFile;->getInputStream(Ljava/lang/String;)Loppo/content/res/OppoThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 234
    :cond_1
    return-object v0
.end method

.method public getThemeInt(I)Ljava/lang/Integer;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 251
    invoke-virtual {p0, p1}, Loppo/content/res/OppoThemeResources;->getThemeIntInner(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected getThemeIntInner(I)Ljava/lang/Integer;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, "res":Ljava/lang/Integer;
    iget-object v1, p0, Loppo/content/res/OppoThemeResources;->mPackageZipFile:Loppo/content/res/OppoThemeZipFile;

    if-eqz v1, :cond_0

    .line 257
    iget-object v1, p0, Loppo/content/res/OppoThemeResources;->mPackageZipFile:Loppo/content/res/OppoThemeZipFile;

    invoke-virtual {v1, p1}, Loppo/content/res/OppoThemeZipFile;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 260
    :cond_0
    if-nez v0, :cond_1

    iget-boolean v1, p0, Loppo/content/res/OppoThemeResources;->mIsHasWrapped:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Loppo/content/res/OppoThemeResources;->mWrapped:Loppo/content/res/OppoThemeResources;

    if-eqz v1, :cond_1

    .line 261
    iget-object v1, p0, Loppo/content/res/OppoThemeResources;->mWrapped:Loppo/content/res/OppoThemeResources;

    iget-object v1, v1, Loppo/content/res/OppoThemeResources;->mPackageZipFile:Loppo/content/res/OppoThemeZipFile;

    invoke-virtual {v1, p1}, Loppo/content/res/OppoThemeZipFile;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 263
    :cond_1
    return-object v0
.end method

.method public hasValues()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Loppo/content/res/OppoThemeResources;->mHasValue:Z

    return v0
.end method

.method protected hasValuesInner()Z
    .locals 2

    .prologue
    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "flage":Z
    iget-object v1, p0, Loppo/content/res/OppoThemeResources;->mPackageZipFile:Loppo/content/res/OppoThemeZipFile;

    if-eqz v1, :cond_0

    iget-object v1, p0, Loppo/content/res/OppoThemeResources;->mPackageZipFile:Loppo/content/res/OppoThemeZipFile;

    invoke-virtual {v1}, Loppo/content/res/OppoThemeZipFile;->hasValues()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Loppo/content/res/OppoThemeResources;->mPackageZipFile:Loppo/content/res/OppoThemeZipFile;

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Loppo/content/res/OppoThemeResources;->mIsHasWrapped:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Loppo/content/res/OppoThemeResources;->mWrapped:Loppo/content/res/OppoThemeResources;

    invoke-virtual {v1}, Loppo/content/res/OppoThemeResources;->hasValuesInner()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 166
    :cond_1
    const/4 v0, 0x1

    .line 170
    :goto_0
    return v0

    .line 168
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isMutiPackage()Z
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Loppo/content/res/OppoThemeResources;->isValidInner()Z

    move-result v0

    return v0
.end method

.method protected isValidInner()Z
    .locals 2

    .prologue
    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, "isValid":Z
    iget-object v1, p0, Loppo/content/res/OppoThemeResources;->mPackageZipFile:Loppo/content/res/OppoThemeZipFile;

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Loppo/content/res/OppoThemeResources;->mPackageZipFile:Loppo/content/res/OppoThemeZipFile;

    invoke-virtual {v1}, Loppo/content/res/OppoThemeZipFile;->isValid()Z

    move-result v0

    .line 275
    :cond_0
    if-nez v0, :cond_1

    iget-boolean v1, p0, Loppo/content/res/OppoThemeResources;->mIsHasWrapped:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Loppo/content/res/OppoThemeResources;->mWrapped:Loppo/content/res/OppoThemeResources;

    if-eqz v1, :cond_1

    .line 276
    iget-object v1, p0, Loppo/content/res/OppoThemeResources;->mWrapped:Loppo/content/res/OppoThemeResources;

    iget-object v1, v1, Loppo/content/res/OppoThemeResources;->mPackageZipFile:Loppo/content/res/OppoThemeZipFile;

    invoke-virtual {v1}, Loppo/content/res/OppoThemeZipFile;->isValid()Z

    move-result v0

    .line 278
    :cond_1
    return v0
.end method
