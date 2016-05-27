.class public Loppo/content/pm/OppoExtraPackageManager;
.super Ljava/lang/Object;
.source "OppoExtraPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loppo/content/pm/OppoExtraPackageManager$WhiteListEntity;
    }
.end annotation


# static fields
.field static final ACCOUNT_WHITE_LIST:[Loppo/content/pm/OppoExtraPackageManager$WhiteListEntity;

.field static final COLOROS_PLATFORM_SIGNATURES:[Landroid/content/pm/Signature;

.field private static final COLOROS_SYSTEM_PACKAGES:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final GOOGLE_SIGNATURES:[Landroid/content/pm/Signature;

.field private static final TRUSTED_PACKAGES:[Ljava/lang/String;

.field static final TRUSTED_SIGNATURES:[[Landroid/content/pm/Signature;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    new-array v0, v3, [Loppo/content/pm/OppoExtraPackageManager$WhiteListEntity;

    sput-object v0, Loppo/content/pm/OppoExtraPackageManager;->ACCOUNT_WHITE_LIST:[Loppo/content/pm/OppoExtraPackageManager$WhiteListEntity;

    .line 32
    new-array v0, v4, [Landroid/content/pm/Signature;

    new-instance v1, Landroid/content/pm/Signature;

    const-string v2, "308204433082032ba003020102020900c2e08746644a308d300d06092a864886f70d01010405003074310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e205669657731143012060355040a130b476f6f676c6520496e632e3110300e060355040b1307416e64726f69643110300e06035504031307416e64726f6964301e170d3038303832313233313333345a170d3336303130373233313333345a3074310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e205669657731143012060355040a130b476f6f676c6520496e632e3110300e060355040b1307416e64726f69643110300e06035504031307416e64726f696430820120300d06092a864886f70d01010105000382010d00308201080282010100ab562e00d83ba208ae0a966f124e29da11f2ab56d08f58e2cca91303e9b754d372f640a71b1dcb130967624e4656a7776a92193db2e5bfb724a91e77188b0e6a47a43b33d9609b77183145ccdf7b2e586674c9e1565b1f4c6a5955bff251a63dabf9c55c27222252e875e4f8154a645f897168c0b1bfc612eabf785769bb34aa7984dc7e2ea2764cae8307d8c17154d7ee5f64a51a44a602c249054157dc02cd5f5c0e55fbef8519fbe327f0b1511692c5a06f19d18385f5c4dbc2d6b93f68cc2979c70e18ab93866b3bd5db8999552a0e3b4c99df58fb918bedc182ba35e003c1b4b10dd244a8ee24fffd333872ab5221985edab0fc0d0b145b6aa192858e79020103a381d93081d6301d0603551d0e04160414c77d8cc2211756259a7fd382df6be398e4d786a53081a60603551d2304819e30819b8014c77d8cc2211756259a7fd382df6be398e4d786a5a178a4763074310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e205669657731143012060355040a130b476f6f676c6520496e632e3110300e060355040b1307416e64726f69643110300e06035504031307416e64726f6964820900c2e08746644a308d300c0603551d13040530030101ff300d06092a864886f70d010104050003820101006dd252ceef85302c360aaace939bcff2cca904bb5d7a1661f8ae46b2994204d0ff4a68c7ed1a531ec4595a623ce60763b167297a7ae35712c407f208f0cb109429124d7b106219c084ca3eb3f9ad5fb871ef92269a8be28bf16d44c8d9a08e6cb2f005bb3fe2cb96447e868e731076ad45b33f6009ea19c161e62641aa99271dfd5228c5c587875ddb7f452758d661f6cc0cccb7352e424cc4365c523532f7325137593c4ae341f4db41edda0d0b1071a7c440f0fe9ea01cb627ca674369d084bd2fd911ff06cdbf2cfa10dc0f893ae35762919048c7efc64c7144178342f70581c9de573af55b390dd7fdb9418631895d5f759f30112687ff621410c069308a"

    invoke-direct {v1, v2}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v3

    sput-object v0, Loppo/content/pm/OppoExtraPackageManager;->GOOGLE_SIGNATURES:[Landroid/content/pm/Signature;

    .line 35
    new-array v0, v4, [Landroid/content/pm/Signature;

    new-instance v1, Landroid/content/pm/Signature;

    const-string v2, "308204723082035aa003020102020900c2bd67d330dfee91300d06092a864886f70d0101050500308182310b300906035504061302434e3111300f06035504081308446f6e674775616e3110300e060355040713074368616e67416e310d300b060355040a13044f50504f310c300a060355040b1303504c46311330110603550403130a536d61727450686f6e65311c301a06092a864886f70d010901160d6f70706f406f70706f2e636f6d301e170d3132303731323033333333305a170d3339313132383033333333305a308182310b300906035504061302434e3111300f06035504081308446f6e674775616e3110300e060355040713074368616e67416e310d300b060355040a13044f50504f310c300a060355040b1303504c46311330110603550403130a536d61727450686f6e65311c301a06092a864886f70d010901160d6f70706f406f70706f2e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100d597c50ca26cc14de7c2f8c0a9cf4f588be19ca1275c12a06c656d6f5ab8b35ab44c7e08681baf1d9c211d8664bff6b98b1d07f9bb4cf9fb6fd440a4868762826f625d5cdf64637349293cbffbf2477d066edeee2af77e0a3acb9cc5dc1e4ed2d3d8da20af23525172ebf1eaf00258b3d0a9e1e0d0486357a4c0c7fa172868587904d5ec107806bd64de85533cd2d1fd90f66653cdc882fd8138b20eb36de44870f8d420020aabc25e40f9067f972f01e10159d5e2252fa07549c7e9a2a6df075995620d0490a7957b3db130ff5f1e59c67204fd992b8aa69b25d3c0870bb01a3f776c6414b0a8c3f6389fe224c574a5e18bb33f9b5c95d01df6e85e2758c8a1020103a381ea3081e7301d0603551d0e041604149b83d4d9d99fa1c977225539916c79a56e5df3563081b70603551d230481af3081ac80149b83d4d9d99fa1c977225539916c79a56e5df356a18188a48185308182310b300906035504061302434e3111300f06035504081308446f6e674775616e3110300e060355040713074368616e67416e310d300b060355040a13044f50504f310c300a060355040b1303504c46311330110603550403130a536d61727450686f6e65311c301a06092a864886f70d010901160d6f70706f406f70706f2e636f6d820900c2bd67d330dfee91300c0603551d13040530030101ff300d06092a864886f70d0101050500038201010045f47c8e31c066192c00a18b95cfc48d565b6b442c461722f8804a06a9a1507302b82ab496c3c3656a6ce9ab4c0b746480999ca9da0f9f6e3febf38e116ef23ae3dbf6d215ee737da64eed4b285e9ae991e268594e832df181cd5fb82c5ae9c35795de4fc6a9797ff87c2ed7d9459c0f7ee1bbb1f349e4f50ca97a6b32380c46c618b4e271eba70f15fb843f4c5b09015c7cf117a475cccce69c9f5fa168a9a568d3aaf9bcfa420bf59a7e8b71df8fd56b612a0178c18256c48b46a8f7206776a5b6d96e3cdba3116733a39b8927906179990b3b38d07989a06f3d57913a920413ccbe2446ab9ff9e55b0a57981d373d22aac2790243e7bfc2e40ba2204920d6"

    invoke-direct {v1, v2}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v3

    sput-object v0, Loppo/content/pm/OppoExtraPackageManager;->COLOROS_PLATFORM_SIGNATURES:[Landroid/content/pm/Signature;

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Loppo/content/pm/OppoExtraPackageManager;->COLOROS_SYSTEM_PACKAGES:Ljava/util/HashSet;

    .line 39
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.google.android.googlequicksearchbox"

    aput-object v1, v0, v3

    const-string v1, "com.google.android.syncadapters.calendar"

    aput-object v1, v0, v4

    const-string v1, "com.google.android.syncadapters.contacts"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "com.google.android.talk"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.google.android.tts"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.google.android.voicesearch"

    aput-object v2, v0, v1

    sput-object v0, Loppo/content/pm/OppoExtraPackageManager;->TRUSTED_PACKAGES:[Ljava/lang/String;

    .line 42
    new-array v0, v5, [[Landroid/content/pm/Signature;

    sget-object v1, Loppo/content/pm/OppoExtraPackageManager;->GOOGLE_SIGNATURES:[Landroid/content/pm/Signature;

    aput-object v1, v0, v3

    sget-object v1, Loppo/content/pm/OppoExtraPackageManager;->COLOROS_PLATFORM_SIGNATURES:[Landroid/content/pm/Signature;

    aput-object v1, v0, v4

    sput-object v0, Loppo/content/pm/OppoExtraPackageManager;->TRUSTED_SIGNATURES:[[Landroid/content/pm/Signature;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method static compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    .locals 7
    .param p0, "s1"    # [Landroid/content/pm/Signature;
    .param p1, "s2"    # [Landroid/content/pm/Signature;

    .prologue
    .line 56
    if-nez p0, :cond_1

    .line 57
    if-nez p1, :cond_0

    const/4 v6, 0x1

    .line 76
    :goto_0
    return v6

    .line 57
    :cond_0
    const/4 v6, -0x1

    goto :goto_0

    .line 61
    :cond_1
    if-nez p1, :cond_2

    .line 62
    const/4 v6, -0x2

    goto :goto_0

    .line 64
    :cond_2
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 65
    .local v3, "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    move-object v0, p0

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v5, v0, v1

    .line 66
    .local v5, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 68
    .end local v5    # "sig":Landroid/content/pm/Signature;
    :cond_3
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 69
    .local v4, "set2":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_4

    aget-object v5, v0, v1

    .line 70
    .restart local v5    # "sig":Landroid/content/pm/Signature;
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 73
    .end local v5    # "sig":Landroid/content/pm/Signature;
    :cond_4
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 74
    const/4 v6, 0x0

    goto :goto_0

    .line 76
    :cond_5
    const/4 v6, -0x3

    goto :goto_0
.end method

.method public static isColorOsSystemApp(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 1
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 80
    sget-object v0, Loppo/content/pm/OppoExtraPackageManager;->COLOROS_SYSTEM_PACKAGES:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isTrustedAccountSignature(Landroid/content/pm/PackageManager;Ljava/lang/String;II)Z
    .locals 9
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "serviceUid"    # I
    .param p3, "callingUid"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 99
    const/16 v7, 0x3e9

    if-ne p3, v7, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v5

    .line 103
    :cond_1
    const-string v7, "com.oppo"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 104
    invoke-virtual {p0, p3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "callerPkg":Ljava/lang/String;
    const/16 v7, 0x40

    :try_start_0
    invoke-virtual {p0, v0, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 112
    .local v4, "info":Landroid/content/pm/PackageInfo;
    :goto_1
    if-eqz v4, :cond_4

    .line 113
    sget-object v7, Loppo/content/pm/OppoExtraPackageManager;->COLOROS_PLATFORM_SIGNATURES:[Landroid/content/pm/Signature;

    iget-object v8, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v7, v8}, Loppo/content/pm/OppoExtraPackageManager;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v7

    if-eqz v7, :cond_0

    .line 116
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    sget-object v7, Loppo/content/pm/OppoExtraPackageManager;->ACCOUNT_WHITE_LIST:[Loppo/content/pm/OppoExtraPackageManager$WhiteListEntity;

    array-length v7, v7

    if-lt v3, v7, :cond_4

    .line 117
    sget-object v7, Loppo/content/pm/OppoExtraPackageManager;->ACCOUNT_WHITE_LIST:[Loppo/content/pm/OppoExtraPackageManager$WhiteListEntity;

    aget-object v2, v7, v3

    .line 118
    .local v2, "entity":Loppo/content/pm/OppoExtraPackageManager$WhiteListEntity;
    iget-object v7, v2, Loppo/content/pm/OppoExtraPackageManager$WhiteListEntity;->pkgName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 119
    iget-object v7, v2, Loppo/content/pm/OppoExtraPackageManager$WhiteListEntity;->signatures:[Landroid/content/pm/Signature;

    iget-object v8, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v7, v8}, Loppo/content/pm/OppoExtraPackageManager;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v7

    if-eqz v7, :cond_0

    move v5, v6

    .line 122
    goto :goto_0

    .line 108
    .end local v2    # "entity":Loppo/content/pm/OppoExtraPackageManager$WhiteListEntity;
    .end local v3    # "i":I
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v4, 0x0

    .restart local v4    # "info":Landroid/content/pm/PackageInfo;
    goto :goto_1

    .line 116
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "entity":Loppo/content/pm/OppoExtraPackageManager$WhiteListEntity;
    .restart local v3    # "i":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 129
    .end local v0    # "callerPkg":Ljava/lang/String;
    .end local v2    # "entity":Loppo/content/pm/OppoExtraPackageManager$WhiteListEntity;
    .end local v3    # "i":I
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    :cond_3
    invoke-virtual {p0, p2, p3}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v7

    if-eqz v7, :cond_0

    move v5, v6

    .line 132
    goto :goto_0

    .restart local v0    # "callerPkg":Ljava/lang/String;
    .restart local v4    # "info":Landroid/content/pm/PackageInfo;
    :cond_4
    move v5, v6

    .line 135
    goto :goto_0
.end method

.method public static isTrustedAppEntry(Ljava/util/jar/JarEntry;Ljava/lang/String;)Z
    .locals 2
    .param p0, "je"    # Ljava/util/jar/JarEntry;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 84
    const-string v0, "classes.dex"

    invoke-virtual {p0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Loppo/content/pm/OppoExtraPackageManager;->TRUSTED_PACKAGES:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTrustedSystemSignature([Landroid/content/pm/Signature;)Z
    .locals 3
    .param p0, "signature"    # [Landroid/content/pm/Signature;

    .prologue
    .line 88
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Loppo/content/pm/OppoExtraPackageManager;->TRUSTED_SIGNATURES:[[Landroid/content/pm/Signature;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 89
    sget-object v2, Loppo/content/pm/OppoExtraPackageManager;->TRUSTED_SIGNATURES:[[Landroid/content/pm/Signature;

    aget-object v1, v2, v0

    .line 90
    .local v1, "sig":[Landroid/content/pm/Signature;
    invoke-static {v1, p0}, Loppo/content/pm/OppoExtraPackageManager;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v2

    if-nez v2, :cond_0

    .line 91
    const/4 v2, 0x1

    .line 95
    .end local v1    # "sig":[Landroid/content/pm/Signature;
    :goto_1
    return v2

    .line 88
    .restart local v1    # "sig":[Landroid/content/pm/Signature;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    .end local v1    # "sig":[Landroid/content/pm/Signature;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
