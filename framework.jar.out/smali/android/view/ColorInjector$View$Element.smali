.class final enum Landroid/view/ColorInjector$View$Element;
.super Ljava/lang/Enum;
.source "ColorInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ColorInjector$View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Element"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/view/ColorInjector$View$Element;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/view/ColorInjector$View$Element;

.field public static final enum BROWSEROVERSCROLL:Landroid/view/ColorInjector$View$Element;

.field public static final enum BROWSERSCROLL:Landroid/view/ColorInjector$View$Element;

.field public static final enum CONTENTSCROLL:Landroid/view/ColorInjector$View$Element;

.field public static final enum LISTOVERSCROLL:Landroid/view/ColorInjector$View$Element;

.field public static final enum MMAWAKEN12:Landroid/view/ColorInjector$View$Element;

.field public static final enum MMAWAKEN14:Landroid/view/ColorInjector$View$Element;

.field public static final enum MMAWAKEN15:Landroid/view/ColorInjector$View$Element;

.field public static final enum MMCHANGE12:Landroid/view/ColorInjector$View$Element;

.field public static final enum MMCHANGE14:Landroid/view/ColorInjector$View$Element;

.field public static final enum MMCHANGE15:Landroid/view/ColorInjector$View$Element;

.field public static final enum MMCHANGE9:Landroid/view/ColorInjector$View$Element;

.field public static final enum OVERSCROLL:Landroid/view/ColorInjector$View$Element;

.field public static final enum QQSCROLL:Landroid/view/ColorInjector$View$Element;

.field public static final enum QZONESCROLL:Landroid/view/ColorInjector$View$Element;

.field public static final enum SCROLL:Landroid/view/ColorInjector$View$Element;

.field public static final enum WEBOVERSCROLL:Landroid/view/ColorInjector$View$Element;

.field public static final enum WEBSCROLL:Landroid/view/ColorInjector$View$Element;


# instance fields
.field private mName:Ljava/lang/String;

.field private mPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/16 v8, 0xf

    const/16 v7, 0xc

    const/16 v6, 0xe

    const/4 v5, 0x5

    .line 161
    new-instance v0, Landroid/view/ColorInjector$View$Element;

    const-string v1, "SCROLL"

    const/4 v2, 0x0

    const-string v3, "AbsListView.trackMotionScroll"

    invoke-direct {v0, v1, v2, v5, v3}, Landroid/view/ColorInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Landroid/view/ColorInjector$View$Element;->SCROLL:Landroid/view/ColorInjector$View$Element;

    .line 173
    new-instance v0, Landroid/view/ColorInjector$View$Element;

    const-string v1, "QQSCROLL"

    const/4 v2, 0x1

    const/4 v3, 0x7

    const-string/jumbo v4, "tencent.widget.AbsListView.onTouchEvent"

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/ColorInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Landroid/view/ColorInjector$View$Element;->QQSCROLL:Landroid/view/ColorInjector$View$Element;

    .line 190
    new-instance v0, Landroid/view/ColorInjector$View$Element;

    const-string v1, "MMAWAKEN12"

    const/4 v2, 0x2

    const-string/jumbo v3, "tencent.mm.ui.base.MMPullDownView.dispatchTouchEvent"

    invoke-direct {v0, v1, v2, v7, v3}, Landroid/view/ColorInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Landroid/view/ColorInjector$View$Element;->MMAWAKEN12:Landroid/view/ColorInjector$View$Element;

    .line 209
    new-instance v0, Landroid/view/ColorInjector$View$Element;

    const-string v1, "MMAWAKEN14"

    const/4 v2, 0x3

    const-string/jumbo v3, "tencent.mm.ui.base.MMPullDownView.dispatchTouchEvent"

    invoke-direct {v0, v1, v2, v6, v3}, Landroid/view/ColorInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Landroid/view/ColorInjector$View$Element;->MMAWAKEN14:Landroid/view/ColorInjector$View$Element;

    .line 229
    new-instance v0, Landroid/view/ColorInjector$View$Element;

    const-string v1, "MMAWAKEN15"

    const-string/jumbo v2, "tencent.mm.ui.base.MMPullDownView.dispatchTouchEvent"

    invoke-direct {v0, v1, v9, v8, v2}, Landroid/view/ColorInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Landroid/view/ColorInjector$View$Element;->MMAWAKEN15:Landroid/view/ColorInjector$View$Element;

    .line 241
    new-instance v0, Landroid/view/ColorInjector$View$Element;

    const-string v1, "OVERSCROLL"

    const-string v2, "AbsListView.onOverScrolled"

    invoke-direct {v0, v1, v5, v5, v2}, Landroid/view/ColorInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Landroid/view/ColorInjector$View$Element;->OVERSCROLL:Landroid/view/ColorInjector$View$Element;

    .line 253
    new-instance v0, Landroid/view/ColorInjector$View$Element;

    const-string v1, "CONTENTSCROLL"

    const/4 v2, 0x6

    const-string v3, "ContentView.onScrollChanged"

    invoke-direct {v0, v1, v2, v9, v3}, Landroid/view/ColorInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Landroid/view/ColorInjector$View$Element;->CONTENTSCROLL:Landroid/view/ColorInjector$View$Element;

    .line 267
    new-instance v0, Landroid/view/ColorInjector$View$Element;

    const-string v1, "MMCHANGE9"

    const/4 v2, 0x7

    const/16 v3, 0x9

    const-string/jumbo v4, "tencent.mm.ui.base.MMPullDownView.dispatchTouchEvent"

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/ColorInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Landroid/view/ColorInjector$View$Element;->MMCHANGE9:Landroid/view/ColorInjector$View$Element;

    .line 284
    new-instance v0, Landroid/view/ColorInjector$View$Element;

    const-string v1, "MMCHANGE12"

    const/16 v2, 0x8

    const-string/jumbo v3, "tencent.mm.ui.base.MMPullDownView.dispatchTouchEvent"

    invoke-direct {v0, v1, v2, v7, v3}, Landroid/view/ColorInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Landroid/view/ColorInjector$View$Element;->MMCHANGE12:Landroid/view/ColorInjector$View$Element;

    .line 303
    new-instance v0, Landroid/view/ColorInjector$View$Element;

    const-string v1, "MMCHANGE14"

    const/16 v2, 0x9

    const-string/jumbo v3, "tencent.mm.ui.base.MMPullDownView.dispatchTouchEvent"

    invoke-direct {v0, v1, v2, v6, v3}, Landroid/view/ColorInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Landroid/view/ColorInjector$View$Element;->MMCHANGE14:Landroid/view/ColorInjector$View$Element;

    .line 323
    new-instance v0, Landroid/view/ColorInjector$View$Element;

    const-string v1, "MMCHANGE15"

    const/16 v2, 0xa

    const-string/jumbo v3, "tencent.mm.ui.base.MMPullDownView.dispatchTouchEvent"

    invoke-direct {v0, v1, v2, v8, v3}, Landroid/view/ColorInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Landroid/view/ColorInjector$View$Element;->MMCHANGE15:Landroid/view/ColorInjector$View$Element;

    .line 342
    new-instance v0, Landroid/view/ColorInjector$View$Element;

    const-string v1, "BROWSERSCROLL"

    const/16 v2, 0xb

    const-string/jumbo v3, "oppo.browser.navigation.widget.NavigationView.dispatchTouchEvent"

    invoke-direct {v0, v1, v2, v6, v3}, Landroid/view/ColorInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Landroid/view/ColorInjector$View$Element;->BROWSERSCROLL:Landroid/view/ColorInjector$View$Element;

    .line 355
    new-instance v0, Landroid/view/ColorInjector$View$Element;

    const-string v1, "QZONESCROLL"

    const/16 v2, 0x8

    const-string/jumbo v3, "qzone.widget.QZonePullToRefreshListView.onScrollChanged"

    invoke-direct {v0, v1, v7, v2, v3}, Landroid/view/ColorInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Landroid/view/ColorInjector$View$Element;->QZONESCROLL:Landroid/view/ColorInjector$View$Element;

    .line 376
    new-instance v0, Landroid/view/ColorInjector$View$Element;

    const-string v1, "WEBSCROLL"

    const/16 v2, 0xd

    const/16 v3, 0x10

    const-string v4, "WebView$PrivateAccess.overScrollBy"

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/ColorInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Landroid/view/ColorInjector$View$Element;->WEBSCROLL:Landroid/view/ColorInjector$View$Element;

    .line 390
    new-instance v0, Landroid/view/ColorInjector$View$Element;

    const-string v1, "LISTOVERSCROLL"

    const/4 v2, 0x6

    const-string v3, "AbsListView.onTouchEvent"

    invoke-direct {v0, v1, v6, v2, v3}, Landroid/view/ColorInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Landroid/view/ColorInjector$View$Element;->LISTOVERSCROLL:Landroid/view/ColorInjector$View$Element;

    .line 400
    new-instance v0, Landroid/view/ColorInjector$View$Element;

    const-string v1, "WEBOVERSCROLL"

    const-string v2, "WebView$PrivateAccess.overScrollBy"

    invoke-direct {v0, v1, v8, v5, v2}, Landroid/view/ColorInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Landroid/view/ColorInjector$View$Element;->WEBOVERSCROLL:Landroid/view/ColorInjector$View$Element;

    .line 416
    new-instance v0, Landroid/view/ColorInjector$View$Element;

    const-string v1, "BROWSEROVERSCROLL"

    const/16 v2, 0x10

    const/16 v3, 0xb

    const-string/jumbo v4, "oppo.browser.navigation.widget.NavigationView.dispatchTouchEvent"

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/ColorInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Landroid/view/ColorInjector$View$Element;->BROWSEROVERSCROLL:Landroid/view/ColorInjector$View$Element;

    .line 148
    const/16 v0, 0x11

    new-array v0, v0, [Landroid/view/ColorInjector$View$Element;

    const/4 v1, 0x0

    sget-object v2, Landroid/view/ColorInjector$View$Element;->SCROLL:Landroid/view/ColorInjector$View$Element;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/view/ColorInjector$View$Element;->QQSCROLL:Landroid/view/ColorInjector$View$Element;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/view/ColorInjector$View$Element;->MMAWAKEN12:Landroid/view/ColorInjector$View$Element;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/view/ColorInjector$View$Element;->MMAWAKEN14:Landroid/view/ColorInjector$View$Element;

    aput-object v2, v0, v1

    sget-object v1, Landroid/view/ColorInjector$View$Element;->MMAWAKEN15:Landroid/view/ColorInjector$View$Element;

    aput-object v1, v0, v9

    sget-object v1, Landroid/view/ColorInjector$View$Element;->OVERSCROLL:Landroid/view/ColorInjector$View$Element;

    aput-object v1, v0, v5

    const/4 v1, 0x6

    sget-object v2, Landroid/view/ColorInjector$View$Element;->CONTENTSCROLL:Landroid/view/ColorInjector$View$Element;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/view/ColorInjector$View$Element;->MMCHANGE9:Landroid/view/ColorInjector$View$Element;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/view/ColorInjector$View$Element;->MMCHANGE12:Landroid/view/ColorInjector$View$Element;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/view/ColorInjector$View$Element;->MMCHANGE14:Landroid/view/ColorInjector$View$Element;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Landroid/view/ColorInjector$View$Element;->MMCHANGE15:Landroid/view/ColorInjector$View$Element;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Landroid/view/ColorInjector$View$Element;->BROWSERSCROLL:Landroid/view/ColorInjector$View$Element;

    aput-object v2, v0, v1

    sget-object v1, Landroid/view/ColorInjector$View$Element;->QZONESCROLL:Landroid/view/ColorInjector$View$Element;

    aput-object v1, v0, v7

    const/16 v1, 0xd

    sget-object v2, Landroid/view/ColorInjector$View$Element;->WEBSCROLL:Landroid/view/ColorInjector$View$Element;

    aput-object v2, v0, v1

    sget-object v1, Landroid/view/ColorInjector$View$Element;->LISTOVERSCROLL:Landroid/view/ColorInjector$View$Element;

    aput-object v1, v0, v6

    sget-object v1, Landroid/view/ColorInjector$View$Element;->WEBOVERSCROLL:Landroid/view/ColorInjector$View$Element;

    aput-object v1, v0, v8

    const/16 v1, 0x10

    sget-object v2, Landroid/view/ColorInjector$View$Element;->BROWSEROVERSCROLL:Landroid/view/ColorInjector$View$Element;

    aput-object v2, v0, v1

    sput-object v0, Landroid/view/ColorInjector$View$Element;->$VALUES:[Landroid/view/ColorInjector$View$Element;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 1
    .param p3, "position"    # I
    .param p4, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 423
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 420
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ColorInjector$View$Element;->mName:Ljava/lang/String;

    .line 421
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ColorInjector$View$Element;->mPosition:I

    .line 424
    iput p3, p0, Landroid/view/ColorInjector$View$Element;->mPosition:I

    .line 425
    iput-object p4, p0, Landroid/view/ColorInjector$View$Element;->mName:Ljava/lang/String;

    .line 426
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/view/ColorInjector$View$Element;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 148
    const-class v0, Landroid/view/ColorInjector$View$Element;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/view/ColorInjector$View$Element;

    return-object v0
.end method

.method public static values()[Landroid/view/ColorInjector$View$Element;
    .locals 1

    .prologue
    .line 148
    sget-object v0, Landroid/view/ColorInjector$View$Element;->$VALUES:[Landroid/view/ColorInjector$View$Element;

    invoke-virtual {v0}, [Landroid/view/ColorInjector$View$Element;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/ColorInjector$View$Element;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Landroid/view/ColorInjector$View$Element;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNameString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ColorInjector$View$Element;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 429
    iget v0, p0, Landroid/view/ColorInjector$View$Element;->mPosition:I

    return v0
.end method
