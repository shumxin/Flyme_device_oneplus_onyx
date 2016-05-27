.class Landroid/app/ColorInjector$ContextImpl;
.super Ljava/lang/Object;
.source "ColorInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ColorInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ContextImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ColorInjector$ContextImpl$ServiceRegister;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ColorInjector.ContextImpl"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method static registerServices(Landroid/app/ColorInjector$ContextImpl$ServiceRegister;)V
    .locals 2
    .param p0, "register"    # Landroid/app/ColorInjector$ContextImpl$ServiceRegister;

    .prologue
    .line 42
    const-string v0, "color_translate"

    new-instance v1, Landroid/app/ColorInjector$ContextImpl$1;

    invoke-direct {v1}, Landroid/app/ColorInjector$ContextImpl$1;-><init>()V

    invoke-interface {p0, v0, v1}, Landroid/app/ColorInjector$ContextImpl$ServiceRegister;->run(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 49
    const-string v0, "color_screenshot"

    new-instance v1, Landroid/app/ColorInjector$ContextImpl$2;

    invoke-direct {v1}, Landroid/app/ColorInjector$ContextImpl$2;-><init>()V

    invoke-interface {p0, v0, v1}, Landroid/app/ColorInjector$ContextImpl$ServiceRegister;->run(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 55
    return-void
.end method
