.class public abstract Lcom/oneplus/widget/FilmstripView$Adapter;
.super Ljava/lang/Object;
.source "FilmstripView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/widget/FilmstripView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Adapter"
.end annotation


# static fields
.field private static final MSG_NOTIFY_ITEM_SIZE_CHANGED:I = 0x2710


# instance fields
.field private final m_FilmstripViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/widget/FilmstripView;",
            ">;"
        }
    .end annotation
.end field

.field private final m_Handler:Landroid/os/Handler;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView$Adapter;->m_FilmstripViews:Ljava/util/List;

    .line 125
    new-instance v0, Lcom/oneplus/widget/FilmstripView$Adapter$1;

    invoke-direct {v0, p0}, Lcom/oneplus/widget/FilmstripView$Adapter$1;-><init>(Lcom/oneplus/widget/FilmstripView$Adapter;)V

    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView$Adapter;->m_Handler:Landroid/os/Handler;

    .line 133
    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/widget/FilmstripView$Adapter;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/widget/FilmstripView$Adapter;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView$Adapter;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 167
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 174
    :cond_0
    return-void

    .line 170
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView$Adapter;->m_FilmstripViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 171
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView$Adapter;->m_FilmstripViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/widget/FilmstripView;

    # invokes: Lcom/oneplus/widget/FilmstripView;->onItemSizeChanged()V
    invoke-static {v1}, Lcom/oneplus/widget/FilmstripView;->access$400(Lcom/oneplus/widget/FilmstripView;)V

    .line 170
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method final attach(Lcom/oneplus/widget/FilmstripView;)V
    .locals 1
    .param p1, "view"    # Lcom/oneplus/widget/FilmstripView;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView$Adapter;->m_FilmstripViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    return-void
.end method

.method final detach(Lcom/oneplus/widget/FilmstripView;)V
    .locals 1
    .param p1, "view"    # Lcom/oneplus/widget/FilmstripView;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView$Adapter;->m_FilmstripViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 145
    return-void
.end method

.method public abstract getCount()I
.end method

.method public getItemWidth(II)I
    .locals 0
    .param p1, "position"    # I
    .param p2, "filmstripWidth"    # I

    .prologue
    .line 161
    return p2
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 181
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView$Adapter;->m_FilmstripViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 182
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView$Adapter;->m_FilmstripViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/widget/FilmstripView;

    # invokes: Lcom/oneplus/widget/FilmstripView;->onDataSetChanged()V
    invoke-static {v1}, Lcom/oneplus/widget/FilmstripView;->access$500(Lcom/oneplus/widget/FilmstripView;)V

    .line 181
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 183
    :cond_0
    return-void
.end method

.method public notifyItemSizeChanged()V
    .locals 2

    .prologue
    const/16 v1, 0x2710

    .line 190
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView$Adapter;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 191
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView$Adapter;->m_Handler:Landroid/os/Handler;

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 192
    return-void
.end method

.method public abstract prepareItemView(ILandroid/view/ViewGroup;)V
.end method

.method public releaseItemView(ILandroid/view/ViewGroup;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 208
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 209
    return-void
.end method
