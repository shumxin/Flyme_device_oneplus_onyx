.class Lcom/oppo/media/MediaScanner$1;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/media/MediaScanner;->scanFileInNewThread(Ljava/lang/String;JJZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/media/MediaScanner;

.field final synthetic val$fileSize:J

.field final synthetic val$isDirectory:Z

.field final synthetic val$lastModified:J

.field final synthetic val$noMedia:Z

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oppo/media/MediaScanner;Ljava/lang/String;JJZZ)V
    .locals 1

    .prologue
    .line 2607
    iput-object p1, p0, Lcom/oppo/media/MediaScanner$1;->this$0:Lcom/oppo/media/MediaScanner;

    iput-object p2, p0, Lcom/oppo/media/MediaScanner$1;->val$path:Ljava/lang/String;

    iput-wide p3, p0, Lcom/oppo/media/MediaScanner$1;->val$lastModified:J

    iput-wide p5, p0, Lcom/oppo/media/MediaScanner$1;->val$fileSize:J

    iput-boolean p7, p0, Lcom/oppo/media/MediaScanner$1;->val$isDirectory:Z

    iput-boolean p8, p0, Lcom/oppo/media/MediaScanner$1;->val$noMedia:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 2610
    new-instance v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;

    iget-object v1, p0, Lcom/oppo/media/MediaScanner$1;->this$0:Lcom/oppo/media/MediaScanner;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;-><init>(Lcom/oppo/media/MediaScanner;Lcom/oppo/media/MediaScanner$1;)V

    .line 2611
    .local v0, "client":Lcom/oppo/media/MediaScanner$MyMediaScannerClient;
    iget-object v1, p0, Lcom/oppo/media/MediaScanner$1;->val$path:Ljava/lang/String;

    iget-wide v2, p0, Lcom/oppo/media/MediaScanner$1;->val$lastModified:J

    iget-wide v4, p0, Lcom/oppo/media/MediaScanner$1;->val$fileSize:J

    iget-boolean v6, p0, Lcom/oppo/media/MediaScanner$1;->val$isDirectory:Z

    iget-boolean v7, p0, Lcom/oppo/media/MediaScanner$1;->val$noMedia:Z

    invoke-virtual/range {v0 .. v7}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->scanFile(Ljava/lang/String;JJZZ)V

    .line 2612
    return-void
.end method
