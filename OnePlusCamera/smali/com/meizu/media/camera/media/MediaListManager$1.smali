.class final Lcom/meizu/media/camera/media/MediaListManager$1;
.super Ljava/lang/Object;
.source "MediaListManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/media/MediaListManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/meizu/media/camera/media/MediaInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/meizu/media/camera/media/MediaInfo;Lcom/meizu/media/camera/media/MediaInfo;)I
    .locals 12
    .param p1, "lhs"    # Lcom/meizu/media/camera/media/MediaInfo;
    .param p2, "rhs"    # Lcom/meizu/media/camera/media/MediaInfo;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 92
    invoke-virtual {p2}, Lcom/meizu/media/camera/media/MediaInfo;->getTakenTime()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/meizu/media/camera/media/MediaInfo;->getTakenTime()J

    move-result-wide v8

    sub-long v2, v6, v8

    .line 93
    .local v2, "timeDiff":J
    cmp-long v6, v2, v10

    if-gez v6, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v4

    .line 95
    :cond_1
    cmp-long v6, v2, v10

    if-lez v6, :cond_2

    move v4, v5

    .line 96
    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {p1}, Lcom/meizu/media/camera/media/MediaInfo;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "lhsFilePath":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/meizu/media/camera/media/MediaInfo;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "rhsFilePath":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 103
    if-eqz v1, :cond_0

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    neg-int v4, v4

    goto :goto_0

    .line 107
    :cond_3
    if-eqz v1, :cond_4

    move v4, v5

    .line 108
    goto :goto_0

    .line 111
    :cond_4
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 87
    check-cast p1, Lcom/meizu/media/camera/media/MediaInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/meizu/media/camera/media/MediaInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/meizu/media/camera/media/MediaListManager$1;->compare(Lcom/meizu/media/camera/media/MediaInfo;Lcom/meizu/media/camera/media/MediaInfo;)I

    move-result v0

    return v0
.end method
