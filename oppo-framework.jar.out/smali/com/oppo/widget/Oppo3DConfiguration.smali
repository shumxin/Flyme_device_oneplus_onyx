.class public Lcom/oppo/widget/Oppo3DConfiguration;
.super Ljava/lang/Object;
.source "Oppo3DConfiguration.java"


# static fields
.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "Oppo3DConfiguration"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBooleanValue(Landroid/content/Context;I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 147
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 150
    .local v1, "result":Z
    return v1
.end method

.method public static getFlipFrameStep(Landroid/content/Context;)F
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    if-nez p0, :cond_0

    .line 60
    const-string v0, "Oppo3DConfiguration"

    const-string v1, "getFlipFrameStep() context null error."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v0, 0x0

    .line 63
    :goto_0
    return v0

    :cond_0
    const v0, 0xc040400

    invoke-static {p0, v0}, Lcom/oppo/widget/Oppo3DConfiguration;->getFloatValue(Landroid/content/Context;I)F

    move-result v0

    goto :goto_0
.end method

.method private static getFloatValue(Landroid/content/Context;I)F
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 181
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "floatString":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 185
    .local v2, "result":F
    return v2
.end method

.method private static getIntValue(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 164
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 167
    .local v1, "result":I
    return v1
.end method

.method public static getRollCoverRenderDelay(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    if-nez p0, :cond_0

    .line 74
    const-string v0, "Oppo3DConfiguration"

    const-string v1, "getRollCoverRenderDelay() context null error."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v0, 0x0

    .line 77
    :goto_0
    return v0

    :cond_0
    const v0, 0xc0d0400

    invoke-static {p0, v0}, Lcom/oppo/widget/Oppo3DConfiguration;->getIntValue(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0
.end method

.method public static getScenePreViewRenderDelay(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    if-nez p0, :cond_0

    .line 130
    const-string v0, "Oppo3DConfiguration"

    const-string v1, "getScenePreViewRenderDelay() context null error."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v0, 0x0

    .line 133
    :goto_0
    return v0

    :cond_0
    const v0, 0xc0d0402

    invoke-static {p0, v0}, Lcom/oppo/widget/Oppo3DConfiguration;->getIntValue(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0
.end method

.method public static getScenePreViewTapScrollFastMode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    if-nez p0, :cond_0

    .line 88
    const-string v0, "Oppo3DConfiguration"

    const-string v1, "getScenePreViewTapScrollFastMode() context null error."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v0, 0x0

    .line 91
    :goto_0
    return v0

    :cond_0
    const v0, 0xc0c0401

    invoke-static {p0, v0}, Lcom/oppo/widget/Oppo3DConfiguration;->getBooleanValue(Landroid/content/Context;I)Z

    move-result v0

    goto :goto_0
.end method

.method public static getScenePreViewTrackScrollFastSlop(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    if-nez p0, :cond_0

    .line 116
    const-string v0, "Oppo3DConfiguration"

    const-string v1, "getScenePreViewTrackScrollFastSlop() context null error."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v0, 0x0

    .line 119
    :goto_0
    return v0

    :cond_0
    const v0, 0xc0d0401

    invoke-static {p0, v0}, Lcom/oppo/widget/Oppo3DConfiguration;->getIntValue(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0
.end method

.method public static getScenePreViewTrackScrollFastStep(Landroid/content/Context;)F
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    if-nez p0, :cond_0

    .line 102
    const-string v0, "Oppo3DConfiguration"

    const-string v1, "getScenePreViewTrackScrollFastStep() context null error."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v0, 0x0

    .line 105
    :goto_0
    return v0

    :cond_0
    const v0, 0xc040401

    invoke-static {p0, v0}, Lcom/oppo/widget/Oppo3DConfiguration;->getFloatValue(Landroid/content/Context;I)F

    move-result v0

    goto :goto_0
.end method

.method public static getTextureResize(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    if-nez p0, :cond_0

    .line 46
    const-string v0, "Oppo3DConfiguration"

    const-string v1, "getTextureResize() context null error."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/4 v0, 0x0

    .line 49
    :goto_0
    return v0

    :cond_0
    const v0, 0xc0c0400

    invoke-static {p0, v0}, Lcom/oppo/widget/Oppo3DConfiguration;->getBooleanValue(Landroid/content/Context;I)Z

    move-result v0

    goto :goto_0
.end method
