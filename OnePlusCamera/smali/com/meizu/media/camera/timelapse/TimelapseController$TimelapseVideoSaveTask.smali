.class Lcom/meizu/media/camera/timelapse/TimelapseController$TimelapseVideoSaveTask;
.super Lcom/meizu/media/camera/io/VideoSaveTask;
.source "TimelapseController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/camera/timelapse/TimelapseController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimelapseVideoSaveTask"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/meizu/media/camera/CaptureHandle;Ljava/lang/String;Landroid/util/Size;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "captureHandle"    # Lcom/meizu/media/camera/CaptureHandle;
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "size"    # Landroid/util/Size;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meizu/media/camera/io/VideoSaveTask;-><init>(Landroid/content/Context;Lcom/meizu/media/camera/CaptureHandle;Ljava/lang/String;Landroid/util/Size;)V

    .line 43
    return-void
.end method


# virtual methods
.method protected onPrepareGalleryDatabaseValues(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Z
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 49
    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 50
    .local v0, "mediaId":J
    const-string v2, "media_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 51
    const-string v2, "oneplus_flags"

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 52
    const/4 v2, 0x1

    return v2
.end method
