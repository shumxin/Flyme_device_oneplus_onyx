.class Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$AnimDataInfo;
.super Ljava/lang/Object;
.source "OppoScreenOffGestureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimDataInfo"
.end annotation


# instance fields
.field public mMode:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;I)V
    .locals 1
    .param p2, "nMode"    # I

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$AnimDataInfo;->this$0:Lcom/android/internal/policy/impl/OppoScreenOffGestureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$AnimDataInfo;->mMode:I

    .line 88
    iput p2, p0, Lcom/android/internal/policy/impl/OppoScreenOffGestureManager$AnimDataInfo;->mMode:I

    .line 89
    return-void
.end method
