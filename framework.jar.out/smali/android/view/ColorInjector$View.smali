.class Landroid/view/ColorInjector$View;
.super Ljava/lang/Object;
.source "ColorInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ColorInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ColorInjector$View$Element;
    }
.end annotation


# static fields
.field private static final DBG_ONAWAKESCROLLBAR:Z = false

.field private static final DBG_ONOVERSCROLLED:Z = false

.field private static final DBG_ONSCROLLCHANGED:Z = false

.field private static final ELEMENTS_NOOVERSCROLL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/ColorInjector$View$Element;",
            ">;"
        }
    .end annotation
.end field

.field private static final ELEMENTS_NOSCROLL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/ColorInjector$View$Element;",
            ">;"
        }
    .end annotation
.end field

.field private static final ELEMENTS_OVERSCROLL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/ColorInjector$View$Element;",
            ">;"
        }
    .end annotation
.end field

.field private static final ELEMENTS_SCROLL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/ColorInjector$View$Element;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ColorInjector.View"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/view/ColorInjector$View;->ELEMENTS_SCROLL:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/view/ColorInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/view/ColorInjector$View;->ELEMENTS_OVERSCROLL:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/view/ColorInjector$View;->ELEMENTS_NOOVERSCROLL:Ljava/util/List;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    return-void
.end method

.method private static clearElements()V
    .locals 1

    .prologue
    .line 142
    sget-object v0, Landroid/view/ColorInjector$View;->ELEMENTS_SCROLL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 143
    sget-object v0, Landroid/view/ColorInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 144
    sget-object v0, Landroid/view/ColorInjector$View;->ELEMENTS_OVERSCROLL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 145
    sget-object v0, Landroid/view/ColorInjector$View;->ELEMENTS_NOOVERSCROLL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 146
    return-void
.end method

.method private static isElement([Ljava/lang/StackTraceElement;Ljava/util/List;)Z
    .locals 6
    .param p0, "stacks"    # [Ljava/lang/StackTraceElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/StackTraceElement;",
            "Ljava/util/List",
            "<",
            "Landroid/view/ColorInjector$View$Element;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "elements":Ljava/util/List;, "Ljava/util/List<Landroid/view/ColorInjector$View$Element;>;"
    const/4 v3, 0x0

    .line 129
    .local v3, "result":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ColorInjector$View$Element;

    .line 130
    .local v0, "element":Landroid/view/ColorInjector$View$Element;
    invoke-virtual {v0}, Landroid/view/ColorInjector$View$Element;->getPosition()I

    move-result v2

    .line 131
    .local v2, "pos":I
    array-length v4, p0

    if-le v4, v2, :cond_0

    .line 132
    aget-object v4, p0, v2

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/view/ColorInjector$View$Element;->getNameString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 133
    if-eqz v3, :cond_0

    .line 138
    .end local v0    # "element":Landroid/view/ColorInjector$View$Element;
    .end local v2    # "pos":I
    :cond_1
    return v3
.end method

.method public static onAwakenScrollBars(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 99
    const-string v3, "ColorInjector.View"

    const-string/jumbo v4, "onAwakenScrollBars"

    invoke-static {v5, v3, v4}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "result":Z
    const-string v3, "color_screenshot"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/screenshot/ColorScreenshotManager;

    .line 103
    .local v1, "sm":Lcom/color/screenshot/ColorScreenshotManager;
    if-eqz v1, :cond_1

    .line 104
    invoke-virtual {v1}, Lcom/color/screenshot/ColorScreenshotManager;->isLongshotMoveState()Z

    move-result v0

    .line 105
    if-eqz v0, :cond_1

    .line 106
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 107
    .local v2, "stacks":[Ljava/lang/StackTraceElement;
    const-string/jumbo v3, "onAwakenScrollBars"

    invoke-static {v2, v3, v5}, Lcom/color/util/ColorLog;->printStackTrace([Ljava/lang/StackTraceElement;Ljava/lang/String;Z)V

    .line 108
    sget-object v3, Landroid/view/ColorInjector$View;->ELEMENTS_OVERSCROLL:Ljava/util/List;

    sget-object v4, Landroid/view/ColorInjector$View$Element;->OVERSCROLL:Landroid/view/ColorInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v3, Landroid/view/ColorInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v4, Landroid/view/ColorInjector$View$Element;->MMAWAKEN12:Landroid/view/ColorInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v3, Landroid/view/ColorInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v4, Landroid/view/ColorInjector$View$Element;->MMAWAKEN14:Landroid/view/ColorInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v3, Landroid/view/ColorInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v4, Landroid/view/ColorInjector$View$Element;->MMAWAKEN15:Landroid/view/ColorInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v3, Landroid/view/ColorInjector$View;->ELEMENTS_SCROLL:Ljava/util/List;

    sget-object v4, Landroid/view/ColorInjector$View$Element;->QQSCROLL:Landroid/view/ColorInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v3, Landroid/view/ColorInjector$View;->ELEMENTS_SCROLL:Ljava/util/List;

    sget-object v4, Landroid/view/ColorInjector$View$Element;->SCROLL:Landroid/view/ColorInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v3, Landroid/view/ColorInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    invoke-static {v2, v3}, Landroid/view/ColorInjector$View;->isElement([Ljava/lang/StackTraceElement;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 121
    :cond_0
    :goto_0
    invoke-static {}, Landroid/view/ColorInjector$View;->clearElements()V

    .line 124
    .end local v2    # "stacks":[Ljava/lang/StackTraceElement;
    :cond_1
    return v0

    .line 116
    .restart local v2    # "stacks":[Ljava/lang/StackTraceElement;
    :cond_2
    sget-object v3, Landroid/view/ColorInjector$View;->ELEMENTS_OVERSCROLL:Ljava/util/List;

    invoke-static {v2, v3}, Landroid/view/ColorInjector$View;->isElement([Ljava/lang/StackTraceElement;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 117
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/color/screenshot/ColorScreenshotManager;->notifyLongshotScroll(Z)V

    goto :goto_0

    .line 118
    :cond_3
    sget-object v3, Landroid/view/ColorInjector$View;->ELEMENTS_SCROLL:Ljava/util/List;

    invoke-static {v2, v3}, Landroid/view/ColorInjector$View;->isElement([Ljava/lang/StackTraceElement;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 119
    invoke-virtual {v1, v5}, Lcom/color/screenshot/ColorScreenshotManager;->notifyLongshotScroll(Z)V

    goto :goto_0
.end method

.method public static onOverScrolled(Landroid/content/Context;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isOverScroll"    # Z

    .prologue
    const/4 v6, 0x0

    .line 46
    const-string v3, "ColorInjector.View"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onOverScrolled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v3, v4}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v3, "color_screenshot"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/screenshot/ColorScreenshotManager;

    .line 49
    .local v1, "sm":Lcom/color/screenshot/ColorScreenshotManager;
    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {v1}, Lcom/color/screenshot/ColorScreenshotManager;->isLongshotMoveState()Z

    move-result v0

    .line 51
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 52
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 53
    .local v2, "stacks":[Ljava/lang/StackTraceElement;
    const-string/jumbo v3, "onOverScrolled"

    invoke-static {v2, v3, v6}, Lcom/color/util/ColorLog;->printStackTrace([Ljava/lang/StackTraceElement;Ljava/lang/String;Z)V

    .line 54
    sget-object v3, Landroid/view/ColorInjector$View;->ELEMENTS_OVERSCROLL:Ljava/util/List;

    sget-object v4, Landroid/view/ColorInjector$View$Element;->LISTOVERSCROLL:Landroid/view/ColorInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v3, Landroid/view/ColorInjector$View;->ELEMENTS_NOOVERSCROLL:Ljava/util/List;

    sget-object v4, Landroid/view/ColorInjector$View$Element;->WEBOVERSCROLL:Landroid/view/ColorInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v3, Landroid/view/ColorInjector$View;->ELEMENTS_NOOVERSCROLL:Ljava/util/List;

    sget-object v4, Landroid/view/ColorInjector$View$Element;->BROWSERSCROLL:Landroid/view/ColorInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v3, Landroid/view/ColorInjector$View;->ELEMENTS_NOOVERSCROLL:Ljava/util/List;

    sget-object v4, Landroid/view/ColorInjector$View$Element;->BROWSEROVERSCROLL:Landroid/view/ColorInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v3, Landroid/view/ColorInjector$View;->ELEMENTS_NOOVERSCROLL:Ljava/util/List;

    invoke-static {v2, v3}, Landroid/view/ColorInjector$View;->isElement([Ljava/lang/StackTraceElement;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 66
    :goto_0
    invoke-static {}, Landroid/view/ColorInjector$View;->clearElements()V

    .line 69
    .end local v0    # "result":Z
    .end local v2    # "stacks":[Ljava/lang/StackTraceElement;
    :cond_0
    return-void

    .line 60
    .restart local v0    # "result":Z
    .restart local v2    # "stacks":[Ljava/lang/StackTraceElement;
    :cond_1
    sget-object v3, Landroid/view/ColorInjector$View;->ELEMENTS_OVERSCROLL:Ljava/util/List;

    invoke-static {v2, v3}, Landroid/view/ColorInjector$View;->isElement([Ljava/lang/StackTraceElement;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 62
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/color/screenshot/ColorScreenshotManager;->notifyLongshotScroll(Z)V

    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {v1, v6}, Lcom/color/screenshot/ColorScreenshotManager;->notifyLongshotScroll(Z)V

    goto :goto_0
.end method

.method public static onScrollChanged(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 72
    const-string v3, "ColorInjector.View"

    const-string/jumbo v4, "onScrollChanged"

    invoke-static {v5, v3, v4}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v3, "color_screenshot"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/screenshot/ColorScreenshotManager;

    .line 75
    .local v1, "sm":Lcom/color/screenshot/ColorScreenshotManager;
    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {v1}, Lcom/color/screenshot/ColorScreenshotManager;->isLongshotMoveState()Z

    move-result v0

    .line 77
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 78
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 79
    .local v2, "stacks":[Ljava/lang/StackTraceElement;
    const-string/jumbo v3, "onScrollChanged"

    invoke-static {v2, v3, v5}, Lcom/color/util/ColorLog;->printStackTrace([Ljava/lang/StackTraceElement;Ljava/lang/String;Z)V

    .line 80
    sget-object v3, Landroid/view/ColorInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v4, Landroid/view/ColorInjector$View$Element;->MMCHANGE9:Landroid/view/ColorInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v3, Landroid/view/ColorInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v4, Landroid/view/ColorInjector$View$Element;->MMCHANGE12:Landroid/view/ColorInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v3, Landroid/view/ColorInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v4, Landroid/view/ColorInjector$View$Element;->MMCHANGE14:Landroid/view/ColorInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v3, Landroid/view/ColorInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v4, Landroid/view/ColorInjector$View$Element;->MMCHANGE15:Landroid/view/ColorInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v3, Landroid/view/ColorInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v4, Landroid/view/ColorInjector$View$Element;->CONTENTSCROLL:Landroid/view/ColorInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v3, Landroid/view/ColorInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v4, Landroid/view/ColorInjector$View$Element;->BROWSERSCROLL:Landroid/view/ColorInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v3, Landroid/view/ColorInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v4, Landroid/view/ColorInjector$View$Element;->QZONESCROLL:Landroid/view/ColorInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v3, Landroid/view/ColorInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v4, Landroid/view/ColorInjector$View$Element;->WEBSCROLL:Landroid/view/ColorInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v3, Landroid/view/ColorInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    invoke-static {v2, v3}, Landroid/view/ColorInjector$View;->isElement([Ljava/lang/StackTraceElement;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 93
    :goto_0
    invoke-static {}, Landroid/view/ColorInjector$View;->clearElements()V

    .line 96
    .end local v0    # "result":Z
    .end local v2    # "stacks":[Ljava/lang/StackTraceElement;
    :cond_0
    return-void

    .line 91
    .restart local v0    # "result":Z
    .restart local v2    # "stacks":[Ljava/lang/StackTraceElement;
    :cond_1
    invoke-virtual {v1, v5}, Lcom/color/screenshot/ColorScreenshotManager;->notifyLongshotScroll(Z)V

    goto :goto_0
.end method
