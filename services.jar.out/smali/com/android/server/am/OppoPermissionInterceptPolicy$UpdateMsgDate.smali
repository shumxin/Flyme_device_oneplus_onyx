.class Lcom/android/server/am/OppoPermissionInterceptPolicy$UpdateMsgDate;
.super Ljava/lang/Object;
.source "OppoPermissionInterceptPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OppoPermissionInterceptPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateMsgDate"
.end annotation


# instance fields
.field choice:I

.field packageName:Ljava/lang/String;

.field permission:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/am/OppoPermissionInterceptPolicy;)V
    .locals 0

    .prologue
    .line 763
    iput-object p1, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$UpdateMsgDate;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/OppoPermissionInterceptPolicy;Lcom/android/server/am/OppoPermissionInterceptPolicy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/am/OppoPermissionInterceptPolicy;
    .param p2, "x1"    # Lcom/android/server/am/OppoPermissionInterceptPolicy$1;

    .prologue
    .line 763
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoPermissionInterceptPolicy$UpdateMsgDate;-><init>(Lcom/android/server/am/OppoPermissionInterceptPolicy;)V

    return-void
.end method
