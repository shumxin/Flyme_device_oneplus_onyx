.class Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;
.super Ljava/lang/Object;
.source "OppoPermissionInterceptPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OppoPermissionInterceptPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackagePermission"
.end annotation


# instance fields
.field accept:I

.field id:I

.field packageName:Ljava/lang/String;

.field prompt:I

.field reject:I

.field final synthetic this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

.field trust:I


# direct methods
.method constructor <init>(Lcom/android/server/am/OppoPermissionInterceptPolicy;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copy()Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;

    iget-object v1, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    invoke-direct {v0, v1}, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;-><init>(Lcom/android/server/am/OppoPermissionInterceptPolicy;)V

    .line 131
    .local v0, "copy":Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;
    iget v1, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->id:I

    iput v1, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->id:I

    .line 132
    iget-object v1, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->packageName:Ljava/lang/String;

    .line 133
    iget v1, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->accept:I

    iput v1, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->accept:I

    .line 134
    iget v1, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->reject:I

    iput v1, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->reject:I

    .line 135
    iget v1, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->prompt:I

    iput v1, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->prompt:I

    .line 136
    iget v1, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->trust:I

    iput v1, v0, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->trust:I

    .line 137
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accept="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->accept:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->reject:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", prompt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->prompt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", trust="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->trust:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
