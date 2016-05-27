.class public Lcom/android/internal/content/PackageInfo;
.super Ljava/lang/Object;
.source "PackageInfo.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mVersionCode:I

.field private mVersionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # I
    .param p3, "versionName"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "PackageInfo"

    iput-object v0, p0, Lcom/android/internal/content/PackageInfo;->TAG:Ljava/lang/String;

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/content/PackageInfo;->mVersionCode:I

    .line 27
    const-string v0, "none"

    iput-object v0, p0, Lcom/android/internal/content/PackageInfo;->mVersionName:Ljava/lang/String;

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/content/PackageInfo;->setCoreData(Ljava/lang/String;ILjava/lang/String;)V

    .line 36
    return-void
.end method

.method private dumpInfo(Lcom/android/internal/content/PackageInfo;)V
    .locals 3
    .param p1, "packageInfo"    # Lcom/android/internal/content/PackageInfo;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/content/PackageInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageInfo ==> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/android/internal/content/PackageInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageInfo.mPackageName =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/content/PackageInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/android/internal/content/PackageInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageInfo.mVersionCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/content/PackageInfo;->mVersionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/android/internal/content/PackageInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageInfo.mVersionName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/content/PackageInfo;->mVersionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void
.end method

.method private equalsFully(Lcom/android/internal/content/PackageInfo;)Z
    .locals 3
    .param p1, "packageInfo"    # Lcom/android/internal/content/PackageInfo;

    .prologue
    .line 87
    iget-object v1, p0, Lcom/android/internal/content/PackageInfo;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/content/PackageInfo;->mPackageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/internal/content/PackageInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/content/PackageInfo;->mVersionCode:I

    iget v2, p1, Lcom/android/internal/content/PackageInfo;->mVersionCode:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/content/PackageInfo;->mVersionName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/content/PackageInfo;->mVersionName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/internal/content/PackageInfo;->mVersionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 91
    .local v0, "equals":Z
    :goto_0
    return v0

    .line 87
    .end local v0    # "equals":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private equalsShortly(Lcom/android/internal/content/PackageInfo;)Z
    .locals 2
    .param p1, "packageInfo"    # Lcom/android/internal/content/PackageInfo;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/content/PackageInfo;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/content/PackageInfo;->mPackageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/content/PackageInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCoreData(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # I
    .param p3, "versionName"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/internal/content/PackageInfo;->mPackageName:Ljava/lang/String;

    .line 52
    iput p2, p0, Lcom/android/internal/content/PackageInfo;->mVersionCode:I

    .line 53
    iput-object p3, p0, Lcom/android/internal/content/PackageInfo;->mVersionName:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 63
    if-nez p1, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v1

    .line 66
    :cond_1
    if-ne p0, p1, :cond_2

    .line 67
    const/4 v1, 0x1

    goto :goto_0

    .line 69
    :cond_2
    instance-of v2, p1, Lcom/android/internal/content/PackageInfo;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 70
    check-cast v0, Lcom/android/internal/content/PackageInfo;

    .line 71
    .local v0, "packageInfo":Lcom/android/internal/content/PackageInfo;
    iget v1, p0, Lcom/android/internal/content/PackageInfo;->mVersionCode:I

    if-eq v1, v3, :cond_3

    iget-object v1, p0, Lcom/android/internal/content/PackageInfo;->mVersionName:Ljava/lang/String;

    const-string v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, v0, Lcom/android/internal/content/PackageInfo;->mVersionCode:I

    if-eq v1, v3, :cond_3

    iget-object v1, v0, Lcom/android/internal/content/PackageInfo;->mVersionName:Ljava/lang/String;

    const-string v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 73
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/internal/content/PackageInfo;->equalsShortly(Lcom/android/internal/content/PackageInfo;)Z

    move-result v1

    goto :goto_0

    .line 75
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/internal/content/PackageInfo;->equalsFully(Lcom/android/internal/content/PackageInfo;)Z

    move-result v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PackageInfo{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPackageName =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/content/PackageInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mVersionCode =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/content/PackageInfo;->mVersionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mVersionName =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/content/PackageInfo;->mVersionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "toString":Ljava/lang/String;
    return-object v0
.end method
