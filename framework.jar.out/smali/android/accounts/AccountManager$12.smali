.class Landroid/accounts/AccountManager$12;
.super Landroid/accounts/AccountManager$AmsTask;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/AccountManager;->addAccountAsUser(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accounts/AccountManager;

.field final synthetic val$accountType:Ljava/lang/String;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$authTokenType:Ljava/lang/String;

.field final synthetic val$optionsIn:Landroid/os/Bundle;

.field final synthetic val$requiredFeatures:[Ljava/lang/String;

.field final synthetic val$userHandle:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 0
    .param p2, "x0"    # Landroid/app/Activity;
    .param p3, "x1"    # Landroid/os/Handler;

    .prologue
    .line 1554
    .local p4, "x2":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    iput-object p1, p0, Landroid/accounts/AccountManager$12;->this$0:Landroid/accounts/AccountManager;

    iput-object p5, p0, Landroid/accounts/AccountManager$12;->val$accountType:Ljava/lang/String;

    iput-object p6, p0, Landroid/accounts/AccountManager$12;->val$authTokenType:Ljava/lang/String;

    iput-object p7, p0, Landroid/accounts/AccountManager$12;->val$requiredFeatures:[Ljava/lang/String;

    iput-object p8, p0, Landroid/accounts/AccountManager$12;->val$activity:Landroid/app/Activity;

    iput-object p9, p0, Landroid/accounts/AccountManager$12;->val$optionsIn:Landroid/os/Bundle;

    iput-object p10, p0, Landroid/accounts/AccountManager$12;->val$userHandle:Landroid/os/UserHandle;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/accounts/AccountManager$AmsTask;-><init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)V

    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1557
    const-string v0, "AccountManager"

    const-string v1, "doWork"

    invoke-static {v0, v1}, Landroid/util/SeempJavaFilter;->check(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1558
    const-string v8, "AccountManager|doWork|--end"

    .line 1559
    .local v8, "paras":Ljava/lang/String;
    invoke-static {v8}, Landroid/util/SeempLog;->record(Ljava/lang/String;)I

    .line 1562
    .end local v8    # "paras":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Landroid/accounts/AccountManager$12;->this$0:Landroid/accounts/AccountManager;

    # getter for: Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;
    invoke-static {v0}, Landroid/accounts/AccountManager;->access$000(Landroid/accounts/AccountManager;)Landroid/accounts/IAccountManager;

    move-result-object v0

    iget-object v1, p0, Landroid/accounts/AccountManager$12;->mResponse:Landroid/accounts/IAccountManagerResponse;

    iget-object v2, p0, Landroid/accounts/AccountManager$12;->val$accountType:Ljava/lang/String;

    iget-object v3, p0, Landroid/accounts/AccountManager$12;->val$authTokenType:Ljava/lang/String;

    iget-object v4, p0, Landroid/accounts/AccountManager$12;->val$requiredFeatures:[Ljava/lang/String;

    iget-object v5, p0, Landroid/accounts/AccountManager$12;->val$activity:Landroid/app/Activity;

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    iget-object v6, p0, Landroid/accounts/AccountManager$12;->val$optionsIn:Landroid/os/Bundle;

    iget-object v7, p0, Landroid/accounts/AccountManager$12;->val$userHandle:Landroid/os/UserHandle;

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-interface/range {v0 .. v7}, Landroid/accounts/IAccountManager;->addAccountAsUser(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;I)V

    .line 1564
    return-void

    .line 1562
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method
