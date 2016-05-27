.class public Lcom/android/server/pm/ColorPackageManagerHelper;
.super Ljava/lang/Object;
.source "ColorPackageManagerHelper.java"


# static fields
.field public static final OPPO_FORBID_INSTALL_ACTION:Ljava/lang/String; = "oppo.android.intent.action.FORBID_INSTALL"

.field private static final OPPO_SYSTEM_APP_PATH:Ljava/lang/String; = "/system/etc/security/pl.fs"

.field private static final OPPO_SYSTEM_APP_PWD:Ljava/lang/String; = "a"

.field static final TAG:Ljava/lang/String; = "ColorPackageManager"

.field private static final mOppoApkList:Ljava/util/ArrayList;
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
    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/ColorPackageManagerHelper;->mOppoApkList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsOppoApkList(Ljava/lang/String;)Z
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 49
    sget-object v0, Lcom/android/server/pm/ColorPackageManagerHelper;->mOppoApkList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static IsRootFile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "file"    # Ljava/lang/String;

    .prologue
    .line 160
    const-string v0, "su"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "root"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "superuser.apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "kinguser.apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "libsu.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "libroot.so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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

.method public static OppoCheckSuApp(Ljava/lang/String;Landroid/content/Context;)V
    .locals 18
    .param p0, "codePath"    # Ljava/lang/String;
    .param p1, "ct"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .prologue
    .line 98
    new-instance v1, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    .local v1, "appFile":Ljava/io/File;
    const/4 v3, 0x0

    .line 100
    .local v3, "codeFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_1

    .line 101
    const-string v14, "ColorPackageManager"

    const-string v15, "appFile is not exist!!"

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-static {v1}, Landroid/content/pm/PackageParser;->isApkFile(Ljava/io/File;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 105
    move-object v3, v1

    .line 115
    :cond_2
    const/4 v12, 0x0

    .line 117
    .local v12, "zin":Ljava/util/zip/ZipInputStream;
    if-nez v3, :cond_5

    .line 118
    :try_start_0
    const-string v14, "ColorPackageManager"

    const-string v15, "codeFile is null!!"

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 140
    if-eqz v12, :cond_0

    .line 142
    :try_start_1
    const-string v14, "ColorPackageManager"

    const-string v15, "check finish!!"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {v12}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v4

    .line 146
    .local v4, "e":Ljava/io/IOException;
    const-string v14, "ColorPackageManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "OppoCheckSuApp fatal error:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 107
    .end local v4    # "e":Ljava/io/IOException;
    .end local v12    # "zin":Ljava/util/zip/ZipInputStream;
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 108
    .local v7, "files":[Ljava/io/File;
    move-object v2, v7

    .local v2, "arr$":[Ljava/io/File;
    array-length v10, v2

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v10, :cond_2

    aget-object v6, v2, v9

    .line 109
    .local v6, "file":Ljava/io/File;
    invoke-static {v6}, Landroid/content/pm/PackageParser;->isApkFile(Ljava/io/File;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 110
    const-string v14, "ColorPackageManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "apk file == "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    move-object v3, v6

    .line 108
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 121
    .end local v2    # "arr$":[Ljava/io/File;
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "files":[Ljava/io/File;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .restart local v12    # "zin":Ljava/util/zip/ZipInputStream;
    :cond_5
    :try_start_2
    const-string v14, "ColorPackageManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "code path == "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v13, Ljava/util/zip/ZipInputStream;

    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v13, v14}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 124
    .end local v12    # "zin":Ljava/util/zip/ZipInputStream;
    .local v13, "zin":Ljava/util/zip/ZipInputStream;
    :goto_2
    :try_start_3
    invoke-virtual {v13}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v5

    .local v5, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v5, :cond_9

    .line 126
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 127
    .local v11, "splitName":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    array-length v14, v11

    if-ge v8, v14, :cond_7

    .line 128
    aget-object v14, v11, v8

    invoke-static {v14}, Lcom/android/server/pm/ColorPackageManagerHelper;->IsRootFile(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 129
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/ColorPackageManagerHelper;->ShowMessageToUSer(Landroid/content/Context;)V

    .line 130
    const-string v14, "ColorPackageManager"

    const-string v15, "This dangerous app!!"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    new-instance v14, Lcom/android/server/pm/PackageManagerException;

    const/4 v15, -0x2

    const-string v16, "This dangerous app, forbid it"

    invoke-direct/range {v14 .. v16}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v14
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 137
    .end local v5    # "entry":Ljava/util/zip/ZipEntry;
    .end local v8    # "i":I
    .end local v11    # "splitName":[Ljava/lang/String;
    :catch_1
    move-exception v4

    move-object v12, v13

    .line 138
    .end local v13    # "zin":Ljava/util/zip/ZipInputStream;
    .restart local v4    # "e":Ljava/io/IOException;
    .restart local v12    # "zin":Ljava/util/zip/ZipInputStream;
    :goto_4
    :try_start_4
    const-string v14, "ColorPackageManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "OppoCheckSuApp fatal error:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 140
    if-eqz v12, :cond_0

    .line 142
    :try_start_5
    const-string v14, "ColorPackageManager"

    const-string v15, "check finish!!"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {v12}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 144
    :catch_2
    move-exception v4

    .line 146
    const-string v14, "ColorPackageManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "OppoCheckSuApp fatal error:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 127
    .end local v4    # "e":Ljava/io/IOException;
    .end local v12    # "zin":Ljava/util/zip/ZipInputStream;
    .restart local v5    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v8    # "i":I
    .restart local v11    # "splitName":[Ljava/lang/String;
    .restart local v13    # "zin":Ljava/util/zip/ZipInputStream;
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 135
    :cond_7
    :try_start_6
    invoke-virtual {v13}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 140
    .end local v5    # "entry":Ljava/util/zip/ZipEntry;
    .end local v8    # "i":I
    .end local v11    # "splitName":[Ljava/lang/String;
    :catchall_0
    move-exception v14

    move-object v12, v13

    .end local v13    # "zin":Ljava/util/zip/ZipInputStream;
    .restart local v12    # "zin":Ljava/util/zip/ZipInputStream;
    :goto_5
    if-eqz v12, :cond_8

    .line 142
    :try_start_7
    const-string v15, "ColorPackageManager"

    const-string v16, "check finish!!"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {v12}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 147
    :cond_8
    :goto_6
    throw v14

    .line 140
    .end local v12    # "zin":Ljava/util/zip/ZipInputStream;
    .restart local v5    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v13    # "zin":Ljava/util/zip/ZipInputStream;
    :cond_9
    if-eqz v13, :cond_a

    .line 142
    :try_start_8
    const-string v14, "ColorPackageManager"

    const-string v15, "check finish!!"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {v13}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    move-object v12, v13

    .line 147
    .end local v13    # "zin":Ljava/util/zip/ZipInputStream;
    .restart local v12    # "zin":Ljava/util/zip/ZipInputStream;
    goto/16 :goto_0

    .line 144
    .end local v12    # "zin":Ljava/util/zip/ZipInputStream;
    .restart local v13    # "zin":Ljava/util/zip/ZipInputStream;
    :catch_3
    move-exception v4

    .line 146
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v14, "ColorPackageManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "OppoCheckSuApp fatal error:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v12, v13

    .line 147
    .end local v13    # "zin":Ljava/util/zip/ZipInputStream;
    .restart local v12    # "zin":Ljava/util/zip/ZipInputStream;
    goto/16 :goto_0

    .line 144
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "entry":Ljava/util/zip/ZipEntry;
    :catch_4
    move-exception v4

    .line 146
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v15, "ColorPackageManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "OppoCheckSuApp fatal error:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 140
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v14

    goto :goto_5

    .line 137
    :catch_5
    move-exception v4

    goto/16 :goto_4

    .end local v12    # "zin":Ljava/util/zip/ZipInputStream;
    .restart local v5    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v13    # "zin":Ljava/util/zip/ZipInputStream;
    :cond_a
    move-object v12, v13

    .end local v13    # "zin":Ljava/util/zip/ZipInputStream;
    .restart local v12    # "zin":Ljava/util/zip/ZipInputStream;
    goto/16 :goto_0
.end method

.method public static ReadEncryptFile()I
    .locals 16

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x1

    .line 53
    const/4 v3, 0x0

    .line 55
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_0
    const-string v13, "ColorPackageManager"

    const-string v14, "ReadEncryptFile!!!"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v9, Ljava/io/File;

    const-string v13, "/system/etc/security/pl.fs"

    invoke-direct {v9, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    .local v9, "path":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v13

    if-nez v13, :cond_1

    .line 85
    if-eqz v3, :cond_0

    .line 86
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 93
    .end local v9    # "path":Ljava/io/File;
    :cond_0
    :goto_0
    return v11

    .line 88
    .restart local v9    # "path":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 90
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 60
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_2
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v14

    long-to-int v7, v14

    .line 61
    .local v7, "len":I
    new-array v1, v7, [B

    .line 62
    .local v1, "buf":[B
    const-string v13, "a"

    const-string v14, "UTF-8"

    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 64
    .local v0, "b":[B
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_3
    invoke-virtual {v4, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 66
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v7, :cond_2

    .line 67
    aget-byte v13, v1, v5

    const/4 v14, 0x0

    aget-byte v14, v0, v14

    xor-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v1, v5

    .line 68
    aget-byte v13, v1, v5

    xor-int/lit8 v13, v13, -0x1

    int-to-byte v13, v13

    aput-byte v13, v1, v5

    .line 66
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 70
    :cond_2
    new-instance v10, Ljava/lang/String;

    const/4 v13, 0x0

    invoke-direct {v10, v1, v13, v7}, Ljava/lang/String;-><init>([BII)V

    .line 71
    .local v10, "pkg":Ljava/lang/String;
    const-string v13, "\n"

    invoke-virtual {v10, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 72
    .local v8, "line":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    array-length v13, v8

    if-ge v6, v13, :cond_3

    .line 74
    sget-object v13, Lcom/android/server/pm/ColorPackageManagerHelper;->mOppoApkList:Ljava/util/ArrayList;

    aget-object v14, v8, v6

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 72
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 85
    :cond_3
    if-eqz v4, :cond_4

    .line 86
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    :goto_3
    move v11, v12

    .line 93
    goto :goto_0

    .line 88
    :catch_1
    move-exception v2

    .line 90
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 77
    .end local v0    # "b":[B
    .end local v1    # "buf":[B
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "i":I
    .end local v6    # "j":I
    .end local v7    # "len":I
    .end local v8    # "line":[Ljava/lang/String;
    .end local v9    # "path":Ljava/io/File;
    .end local v10    # "pkg":Ljava/lang/String;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v2

    .line 78
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 85
    if-eqz v3, :cond_0

    .line 86
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 88
    :catch_3
    move-exception v2

    .line 90
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 80
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 81
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_7
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 85
    if-eqz v3, :cond_0

    .line 86
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_0

    .line 88
    :catch_5
    move-exception v2

    .line 90
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 84
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 85
    :goto_6
    if-eqz v3, :cond_5

    .line 86
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 91
    :cond_5
    :goto_7
    throw v11

    .line 88
    :catch_6
    move-exception v2

    .line 90
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 84
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "b":[B
    .restart local v1    # "buf":[B
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "len":I
    .restart local v9    # "path":Ljava/io/File;
    :catchall_1
    move-exception v11

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_6

    .line 80
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_7
    move-exception v2

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 77
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_8
    move-exception v2

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_4
.end method

.method private static ShowMessageToUSer(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 154
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oppo.android.intent.action.FORBID_INSTALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, "it":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 156
    return-void
.end method
