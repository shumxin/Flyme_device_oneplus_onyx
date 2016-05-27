.class public Lcom/oppo/util/OppoContextUtil;
.super Ljava/lang/Object;
.source "OppoContextUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OppoContextUtil"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/util/OppoContextUtil;->mContext:Landroid/content/Context;

    .line 37
    iget-object v0, p0, Lcom/oppo/util/OppoContextUtil;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 38
    iput-object p1, p0, Lcom/oppo/util/OppoContextUtil;->mContext:Landroid/content/Context;

    .line 40
    :cond_0
    return-void
.end method

.method public static getOppoThemeContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-static {p0}, Lcom/oppo/util/OppoContextUtil;->isOppoStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p0    # "context":Landroid/content/Context;
    :goto_0
    return-object p0

    .restart local p0    # "context":Landroid/content/Context;
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0xc030002

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static getResId(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 67
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 68
    .local v0, "value":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 69
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method public static isOppoStyle(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    const/4 v1, 0x0

    .line 54
    .local v1, "isOppoTheme":Z
    if-eqz p0, :cond_0

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Loppo/R$styleable;->OppoTheme:[I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 56
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 57
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    return v1
.end method


# virtual methods
.method public isOppoStyle()Z
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/oppo/util/OppoContextUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oppo/util/OppoContextUtil;->isOppoStyle(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    if-eqz p1, :cond_0

    .line 44
    iput-object p1, p0, Lcom/oppo/util/OppoContextUtil;->mContext:Landroid/content/Context;

    .line 46
    :cond_0
    return-void
.end method
