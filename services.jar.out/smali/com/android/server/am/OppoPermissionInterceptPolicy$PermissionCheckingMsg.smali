.class Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;
.super Ljava/lang/Object;
.source "OppoPermissionInterceptPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OppoPermissionInterceptPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PermissionCheckingMsg"
.end annotation


# instance fields
.field callback:Lcom/android/server/am/OppoPermissionCallback;

.field permission:Ljava/lang/String;

.field permissionMask:I

.field pr:Lcom/android/server/am/ProcessRecord;

.field final synthetic this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

.field token:I

.field uid:I


# direct methods
.method constructor <init>(Lcom/android/server/am/OppoPermissionInterceptPolicy;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;)Z
    .locals 2
    .param p1, "o"    # Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->permission:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->permission:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->permission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->uid:I

    iget v1, p1, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->uid:I

    if-ne v0, v1, :cond_0

    .line 108
    const/4 v0, 0x1

    .line 110
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[permission="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->permission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->pr:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", permissionMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->permissionMask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->token:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->callback:Lcom/android/server/am/OppoPermissionCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
