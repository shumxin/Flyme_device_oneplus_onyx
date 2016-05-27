.class public Landroid/telephony/ColorOSTelephonyManager;
.super Ljava/lang/Object;
.source "ColorOSTelephonyManager.java"

# interfaces
.implements Landroid/telephony/IColorOSTelephony;


# static fields
.field private static final MTK_DUAL_CARD_FEATURE:Ljava/lang/String; = "mtk.gemini.support"

.field private static final QCOM_DUAL_CARD_FEATURE:Ljava/lang/String; = "oppo.qualcomm.gemini.support"

.field private static final QCOM_PLATFORM_FEATURE:Ljava/lang/String; = "oppo.hw.manufacturer.qualcomm"

.field private static final TAG:Ljava/lang/String; = "ColorOSTelephonyManager"

.field private static isMtkGeminiSupport:Z

.field private static isPlatFormType:Z

.field private static isQcomGeminiSupport:Z

.field private static sInstance:Landroid/telephony/ColorOSTelephonyManager;

.field private static vDescriptor:Ljava/lang/String;


# instance fields
.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    sput-boolean v0, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    .line 50
    sput-boolean v0, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    .line 51
    sput-boolean v0, Landroid/telephony/ColorOSTelephonyManager;->isPlatFormType:Z

    .line 52
    const/4 v0, 0x0

    sput-object v0, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    if-eqz p1, :cond_0

    .line 67
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Landroid/telephony/ColorOSTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 68
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ColorOSTelephonyManager;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    const-string v0, "ColorOSTelephonyManager context==NULL"

    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static colorCheckUsimIs4g(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    .line 1799
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->checkUsimIs4g(I)Z

    move-result v0

    return v0
.end method

.method public static coloractivateSubId(Landroid/content/Context;I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 1649
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->activateSubId(I)V

    .line 1650
    return-void
.end method

.method public static colorallDefaultsSelected(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1669
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->allDefaultsSelected()Z

    move-result v0

    return v0
.end method

.method public static colorclearDefaultsForInactiveSubIds(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1665
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->clearDefaultsForInactiveSubIds()V

    .line 1666
    return-void
.end method

.method public static colordeactivateSubId(Landroid/content/Context;I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 1645
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->deactivateSubId(I)V

    .line 1646
    return-void
.end method

.method public static colorgetActiveSubInfoCount(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1585
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v0

    return v0
.end method

.method public static colorgetActiveSubInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1575
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v0

    .line 1577
    .local v0, "recordList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    return-object v0
.end method

.method public static colorgetAllSubInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1569
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getAllSubInfoList()Ljava/util/List;

    move-result-object v0

    .line 1571
    .local v0, "recordList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    return-object v0
.end method

.method public static colorgetDefaultDataPhoneId(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1673
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    return v0
.end method

.method public static colorgetDefaultDataSubId(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1690
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    .line 1691
    .local v0, "vRet":I
    return v0
.end method

.method public static colorgetDefaultDataSubInfo(Landroid/content/Context;)Landroid/telephony/SubInfoRecord;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1678
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->colorgetDefaultDataSubscriptionInfo()Landroid/telephony/SubInfoRecord;

    move-result-object v0

    return-object v0
.end method

.method public static colorgetDefaultSmsPhoneId(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1695
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getDefaultSmsPhoneId()I

    move-result v0

    .line 1696
    .local v0, "vRet":I
    return v0
.end method

.method public static colorgetDefaultSmsSubId(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1709
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v0

    .line 1710
    .local v0, "vRet":I
    return v0
.end method

.method public static colorgetDefaultSmsSubInfo(Landroid/content/Context;)Landroid/telephony/SubInfoRecord;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1701
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->colorgetDefaultSmsSubInfo()Landroid/telephony/SubInfoRecord;

    move-result-object v0

    return-object v0
.end method

.method public static colorgetDefaultSubId(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1740
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    .line 1741
    .local v0, "vRet":I
    return v0
.end method

.method public static colorgetDefaultVoicePhoneId(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1722
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    return v0
.end method

.method public static colorgetDefaultVoiceSubId(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1735
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v0

    .line 1736
    .local v0, "vRet":I
    return v0
.end method

.method public static colorgetDefaultVoiceSubInfo(Landroid/content/Context;)Landroid/telephony/SubInfoRecord;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1727
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->colorgetDefaultVoiceSubscriptionInfo()Landroid/telephony/SubInfoRecord;

    move-result-object v0

    return-object v0
.end method

.method public static colorgetOnDemandDataSubId(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1624
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getOnDemandDataSubId()I

    move-result v2

    int-to-long v0, v2

    .line 1625
    .local v0, "vRet":J
    long-to-int v2, v0

    return v2
.end method

.method public static colorgetPhoneId(Landroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 1589
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method public static colorgetSlotId(Landroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 1620
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    return v0
.end method

.method public static colorgetSubId(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    .line 1594
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 1596
    .local v0, "subId":[I
    if-eqz v0, :cond_0

    .line 1597
    const/4 v2, 0x0

    aget v1, v0, v2

    .line 1602
    .local v1, "vRetSubId":I
    :goto_0
    return v1

    .line 1600
    .end local v1    # "vRetSubId":I
    :cond_0
    const/16 v1, -0x3e8

    .restart local v1    # "vRetSubId":I
    goto :goto_0
.end method

.method public static colorgetSubInfoForSubscriber(Landroid/content/Context;I)Landroid/telephony/SubInfoRecord;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 1607
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getSubInfoForSubscriber(I)Landroid/telephony/SubInfoRecord;

    move-result-object v0

    return-object v0
.end method

.method public static colorgetSubInfoUsingIccId(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "iccId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1611
    const/4 v0, 0x0

    return-object v0
.end method

.method public static colorgetSubInfoUsingIccIdGemini(Landroid/content/Context;Ljava/lang/String;)Landroid/telephony/SubInfoRecord;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "iccId"    # Ljava/lang/String;

    .prologue
    .line 1616
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->colorgetActiveSubscriptionInfoForIccIndex(Ljava/lang/String;)Landroid/telephony/SubInfoRecord;

    move-result-object v0

    return-object v0
.end method

.method public static colorgetSubInfoUsingSlotId(Landroid/content/Context;I)Ljava/util/List;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1563
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/SubscriptionManager;->getSubInfoUsingSlotId(I)Ljava/util/List;

    move-result-object v0

    .line 1565
    .local v0, "recordList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    return-object v0
.end method

.method public static colorgetSubState(Landroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 1641
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubState(I)I

    move-result v0

    return v0
.end method

.method public static colorisSMSPromptEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1718
    invoke-static {}, Landroid/telephony/SubscriptionManager;->isSMSPromptEnabled()Z

    move-result v0

    return v0
.end method

.method public static colorisValidPhoneId(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .prologue
    .line 1653
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    return v0
.end method

.method public static colorisValidSlotId(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    .line 1657
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v0

    return v0
.end method

.method public static colorisValidSubId(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 1661
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    return v0
.end method

.method public static colorisVoicePromptEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1633
    invoke-static {}, Landroid/telephony/SubscriptionManager;->isVoicePromptEnabled()Z

    move-result v0

    return v0
.end method

.method public static colorsetDataRoaming(Landroid/content/Context;II)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "roaming"    # I
    .param p2, "subId"    # I

    .prologue
    .line 1745
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/telephony/SubscriptionManager;->setDataRoaming(II)I

    move-result v0

    .line 1746
    .local v0, "vRet":I
    return v0
.end method

.method public static colorsetDefaultDataSubId(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 1686
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 1687
    return-void
.end method

.method public static colorsetDefaultSmsSubId(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 1705
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(I)V

    .line 1706
    return-void
.end method

.method public static colorsetDefaultVoiceSubId(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 1731
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultVoiceSubId(I)V

    .line 1732
    return-void
.end method

.method public static colorsetDisplayName(Landroid/content/Context;Ljava/lang/String;IJ)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .param p3, "nameSource"    # J

    .prologue
    .line 1581
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;IJ)I

    move-result v0

    return v0
.end method

.method public static colorsetSMSPromptEnabled(Landroid/content/Context;Z)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    .line 1714
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->setSMSPromptEnabled(Z)V

    .line 1715
    return-void
.end method

.method public static colorsetSubState(Landroid/content/Context;II)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "subState"    # I

    .prologue
    .line 1637
    invoke-static {p1, p2}, Landroid/telephony/SubscriptionManager;->setSubState(II)I

    move-result v0

    return v0
.end method

.method public static colorsetVoicePromptEnabled(Landroid/content/Context;Z)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    .line 1629
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->setVoicePromptEnabled(Z)V

    .line 1630
    return-void
.end method

.method public static colortemporarySwitchDataSubId(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 1682
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->temporarySwitchDataSubId(I)V

    .line 1683
    return-void
.end method

.method public static getDefault(Landroid/content/Context;)Landroid/telephony/ColorOSTelephonyManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-static {p0}, Landroid/telephony/ColorOSTelephonyManager;->initRemoteService(Landroid/content/Context;)V

    .line 58
    new-instance v0, Landroid/telephony/ColorOSTelephonyManager;

    invoke-direct {v0, p0}, Landroid/telephony/ColorOSTelephonyManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/telephony/ColorOSTelephonyManager;->sInstance:Landroid/telephony/ColorOSTelephonyManager;

    .line 59
    sget-object v0, Landroid/telephony/ColorOSTelephonyManager;->sInstance:Landroid/telephony/ColorOSTelephonyManager;

    return-object v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 583
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method public static getMTKsupportGeminiFlag(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method private static getPlatFormType(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method private getRemoteServiceBinder()Landroid/os/IBinder;
    .locals 4

    .prologue
    .line 903
    const/4 v1, 0x1

    .line 904
    .local v1, "vDebugType":I
    const-string/jumbo v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 906
    .local v0, "mRemote":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 907
    const-string v2, "***********************************"

    invoke-static {v2}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 908
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ColorOSTelephonyManager is NULL !!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 909
    const-string v2, "***********************************"

    invoke-static {v2}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 910
    const/4 v0, 0x0

    .line 913
    .end local v0    # "mRemote":Landroid/os/IBinder;
    :cond_0
    return-object v0
.end method

.method private getTelecomService()Lcom/android/internal/telecom/ITelecomService;
    .locals 1

    .prologue
    .line 588
    const-string/jumbo v0, "telecom"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telecom/ITelecomService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    return-object v0
.end method

.method private static initRemoteService(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-static {p0}, Landroid/telephony/ColorOSTelephonyManager;->innerGetQcomDualCard(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    .line 77
    invoke-static {p0}, Landroid/telephony/ColorOSTelephonyManager;->getMTKsupportGeminiFlag(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    .line 78
    invoke-static {p0}, Landroid/telephony/ColorOSTelephonyManager;->getPlatFormType(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Landroid/telephony/ColorOSTelephonyManager;->isPlatFormType:Z

    .line 79
    const-string v0, "com.android.internal.telephony.ITelephony"

    sput-object v0, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public static innerGetQcomDualCard(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    const/4 v0, 0x1

    .line 85
    .local v0, "vRet":Z
    if-eqz p0, :cond_0

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "oppo.qualcomm.gemini.support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 88
    :cond_0
    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1849
    const-string v0, "ColorOSTelephonyManager"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    return-void
.end method

.method public static setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1794
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/SubscriptionManager;->setDefaultApplication(Ljava/lang/String;)V

    .line 1795
    return-void
.end method


# virtual methods
.method public answerRingingCallGemini(I)V
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x1

    .line 616
    :try_start_0
    sget-boolean v0, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-ne v0, v1, :cond_1

    .line 617
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telecom/ITelecomService;->acceptRingingCall()V

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 619
    :cond_1
    sget-boolean v0, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eq v0, v1, :cond_0

    .line 622
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telecom/ITelecomService;->acceptRingingCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 624
    :catch_0
    move-exception v0

    goto :goto_0

    .line 625
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public colorChangeIccLockPassword(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "subscription"    # I
    .param p2, "oldPassword"    # Ljava/lang/String;
    .param p3, "newPassword"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1135
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1136
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1137
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1141
    .local v3, "mRemote":Landroid/os/IBinder;
    :try_start_0
    sget-object v4, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1142
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1143
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1144
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1146
    if-eqz p4, :cond_0

    .line 1147
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1148
    const/4 v4, 0x0

    invoke-virtual {p4, v0, v4}, Landroid/os/Message;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1154
    :goto_0
    const/16 v4, 0x271c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1155
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1161
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1164
    :goto_1
    return-void

    .line 1151
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1157
    :catch_0
    move-exception v2

    .line 1158
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "colorChangeIccLockPassword ERROR !!! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1161
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    .line 1161
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public colorCheckUsimIs4G(I)Z
    .locals 7
    .param p1, "subscription"    # I

    .prologue
    const/4 v2, 0x0

    .line 1167
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1168
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1170
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1173
    .local v4, "mRemote":Landroid/os/IBinder;
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1174
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1175
    const/16 v5, 0x271d

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1176
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1177
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    .line 1184
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1187
    :goto_0
    return v2

    .line 1179
    .end local v2    # "_result":Z
    :catch_0
    move-exception v3

    .line 1180
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorCheckUsimIs4G ERROR !!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1181
    const/4 v2, 0x0

    .line 1184
    .restart local v2    # "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1184
    .end local v2    # "_result":Z
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetDataSubscription()I
    .locals 2

    .prologue
    .line 861
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    .line 862
    .local v0, "vSUBID":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v1

    .line 864
    .local v1, "vSlotID":I
    return v1
.end method

.method public colorGetDefaultDataSubscription()I
    .locals 1

    .prologue
    .line 1818
    const-string v0, "colorGetDefaultDataSubscription ERROR"

    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 1819
    const/4 v0, -0x1

    return v0
.end method

.method public colorGetDefaultSubscription()I
    .locals 1

    .prologue
    .line 856
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    .line 857
    .local v0, "vRet":I
    return v0
.end method

.method public colorGetIccCardTypeGemini(I)Ljava/lang/String;
    .locals 7
    .param p1, "subscription"    # I

    .prologue
    .line 1277
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1278
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1280
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1282
    .local v4, "mRemote":Landroid/os/IBinder;
    if-nez v4, :cond_0

    .line 1283
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1284
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1285
    const/4 v2, 0x0

    .line 1303
    :goto_0
    return-object v2

    .line 1289
    :cond_0
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1290
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1291
    const/16 v5, 0x2736

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1292
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1293
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1300
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1301
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1295
    .end local v2    # "_result":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1296
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorSetPrioritySubscription ERROR !!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1297
    const/4 v2, 0x0

    .line 1300
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1301
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1300
    .end local v2    # "_result":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1301
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetIccCardTypeGeminiGlobal(I)Ljava/lang/String;
    .locals 7
    .param p1, "subscription"    # I

    .prologue
    .line 1307
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1308
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1310
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1312
    .local v4, "mRemote":Landroid/os/IBinder;
    if-nez v4, :cond_0

    .line 1313
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1315
    const/4 v2, 0x0

    .line 1333
    :goto_0
    return-object v2

    .line 1319
    :cond_0
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1320
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1321
    const/16 v5, 0x2738

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1322
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1323
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1330
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1325
    .end local v2    # "_result":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1326
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorGetIccCardTypeGeminiGlobal ERROR !!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1327
    const/4 v2, 0x0

    .line 1330
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1330
    .end local v2    # "_result":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetIccLockEnabled(I)Z
    .locals 7
    .param p1, "subscription"    # I

    .prologue
    const/4 v2, 0x0

    .line 1080
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1081
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1083
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1087
    .local v4, "mRemote":Landroid/os/IBinder;
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1088
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1089
    const/16 v5, 0x271a

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1090
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1091
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    .line 1098
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1099
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1101
    :goto_0
    return v2

    .line 1093
    .end local v2    # "_result":Z
    :catch_0
    move-exception v3

    .line 1094
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorGetIccLockEnabled ERROR !!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1095
    const/4 v2, 0x0

    .line 1098
    .restart local v2    # "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1099
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1098
    .end local v2    # "_result":Z
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1099
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetIccPin1RetryCount(I)I
    .locals 7
    .param p1, "subscription"    # I

    .prologue
    .line 1191
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1192
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1194
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1198
    .local v4, "mRemote":Landroid/os/IBinder;
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1199
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1200
    const/16 v5, 0x271e

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1201
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1202
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1209
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1213
    :goto_0
    return v2

    .line 1204
    .end local v2    # "_result":I
    :catch_0
    move-exception v3

    .line 1205
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorGetIccPin1RetryCount ERROR !!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1206
    const/4 v2, -0x1

    .line 1209
    .restart local v2    # "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1209
    .end local v2    # "_result":I
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetInterfaceReserve3(I)I
    .locals 7
    .param p1, "subscription"    # I

    .prologue
    .line 1429
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1430
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1432
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1435
    .local v4, "mRemote":Landroid/os/IBinder;
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1436
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1437
    const/16 v5, 0x273d

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1438
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1439
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1446
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1449
    :goto_0
    return v2

    .line 1441
    .end local v2    # "_result":I
    :catch_0
    move-exception v3

    .line 1442
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorGetInterfaceReserve3 ERROR !!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1443
    const/4 v2, -0x1

    .line 1446
    .restart local v2    # "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1446
    .end local v2    # "_result":I
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetMeid(I)Ljava/lang/String;
    .locals 7
    .param p1, "subscription"    # I

    .prologue
    .line 1454
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1455
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1457
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1459
    .local v4, "mRemote":Landroid/os/IBinder;
    if-nez v4, :cond_0

    .line 1460
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1461
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1462
    const/4 v2, 0x0

    .line 1480
    :goto_0
    return-object v2

    .line 1466
    :cond_0
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1467
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1468
    const/16 v5, 0x2740

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1469
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1470
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1477
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1478
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1472
    .end local v2    # "_result":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1473
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorGetMeid ERROR !!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1474
    const/4 v2, 0x0

    .line 1477
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1478
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1477
    .end local v2    # "_result":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1478
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetPreferredNetworkType(I)I
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    .line 972
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getPreferredNetworkType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 978
    :goto_0
    return v1

    .line 973
    :catch_0
    move-exception v0

    .line 974
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "ColorOSTelephonyManager"

    const-string v2, "getPreferredNetworkType RemoteException"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 978
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, -0x1

    goto :goto_0

    .line 975
    :catch_1
    move-exception v0

    .line 976
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v1, "ColorOSTelephonyManager"

    const-string v2, "getPreferredNetworkType NPE"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public colorGetPrioritySubscription()I
    .locals 1

    .prologue
    .line 1828
    const-string v0, "colorGetPrioritySubscription ERROR"

    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 1829
    const/4 v0, -0x1

    return v0
.end method

.method public colorGetQcomActiveSubscriptionsCount()I
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Landroid/telephony/ColorOSTelephonyManager;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v0

    return v0
.end method

.method public colorGetQcomImeiGemini(I)Ljava/lang/String;
    .locals 7
    .param p1, "subscription"    # I

    .prologue
    .line 1337
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1338
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1340
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1342
    .local v4, "mRemote":Landroid/os/IBinder;
    if-nez v4, :cond_0

    .line 1343
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1345
    const/4 v2, 0x0

    .line 1363
    :goto_0
    return-object v2

    .line 1349
    :cond_0
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1350
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1351
    const/16 v5, 0x2739

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1352
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1353
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1360
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1361
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1355
    .end local v2    # "_result":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1356
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorGetQcomImeiGemini ERROR !!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1357
    const/4 v2, 0x0

    .line 1360
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1361
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1360
    .end local v2    # "_result":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1361
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetQcomLTECDMAImei(I)[Ljava/lang/String;
    .locals 7
    .param p1, "subscription"    # I

    .prologue
    .line 1367
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1368
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1370
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1372
    .local v4, "mRemote":Landroid/os/IBinder;
    if-nez v4, :cond_0

    .line 1373
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1375
    const/4 v2, 0x0

    .line 1393
    :goto_0
    return-object v2

    .line 1379
    :cond_0
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1380
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1381
    const/16 v5, 0x273a

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1382
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1383
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1390
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1391
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1385
    .end local v2    # "_result":[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1386
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorGetQcomLTECDMAImei ERROR !!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1387
    const/4 v2, 0x0

    .line 1390
    .restart local v2    # "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1391
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1390
    .end local v2    # "_result":[Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1391
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetSMSSubscription()I
    .locals 1

    .prologue
    .line 1823
    const-string v0, "colorGetSMSSubscription ERROR"

    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 1824
    const/4 v0, -0x1

    return v0
.end method

.method public colorGetScAddressGemini(II)Ljava/lang/String;
    .locals 7
    .param p1, "subscription"    # I
    .param p2, "slotId"    # I

    .prologue
    .line 1217
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1218
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1220
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1222
    .local v4, "mRemote":Landroid/os/IBinder;
    if-nez v4, :cond_0

    .line 1223
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1225
    const/4 v2, 0x0

    .line 1245
    :goto_0
    return-object v2

    .line 1230
    :cond_0
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1231
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1232
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1233
    const/16 v5, 0x271f

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1234
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1235
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1242
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1243
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1237
    .end local v2    # "_result":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1238
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorGetScAddressGemini ERROR !!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1239
    const/4 v2, 0x0

    .line 1242
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1243
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1242
    .end local v2    # "_result":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1243
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetSimIndicatorState(I)I
    .locals 7
    .param p1, "subscription"    # I

    .prologue
    const/4 v2, 0x0

    .line 917
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 918
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 920
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 924
    .local v4, "mRemote":Landroid/os/IBinder;
    sget-boolean v5, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-nez v5, :cond_0

    .line 944
    :goto_0
    return v2

    .line 930
    :cond_0
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 931
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 932
    const/16 v5, 0x2715

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 933
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 934
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 941
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 942
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 936
    .end local v2    # "_result":I
    :catch_0
    move-exception v3

    .line 937
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorGetSimIndicatorState ERROR !!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 938
    const/4 v2, -0x1

    .line 941
    .restart local v2    # "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 942
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 941
    .end local v2    # "_result":I
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 942
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorGetVoiceSubscription()I
    .locals 1

    .prologue
    .line 1813
    const-string v0, "colorGetVoiceSubscription ERROR"

    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 1814
    const/4 v0, -0x1

    return v0
.end method

.method public colorISsingleOrDual()Z
    .locals 3

    .prologue
    .line 875
    const/4 v1, 0x0

    .line 876
    .local v1, "vRet":Z
    sget-boolean v0, Landroid/telephony/ColorOSTelephonyManager;->isPlatFormType:Z

    .line 877
    .local v0, "isQcomPlant":Z
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 878
    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    .line 882
    :cond_0
    return v1
.end method

.method public colorIs3GButtonEnable(I)Z
    .locals 7
    .param p1, "subscription"    # I

    .prologue
    const/4 v2, 0x0

    .line 1025
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1026
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1028
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1031
    .local v4, "mRemote":Landroid/os/IBinder;
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1032
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1033
    const/16 v5, 0x2718

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1034
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1035
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    .line 1042
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1043
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1045
    :goto_0
    return v2

    .line 1037
    .end local v2    # "_result":Z
    :catch_0
    move-exception v3

    .line 1038
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorIs3GButtonEnable ERROR !!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1039
    const/4 v2, 0x0

    .line 1042
    .restart local v2    # "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1043
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1042
    .end local v2    # "_result":Z
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1043
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorIsDataPossibleForSubscription(JLjava/lang/String;)Z
    .locals 3
    .param p1, "subId"    # J
    .param p3, "apnType"    # Ljava/lang/String;

    .prologue
    .line 887
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    long-to-int v2, p1

    invoke-interface {v1, v2, p3}, Lcom/android/internal/telephony/ITelephony;->isDataPossibleForSubscription(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 891
    :goto_0
    return v1

    .line 888
    :catch_0
    move-exception v0

    .line 889
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ColorOSTelephonyManager"

    const-string v2, "Error calling ITelephony#isDataPossibleForSubscription"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 891
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public colorIsQcomSubActive(I)Z
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    .line 827
    const/4 v1, 0x0

    .line 840
    .local v1, "vRet":Z
    invoke-virtual {p0, p1}, Landroid/telephony/ColorOSTelephonyManager;->getSimStateGemini(I)I

    move-result v0

    .line 841
    .local v0, "vCardState":I
    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 842
    const/4 v1, 0x1

    .line 848
    :goto_0
    return v1

    .line 845
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public colorIsWhiteSIMCard(I)Z
    .locals 7
    .param p1, "subscription"    # I

    .prologue
    const/4 v2, 0x0

    .line 1397
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1398
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1400
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1402
    .local v4, "mRemote":Landroid/os/IBinder;
    if-nez v4, :cond_0

    .line 1403
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1404
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1423
    :goto_0
    return v2

    .line 1409
    :cond_0
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1410
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1411
    const/16 v5, 0x273f

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1412
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1413
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    .line 1420
    .local v2, "_result":Z
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1415
    .end local v2    # "_result":Z
    :catch_0
    move-exception v3

    .line 1416
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorIsWhiteSIMCard ERROR !!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1417
    const/4 v2, 0x0

    .line 1420
    .restart local v2    # "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1420
    .end local v2    # "_result":Z
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorSetDataSubscription(I)V
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 868
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 869
    .local v0, "subId":[I
    if-eqz v0, :cond_0

    .line 870
    iget-object v1, p0, Landroid/telephony/ColorOSTelephonyManager;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 872
    :cond_0
    return-void
.end method

.method public colorSetDefaultDataSubscription(I)V
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 1837
    const-string v0, "colorSetDefaultDataSubscription ERROR"

    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 1838
    return-void
.end method

.method public colorSetDefaultSubscription(I)V
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 1809
    const-string v0, "colorSetDefaultSubscription ERROR"

    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 1810
    return-void
.end method

.method public colorSetIccLockEnabled(IZLjava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "subscription"    # I
    .param p2, "enabled"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1105
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1106
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1107
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1110
    .local v3, "mRemote":Landroid/os/IBinder;
    :try_start_0
    sget-object v6, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1111
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1112
    if-eqz p2, :cond_0

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1113
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1115
    if-eqz p4, :cond_1

    .line 1116
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1117
    const/4 v4, 0x0

    invoke-virtual {p4, v0, v4}, Landroid/os/Message;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1122
    :goto_1
    const/16 v4, 0x271b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1123
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1129
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1132
    :goto_2
    return-void

    :cond_0
    move v4, v5

    .line 1112
    goto :goto_0

    .line 1120
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1125
    :catch_0
    move-exception v2

    .line 1126
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "colorSetIccLockEnabled ERROR !!! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1129
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    .line 1129
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public colorSetLine1Number(ILjava/lang/String;)Z
    .locals 7
    .param p1, "subscription"    # I
    .param p2, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1049
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1050
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1052
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1054
    .local v4, "mRemote":Landroid/os/IBinder;
    if-nez v4, :cond_0

    .line 1055
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1056
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1076
    :goto_0
    return v2

    .line 1061
    :cond_0
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1062
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1063
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1064
    const/16 v5, 0x2719

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1065
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1066
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    .line 1073
    .local v2, "_result":Z
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1074
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1068
    .end local v2    # "_result":Z
    :catch_0
    move-exception v3

    .line 1069
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorSetLine1Number ERROR !!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1070
    const/4 v2, 0x0

    .line 1073
    .restart local v2    # "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1074
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1073
    .end local v2    # "_result":Z
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1074
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public colorSetPreferredNetworkType(II)I
    .locals 5
    .param p1, "subscription"    # I
    .param p2, "type"    # I

    .prologue
    .line 1006
    const/4 v2, 0x0

    .line 1009
    .local v2, "vSetPreNetWorkType":Z
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p2}, Lcom/android/internal/telephony/ITelephony;->setPreferredNetworkType(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1015
    :goto_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1016
    const/4 v0, 0x0

    .line 1021
    .local v0, "_result":I
    :goto_1
    return v0

    .line 1010
    .end local v0    # "_result":I
    :catch_0
    move-exception v1

    .line 1011
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v3, "ColorOSTelephonyManager"

    const-string/jumbo v4, "setPreferredNetworkType RemoteException"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1012
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1013
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string v3, "ColorOSTelephonyManager"

    const-string/jumbo v4, "setPreferredNetworkType NPE"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1019
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    const/4 v0, -0x1

    .restart local v0    # "_result":I
    goto :goto_1
.end method

.method public colorSetPrioritySubscription(I)V
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 1845
    const-string v0, "colorSetPrioritySubscription ERROR"

    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 1846
    return-void
.end method

.method public colorSetSMSSubscription(I)V
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 1841
    const-string v0, "colorSetSMSSubscription ERROR"

    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 1842
    return-void
.end method

.method public colorSetScAddressGemini(ILjava/lang/String;I)V
    .locals 6
    .param p1, "subscription"    # I
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "simId"    # I

    .prologue
    .line 1249
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1250
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1251
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1253
    .local v3, "mRemote":Landroid/os/IBinder;
    if-nez v3, :cond_0

    .line 1254
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1274
    :goto_0
    return-void

    .line 1260
    :cond_0
    :try_start_0
    sget-object v4, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1261
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1262
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1263
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1264
    const/16 v4, 0x2720

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1265
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1271
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1267
    :catch_0
    move-exception v2

    .line 1268
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "colorSetScAddressGemini ERROR !!! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1271
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1271
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public colorSetVoiceSubscription(I)V
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 1833
    const-string v0, "colorSetVoiceSubscription ERROR"

    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 1834
    return-void
.end method

.method public colorgetPreferredDataSubscription()I
    .locals 1

    .prologue
    .line 1804
    const-string v0, "colorgetPreferredDataSubscription ERROR"

    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 1805
    const/4 v0, -0x1

    return v0
.end method

.method public endCallGemini(I)Z
    .locals 6
    .param p1, "slotID"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 592
    const/4 v2, 0x0

    .line 595
    .local v2, "vRet":Z
    :try_start_0
    sget-boolean v4, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-ne v4, v5, :cond_2

    .line 596
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 597
    .local v1, "subId":[I
    if-eqz v1, :cond_0

    .line 598
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v1, v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/ITelephony;->endCallForSubscriber(I)Z

    move-result v2

    :cond_0
    move v3, v2

    .line 610
    .end local v1    # "subId":[I
    :cond_1
    :goto_0
    return v3

    .line 601
    :cond_2
    sget-boolean v4, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eq v4, v5, :cond_1

    .line 605
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    goto :goto_0

    .line 607
    :catch_0
    move-exception v0

    .line 608
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 609
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 610
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCallStateGemini(I)I
    .locals 5
    .param p1, "slotID"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 144
    const/4 v1, 0x0

    .line 146
    .local v1, "vRet":I
    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-ne v2, v4, :cond_1

    .line 147
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 148
    .local v0, "subId":[I
    if-eqz v0, :cond_0

    .line 149
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v1

    .line 161
    .end local v0    # "subId":[I
    :cond_0
    :goto_0
    return v1

    .line 151
    :cond_1
    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eq v2, v4, :cond_0

    .line 154
    if-nez p1, :cond_0

    .line 155
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 156
    .restart local v0    # "subId":[I
    if-eqz v0, :cond_0

    .line 157
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v1

    goto :goto_0
.end method

.method public getCellLocation(I)Landroid/telephony/CellLocation;
    .locals 11
    .param p1, "slotId"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 1514
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1515
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1516
    .local v1, "_reply":Landroid/os/Parcel;
    const/4 v2, 0x0

    .line 1517
    .local v2, "_result":Landroid/os/Bundle;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1519
    .local v4, "mRemote":Landroid/os/IBinder;
    if-nez v4, :cond_1

    .line 1520
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1521
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    move-object v3, v7

    .line 1554
    :cond_0
    :goto_0
    return-object v3

    .line 1526
    :cond_1
    :try_start_0
    sget-object v8, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1527
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1528
    const/16 v8, 0x2743

    const/4 v9, 0x0

    invoke-interface {v4, v8, v0, v1, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1529
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1530
    invoke-virtual {v1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1535
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1536
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1539
    :goto_1
    const/4 v3, 0x0

    .line 1540
    .local v3, "cl":Landroid/telephony/CellLocation;
    if-eqz v2, :cond_0

    .line 1541
    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v3, v7

    .line 1542
    goto :goto_0

    .line 1532
    .end local v3    # "cl":Landroid/telephony/CellLocation;
    :catch_0
    move-exception v8

    .line 1535
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1536
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    .line 1535
    :catchall_0
    move-exception v7

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1536
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v7

    .line 1545
    .restart local v3    # "cl":Landroid/telephony/CellLocation;
    :cond_2
    invoke-virtual {p0, p1}, Landroid/telephony/ColorOSTelephonyManager;->getIccCardTypeGemini(I)Ljava/lang/String;

    move-result-object v5

    .line 1546
    .local v5, "vCardType":Ljava/lang/String;
    const-string/jumbo v8, "type"

    invoke-virtual {v2, v8, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 1547
    .local v6, "vPhoneType":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getCellLocation-->"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", vPhoneType-->"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",  slotId-->"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 1548
    invoke-static {v2, v5}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Landroid/telephony/CellLocation;

    move-result-object v3

    .line 1549
    invoke-virtual {v3}, Landroid/telephony/CellLocation;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1550
    const-string v8, "getCellLocationTT33"

    invoke-static {v8}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    move-object v3, v7

    .line 1551
    goto :goto_0
.end method

.method public getCurrentPhoneTypeGemini(I)I
    .locals 4
    .param p1, "slotID"    # I

    .prologue
    const/4 v3, 0x1

    .line 529
    const/4 v1, 0x0

    .line 531
    .local v1, "vRet":I
    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-ne v2, v3, :cond_1

    .line 532
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 533
    .local v0, "subId":[I
    if-eqz v0, :cond_0

    .line 534
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v1

    .line 543
    .end local v0    # "subId":[I
    :cond_0
    :goto_0
    return v1

    .line 536
    :cond_1
    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eq v2, v3, :cond_0

    .line 539
    if-nez p1, :cond_0

    .line 540
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v1

    goto :goto_0
.end method

.method public getDataActivityGemini(I)I
    .locals 3
    .param p1, "slotID"    # I

    .prologue
    const/4 v2, 0x1

    .line 495
    const/4 v0, 0x0

    .line 497
    .local v0, "vRet":I
    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-ne v1, v2, :cond_1

    .line 498
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataActivity()I

    move-result v0

    .line 507
    :cond_0
    :goto_0
    return v0

    .line 500
    :cond_1
    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eq v1, v2, :cond_0

    .line 503
    if-nez p1, :cond_0

    .line 504
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataActivity()I

    move-result v0

    goto :goto_0
.end method

.method public getDataEnabled(I)Z
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 1769
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1770
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getDataEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 1782
    :goto_0
    return v2

    .line 1772
    :catch_0
    move-exception v0

    .line 1773
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ColorOSTelephonyManager"

    const-string v3, "Error calling ITelephony#getDataEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1782
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1777
    :catch_1
    move-exception v1

    .line 1778
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string v2, "ColorOSTelephonyManager"

    const-string v3, "Error #getDataEnabled"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getDataNetworkTypeGemini(I)I
    .locals 4
    .param p1, "slotID"    # I

    .prologue
    const/4 v3, 0x1

    .line 547
    const/4 v1, 0x0

    .line 549
    .local v1, "vRet":I
    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-ne v2, v3, :cond_1

    .line 550
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 551
    .local v0, "subId":[I
    if-eqz v0, :cond_0

    .line 552
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v1

    .line 561
    .end local v0    # "subId":[I
    :cond_0
    :goto_0
    return v1

    .line 554
    :cond_1
    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eq v2, v3, :cond_0

    .line 557
    if-nez p1, :cond_0

    .line 558
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v1

    goto :goto_0
.end method

.method public getDataStateGemini(I)I
    .locals 3
    .param p1, "slotID"    # I

    .prologue
    const/4 v2, 0x1

    .line 479
    const/4 v0, 0x0

    .line 481
    .local v0, "vRet":I
    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-ne v1, v2, :cond_1

    .line 482
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    .line 491
    :cond_0
    :goto_0
    return v0

    .line 484
    :cond_1
    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eq v1, v2, :cond_0

    .line 487
    if-nez p1, :cond_0

    .line 488
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    goto :goto_0
.end method

.method public getDeviceIdGemini(I)Ljava/lang/String;
    .locals 3
    .param p1, "slotID"    # I

    .prologue
    const/4 v2, 0x1

    .line 270
    const/4 v0, 0x0

    .line 272
    .local v0, "vRet":Ljava/lang/String;
    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-ne v1, v2, :cond_1

    .line 273
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    .line 282
    :cond_0
    :goto_0
    return-object v0

    .line 275
    :cond_1
    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eq v1, v2, :cond_0

    .line 278
    if-nez p1, :cond_0

    .line 279
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIccCardTypeGemini(I)Ljava/lang/String;
    .locals 3
    .param p1, "slotID"    # I

    .prologue
    const/4 v2, 0x1

    .line 409
    const-string v0, ""

    .line 411
    .local v0, "vRet":Ljava/lang/String;
    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-ne v1, v2, :cond_1

    .line 413
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/telephony/ColorOSTelephonyManager;->colorGetIccCardTypeGemini(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 423
    :cond_0
    :goto_0
    return-object v0

    .line 418
    :cond_1
    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 415
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getIccOperatorNumeric(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 1790
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getIccOperatorNumeric(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1NumberGemini(I)Ljava/lang/String;
    .locals 4
    .param p1, "slotID"    # I

    .prologue
    const/4 v3, 0x1

    .line 183
    const/4 v1, 0x0

    .line 185
    .local v1, "vRet":Ljava/lang/String;
    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-ne v2, v3, :cond_1

    .line 186
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 187
    .local v0, "subId":[I
    if-eqz v0, :cond_0

    .line 188
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v1

    .line 197
    .end local v0    # "subId":[I
    :cond_0
    :goto_0
    return-object v1

    .line 190
    :cond_1
    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eq v2, v3, :cond_0

    .line 193
    if-nez p1, :cond_0

    .line 194
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getNetworkCountryIso(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 1750
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIsoForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorGemini(I)Ljava/lang/String;
    .locals 3
    .param p1, "slotID"    # I

    .prologue
    const/4 v2, 0x1

    .line 427
    const-string v0, ""

    .line 429
    .local v0, "vRet":Ljava/lang/String;
    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-ne v1, v2, :cond_1

    .line 430
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForSubscription(I)Ljava/lang/String;

    move-result-object v0

    .line 439
    :cond_0
    :goto_0
    return-object v0

    .line 432
    :cond_1
    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eq v1, v2, :cond_0

    .line 435
    if-nez p1, :cond_0

    .line 436
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkOperatorNameGemini(I)Ljava/lang/String;
    .locals 4
    .param p1, "slotID"    # I

    .prologue
    const/4 v3, 0x1

    .line 443
    const-string v1, ""

    .line 445
    .local v1, "vRet":Ljava/lang/String;
    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-ne v2, v3, :cond_1

    .line 446
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 447
    .local v0, "subId":[I
    if-eqz v0, :cond_0

    .line 448
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v1

    .line 457
    .end local v0    # "subId":[I
    :cond_0
    :goto_0
    return-object v1

    .line 450
    :cond_1
    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eq v2, v3, :cond_0

    .line 453
    if-nez p1, :cond_0

    .line 454
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getNetworkTypeGemini(I)I
    .locals 4
    .param p1, "slotID"    # I

    .prologue
    const/4 v3, 0x1

    .line 233
    const/4 v1, 0x0

    .line 235
    .local v1, "vRet":I
    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-ne v2, v3, :cond_1

    .line 236
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 237
    .local v0, "subId":[I
    if-eqz v0, :cond_0

    .line 238
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getNetworkType(I)I

    move-result v1

    .line 247
    .end local v0    # "subId":[I
    :cond_0
    :goto_0
    return v1

    .line 240
    :cond_1
    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eq v2, v3, :cond_0

    .line 243
    if-nez p1, :cond_0

    .line 244
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    goto :goto_0
.end method

.method public getSimOperatorGemini(I)Ljava/lang/String;
    .locals 4
    .param p1, "slotID"    # I

    .prologue
    const/4 v3, 0x1

    .line 461
    const-string v1, ""

    .line 463
    .local v1, "vRet":Ljava/lang/String;
    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-ne v2, v3, :cond_1

    .line 464
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 465
    .local v0, "subId":[I
    if-eqz v0, :cond_0

    .line 466
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v1

    .line 475
    .end local v0    # "subId":[I
    :cond_0
    :goto_0
    return-object v1

    .line 468
    :cond_1
    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eq v2, v3, :cond_0

    .line 471
    if-nez p1, :cond_0

    .line 472
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSimSerialNumberGemini(I)Ljava/lang/String;
    .locals 4
    .param p1, "slotID"    # I

    .prologue
    const/4 v3, 0x1

    .line 565
    const-string v1, ""

    .line 567
    .local v1, "vRet":Ljava/lang/String;
    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-ne v2, v3, :cond_1

    .line 568
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 569
    .local v0, "subId":[I
    if-eqz v0, :cond_0

    .line 570
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v1

    .line 579
    .end local v0    # "subId":[I
    :cond_0
    :goto_0
    return-object v1

    .line 572
    :cond_1
    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eq v2, v3, :cond_0

    .line 575
    if-nez p1, :cond_0

    .line 576
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSimStateGemini(I)I
    .locals 3
    .param p1, "slotID"    # I

    .prologue
    const/4 v2, 0x1

    .line 201
    const/4 v0, -0x1

    .line 203
    .local v0, "vRet":I
    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-ne v1, v2, :cond_1

    .line 204
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    .line 213
    :cond_0
    :goto_0
    return v0

    .line 206
    :cond_1
    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eq v1, v2, :cond_0

    .line 209
    if-nez p1, :cond_0

    .line 210
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    goto :goto_0
.end method

.method public getSpNameInEfSpn()Ljava/lang/String;
    .locals 3

    .prologue
    .line 381
    const/4 v0, 0x0

    .line 383
    .local v0, "vRet":Ljava/lang/String;
    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 384
    const/4 v0, 0x0

    .line 389
    :cond_0
    return-object v0
.end method

.method public getSpNameInEfSpnGemini(I)Ljava/lang/String;
    .locals 3
    .param p1, "slotID"    # I

    .prologue
    .line 369
    const/4 v0, 0x0

    .line 371
    .local v0, "vRet":Ljava/lang/String;
    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 372
    const/4 v0, 0x0

    .line 377
    :cond_0
    return-object v0
.end method

.method public getSubscriberIdGemini(I)Ljava/lang/String;
    .locals 4
    .param p1, "slotID"    # I

    .prologue
    const/4 v3, 0x1

    .line 126
    const/4 v1, 0x0

    .line 128
    .local v1, "vRet":Ljava/lang/String;
    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-ne v2, v3, :cond_1

    .line 129
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 130
    .local v0, "subId":[I
    if-eqz v0, :cond_0

    .line 131
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    .line 140
    .end local v0    # "subId":[I
    :cond_0
    :goto_0
    return-object v1

    .line 133
    :cond_1
    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eq v2, v3, :cond_0

    .line 136
    if-nez p1, :cond_0

    .line 137
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getVoiceMailNumberGemini(I)Ljava/lang/String;
    .locals 4
    .param p1, "slotID"    # I

    .prologue
    const/4 v3, 0x1

    .line 165
    const/4 v1, 0x0

    .line 167
    .local v1, "vRet":Ljava/lang/String;
    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-ne v2, v3, :cond_1

    .line 168
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 169
    .local v0, "subId":[I
    if-eqz v0, :cond_0

    .line 170
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v1

    .line 179
    .end local v0    # "subId":[I
    :cond_0
    :goto_0
    return-object v1

    .line 172
    :cond_1
    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eq v2, v3, :cond_0

    .line 175
    if-nez p1, :cond_0

    .line 176
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getVoiceNetworkTypeGemini(I)I
    .locals 4
    .param p1, "slotID"    # I

    .prologue
    const/4 v3, 0x1

    .line 511
    const/4 v1, 0x0

    .line 513
    .local v1, "vRet":I
    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-ne v2, v3, :cond_1

    .line 514
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 515
    .local v0, "subId":[I
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 516
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v1

    .line 525
    .end local v0    # "subId":[I
    :cond_0
    :goto_0
    return v1

    .line 518
    :cond_1
    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eq v2, v3, :cond_0

    .line 521
    if-nez p1, :cond_0

    .line 522
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v1

    goto :goto_0
.end method

.method public handlePinMmiForSubscriber(ILjava/lang/String;)Z
    .locals 3
    .param p1, "subId"    # I
    .param p2, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1755
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->handlePinMmiForSubscriber(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1759
    :goto_0
    return v1

    .line 1756
    :catch_0
    move-exception v0

    .line 1757
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1758
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1759
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public hasIccCardGemini(I)Z
    .locals 3
    .param p1, "slotID"    # I

    .prologue
    const/4 v2, 0x1

    .line 217
    const/4 v0, 0x0

    .line 219
    .local v0, "vRet":Z
    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-ne v1, v2, :cond_1

    .line 220
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    .line 229
    :cond_0
    :goto_0
    return v0

    .line 222
    :cond_1
    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eq v1, v2, :cond_0

    .line 225
    if-nez p1, :cond_0

    .line 226
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    goto :goto_0
.end method

.method public isCTCCard(I)Z
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 1558
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isCTCCard(I)Z

    move-result v0

    return v0
.end method

.method public isIccCardProviderAsMvno()Z
    .locals 3

    .prologue
    .line 333
    const/4 v0, 0x0

    .line 335
    .local v0, "vRet":Z
    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 336
    const/4 v0, 0x0

    .line 341
    :cond_0
    return v0
.end method

.method public isIccCardProviderAsMvnoGemini(I)Z
    .locals 3
    .param p1, "slotID"    # I

    .prologue
    .line 321
    const/4 v0, 0x0

    .line 323
    .local v0, "vRet":Z
    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 324
    const/4 v0, 0x0

    .line 329
    :cond_0
    return v0
.end method

.method public isIdleGemini(I)Z
    .locals 6
    .param p1, "slotID"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 653
    const/4 v2, 0x1

    .line 656
    .local v2, "vRet":Z
    :try_start_0
    sget-boolean v5, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-ne v5, v4, :cond_2

    .line 657
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 658
    .local v1, "subId":[I
    if-eqz v1, :cond_0

    .line 659
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    const/4 v5, 0x0

    aget v5, v1, v5

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/ITelephony;->isIdleForSubscriber(I)Z

    move-result v2

    :cond_0
    move v3, v2

    .line 671
    .end local v1    # "subId":[I
    :cond_1
    :goto_0
    return v3

    .line 662
    :cond_2
    sget-boolean v5, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eq v5, v4, :cond_1

    .line 666
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    goto :goto_0

    .line 668
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    move v3, v4

    .line 669
    goto :goto_0

    .line 670
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    move v3, v4

    .line 671
    goto :goto_0
.end method

.method public isNetworkRoamingGemini(I)Z
    .locals 4
    .param p1, "slotID"    # I

    .prologue
    const/4 v3, 0x1

    .line 251
    const/4 v1, 0x0

    .line 253
    .local v1, "vRet":Z
    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-ne v2, v3, :cond_1

    .line 254
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 255
    .local v0, "subId":[I
    if-eqz v0, :cond_0

    .line 256
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v1

    .line 266
    .end local v0    # "subId":[I
    :cond_0
    :goto_0
    return v1

    .line 259
    :cond_1
    sget-boolean v2, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eq v2, v3, :cond_0

    .line 262
    if-nez p1, :cond_0

    .line 263
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    goto :goto_0
.end method

.method public isOffhookGemini(I)Z
    .locals 6
    .param p1, "slotID"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 676
    const/4 v2, 0x0

    .line 679
    .local v2, "vRet":Z
    :try_start_0
    sget-boolean v4, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-ne v4, v5, :cond_2

    .line 680
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 681
    .local v1, "subId":[I
    if-eqz v1, :cond_0

    .line 682
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v1, v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/ITelephony;->isOffhookForSubscriber(I)Z

    move-result v2

    :cond_0
    move v3, v2

    .line 695
    .end local v1    # "subId":[I
    :cond_1
    :goto_0
    return v3

    .line 686
    :cond_2
    sget-boolean v4, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eq v4, v5, :cond_1

    .line 690
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    goto :goto_0

    .line 692
    :catch_0
    move-exception v0

    .line 693
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 694
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 695
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isOperatorMvnoForImsi()Ljava/lang/String;
    .locals 3

    .prologue
    .line 357
    const/4 v0, 0x0

    .line 359
    .local v0, "vRet":Ljava/lang/String;
    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 360
    const/4 v0, 0x0

    .line 365
    :cond_0
    return-object v0
.end method

.method public isOperatorMvnoForImsiGemini(I)Ljava/lang/String;
    .locals 3
    .param p1, "slotID"    # I

    .prologue
    .line 345
    const/4 v0, 0x0

    .line 347
    .local v0, "vRet":Ljava/lang/String;
    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 348
    const/4 v0, 0x0

    .line 353
    :cond_0
    return-object v0
.end method

.method public isRingingGemini(I)Z
    .locals 6
    .param p1, "slotID"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 630
    const/4 v2, 0x0

    .line 633
    .local v2, "vRet":Z
    :try_start_0
    sget-boolean v4, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-ne v4, v5, :cond_2

    .line 634
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 635
    .local v1, "subId":[I
    if-eqz v1, :cond_0

    .line 636
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v1, v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/ITelephony;->isRingingForSubscriber(I)Z

    move-result v2

    :cond_0
    move v3, v2

    .line 648
    .end local v1    # "subId":[I
    :cond_1
    :goto_0
    return v3

    .line 639
    :cond_2
    sget-boolean v4, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eq v4, v5, :cond_1

    .line 643
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    goto :goto_0

    .line 645
    :catch_0
    move-exception v0

    .line 646
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 647
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 648
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isSimInsert(I)Z
    .locals 3
    .param p1, "slotID"    # I

    .prologue
    const/4 v2, 0x1

    .line 393
    const/4 v0, 0x0

    .line 395
    .local v0, "vRet":Z
    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-ne v1, v2, :cond_1

    .line 396
    invoke-virtual {p0, p1}, Landroid/telephony/ColorOSTelephonyManager;->hasIccCardGemini(I)Z

    move-result v0

    .line 405
    :cond_0
    :goto_0
    return v0

    .line 398
    :cond_1
    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eq v1, v2, :cond_0

    .line 401
    if-nez p1, :cond_0

    .line 402
    invoke-virtual {p0, p1}, Landroid/telephony/ColorOSTelephonyManager;->hasIccCardGemini(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isUriFileExist(Ljava/lang/String;)Z
    .locals 7
    .param p1, "vUri"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1484
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1485
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1487
    .local v1, "_reply":Landroid/os/Parcel;
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1489
    .local v4, "mRemote":Landroid/os/IBinder;
    if-nez v4, :cond_0

    .line 1490
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1510
    :goto_0
    return v2

    .line 1496
    :cond_0
    :try_start_0
    sget-object v5, Landroid/telephony/ColorOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1497
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1498
    const/16 v5, 0x2741

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1499
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1500
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    .line 1507
    .local v2, "_result":Z
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1508
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1502
    .end local v2    # "_result":Z
    :catch_0
    move-exception v3

    .line 1503
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isUriFileExist ERROR !!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1504
    const/4 v2, 0x0

    .line 1507
    .restart local v2    # "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1508
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1507
    .end local v2    # "_result":Z
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1508
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public listenGemini(Landroid/telephony/PhoneStateListener;II)V
    .locals 4
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p2, "events"    # I
    .param p3, "slotID"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 286
    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-ne v1, v3, :cond_3

    .line 287
    invoke-static {p3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 288
    .local v0, "subId":[I
    if-eqz v0, :cond_0

    .line 289
    aget v1, v0, v2

    iput v1, p1, Landroid/telephony/PhoneStateListener;->mSubId:I

    .line 292
    :cond_0
    iget-object v1, p0, Landroid/telephony/ColorOSTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_2

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "listenGemini-Register SubID,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/telephony/PhoneStateListener;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 294
    iget-object v1, p0, Landroid/telephony/ColorOSTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 318
    .end local v0    # "subId":[I
    :cond_1
    :goto_0
    return-void

    .line 297
    .restart local v0    # "subId":[I
    :cond_2
    const-string/jumbo v1, "listenGeminiA ERROR"

    invoke-static {v1}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 300
    .end local v0    # "subId":[I
    :cond_3
    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eq v1, v3, :cond_1

    .line 303
    if-nez p3, :cond_1

    .line 304
    invoke-static {p3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 305
    .restart local v0    # "subId":[I
    if-eqz v0, :cond_4

    .line 306
    aget v1, v0, v2

    iput v1, p1, Landroid/telephony/PhoneStateListener;->mSubId:I

    .line 309
    :cond_4
    iget-object v1, p0, Landroid/telephony/ColorOSTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_5

    .line 310
    const-string/jumbo v1, "listenGemini-Register"

    invoke-static {v1}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 311
    iget-object v1, p0, Landroid/telephony/ColorOSTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0

    .line 314
    :cond_5
    const-string/jumbo v1, "listenGeminiA ERROR"

    invoke-static {v1}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDataEnabled(IZ)V
    .locals 1
    .param p1, "subId"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 1786
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 1787
    return-void
.end method

.method public setDataEnabledGemini(IZ)V
    .locals 3
    .param p1, "slotID"    # I
    .param p2, "enable"    # Z

    .prologue
    const/4 v2, 0x1

    .line 806
    :try_start_0
    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-ne v1, v2, :cond_2

    .line 807
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 808
    .local v0, "subId":[I
    if-eqz v0, :cond_0

    .line 809
    iget-object v1, p0, Landroid/telephony/ColorOSTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1

    .line 810
    iget-object v1, p0, Landroid/telephony/ColorOSTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-virtual {v1, v2, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 824
    .end local v0    # "subId":[I
    :cond_0
    :goto_0
    return-void

    .line 813
    .restart local v0    # "subId":[I
    :cond_1
    const-string/jumbo v1, "setDataEnabledGemini ERROR"

    invoke-static {v1}, Landroid/telephony/ColorOSTelephonyManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 822
    .end local v0    # "subId":[I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 817
    :cond_2
    sget-boolean v1, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eq v1, v2, :cond_0

    .line 820
    iget-object v1, p0, Landroid/telephony/ColorOSTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public showInCallScreenGemini(Z)Z
    .locals 4
    .param p1, "showDialpad"    # Z

    .prologue
    .line 708
    const/4 v1, 0x0

    .line 710
    .local v1, "vRet":Z
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telecom/ITelecomService;->showInCallScreen(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    const/4 v1, 0x1

    .line 716
    :goto_0
    return v1

    .line 712
    :catch_0
    move-exception v0

    .line 713
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ColorOSTelephonyManager"

    const-string v3, "Error calling ITelecomService#showInCallScreen"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public silenceRingerGemini(I)V
    .locals 3
    .param p1, "slotID"    # I

    .prologue
    .line 701
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->silenceRinger()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 705
    :goto_0
    return-void

    .line 702
    :catch_0
    move-exception v0

    .line 703
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ColorOSTelephonyManager"

    const-string v2, "Error calling ITelecomService#silenceRinger"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public supplyPin(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "slotID"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 744
    const/4 v2, 0x0

    .line 747
    .local v2, "vRet":Z
    :try_start_0
    sget-boolean v4, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-ne v4, v5, :cond_2

    .line 748
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 749
    .local v1, "subId":[I
    if-eqz v1, :cond_0

    .line 750
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v1, v5

    invoke-interface {v4, v5, p1}, Lcom/android/internal/telephony/ITelephony;->supplyPinForSubscriber(ILjava/lang/String;)Z

    move-result v2

    :cond_0
    move v3, v2

    .line 762
    .end local v1    # "subId":[I
    :cond_1
    :goto_0
    return v3

    .line 753
    :cond_2
    sget-boolean v4, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eq v4, v5, :cond_1

    .line 757
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/android/internal/telephony/ITelephony;->supplyPin(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    goto :goto_0

    .line 759
    :catch_0
    move-exception v0

    .line 760
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 761
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 762
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public supplyPinReportResult(Ljava/lang/String;I)[I
    .locals 5
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "slotID"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 787
    :try_start_0
    sget-boolean v3, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-ne v3, v4, :cond_1

    .line 788
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 789
    .local v1, "subId":[I
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v1, v4

    invoke-interface {v3, v4, p1}, Lcom/android/internal/telephony/ITelephony;->supplyPinReportResultForSubscriber(ILjava/lang/String;)[I

    move-result-object v2

    .line 800
    .end local v1    # "subId":[I
    :cond_0
    :goto_0
    return-object v2

    .line 791
    :cond_1
    sget-boolean v3, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eq v3, v4, :cond_0

    .line 795
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ITelephony;->supplyPinReportResult(Ljava/lang/String;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 797
    :catch_0
    move-exception v0

    .line 798
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 799
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 800
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .param p3, "slotID"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 720
    const/4 v2, 0x0

    .line 723
    .local v2, "vRet":Z
    :try_start_0
    sget-boolean v4, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-ne v4, v5, :cond_2

    .line 724
    invoke-static {p3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 725
    .local v1, "subId":[I
    if-eqz v1, :cond_0

    .line 726
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v1, v5

    invoke-interface {v4, v5, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPukForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    :cond_0
    move v3, v2

    .line 739
    .end local v1    # "subId":[I
    :cond_1
    :goto_0
    return v3

    .line 730
    :cond_2
    sget-boolean v4, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eq v4, v5, :cond_1

    .line 734
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    invoke-interface {v4, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    goto :goto_0

    .line 736
    :catch_0
    move-exception v0

    .line 737
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 738
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 739
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;I)[I
    .locals 5
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .param p3, "slotID"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 768
    :try_start_0
    sget-boolean v3, Landroid/telephony/ColorOSTelephonyManager;->isQcomGeminiSupport:Z

    if-ne v3, v4, :cond_1

    .line 769
    invoke-static {p3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 770
    .local v1, "subId":[I
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v1, v4

    invoke-interface {v3, v4, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I

    move-result-object v2

    .line 781
    .end local v1    # "subId":[I
    :cond_0
    :goto_0
    return-object v2

    .line 772
    :cond_1
    sget-boolean v3, Landroid/telephony/ColorOSTelephonyManager;->isMtkGeminiSupport:Z

    if-eq v3, v4, :cond_0

    .line 776
    invoke-direct {p0}, Landroid/telephony/ColorOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 778
    :catch_0
    move-exception v0

    .line 779
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 780
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 781
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method
