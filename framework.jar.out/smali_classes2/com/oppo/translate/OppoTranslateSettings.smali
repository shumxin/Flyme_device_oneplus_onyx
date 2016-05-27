.class Lcom/oppo/translate/OppoTranslateSettings;
.super Ljava/lang/Object;
.source "OppoTranslateSettings.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "OppoTranslateSettings"


# instance fields
.field private mCurrentUserId:I

.field private mDefaultEngine:Ljava/lang/String;


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/translate/OppoTranslateSettings;->mCurrentUserId:I

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/translate/OppoTranslateSettings;->mDefaultEngine:Ljava/lang/String;

    .line 40
    invoke-virtual {p0, p1}, Lcom/oppo/translate/OppoTranslateSettings;->setCurrentUserId(I)V

    .line 41
    return-void
.end method


# virtual methods
.method getCurrentUserId()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/oppo/translate/OppoTranslateSettings;->mCurrentUserId:I

    return v0
.end method

.method getSelectedEngine()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateSettings;->mDefaultEngine:Ljava/lang/String;

    return-object v0
.end method

.method setCurrentUserId(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 47
    const/4 v0, 0x1

    const-string v1, "OppoTranslateSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--- Switch the current user from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oppo/translate/OppoTranslateSettings;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 49
    iput p1, p0, Lcom/oppo/translate/OppoTranslateSettings;->mCurrentUserId:I

    .line 50
    return-void
.end method

.method setSelectedEngine(Ljava/lang/String;)V
    .locals 0
    .param p1, "engineId"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/oppo/translate/OppoTranslateSettings;->mDefaultEngine:Ljava/lang/String;

    .line 58
    return-void
.end method
