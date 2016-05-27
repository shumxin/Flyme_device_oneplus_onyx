.class public Lcom/oppo/widget/OppoEmptyBottle;
.super Landroid/widget/LinearLayout;
.source "OppoEmptyBottle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoEmptyBottle$OppoEmptyBottleView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OppoEmptyBottle"


# instance fields
.field private iv:Lcom/oppo/widget/OppoEmptyBottle$OppoEmptyBottleView;

.field private mMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoEmptyBottle;->initOppoEmptyBottle(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoEmptyBottle;->initOppoEmptyBottle(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoEmptyBottle;->initOppoEmptyBottle(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method private initOppoEmptyBottle(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 55
    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoEmptyBottle;->setOrientation(I)V

    .line 56
    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoEmptyBottle;->setGravity(I)V

    .line 57
    const v1, 0xc090448

    invoke-static {p1, v1, p0}, Lcom/oppo/widget/OppoEmptyBottle;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 58
    const v1, 0xc02049a

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoEmptyBottle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoEmptyBottle$OppoEmptyBottleView;

    iput-object v1, p0, Lcom/oppo/widget/OppoEmptyBottle;->iv:Lcom/oppo/widget/OppoEmptyBottle$OppoEmptyBottleView;

    .line 59
    const v1, 0xc08049d

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoEmptyBottle;->setImage(I)V

    .line 60
    const v1, 0xc020499

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoEmptyBottle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oppo/widget/OppoEmptyBottle;->mMessage:Landroid/widget/TextView;

    .line 61
    invoke-virtual {p0}, Lcom/oppo/widget/OppoEmptyBottle;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc05043f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 63
    .local v0, "paddingtop":I
    invoke-virtual {p0, v3, v0, v3, v3}, Lcom/oppo/widget/OppoEmptyBottle;->setPadding(IIII)V

    .line 64
    return-void
.end method


# virtual methods
.method public setImage(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/oppo/widget/OppoEmptyBottle;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 68
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoEmptyBottle;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 69
    return-void
.end method

.method public setImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/oppo/widget/OppoEmptyBottle;->iv:Lcom/oppo/widget/OppoEmptyBottle$OppoEmptyBottleView;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoEmptyBottle$OppoEmptyBottleView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    return-void
.end method

.method public setMessage(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/oppo/widget/OppoEmptyBottle;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "msg":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoEmptyBottle;->setMessage(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/oppo/widget/OppoEmptyBottle;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lcom/oppo/widget/OppoEmptyBottle;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    return-void
.end method

.method public startAnim()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public useDeepColorStyle(Z)V
    .locals 3
    .param p1, "deepColorStyle"    # Z

    .prologue
    .line 87
    if-eqz p1, :cond_0

    .line 88
    const-string v1, "OppoEmptyBottle"

    const-string v2, "Please don\'t use deepColorStyle"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    const v1, 0xc08049d

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoEmptyBottle;->setImage(I)V

    .line 91
    invoke-virtual {p0}, Lcom/oppo/widget/OppoEmptyBottle;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc060409

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 93
    .local v0, "color":I
    iget-object v1, p0, Lcom/oppo/widget/OppoEmptyBottle;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    return-void
.end method
