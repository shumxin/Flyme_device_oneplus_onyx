.class Landroid/app/ContextImpl$ServiceRegister;
.super Ljava/lang/Object;
.source "ContextImpl.java"

# interfaces
.implements Landroid/app/ColorInjector$ContextImpl$ServiceRegister;


# annotations
.annotation build Landroid/annotation/OppoHook;
    level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_CLASS:Landroid/annotation/OppoHook$OppoHookType;
    note = "JianHui.Yu@Plf.SDK, 2015-01-09 : Add for coloros services"
    property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceRegister"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ContextImpl$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/app/ContextImpl$1;

    .prologue
    .line 2578
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceRegister;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fetcher"    # Landroid/app/ContextImpl$ServiceFetcher;

    .prologue
    .line 2582
    # invokes: Landroid/app/ContextImpl;->registerService(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V
    invoke-static {p1, p2}, Landroid/app/ContextImpl;->access$300(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 2583
    return-void
.end method
