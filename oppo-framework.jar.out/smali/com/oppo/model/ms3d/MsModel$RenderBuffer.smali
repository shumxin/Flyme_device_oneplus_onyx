.class public Lcom/oppo/model/ms3d/MsModel$RenderBuffer;
.super Ljava/lang/Object;
.source "MsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/model/ms3d/MsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RenderBuffer"
.end annotation


# instance fields
.field public colorShadowBuffer:Ljava/nio/FloatBuffer;

.field public normalBuffer:Ljava/nio/FloatBuffer;

.field public texCoordBuffer:Ljava/nio/FloatBuffer;

.field public vertexBuffer:Ljava/nio/FloatBuffer;

.field public vertexShadowBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
