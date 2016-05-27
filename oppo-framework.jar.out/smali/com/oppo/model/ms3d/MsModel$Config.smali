.class public Lcom/oppo/model/ms3d/MsModel$Config;
.super Ljava/lang/Object;
.source "MsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/model/ms3d/MsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field public enableNormal:Z

.field public enableShadow:Z

.field public scaleX:F

.field public scaleY:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
