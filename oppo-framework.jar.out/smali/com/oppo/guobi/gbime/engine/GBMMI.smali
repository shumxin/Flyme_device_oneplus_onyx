.class public Lcom/oppo/guobi/gbime/engine/GBMMI;
.super Ljava/lang/Object;
.source "GBMMI.java"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 7
    :try_start_0
    const-string v2, "guobi_jni"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 14
    :goto_0
    return-void

    .line 8
    :catch_0
    move-exception v0

    .line 9
    .local v0, "err":Ljava/lang/UnsatisfiedLinkError;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UnsatisfiedLinkError : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    .end local v0    # "err":Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v1

    .line 12
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Load file failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native GBChnAssocAddHistoryISN([C)I
.end method

.method public static native GBChnAssocFirstPageC()I
.end method

.method public static native GBChnAssocSetHistoryISNs([C)I
.end method

.method public static native GBChnCanPageDown()I
.end method

.method public static native GBChnCanPageUp()I
.end method

.method public static native GBChnEngineConfig(II)I
.end method

.method public static native GBChnFindFirstPageC()I
.end method

.method public static native GBChnGetCandidate(I)[C
.end method

.method public static native GBChnGetCandidateLen()I
.end method

.method public static native GBChnGetComponent(I)C
.end method

.method public static native GBChnGetComponentLen()I
.end method

.method public static native GBChnGetFullInputString()[C
.end method

.method public static native GBChnGetFullOutputString()[C
.end method

.method public static native GBChnGetStatus()I
.end method

.method public static native GBChnGetSyllable(I)[C
.end method

.method public static native GBChnGetSyllableLen()I
.end method

.method public static native GBChnHelperAddInputChar(C)I
.end method

.method public static native GBChnHelperAddInputString([B)I
.end method

.method public static native GBChnHelperCancelSelect()I
.end method

.method public static native GBChnHelperDeleteInputChar()I
.end method

.method public static native GBChnHelperEBISRestart()I
.end method

.method public static native GBChnHelperSelect(I)I
.end method

.method public static native GBChnInputMethodInit(I)I
.end method

.method public static native GBChnInputReset()I
.end method

.method public static native GBChnInterpunctionFirstPageC()I
.end method

.method public static native GBChnIsAsociateMode()I
.end method

.method public static native GBChnIsInterpunctionMode()I
.end method

.method public static native GBChnNextPageC()I
.end method

.method public static native GBChnPrevPageC()I
.end method

.method public static native GBChnSetAssociateISNCount(I)V
.end method

.method public static native GBChnSetCandidateDesireLen(I)V
.end method

.method public static native GBChnSetInterpunctionDesireLen(I)V
.end method

.method public static native GBChnSetSyllableIndex(I)V
.end method

.method public static native GBChnSetTone(I)V
.end method

.method public static native GBChnShAddPhrase([C[B)I
.end method

.method public static native GBChnShDataInit([BIII)I
.end method

.method public static native GBChnShDataReset()I
.end method

.method public static native GBChnShShutdown()I
.end method

.method public static native GBChnShutdown()V
.end method

.method public static native GBChnStartup([B)I
.end method

.method public static native GBChnStringToStroke([C)[C
.end method

.method public static native GBChnSwitchInputMethod(I)I
.end method

.method public static native GBLatinAddWordStat([C)I
.end method

.method public static native GBLatinCanPageDown()I
.end method

.method public static native GBLatinCanPageUp()I
.end method

.method public static native GBLatinDeletePhrase([C)I
.end method

.method public static native GBLatinFirstPage()I
.end method

.method public static native GBLatinGetCandidate(I)[C
.end method

.method public static native GBLatinGetCandidateCount()I
.end method

.method public static native GBLatinGetCurPage()I
.end method

.method public static native GBLatinGetDesireOutput(I)I
.end method

.method public static native GBLatinGetKeyCandidates(II)[C
.end method

.method public static native GBLatinGetLanguageID()I
.end method

.method public static native GBLatinGetLanguageIDFromData([B)I
.end method

.method public static native GBLatinIsInited()I
.end method

.method public static native GBLatinNextPage()I
.end method

.method public static native GBLatinPrevPage()I
.end method

.method public static native GBLatinReset()I
.end method

.method public static native GBLatinSelfHelpWordsAdd()I
.end method

.method public static native GBLatinSelfHelpWordsInit([BI)I
.end method

.method public static native GBLatinSetCandidateDesireCount(I)I
.end method

.method public static native GBLatinSetCandidateDesireLen(I)I
.end method

.method public static native GBLatinSetInputString([C)I
.end method

.method public static native GBLatinSetOutputOption(I)I
.end method

.method public static native GBLatinShDataReset()I
.end method

.method public static native GBLatinShGetNextPhrase()[C
.end method

.method public static native GBLatinShShutDown()I
.end method

.method public static native GBLatinShutDown()I
.end method

.method public static native GBLatinStartup([B)I
.end method

.method public static native GBLatinWordExists()I
.end method

.method public static native getCodesOfChnWord(IC)[C
.end method

.method public static native getNextShPhrase()[C
.end method

.method public static native getNumOfSyllable()I
.end method

.method public static native getOutputInfoCanUpScreen()I
.end method

.method public static native getOutputInfoCandidateIndex()I
.end method

.method public static native getOutputInfoCandidates(I)[C
.end method

.method public static native getOutputInfoCandidatesNum()I
.end method

.method public static native getOutputInfoComponents(I)C
.end method

.method public static native getOutputInfoComponentsLen()I
.end method

.method public static native getOutputInfoFullOutput()[C
.end method

.method public static native getOutputInfoInputMode()I
.end method

.method public static native getOutputInfoIsSelectedCand()I
.end method

.method public static native getOutputInfoOtherInfoAssociateMode()I
.end method

.method public static native getOutputInfoOtherInfoShowDownArrow()I
.end method

.method public static native getOutputInfoOtherInfoShowLeftArrow()I
.end method

.method public static native getOutputInfoOtherInfoShowRightArrow()I
.end method

.method public static native getOutputInfoOtherInfoShowUpArrow()I
.end method

.method public static native getOutputInfoOtherInfoSylLeftArrow()I
.end method

.method public static native getOutputInfoOtherInfoSylRightArrow()I
.end method

.method public static native getOutputInfoShowIMWin()I
.end method

.method public static native getOutputInfoStroke()[C
.end method

.method public static native getOutputInfoStrokeLen()I
.end method

.method public static native getOutputInfoSyllableIndex()I
.end method

.method public static native getOutputInfoSyllableLen(I)I
.end method

.method public static native getOutputInfoSyllableNum()I
.end method

.method public static native getOutputInfoSyllables(I)[C
.end method

.method public static native getOutputInfoUpScreenLen()I
.end method

.method public static native getOutputInfoUpScreenStr()[C
.end method

.method public static native getSelfMakeStatus()I
.end method

.method public static native getSyllableByIndex(I)[C
.end method

.method public static native handleInputEvent(IJJ)I
.end method

.method public static native handleInputEvent(IJ[B)I
.end method

.method public static native handleInputEvent(ILjava/lang/String;J)I
.end method

.method public static native setChnInitDataCandDesireCount(I)V
.end method

.method public static native setChnInitDataCandDesireLenInWord(I)V
.end method

.method public static native setChnInitDataDialectData([B)V
.end method

.method public static native setChnInitDataInterpunctionDesireLen(I)V
.end method

.method public static native setChnInitDataLDBData([B)V
.end method

.method public static native setChnInitDataOnChnSelfMakeDataChanged(J)V
.end method

.method public static native setChnInitDataSyllableNumberPerPage(I)V
.end method

.method public static native setChnInitDataUDBData([B)V
.end method

.method public static native setIndexOfSyllable(I)Z
.end method

.method public static native setInitDataChnEnConvert(I)V
.end method

.method public static native setInitDataUpNumber(I)V
.end method

.method public static native setInitDataUseLongPress(I)V
.end method

.method public static native setLatinInitData(I)V
.end method

.method public static native setLatinInitDataCandDesireCountInWord(II)V
.end method

.method public static native setLatinInitDataCandDesireLenInWord(II)V
.end method

.method public static native setLatinInitDataLDBData(I[B)V
.end method

.method public static native setLatinInitDataLanguageType(II)V
.end method

.method public static native setLatinInitDataOkToAddMakeWordStr(I[C)V
.end method

.method public static native setLatinInitDataOkToBeginMakeWordStr(I[C)V
.end method

.method public static native setLatinInitDataOnLtSelfMakeDataChanged(IJ)V
.end method

.method public static native setLatinInitDataUDBData(I[B)V
.end method

.method public static native setPinYinFuzzyConfig(II)I
.end method

.method public static native setUiInfoCandidateWidth(I)V
.end method

.method public static native setUiInfoGetStrWidth(J)V
.end method

.method public static native setUiInfoGetWCharWidth(J)V
.end method

.method public static native setUiInfoPreEditWidth(I)V
.end method

.method public static native setUiInfoSyllableSplit(I)V
.end method
