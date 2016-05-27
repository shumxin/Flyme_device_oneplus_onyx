.class public final Lcom/oppo/media/OppoRecorder$VideoEncoder;
.super Ljava/lang/Object;
.source "OppoRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/media/OppoRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "VideoEncoder"
.end annotation


# static fields
.field public static final DEFAULT:I = 0x0

.field public static final H263:I = 0x1

.field public static final H264:I = 0x2

.field public static final MPEG_4_SP:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/oppo/media/OppoRecorder;


# direct methods
.method private constructor <init>(Lcom/oppo/media/OppoRecorder;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/oppo/media/OppoRecorder$VideoEncoder;->this$0:Lcom/oppo/media/OppoRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
