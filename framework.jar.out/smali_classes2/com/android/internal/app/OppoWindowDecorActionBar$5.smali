.class Lcom/android/internal/app/OppoWindowDecorActionBar$5;
.super Ljava/lang/Object;
.source "OppoWindowDecorActionBar.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/OppoWindowDecorActionBar;->initScreenInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;


# direct methods
.method constructor <init>(Lcom/android/internal/app/OppoWindowDecorActionBar;)V
    .locals 0

    .prologue
    .line 570
    iput-object p1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$5;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$5;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    iget-object v1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$5;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    # getter for: Lcom/android/internal/app/OppoWindowDecorActionBar;->mScreenLayout:Landroid/view/View;
    invoke-static {v1}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$1100(Lcom/android/internal/app/OppoWindowDecorActionBar;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    # setter for: Lcom/android/internal/app/OppoWindowDecorActionBar;->mScreenHeight:I
    invoke-static {v0, v1}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$1002(Lcom/android/internal/app/OppoWindowDecorActionBar;I)I

    .line 581
    return-void
.end method
