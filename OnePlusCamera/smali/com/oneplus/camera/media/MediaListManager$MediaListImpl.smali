.class final Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;
.super Lcom/oneplus/base/ListHandlerBaseObject;
.source "MediaListManager.java"

# interfaces
.implements Lcom/oneplus/camera/media/MediaList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/media/MediaListManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaListImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/base/ListHandlerBaseObject",
        "<",
        "Lcom/oneplus/camera/media/MediaInfo;",
        ">;",
        "Lcom/oneplus/camera/media/MediaList;"
    }
.end annotation


# instance fields
.field public final creationTime:J

.field public final isSecureMode:Z

.field private final m_List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/media/MediaInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 2
    .param p1, "isSecureMode"    # Z

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/oneplus/base/ListHandlerBaseObject;-><init>()V

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    .line 127
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->creationTime:J

    .line 128
    iput-boolean p1, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->isSecureMode:Z

    .line 129
    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->onMediaAdded(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->onMediaCleared()V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;[Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->onMediaRemoved([Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->removeMedia(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;Lcom/oneplus/camera/media/MediaInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;
    .param p1, "x1"    # Lcom/oneplus/camera/media/MediaInfo;

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->removeMedia(Lcom/oneplus/camera/media/MediaInfo;)V

    return-void
.end method

.method private onMediaAdded(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/media/MediaInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, "media":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    sget-object v0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 227
    sget-object v0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->EVENT_CHANGED:Lcom/oneplus/base/EventKey;

    sget-object v1, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    goto :goto_0
.end method

.method private onMediaCleared()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 236
    sget-object v0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->EVENT_CHANGED:Lcom/oneplus/base/EventKey;

    sget-object v1, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 238
    :cond_0
    return-void
.end method

.method private varargs onMediaRemoved([Ljava/lang/Object;)Z
    .locals 5
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 243
    sget-object v3, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v4

    .line 263
    :cond_0
    :goto_0
    return v2

    .line 245
    :cond_1
    const/4 v2, 0x0

    .line 246
    .local v2, "removedSucceed":Z
    aget-object v3, p1, v4

    instance-of v3, v3, Lcom/oneplus/camera/media/MediaInfo;

    if-eqz v3, :cond_3

    .line 248
    iget-object v3, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    aget-object v4, p1, v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 259
    :cond_2
    if-eqz v2, :cond_0

    .line 261
    sget-object v3, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->EVENT_CHANGED:Lcom/oneplus/base/EventKey;

    sget-object v4, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    goto :goto_0

    .line 252
    :cond_3
    aget-object v0, p1, v4

    check-cast v0, Ljava/util/List;

    .line 253
    .local v0, "deletedList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "j":I
    :goto_1
    if-ltz v1, :cond_2

    .line 255
    iget-object v3, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 256
    const/4 v2, 0x1

    .line 253
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method private removeMedia(Lcom/oneplus/camera/media/MediaInfo;)V
    .locals 2
    .param p1, "media"    # Lcom/oneplus/camera/media/MediaInfo;

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 360
    invoke-virtual {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$5;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$5;-><init>(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;Lcom/oneplus/camera/media/MediaInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->TAG:Ljava/lang/String;

    const-string v1, "removeMedia() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->onMediaRemoved([Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private removeMedia(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/media/MediaInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 379
    .local p1, "deletedList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    invoke-virtual {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 381
    invoke-virtual {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$6;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$6;-><init>(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->TAG:Ljava/lang/String;

    const-string v1, "removeMedia() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->onMediaRemoved([Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/oneplus/camera/media/MediaInfo;)Z
    .locals 3
    .param p1, "media"    # Lcom/oneplus/camera/media/MediaInfo;

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->verifyAccess()V

    .line 136
    iget-object v1, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    # getter for: Lcom/oneplus/camera/media/MediaListManager;->m_MediaInfoComparator:Ljava/util/Comparator;
    invoke-static {}, Lcom/oneplus/camera/media/MediaListManager;->access$000()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v1, p1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 137
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 139
    iget-object v1, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    xor-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 140
    sget-object v1, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->EVENT_CHANGED:Lcom/oneplus/base/EventKey;

    sget-object v2, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 141
    const/4 v1, 0x1

    .line 143
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 117
    check-cast p1, Lcom/oneplus/camera/media/MediaInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->add(Lcom/oneplus/camera/media/MediaInfo;)Z

    move-result v0

    return v0
.end method

.method public addMedia(Lcom/oneplus/camera/media/MediaInfo;)V
    .locals 2
    .param p1, "media"    # Lcom/oneplus/camera/media/MediaInfo;

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    invoke-virtual {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$1;-><init>(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;Lcom/oneplus/camera/media/MediaInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->TAG:Ljava/lang/String;

    const-string v1, "addMedia() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->add(Lcom/oneplus/camera/media/MediaInfo;)Z

    goto :goto_0
.end method

.method public addMedia(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/media/MediaInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "media":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/MediaInfo;>;"
    invoke-virtual {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$2;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$2;-><init>(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->TAG:Ljava/lang/String;

    const-string v1, "addMedia() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    invoke-direct {p0, p1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->onMediaAdded(Ljava/util/List;)V

    goto :goto_0
.end method

.method public clearMedia()V
    .locals 2

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 191
    invoke-virtual {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$3;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$3;-><init>(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->TAG:Ljava/lang/String;

    const-string v1, "clearMedia() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->onMediaCleared()V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 211
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(I)Lcom/oneplus/camera/media/MediaInfo;
    .locals 1
    .param p1, "location"    # I

    .prologue
    .line 218
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/media/MediaInfo;

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->get(I)Lcom/oneplus/camera/media/MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 330
    invoke-super {p0}, Lcom/oneplus/base/ListHandlerBaseObject;->release()V

    .line 333
    invoke-direct {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->onMediaCleared()V

    .line 336
    # invokes: Lcom/oneplus/camera/media/MediaListManager;->onMediaListReleased(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;)V
    invoke-static {p0}, Lcom/oneplus/camera/media/MediaListManager;->access$300(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;)V

    .line 337
    return-void
.end method

.method public remove(I)Lcom/oneplus/camera/media/MediaInfo;
    .locals 3
    .param p1, "location"    # I

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->verifyAccess()V

    .line 344
    iget-object v1, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/media/MediaInfo;

    .line 345
    .local v0, "media":Lcom/oneplus/camera/media/MediaInfo;
    sget-object v1, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->EVENT_CHANGED:Lcom/oneplus/base/EventKey;

    sget-object v2, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 346
    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->remove(I)Lcom/oneplus/camera/media/MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->verifyAccess()V

    .line 352
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    check-cast p1, Lcom/oneplus/camera/media/MediaInfo;

    .end local p1    # "object":Ljava/lang/Object;
    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->onMediaRemoved([Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public replace(Lcom/oneplus/camera/media/MediaInfo;Lcom/oneplus/camera/media/MediaInfo;)Z
    .locals 4
    .param p1, "oldMedia"    # Lcom/oneplus/camera/media/MediaInfo;
    .param p2, "newMedia"    # Lcom/oneplus/camera/media/MediaInfo;

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->verifyAccess()V

    .line 270
    iget-object v2, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    # getter for: Lcom/oneplus/camera/media/MediaListManager;->m_MediaInfoComparator:Ljava/util/Comparator;
    invoke-static {}, Lcom/oneplus/camera/media/MediaListManager;->access$000()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v2, p2, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 271
    .local v0, "index":I
    if-gez v0, :cond_3

    .line 273
    xor-int/lit8 v1, v0, -0x1

    .line 274
    .local v1, "insertIndex":I
    iget-object v2, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 276
    iget-object v2, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 277
    iget-object v2, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    invoke-interface {v2, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 291
    :goto_0
    sget-object v2, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->EVENT_CHANGED:Lcom/oneplus/base/EventKey;

    sget-object v3, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 292
    const/4 v2, 0x1

    .line 294
    .end local v1    # "insertIndex":I
    :goto_1
    return v2

    .line 278
    .restart local v1    # "insertIndex":I
    :cond_0
    add-int/lit8 v2, v1, -0x1

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 279
    iget-object v2, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 282
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 283
    iget-object v2, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    invoke-interface {v2, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 288
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    invoke-interface {v2, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 289
    iget-object v2, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 294
    .end local v1    # "insertIndex":I
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public replaceMedia(Lcom/oneplus/camera/media/MediaInfo;Lcom/oneplus/camera/media/MediaInfo;)V
    .locals 2
    .param p1, "oldMedia"    # Lcom/oneplus/camera/media/MediaInfo;
    .param p2, "newMedia"    # Lcom/oneplus/camera/media/MediaInfo;

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 302
    invoke-virtual {p0}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl$4;-><init>(Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;Lcom/oneplus/camera/media/MediaInfo;Lcom/oneplus/camera/media/MediaInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->TAG:Ljava/lang/String;

    const-string v1, "replaceMedia() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->replace(Lcom/oneplus/camera/media/MediaInfo;Lcom/oneplus/camera/media/MediaInfo;)Z

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/oneplus/camera/media/MediaListManager$MediaListImpl;->m_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
