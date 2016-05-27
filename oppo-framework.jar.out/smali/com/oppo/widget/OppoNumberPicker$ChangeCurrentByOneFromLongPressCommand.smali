.class Lcom/oppo/widget/OppoNumberPicker$ChangeCurrentByOneFromLongPressCommand;
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
    name = "ChangeCurrentByOneFromLongPressCommand"
.end annotation


# instance fields
.field private mIncrement:Z

.field final synthetic this$0:Lcom/oppo/widget/OppoNumberPicker;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoNumberPicker;)V
    .locals 0

    .prologue
    .line 2152
    iput-object p1, p0, Lcom/oppo/widget/OppoNumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/oppo/widget/OppoNumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$500(Lcom/oppo/widget/OppoNumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoNumberPicker$ChangeCurrentByOneFromLongPressCommand;
    .param p1, "x1"    # Z

    .prologue
    .line 2152
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoNumberPicker$ChangeCurrentByOneFromLongPressCommand;->setIncrement(Z)V

    return-void
.end method

.method private setIncrement(Z)V
    .locals 0
    .param p1, "increment"    # Z

    .prologue
    .line 2157
    iput-boolean p1, p0, Lcom/oppo/widget/OppoNumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    .line 2158
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2161
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/oppo/widget/OppoNumberPicker;

    iget-boolean v1, p0, Lcom/oppo/widget/OppoNumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    # invokes: Lcom/oppo/widget/OppoNumberPicker;->changeCurrentByOne(Z)V
    invoke-static {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->access$100(Lcom/oppo/widget/OppoNumberPicker;Z)V

    .line 2162
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/oppo/widget/OppoNumberPicker;

    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/oppo/widget/OppoNumberPicker;

    # getter for: Lcom/oppo/widget/OppoNumberPicker;->mLongPressUpdateInterval:J
    invoke-static {v1}, Lcom/oppo/widget/OppoNumberPicker;->access$2100(Lcom/oppo/widget/OppoNumberPicker;)J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/oppo/widget/OppoNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2163
    return-void
.end method
