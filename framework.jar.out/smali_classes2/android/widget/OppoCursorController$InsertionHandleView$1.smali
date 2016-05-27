.class Landroid/widget/OppoCursorController$InsertionHandleView$1;
.super Ljava/lang/Object;
.source "OppoCursorController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/OppoCursorController$InsertionHandleView;->hideAfterDelay(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/OppoCursorController$InsertionHandleView;


# direct methods
.method constructor <init>(Landroid/widget/OppoCursorController$InsertionHandleView;)V
    .locals 0

    .prologue
    .line 1129
    iput-object p1, p0, Landroid/widget/OppoCursorController$InsertionHandleView$1;->this$1:Landroid/widget/OppoCursorController$InsertionHandleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1131
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionHandleView$1;->this$1:Landroid/widget/OppoCursorController$InsertionHandleView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/OppoCursorController$InsertionHandleView;->setVisibility(I)V

    .line 1132
    return-void
.end method
