.class public Lcom/oppo/guobi/gbime/engine/WordQuery$WordQueryResult;
.super Ljava/lang/Object;
.source "WordQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/guobi/gbime/engine/WordQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WordQueryResult"
.end annotation


# instance fields
.field mCombinePinyinStrRepressByNum:Ljava/lang/String;

.field mFirstPinyinStr:Ljava/lang/String;

.field mFirstStrokesStr:Ljava/lang/String;

.field mPinyinWithWordStr:Ljava/lang/String;

.field mWholePinyinSeperatedStr:Ljava/lang/String;

.field mWholePinyinStr:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1057
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1034
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/guobi/gbime/engine/WordQuery$WordQueryResult;->mWholePinyinStr:Ljava/lang/String;

    .line 1039
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/guobi/gbime/engine/WordQuery$WordQueryResult;->mFirstPinyinStr:Ljava/lang/String;

    .line 1044
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/guobi/gbime/engine/WordQuery$WordQueryResult;->mFirstStrokesStr:Ljava/lang/String;

    .line 1049
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/guobi/gbime/engine/WordQuery$WordQueryResult;->mWholePinyinSeperatedStr:Ljava/lang/String;

    .line 1051
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/guobi/gbime/engine/WordQuery$WordQueryResult;->mCombinePinyinStrRepressByNum:Ljava/lang/String;

    .line 1053
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/guobi/gbime/engine/WordQuery$WordQueryResult;->mPinyinWithWordStr:Ljava/lang/String;

    .line 1059
    return-void
.end method


# virtual methods
.method public getCombinePinyinStrRepressByNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/oppo/guobi/gbime/engine/WordQuery$WordQueryResult;->mCombinePinyinStrRepressByNum:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstPinyinStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/oppo/guobi/gbime/engine/WordQuery$WordQueryResult;->mFirstPinyinStr:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstStrokesStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/oppo/guobi/gbime/engine/WordQuery$WordQueryResult;->mFirstStrokesStr:Ljava/lang/String;

    return-object v0
.end method

.method public getPinyinWithWordStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/oppo/guobi/gbime/engine/WordQuery$WordQueryResult;->mPinyinWithWordStr:Ljava/lang/String;

    return-object v0
.end method

.method public getWholePinyinSeperatedStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/oppo/guobi/gbime/engine/WordQuery$WordQueryResult;->mWholePinyinSeperatedStr:Ljava/lang/String;

    return-object v0
.end method

.method public getWholePinyinStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/oppo/guobi/gbime/engine/WordQuery$WordQueryResult;->mWholePinyinStr:Ljava/lang/String;

    return-object v0
.end method
