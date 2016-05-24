.class final Lcom/meizu/media/camera/ui/OptionsPanelImpl$ResolutionItemResource;
.super Ljava/lang/Object;
.source "OptionsPanelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/ui/OptionsPanelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ResolutionItemResource"
.end annotation


# instance fields
.field public iconResId:I

.field final synthetic this$0:Lcom/meizu/media/camera/ui/OptionsPanelImpl;

.field public titleResId:I


# direct methods
.method private constructor <init>(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 122
    iput-object p1, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$ResolutionItemResource;->this$0:Lcom/meizu/media/camera/ui/OptionsPanelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$ResolutionItemResource;->iconResId:I

    .line 125
    iput v0, p0, Lcom/meizu/media/camera/ui/OptionsPanelImpl$ResolutionItemResource;->titleResId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/media/camera/ui/OptionsPanelImpl;Lcom/meizu/media/camera/ui/OptionsPanelImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/meizu/media/camera/ui/OptionsPanelImpl;
    .param p2, "x1"    # Lcom/meizu/media/camera/ui/OptionsPanelImpl$1;

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/meizu/media/camera/ui/OptionsPanelImpl$ResolutionItemResource;-><init>(Lcom/meizu/media/camera/ui/OptionsPanelImpl;)V

    return-void
.end method
