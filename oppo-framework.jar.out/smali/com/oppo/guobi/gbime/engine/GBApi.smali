.class public Lcom/oppo/guobi/gbime/engine/GBApi;
.super Ljava/lang/Object;
.source "GBApi.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "guobiv5_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native chnudbAttach(II[B[B)I
.end method

.method public static final native getCandidates(II)[Ljava/lang/String;
.end method

.method public static native getComponents()Ljava/lang/String;
.end method

.method public static native getComposing()Ljava/lang/String;
.end method

.method public static native getInputState()I
.end method

.method public static native getSyllables()[Ljava/lang/String;
.end method

.method public static native getUpScreenStr()Ljava/lang/String;
.end method

.method public static native handleKey(I)I
.end method

.method public static final native haveMoreCandate()Z
.end method

.method public static native initialize()I
.end method

.method public static native loadLanguageDB(II[B)I
.end method

.method public static native reset()I
.end method

.method public static native resetChnUDBData()I
.end method

.method public static native selectCandidate(Ljava/lang/String;)I
.end method

.method public static native selectCandidateEx(Ljava/lang/String;I)I
.end method

.method public static native selectSyllable(I)I
.end method

.method public static native setAssocWord(Ljava/lang/String;Z)I
.end method

.method public static native setCurInputMode(I)I
.end method

.method public static native setCurLanguage(II)I
.end method

.method public static native setEngineOption(III)I
.end method

.method public static native udbAddPhrase(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native udbAttach(II[B)I
.end method

.method public static native udbDeletePhrase(Ljava/lang/String;)I
.end method

.method public static native udbGetNextPhrase()Ljava/lang/String;
.end method

.method public static native udbStartSearchPhrase()I
.end method

.method public static native word2CodesByInputmod(III)Ljava/lang/String;
.end method
