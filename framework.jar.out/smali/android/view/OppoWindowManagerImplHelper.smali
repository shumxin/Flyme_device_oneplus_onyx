.class public Landroid/view/OppoWindowManagerImplHelper;
.super Ljava/lang/Object;
.source "OppoWindowManagerImplHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/OppoWindowManagerImplHelper$BlackFileListener;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final DIR:Ljava/lang/String; = "//data//oppo//floatwindow//"

.field private static final FILE_BLACK_LIST:Ljava/lang/String; = "//data//oppo//floatwindow//FloatWindowBlackList.txt"

.field private static final PATH:Ljava/lang/String; = "/data/oppo/floatwindow/FloatWindowBlackList.txt"

.field private static final SAVE_FILE_NAME:Ljava/lang/String; = "FloatWindowBlackList.txt"

.field private static final TAG:Ljava/lang/String; = "OppoWindowManagerImplHelper"

.field private static compareBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static file:Ljava/io/File;

.field private static listener:Landroid/view/OppoWindowManagerImplHelper$BlackFileListener;

.field private static mOppoWindowManagerImplHelper:Landroid/view/OppoWindowManagerImplHelper;

.field private static mWindowType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    sput-boolean v0, Landroid/view/OppoWindowManagerImplHelper;->DEBUG:Z

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/view/OppoWindowManagerImplHelper;->compareBlackList:Ljava/util/List;

    .line 50
    const/4 v0, 0x0

    sput-object v0, Landroid/view/OppoWindowManagerImplHelper;->mOppoWindowManagerImplHelper:Landroid/view/OppoWindowManagerImplHelper;

    .line 55
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/view/OppoWindowManagerImplHelper;->mWindowType:[I

    .line 60
    return-void

    .line 55
    :array_0
    .array-data 4
        0x7d2
        0x7d7
        0x7d3
        0x7da
        0x7d6
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v2, Ljava/io/File;

    const-string v3, "//data//oppo//floatwindow//FloatWindowBlackList.txt"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v2, Landroid/view/OppoWindowManagerImplHelper;->file:Ljava/io/File;

    .line 63
    sget-object v2, Landroid/view/OppoWindowManagerImplHelper;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 64
    const-string v2, "OppoWindowManagerImplHelper"

    const-string v3, "file.exists() is not exit!"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v2, Ljava/io/File;

    const-string v3, "//data//oppo//floatwindow//"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 66
    new-instance v2, Ljava/io/File;

    const-string v3, "//data//oppo//floatwindow//FloatWindowBlackList.txt"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v2, Landroid/view/OppoWindowManagerImplHelper;->file:Ljava/io/File;

    .line 68
    :try_start_0
    sget-object v2, Landroid/view/OppoWindowManagerImplHelper;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "chmod 777 /data/oppo/floatwindow/FloatWindowBlackList.txt"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 80
    :goto_1
    new-instance v2, Landroid/view/OppoWindowManagerImplHelper$BlackFileListener;

    const-string v3, "/data/oppo/floatwindow/FloatWindowBlackList.txt"

    invoke-direct {v2, p0, v3}, Landroid/view/OppoWindowManagerImplHelper$BlackFileListener;-><init>(Landroid/view/OppoWindowManagerImplHelper;Ljava/lang/String;)V

    sput-object v2, Landroid/view/OppoWindowManagerImplHelper;->listener:Landroid/view/OppoWindowManagerImplHelper$BlackFileListener;

    .line 81
    sget-object v2, Landroid/view/OppoWindowManagerImplHelper;->listener:Landroid/view/OppoWindowManagerImplHelper$BlackFileListener;

    invoke-virtual {v2}, Landroid/view/OppoWindowManagerImplHelper$BlackFileListener;->startWatching()V

    .line 82
    return-void

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, "ioe":Ljava/io/IOException;
    const-string v2, "OppoWindowManagerImplHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File creation failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 73
    .end local v1    # "ioe":Ljava/io/IOException;
    :cond_0
    const-string v2, "OppoWindowManagerImplHelper"

    const-string v3, "file.exists() is  exit!"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 77
    :catch_1
    move-exception v0

    .line 78
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "OppoWindowManagerImplHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic access$000()Ljava/io/File;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Landroid/view/OppoWindowManagerImplHelper;->file:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$100(Landroid/view/OppoWindowManagerImplHelper;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/OppoWindowManagerImplHelper;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/view/OppoWindowManagerImplHelper;->getBlackList(Ljava/io/File;)V

    return-void
.end method

.method public static final checkIsFloatWindowForbidden(Ljava/lang/String;I)Z
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "type"    # I

    .prologue
    .line 115
    invoke-static {p0}, Landroid/view/OppoWindowManagerImplHelper;->isInBlackList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/OppoWindowManagerImplHelper;->isFloatWindowType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const-string v0, "OppoWindowManagerImplHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This APK is forbiddened to use float window !!!!  PackageName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", forbiddened windows type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v0, 0x1

    .line 119
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getBlackList(Ljava/io/File;)V
    .locals 9
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 146
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 147
    sget-object v6, Landroid/view/OppoWindowManagerImplHelper;->compareBlackList:Ljava/util/List;

    if-eqz v6, :cond_0

    sget-object v6, Landroid/view/OppoWindowManagerImplHelper;->compareBlackList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_0

    .line 148
    sget-object v6, Landroid/view/OppoWindowManagerImplHelper;->compareBlackList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 151
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 152
    .local v1, "fr":Ljava/io/FileReader;
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 153
    .local v4, "reader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 154
    .local v5, "strT":Ljava/lang/String;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 155
    sget-object v6, Landroid/view/OppoWindowManagerImplHelper;->compareBlackList:Ljava/util/List;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    .end local v1    # "fr":Ljava/io/FileReader;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "strT":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "OppoWindowManagerImplHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void

    .line 157
    .restart local v1    # "fr":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "strT":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 158
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    .line 159
    sget-boolean v6, Landroid/view/OppoWindowManagerImplHelper;->DEBUG:Z

    if-eqz v6, :cond_1

    .line 160
    sget-object v6, Landroid/view/OppoWindowManagerImplHelper;->compareBlackList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 161
    .local v3, "pkgblack":Ljava/lang/String;
    const-string v6, "OppoWindowManagerImplHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Pkg in compareBlackList =  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 168
    .end local v1    # "fr":Ljava/io/FileReader;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "pkgblack":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "strT":Ljava/lang/String;
    :cond_3
    const-string v6, "OppoWindowManagerImplHelper"

    const-string v7, "Blacklist  file not exists!"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static final getInstance()Landroid/view/OppoWindowManagerImplHelper;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Landroid/view/OppoWindowManagerImplHelper;->mOppoWindowManagerImplHelper:Landroid/view/OppoWindowManagerImplHelper;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Landroid/view/OppoWindowManagerImplHelper;

    invoke-direct {v0}, Landroid/view/OppoWindowManagerImplHelper;-><init>()V

    sput-object v0, Landroid/view/OppoWindowManagerImplHelper;->mOppoWindowManagerImplHelper:Landroid/view/OppoWindowManagerImplHelper;

    .line 88
    :cond_0
    sget-object v0, Landroid/view/OppoWindowManagerImplHelper;->mOppoWindowManagerImplHelper:Landroid/view/OppoWindowManagerImplHelper;

    return-object v0
.end method

.method private static isFloatWindowType(I)Z
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 137
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/view/OppoWindowManagerImplHelper;->mWindowType:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 138
    sget-object v1, Landroid/view/OppoWindowManagerImplHelper;->mWindowType:[I

    aget v1, v1, v0

    if-ne p0, v1, :cond_0

    .line 139
    const/4 v1, 0x1

    .line 142
    :goto_1
    return v1

    .line 137
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static isInBlackList(Ljava/lang/String;)Z
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 123
    const/4 v1, 0x0

    .line 124
    .local v1, "res":Z
    const/4 v0, 0x0

    .line 125
    .local v0, "pkgName":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 126
    const/4 v2, 0x0

    .line 133
    :goto_0
    return v2

    .line 128
    :cond_0
    move-object v0, p0

    .line 130
    sget-object v2, Landroid/view/OppoWindowManagerImplHelper;->compareBlackList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    const/4 v1, 0x1

    :cond_1
    move v2, v1

    .line 133
    goto :goto_0
.end method


# virtual methods
.method public initBlackList()V
    .locals 1

    .prologue
    .line 111
    sget-object v0, Landroid/view/OppoWindowManagerImplHelper;->file:Ljava/io/File;

    invoke-direct {p0, v0}, Landroid/view/OppoWindowManagerImplHelper;->getBlackList(Ljava/io/File;)V

    .line 112
    return-void
.end method
