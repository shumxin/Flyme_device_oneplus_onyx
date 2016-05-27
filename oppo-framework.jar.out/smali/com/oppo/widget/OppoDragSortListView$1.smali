.class Lcom/oppo/widget/OppoDragSortListView$1;
.super Ljava/lang/Object;
.source "OppoDragSortListView.java"

# interfaces
.implements Lcom/oppo/widget/OppoDragSortListView$DragScrollProfile;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoDragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoDragSortListView;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoDragSortListView;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/oppo/widget/OppoDragSortListView$1;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpeed(FJ)F
    .locals 1
    .param p1, "w"    # F
    .param p2, "t"    # J

    .prologue
    .line 271
    iget-object v0, p0, Lcom/oppo/widget/OppoDragSortListView$1;->this$0:Lcom/oppo/widget/OppoDragSortListView;

    # getter for: Lcom/oppo/widget/OppoDragSortListView;->mMaxScrollSpeed:F
    invoke-static {v0}, Lcom/oppo/widget/OppoDragSortListView;->access$000(Lcom/oppo/widget/OppoDragSortListView;)F

    move-result v0

    mul-float/2addr v0, p1

    return v0
.end method
