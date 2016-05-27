.class Lcom/oppo/app/OppoSmartWakeImpl$Gesture;
.super Ljava/lang/Object;
.source "OppoSmartWakeImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/app/OppoSmartWakeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Gesture"
.end annotation


# instance fields
.field mDirection:I

.field mHeight:I

.field mMode:I

.field mPoints:[Landroid/graphics/Point;

.field mPositionX:I

.field mPositionY:I

.field mRotation:F

.field mWidth:I

.field final synthetic this$0:Lcom/oppo/app/OppoSmartWakeImpl;


# direct methods
.method constructor <init>(Lcom/oppo/app/OppoSmartWakeImpl;)V
    .locals 1

    .prologue
    .line 87
    iput-object p1, p0, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->this$0:Lcom/oppo/app/OppoSmartWakeImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/app/OppoSmartWakeImpl$Gesture;->mDirection:I

    return-void
.end method
