.class Lcom/android/internal/telephony/SubscriptionController$3;
.super Ljava/lang/Object;
.source "SubscriptionController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SubscriptionController;->getActiveSubInfoList()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/telephony/SubInfoRecord;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SubscriptionController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SubscriptionController;)V
    .locals 0

    .prologue
    .line 2118
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionController$3;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/telephony/SubInfoRecord;Landroid/telephony/SubInfoRecord;)I
    .locals 3
    .param p1, "arg0"    # Landroid/telephony/SubInfoRecord;
    .param p2, "arg1"    # Landroid/telephony/SubInfoRecord;

    .prologue
    .line 2122
    invoke-virtual {p1}, Landroid/telephony/SubInfoRecord;->getSimSlotIndex()I

    move-result v1

    invoke-virtual {p2}, Landroid/telephony/SubInfoRecord;->getSimSlotIndex()I

    move-result v2

    sub-int v0, v1, v2

    .line 2123
    .local v0, "flag":I
    if-nez v0, :cond_0

    .line 2125
    invoke-virtual {p1}, Landroid/telephony/SubInfoRecord;->getSubscriptionId()I

    move-result v1

    invoke-virtual {p2}, Landroid/telephony/SubInfoRecord;->getSubscriptionId()I

    move-result v2

    sub-int v0, v1, v2

    .line 2127
    .end local v0    # "flag":I
    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 2118
    check-cast p1, Landroid/telephony/SubInfoRecord;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/telephony/SubInfoRecord;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SubscriptionController$3;->compare(Landroid/telephony/SubInfoRecord;Landroid/telephony/SubInfoRecord;)I

    move-result v0

    return v0
.end method
