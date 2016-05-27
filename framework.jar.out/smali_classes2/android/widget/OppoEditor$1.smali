.class Landroid/widget/OppoEditor$1;
.super Ljava/lang/Object;
.source "OppoEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/OppoEditor;->onTouchUpEvent(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/OppoEditor;


# direct methods
.method constructor <init>(Landroid/widget/OppoEditor;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Landroid/widget/OppoEditor$1;->this$0:Landroid/widget/OppoEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Landroid/widget/OppoEditor$1;->this$0:Landroid/widget/OppoEditor;

    invoke-virtual {v0}, Landroid/widget/OppoEditor;->showSuggestions()V

    .line 198
    return-void
.end method
