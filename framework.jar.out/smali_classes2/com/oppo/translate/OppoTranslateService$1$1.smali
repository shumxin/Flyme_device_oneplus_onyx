.class Lcom/oppo/translate/OppoTranslateService$1$1;
.super Ljava/lang/Object;
.source "OppoTranslateService.java"

# interfaces
.implements Lcom/oppo/app/OppoSecurityAlertDialog$OnSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/translate/OppoTranslateService$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oppo/translate/OppoTranslateService$1;


# direct methods
.method constructor <init>(Lcom/oppo/translate/OppoTranslateService$1;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/oppo/translate/OppoTranslateService$1$1;->this$1:Lcom/oppo/translate/OppoTranslateService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/content/DialogInterface;ZI)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "isCheck"    # Z
    .param p3, "whichButton"    # I

    .prologue
    const/4 v0, 0x1

    .line 136
    const-string v1, "OppoTranslateService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSelected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : isCheck="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/oppo/translate/OppoTranslateService$1$1;->this$1:Lcom/oppo/translate/OppoTranslateService$1;

    iget-object v1, v1, Lcom/oppo/translate/OppoTranslateService$1;->this$0:Lcom/oppo/translate/OppoTranslateService;

    # setter for: Lcom/oppo/translate/OppoTranslateService;->mAlwaysAccepted:Z
    invoke-static {v1, p2}, Lcom/oppo/translate/OppoTranslateService;->access$202(Lcom/oppo/translate/OppoTranslateService;Z)Z

    .line 138
    if-eqz p3, :cond_0

    .line 139
    iget-object v1, p0, Lcom/oppo/translate/OppoTranslateService$1$1;->this$1:Lcom/oppo/translate/OppoTranslateService$1;

    iget-object v1, v1, Lcom/oppo/translate/OppoTranslateService$1;->this$0:Lcom/oppo/translate/OppoTranslateService;

    const/4 v2, -0x1

    if-ne p3, v2, :cond_1

    :goto_0
    # setter for: Lcom/oppo/translate/OppoTranslateService;->mCurrentAccepted:Z
    invoke-static {v1, v0}, Lcom/oppo/translate/OppoTranslateService;->access$302(Lcom/oppo/translate/OppoTranslateService;Z)Z

    .line 141
    :cond_0
    return-void

    .line 139
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
