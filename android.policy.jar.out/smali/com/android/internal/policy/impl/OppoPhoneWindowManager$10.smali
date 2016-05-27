.class Lcom/android/internal/policy/impl/OppoPhoneWindowManager$10;
.super Ljava/lang/Object;
.source "OppoPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

.field final synthetic val$msg:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1553
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    iput-object p2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$10;->val$msg:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1556
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 1557
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->access$200(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oppo/app/OppoBootMessageDialog;->create(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    .line 1558
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1560
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$10;->val$msg:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1561
    return-void
.end method
