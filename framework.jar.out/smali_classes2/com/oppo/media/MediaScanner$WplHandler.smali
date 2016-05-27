.class Lcom/oppo/media/MediaScanner$WplHandler;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Landroid/sax/ElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WplHandler"
.end annotation


# instance fields
.field final handler:Lorg/xml/sax/ContentHandler;

.field playListDirectory:Ljava/lang/String;

.field final synthetic this$0:Lcom/oppo/media/MediaScanner;


# direct methods
.method public constructor <init>(Lcom/oppo/media/MediaScanner;Ljava/lang/String;Landroid/net/Uri;Landroid/database/Cursor;)V
    .locals 5
    .param p2, "playListDirectory"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "fileList"    # Landroid/database/Cursor;

    .prologue
    .line 2167
    iput-object p1, p0, Lcom/oppo/media/MediaScanner$WplHandler;->this$0:Lcom/oppo/media/MediaScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2168
    iput-object p2, p0, Lcom/oppo/media/MediaScanner$WplHandler;->playListDirectory:Ljava/lang/String;

    .line 2170
    new-instance v2, Landroid/sax/RootElement;

    const-string v4, "smil"

    invoke-direct {v2, v4}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;)V

    .line 2171
    .local v2, "root":Landroid/sax/RootElement;
    const-string v4, "body"

    invoke-virtual {v2, v4}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    .line 2172
    .local v0, "body":Landroid/sax/Element;
    const-string v4, "seq"

    invoke-virtual {v0, v4}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v3

    .line 2173
    .local v3, "seq":Landroid/sax/Element;
    const-string v4, "media"

    invoke-virtual {v3, v4}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    .line 2174
    .local v1, "media":Landroid/sax/Element;
    invoke-virtual {v1, p0}, Landroid/sax/Element;->setElementListener(Landroid/sax/ElementListener;)V

    .line 2176
    invoke-virtual {v2}, Landroid/sax/RootElement;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/media/MediaScanner$WplHandler;->handler:Lorg/xml/sax/ContentHandler;

    .line 2177
    return-void
.end method


# virtual methods
.method public end()V
    .locals 0

    .prologue
    .line 2189
    return-void
.end method

.method getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    .prologue
    .line 2192
    iget-object v0, p0, Lcom/oppo/media/MediaScanner$WplHandler;->handler:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method public start(Lorg/xml/sax/Attributes;)V
    .locals 3
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 2181
    const-string v1, ""

    const-string v2, "src"

    invoke-interface {p1, v1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2182
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2183
    iget-object v1, p0, Lcom/oppo/media/MediaScanner$WplHandler;->this$0:Lcom/oppo/media/MediaScanner;

    iget-object v2, p0, Lcom/oppo/media/MediaScanner$WplHandler;->playListDirectory:Ljava/lang/String;

    # invokes: Lcom/oppo/media/MediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v0, v2}, Lcom/oppo/media/MediaScanner;->access$3700(Lcom/oppo/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;)V

    .line 2185
    :cond_0
    return-void
.end method
