.class Lcom/oppo/translate/OppoTranslateService$1;
.super Ljava/lang/Object;
.source "OppoTranslateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/translate/OppoTranslateService;->showPromptDialog(Lcom/oppo/translate/OppoTranslateState;Lcom/oppo/translate/IOppoTranslateAskListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mOnSelectedListener:Lcom/oppo/app/OppoSecurityAlertDialog$OnSelectedListener;

.field final synthetic this$0:Lcom/oppo/translate/OppoTranslateService;

.field final synthetic val$listener:Lcom/oppo/translate/IOppoTranslateAskListener;

.field final synthetic val$savedInstanceState:Lcom/oppo/translate/OppoTranslateState;


# direct methods
.method constructor <init>(Lcom/oppo/translate/OppoTranslateService;Lcom/oppo/translate/OppoTranslateState;Lcom/oppo/translate/IOppoTranslateAskListener;)V
    .locals 1

    .prologue
    .line 130
    iput-object p1, p0, Lcom/oppo/translate/OppoTranslateService$1;->this$0:Lcom/oppo/translate/OppoTranslateService;

    iput-object p2, p0, Lcom/oppo/translate/OppoTranslateService$1;->val$savedInstanceState:Lcom/oppo/translate/OppoTranslateState;

    iput-object p3, p0, Lcom/oppo/translate/OppoTranslateService$1;->val$listener:Lcom/oppo/translate/IOppoTranslateAskListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Lcom/oppo/translate/OppoTranslateService$1$1;

    invoke-direct {v0, p0}, Lcom/oppo/translate/OppoTranslateService$1$1;-><init>(Lcom/oppo/translate/OppoTranslateService$1;)V

    iput-object v0, p0, Lcom/oppo/translate/OppoTranslateService$1;->mOnSelectedListener:Lcom/oppo/app/OppoSecurityAlertDialog$OnSelectedListener;

    .line 143
    new-instance v0, Lcom/oppo/translate/OppoTranslateService$1$2;

    invoke-direct {v0, p0}, Lcom/oppo/translate/OppoTranslateService$1$2;-><init>(Lcom/oppo/translate/OppoTranslateService$1;)V

    iput-object v0, p0, Lcom/oppo/translate/OppoTranslateService$1;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 162
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService$1;->this$0:Lcom/oppo/translate/OppoTranslateService;

    # getter for: Lcom/oppo/translate/OppoTranslateService;->mDialog:Lcom/oppo/app/OppoSecurityAlertDialog;
    invoke-static {v0}, Lcom/oppo/translate/OppoTranslateService;->access$700(Lcom/oppo/translate/OppoTranslateService;)Lcom/oppo/app/OppoSecurityAlertDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService$1;->this$0:Lcom/oppo/translate/OppoTranslateService;

    invoke-static {v0}, Lcom/oppo/util/OppoContextUtil;->getOppoThemeContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    .line 164
    .local v1, "context":Landroid/content/Context;
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService$1;->this$0:Lcom/oppo/translate/OppoTranslateService;

    # setter for: Lcom/oppo/translate/OppoTranslateService;->mAlwaysAccepted:Z
    invoke-static {v0, v4}, Lcom/oppo/translate/OppoTranslateService;->access$202(Lcom/oppo/translate/OppoTranslateService;Z)Z

    .line 165
    iget-object v6, p0, Lcom/oppo/translate/OppoTranslateService$1;->this$0:Lcom/oppo/translate/OppoTranslateService;

    new-instance v0, Lcom/oppo/app/OppoSecurityAlertDialog;

    const v2, 0xc04053f

    const v3, 0xc040540

    iget-object v5, p0, Lcom/oppo/translate/OppoTranslateService$1;->this$0:Lcom/oppo/translate/OppoTranslateService;

    # getter for: Lcom/oppo/translate/OppoTranslateService;->mAlwaysAccepted:Z
    invoke-static {v5}, Lcom/oppo/translate/OppoTranslateService;->access$200(Lcom/oppo/translate/OppoTranslateService;)Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/oppo/app/OppoSecurityAlertDialog;-><init>(Landroid/content/Context;IIZZ)V

    # setter for: Lcom/oppo/translate/OppoTranslateService;->mDialog:Lcom/oppo/app/OppoSecurityAlertDialog;
    invoke-static {v6, v0}, Lcom/oppo/translate/OppoTranslateService;->access$702(Lcom/oppo/translate/OppoTranslateService;Lcom/oppo/app/OppoSecurityAlertDialog;)Lcom/oppo/app/OppoSecurityAlertDialog;

    .line 169
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService$1;->this$0:Lcom/oppo/translate/OppoTranslateService;

    # getter for: Lcom/oppo/translate/OppoTranslateService;->mDialog:Lcom/oppo/app/OppoSecurityAlertDialog;
    invoke-static {v0}, Lcom/oppo/translate/OppoTranslateService;->access$700(Lcom/oppo/translate/OppoTranslateService;)Lcom/oppo/app/OppoSecurityAlertDialog;

    move-result-object v0

    const/16 v2, 0x7d3

    invoke-virtual {v0, v2}, Lcom/oppo/app/OppoSecurityAlertDialog;->setWindowType(I)V

    .line 170
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService$1;->this$0:Lcom/oppo/translate/OppoTranslateService;

    # getter for: Lcom/oppo/translate/OppoTranslateService;->mDialog:Lcom/oppo/app/OppoSecurityAlertDialog;
    invoke-static {v0}, Lcom/oppo/translate/OppoTranslateService;->access$700(Lcom/oppo/translate/OppoTranslateService;)Lcom/oppo/app/OppoSecurityAlertDialog;

    move-result-object v0

    iget-object v2, p0, Lcom/oppo/translate/OppoTranslateService$1;->mOnSelectedListener:Lcom/oppo/app/OppoSecurityAlertDialog$OnSelectedListener;

    invoke-virtual {v0, v2}, Lcom/oppo/app/OppoSecurityAlertDialog;->setOnSelectedListener(Lcom/oppo/app/OppoSecurityAlertDialog$OnSelectedListener;)V

    .line 171
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService$1;->this$0:Lcom/oppo/translate/OppoTranslateService;

    # getter for: Lcom/oppo/translate/OppoTranslateService;->mDialog:Lcom/oppo/app/OppoSecurityAlertDialog;
    invoke-static {v0}, Lcom/oppo/translate/OppoTranslateService;->access$700(Lcom/oppo/translate/OppoTranslateService;)Lcom/oppo/app/OppoSecurityAlertDialog;

    move-result-object v0

    iget-object v2, p0, Lcom/oppo/translate/OppoTranslateService$1;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v2}, Lcom/oppo/app/OppoSecurityAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 173
    .end local v1    # "context":Landroid/content/Context;
    :cond_0
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateService$1;->this$0:Lcom/oppo/translate/OppoTranslateService;

    # getter for: Lcom/oppo/translate/OppoTranslateService;->mDialog:Lcom/oppo/app/OppoSecurityAlertDialog;
    invoke-static {v0}, Lcom/oppo/translate/OppoTranslateService;->access$700(Lcom/oppo/translate/OppoTranslateService;)Lcom/oppo/app/OppoSecurityAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/app/OppoSecurityAlertDialog;->show()V

    .line 174
    return-void
.end method
