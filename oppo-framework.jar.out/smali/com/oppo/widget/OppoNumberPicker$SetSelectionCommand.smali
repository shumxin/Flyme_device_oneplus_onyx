.class Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;
.super Ljava/lang/Object;
.source "OppoNumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoNumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SetSelectionCommand"
.end annotation


# instance fields
.field private mSelectionEnd:I

.field private mSelectionStart:I

.field final synthetic this$0:Lcom/oppo/widget/OppoNumberPicker;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoNumberPicker;)V
    .locals 0

    .prologue
    .line 2116
    iput-object p1, p0, Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;->this$0:Lcom/oppo/widget/OppoNumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$602(Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;
    .param p1, "x1"    # I

    .prologue
    .line 2116
    iput p1, p0, Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;->mSelectionStart:I

    return p1
.end method

.method static synthetic access$702(Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;
    .param p1, "x1"    # I

    .prologue
    .line 2116
    iput p1, p0, Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;->mSelectionEnd:I

    return p1
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 2124
    return-void
.end method
