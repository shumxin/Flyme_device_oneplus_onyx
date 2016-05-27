.class public final Lcom/oppo/media/OppoRecorder$AudioSource;
.super Ljava/lang/Object;
.source "OppoRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/media/OppoRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AudioSource"
.end annotation


# static fields
.field public static final CAMCORDER:I = 0x5

.field public static final DEFAULT:I = 0x0

.field public static final MIC:I = 0x1

.field public static final VOICE_CALL:I = 0x4

.field public static final VOICE_COMMUNICATION:I = 0x7

.field public static final VOICE_DOWNLINK:I = 0x3

.field public static final VOICE_RECOGNITION:I = 0x6

.field public static final VOICE_UPLINK:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/oppo/media/OppoRecorder;


# direct methods
.method private constructor <init>(Lcom/oppo/media/OppoRecorder;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/oppo/media/OppoRecorder$AudioSource;->this$0:Lcom/oppo/media/OppoRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
