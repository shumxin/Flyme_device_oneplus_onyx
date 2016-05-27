.class Lcom/android/internal/os/storage/ExternalStorageFormatter$ToastHandler;
.super Landroid/os/Handler;
.source "ExternalStorageFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/storage/ExternalStorageFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToastHandler"
.end annotation


# static fields
.field public static final EXCEPTION_TOAST:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;


# direct methods
.method private constructor <init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;)V
    .locals 0

    .prologue
    .line 528
    iput-object p1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$ToastHandler;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;Lcom/android/internal/os/storage/ExternalStorageFormatter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/os/storage/ExternalStorageFormatter;
    .param p2, "x1"    # Lcom/android/internal/os/storage/ExternalStorageFormatter$1;

    .prologue
    .line 528
    invoke-direct {p0, p1}, Lcom/android/internal/os/storage/ExternalStorageFormatter$ToastHandler;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 532
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v2, v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$ToastHandler;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    const v1, 0x1040581

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 536
    :cond_0
    return-void
.end method
