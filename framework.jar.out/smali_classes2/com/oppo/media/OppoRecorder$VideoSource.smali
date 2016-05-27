.class public final Lcom/oppo/media/OppoRecorder$VideoSource;
.super Ljava/lang/Object;
.source "OppoRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/media/OppoRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "VideoSource"
.end annotation


# static fields
.field public static final CAMERA:I = 0x1

.field public static final DEFAULT:I = 0x0

.field public static final GRALLOC_BUFFER:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/oppo/media/OppoRecorder;


# direct methods
.method private constructor <init>(Lcom/oppo/media/OppoRecorder;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/oppo/media/OppoRecorder$VideoSource;->this$0:Lcom/oppo/media/OppoRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
