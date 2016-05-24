.class public Lcom/meizu/media/camera/ui/CaptureButtonEventArgs;
.super Lcom/oneplus/base/EventArgs;
.source "CaptureButtonEventArgs.java"


# instance fields
.field private final m_Button:Lcom/meizu/media/camera/ui/CaptureButtons$Button;


# direct methods
.method public constructor <init>(Lcom/meizu/media/camera/ui/CaptureButtons$Button;)V
    .locals 0
    .param p1, "button"    # Lcom/meizu/media/camera/ui/CaptureButtons$Button;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/oneplus/base/EventArgs;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/meizu/media/camera/ui/CaptureButtonEventArgs;->m_Button:Lcom/meizu/media/camera/ui/CaptureButtons$Button;

    .line 21
    return-void
.end method


# virtual methods
.method public final getButton()Lcom/meizu/media/camera/ui/CaptureButtons$Button;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/meizu/media/camera/ui/CaptureButtonEventArgs;->m_Button:Lcom/meizu/media/camera/ui/CaptureButtons$Button;

    return-object v0
.end method
