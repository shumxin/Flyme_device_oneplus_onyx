.class public Landroid/view/ThreadedRenderer;
.super Landroid/view/HardwareRenderer;
.source "ThreadedRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ThreadedRenderer$AtlasInitializer;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "ThreadedRenderer"

.field private static final SYNC_INVALIDATE_REQUIRED:I = 0x1

.field private static final SYNC_LOST_SURFACE_REWARD_IF_FOUND:I = 0x2

.field private static final SYNC_OK:I

.field private static final VISUALIZERS:[Ljava/lang/String;


# instance fields
.field private final mAmbientShadowAlpha:I

.field private mChoreographer:Landroid/view/Choreographer;

.field private mDeltLastSyncAndDrawFrame:J

.field private mHasInsets:Z

.field private mHeight:I

.field private mInitialized:Z

.field private mInsetLeft:I

.field private mInsetTop:I

.field private final mLightRadius:F

.field private final mLightY:F

.field private final mLightZ:F

.field private mNativeProxy:J

.field private mPerfLock:Lorg/codeaurora/Performance;

.field private mPerfLockBeginTime:J

.field private mPerfLockCpuMinFreq:I

.field private mPerfLockDuration:I

.field private mPerfLockEnabled:Z

.field private mPerfLockTraceEnabled:Z

.field private mProfilingEnabled:Z

.field private mRenderThreadCpuId:I

.field private mRenderThreadTid:I

.field private mRootNode:Landroid/view/RenderNode;

.field private mRootNodeNeedsUpdate:Z

.field private mSchedAffinityEnabled:Z

.field private final mSpotShadowAlpha:I

.field private mSurfaceHeight:I

.field private mSurfaceWidth:I

.field private mThreadCpuInfo:[I

.field private mThreadGroupCpuId:I

.field private mThreadGroupPerfLock:Lorg/codeaurora/Performance;

.field private mThreadGroupPid:I

.field private mWidth:I

.field private mfr:Ljava/io/FileReader;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 94
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "visual_bars"

    aput-object v2, v0, v1

    sput-object v0, Landroid/view/ThreadedRenderer;->VISUALIZERS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Z)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "translucent"    # Z

    .prologue
    const/high16 v8, 0x437f0000    # 255.0f

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v1, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 143
    invoke-direct {p0}, Landroid/view/HardwareRenderer;-><init>()V

    .line 119
    iput-boolean v6, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    .line 126
    iput v1, p0, Landroid/view/ThreadedRenderer;->mRenderThreadTid:I

    .line 127
    iput v1, p0, Landroid/view/ThreadedRenderer;->mThreadGroupPid:I

    .line 128
    iput v1, p0, Landroid/view/ThreadedRenderer;->mThreadGroupCpuId:I

    .line 129
    iput v1, p0, Landroid/view/ThreadedRenderer;->mRenderThreadCpuId:I

    .line 144
    const/4 v1, 0x0

    sget-object v4, Lcom/android/internal/R$styleable;->Lighting:[I

    invoke-virtual {p1, v1, v4, v6, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 145
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroid/view/ThreadedRenderer;->mLightY:F

    .line 146
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroid/view/ThreadedRenderer;->mLightZ:F

    .line 147
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroid/view/ThreadedRenderer;->mLightRadius:F

    .line 148
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    mul-float/2addr v1, v8

    add-float/2addr v1, v7

    float-to-int v1, v1

    iput v1, p0, Landroid/view/ThreadedRenderer;->mAmbientShadowAlpha:I

    .line 150
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    mul-float/2addr v1, v8

    add-float/2addr v1, v7

    float-to-int v1, v1

    iput v1, p0, Landroid/view/ThreadedRenderer;->mSpotShadowAlpha:I

    .line 151
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 153
    invoke-static {}, Landroid/view/ThreadedRenderer;->nCreateRootRenderNode()J

    move-result-wide v2

    .line 154
    .local v2, "rootNodePtr":J
    invoke-static {v2, v3}, Landroid/view/RenderNode;->adopt(J)Landroid/view/RenderNode;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    .line 155
    iget-object v1, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    invoke-virtual {v1, v6}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    .line 156
    invoke-static {p2, v2, v3}, Landroid/view/ThreadedRenderer;->nCreateProxy(ZJ)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    .line 158
    sget-object v1, Landroid/view/ThreadedRenderer$AtlasInitializer;->sInstance:Landroid/view/ThreadedRenderer$AtlasInitializer;

    iget-wide v4, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-virtual {v1, p1, v4, v5}, Landroid/view/ThreadedRenderer$AtlasInitializer;->init(Landroid/content/Context;J)V

    .line 161
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ThreadedRenderer;->mChoreographer:Landroid/view/Choreographer;

    .line 162
    iget-wide v4, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    iget-object v1, p0, Landroid/view/ThreadedRenderer;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v1}, Landroid/view/Choreographer;->getFrameIntervalNanos()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Landroid/view/ThreadedRenderer;->nSetFrameInterval(JJ)V

    .line 164
    invoke-virtual {p0}, Landroid/view/ThreadedRenderer;->loadSystemProperties()Z

    .line 167
    const-string/jumbo v1, "true"

    const-string/jumbo v4, "sys.perflock.trace.enable"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/ThreadedRenderer;->mPerfLockTraceEnabled:Z

    .line 168
    const-string/jumbo v1, "sys.perflock.duration"

    const-string v4, "100"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/view/ThreadedRenderer;->mPerfLockDuration:I

    .line 169
    const-string/jumbo v1, "sys.perflock.cpu.min"

    const-string v4, "1500"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/view/ThreadedRenderer;->mPerfLockCpuMinFreq:I

    .line 170
    iget v1, p0, Landroid/view/ThreadedRenderer;->mPerfLockCpuMinFreq:I

    const/16 v4, 0x8fc

    if-le v1, v4, :cond_0

    .line 171
    const/16 v1, 0x5dc

    iput v1, p0, Landroid/view/ThreadedRenderer;->mPerfLockCpuMinFreq:I

    .line 172
    :cond_0
    const-string v1, "HardwareRenderer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mPerfLockEnabled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/view/ThreadedRenderer;->mPerfLockEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mPerfLockTraceEnabled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/view/ThreadedRenderer;->mPerfLockTraceEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mPerfLockDuration "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/view/ThreadedRenderer;->mPerfLockDuration:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mPerfLockCpuMinFreq "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/view/ThreadedRenderer;->mPerfLockCpuMinFreq:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-void
.end method

.method static synthetic access$000(JLandroid/view/GraphicBuffer;[J)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # Landroid/view/GraphicBuffer;
    .param p3, "x2"    # [J

    .prologue
    .line 83
    invoke-static {p0, p1, p2, p3}, Landroid/view/ThreadedRenderer;->nSetAtlas(JLandroid/view/GraphicBuffer;[J)V

    return-void
.end method

.method private static checkIfProfilingRequested()Z
    .locals 3

    .prologue
    .line 299
    const-string v2, "debug.hwui.profile"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, "profiling":Ljava/lang/String;
    sget-object v2, Landroid/view/ThreadedRenderer;->VISUALIZERS:[Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/view/ThreadedRenderer;->search([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 301
    .local v0, "graphType":I
    if-gez v0, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static destroyResources(Landroid/view/View;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 220
    invoke-virtual {p0}, Landroid/view/View;->destroyHardwareResources()V

    .line 222
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v1, p0

    .line 223
    check-cast v1, Landroid/view/ViewGroup;

    .line 225
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 226
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 227
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ThreadedRenderer;->destroyResources(Landroid/view/View;)V

    .line 226
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 230
    .end local v0    # "count":I
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method static invokeFunctor(JZ)V
    .locals 0
    .param p0, "functor"    # J
    .param p2, "waitForCompletion"    # Z

    .prologue
    .line 576
    invoke-static {p0, p1, p2}, Landroid/view/ThreadedRenderer;->nInvokeFunctor(JZ)V

    .line 577
    return-void
.end method

.method private static native nBuildLayer(JJ)V
.end method

.method private static native nCancelLayerUpdate(JJ)V
.end method

.method private static native nCopyLayerInto(JJJ)Z
.end method

.method private static native nCreateProxy(ZJ)J
.end method

.method private static native nCreateRootRenderNode()J
.end method

.method private static native nCreateTextureLayer(J)J
.end method

.method private static native nDeleteProxy(J)V
.end method

.method private static native nDestroy(J)V
.end method

.method private static native nDestroyHardwareResources(J)V
.end method

.method private static native nDetachSurfaceTexture(JJ)V
.end method

.method private static native nDumpProfileInfo(JLjava/io/FileDescriptor;)V
.end method

.method private static native nFence(J)V
.end method

.method private static native nGetRenderThreadTid(J)I
.end method

.method private static native nInitialize(JLandroid/view/Surface;)Z
.end method

.method private static native nInvokeFunctor(JZ)V
.end method

.method private static native nLoadSystemProperties(J)Z
.end method

.method private static native nNotifyFramePending(J)V
.end method

.method private static native nPauseSurface(JLandroid/view/Surface;)Z
.end method

.method private static native nPushLayerUpdate(JJ)V
.end method

.method private static native nRegisterAnimatingRenderNode(JJ)V
.end method

.method private static native nSchedReleaseAffinity(J[I)I
.end method

.method private static native nSchedSetAffinity(JZ)[I
.end method

.method private static native nSetAtlas(JLandroid/view/GraphicBuffer;[J)V
.end method

.method private static native nSetFrameInterval(JJ)V
.end method

.method private static native nSetOpaque(JZ)V
.end method

.method private static native nSetup(JIIFFFFII)V
.end method

.method private static native nStopDrawing(J)V
.end method

.method private static native nSyncAndDrawFrame(JJJF)I
.end method

.method private static native nTrimMemory(I)V
.end method

.method private static native nUpdateSurface(JLandroid/view/Surface;)V
.end method

.method private static search([Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "values"    # [Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 292
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 293
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 292
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static native setupShadersDiskCache(Ljava/lang/String;)V
.end method

.method static trimMemory(I)V
    .locals 0
    .param p0, "level"    # I

    .prologue
    .line 647
    invoke-static {p0}, Landroid/view/ThreadedRenderer;->nTrimMemory(I)V

    .line 648
    return-void
.end method

.method private updateEnabledState(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 186
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 187
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ThreadedRenderer;->setEnabled(Z)V

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    invoke-virtual {p0, v0}, Landroid/view/ThreadedRenderer;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateRootDisplayList(Landroid/view/View;Landroid/view/HardwareRenderer$HardwareDrawCallbacks;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callbacks"    # Landroid/view/HardwareRenderer$HardwareDrawCallbacks;

    .prologue
    const-wide/16 v6, 0x8

    .line 328
    const-string v2, "Record View#draw()"

    invoke-static {v6, v7, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 329
    invoke-direct {p0, p1}, Landroid/view/ThreadedRenderer;->updateViewTreeDisplayList(Landroid/view/View;)V

    .line 331
    iget-boolean v2, p0, Landroid/view/ThreadedRenderer;->mRootNodeNeedsUpdate:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    invoke-virtual {v2}, Landroid/view/RenderNode;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 332
    :cond_0
    iget-object v2, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    iget v3, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    iget v4, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    invoke-virtual {v2, v3, v4}, Landroid/view/RenderNode;->start(II)Landroid/view/HardwareCanvas;

    move-result-object v0

    .line 334
    .local v0, "canvas":Landroid/view/HardwareCanvas;
    :try_start_0
    invoke-virtual {v0}, Landroid/view/HardwareCanvas;->save()I

    move-result v1

    .line 335
    .local v1, "saveCount":I
    iget v2, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    int-to-float v2, v2

    iget v3, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/HardwareCanvas;->translate(FF)V

    .line 336
    invoke-interface {p2, v0}, Landroid/view/HardwareRenderer$HardwareDrawCallbacks;->onHardwarePreDraw(Landroid/view/HardwareCanvas;)V

    .line 338
    invoke-virtual {v0}, Landroid/view/HardwareCanvas;->insertReorderBarrier()V

    .line 339
    invoke-virtual {p1}, Landroid/view/View;->getDisplayList()Landroid/view/RenderNode;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/HardwareCanvas;->drawRenderNode(Landroid/view/RenderNode;)V

    .line 340
    invoke-virtual {v0}, Landroid/view/HardwareCanvas;->insertInorderBarrier()V

    .line 342
    invoke-interface {p2, v0}, Landroid/view/HardwareRenderer$HardwareDrawCallbacks;->onHardwarePostDraw(Landroid/view/HardwareCanvas;)V

    .line 343
    invoke-virtual {v0, v1}, Landroid/view/HardwareCanvas;->restoreToCount(I)V

    .line 344
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/view/ThreadedRenderer;->mRootNodeNeedsUpdate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    iget-object v2, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    invoke-virtual {v2, v0}, Landroid/view/RenderNode;->end(Landroid/view/HardwareCanvas;)V

    .line 349
    .end local v0    # "canvas":Landroid/view/HardwareCanvas;
    .end local v1    # "saveCount":I
    :cond_1
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 350
    return-void

    .line 346
    .restart local v0    # "canvas":Landroid/view/HardwareCanvas;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    invoke-virtual {v3, v0}, Landroid/view/RenderNode;->end(Landroid/view/HardwareCanvas;)V

    throw v2
.end method

.method private updateViewTreeDisplayList(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    .line 319
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 320
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p1, Landroid/view/View;->mRecreateDisplayList:Z

    .line 322
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v2, 0x7fffffff

    and-int/2addr v0, v2

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 323
    invoke-virtual {p1}, Landroid/view/View;->getDisplayList()Landroid/view/RenderNode;

    .line 324
    iput-boolean v1, p1, Landroid/view/View;->mRecreateDisplayList:Z

    .line 325
    return-void

    :cond_0
    move v0, v1

    .line 320
    goto :goto_0
.end method


# virtual methods
.method buildLayer(Landroid/view/RenderNode;)V
    .locals 4
    .param p1, "node"    # Landroid/view/RenderNode;

    .prologue
    .line 587
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-virtual {p1}, Landroid/view/RenderNode;->getNativeDisplayList()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nBuildLayer(JJ)V

    .line 588
    return-void
.end method

.method copyLayerInto(Landroid/view/HardwareLayer;Landroid/graphics/Bitmap;)Z
    .locals 6
    .param p1, "layer"    # Landroid/view/HardwareLayer;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 592
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-virtual {p1}, Landroid/view/HardwareLayer;->getDeferredLayerUpdater()J

    move-result-wide v2

    iget-wide v4, p2, Landroid/graphics/Bitmap;->mNativeBitmap:J

    invoke-static/range {v0 .. v5}, Landroid/view/ThreadedRenderer;->nCopyLayerInto(JJJ)Z

    move-result v0

    return v0
.end method

.method createTextureLayer()Landroid/view/HardwareLayer;
    .locals 4

    .prologue
    .line 581
    iget-wide v2, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v2, v3}, Landroid/view/ThreadedRenderer;->nCreateTextureLayer(J)J

    move-result-wide v0

    .line 582
    .local v0, "layer":J
    invoke-static {p0, v0, v1}, Landroid/view/HardwareLayer;->adoptTextureLayer(Landroid/view/HardwareRenderer;J)Landroid/view/HardwareLayer;

    move-result-object v2

    return-object v2
.end method

.method destroy()V
    .locals 2

    .prologue
    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/ThreadedRenderer;->updateEnabledState(Landroid/view/Surface;)V

    .line 182
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nDestroy(J)V

    .line 183
    return-void
.end method

.method destroyHardwareResources(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 215
    invoke-static {p1}, Landroid/view/ThreadedRenderer;->destroyResources(Landroid/view/View;)V

    .line 216
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nDestroyHardwareResources(J)V

    .line 217
    return-void
.end method

.method detachSurfaceTexture(J)V
    .locals 3
    .param p1, "hardwareLayer"    # J

    .prologue
    .line 239
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/ThreadedRenderer;->nDetachSurfaceTexture(JJ)V

    .line 240
    return-void
.end method

.method draw(Landroid/view/View;Landroid/view/View$AttachInfo;Landroid/view/HardwareRenderer$HardwareDrawCallbacks;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p3, "callbacks"    # Landroid/view/HardwareRenderer$HardwareDrawCallbacks;

    .prologue
    const/4 v10, 0x0

    .line 530
    const/4 v0, 0x1

    iput-boolean v0, p2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 531
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v2

    .line 532
    .local v2, "frameTimeNanos":J
    const-wide/32 v0, 0xf4240

    div-long v0, v2, v0

    iput-wide v0, p2, Landroid/view/View$AttachInfo;->mDrawingTime:J

    .line 534
    const-wide/16 v4, 0x0

    .line 535
    .local v4, "recordDuration":J
    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mProfilingEnabled:Z

    if-eqz v0, :cond_0

    .line 536
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 539
    :cond_0
    invoke-direct {p0, p1, p3}, Landroid/view/ThreadedRenderer;->updateRootDisplayList(Landroid/view/View;Landroid/view/HardwareRenderer$HardwareDrawCallbacks;)V

    .line 541
    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mProfilingEnabled:Z

    if-eqz v0, :cond_1

    .line 542
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long v4, v0, v4

    .line 545
    :cond_1
    iput-boolean v10, p2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 549
    iget-object v0, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 550
    iget-object v0, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    .line 551
    .local v7, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_2

    .line 552
    iget-object v0, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/RenderNode;

    invoke-virtual {p0, v0}, Landroid/view/ThreadedRenderer;->registerAnimatingRenderNode(Landroid/view/RenderNode;)V

    .line 551
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 555
    :cond_2
    iget-object v0, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 558
    const/4 v0, 0x0

    iput-object v0, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    .line 560
    .end local v7    # "count":I
    .end local v8    # "i":I
    :cond_3
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    invoke-static/range {v0 .. v6}, Landroid/view/ThreadedRenderer;->nSyncAndDrawFrame(JJJF)I

    move-result v9

    .line 562
    .local v9, "syncResult":I
    and-int/lit8 v0, v9, 0x2

    if-eqz v0, :cond_4

    .line 563
    invoke-virtual {p0, v10}, Landroid/view/ThreadedRenderer;->setEnabled(Z)V

    .line 564
    iget-object v0, p2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 567
    iget-object v0, p2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 569
    :cond_4
    and-int/lit8 v0, v9, 0x1

    if-eqz v0, :cond_5

    .line 570
    iget-object v0, p2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 573
    :cond_5
    return-void
.end method

.method draw(Landroid/view/View;Landroid/view/View$AttachInfo;Landroid/view/HardwareRenderer$HardwareDrawCallbacks;J)V
    .locals 20
    .param p1, "view"    # Landroid/view/View;
    .param p2, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p3, "callbacks"    # Landroid/view/HardwareRenderer$HardwareDrawCallbacks;
    .param p4, "deltLastperformTraversals"    # J

    .prologue
    .line 452
    const/4 v4, 0x1

    move-object/from16 v0, p2

    iput-boolean v4, v0, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 453
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ThreadedRenderer;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v4}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v6

    .line 454
    .local v6, "frameTimeNanos":J
    const-wide/32 v4, 0xf4240

    div-long v4, v6, v4

    move-object/from16 v0, p2

    iput-wide v4, v0, Landroid/view/View$AttachInfo;->mDrawingTime:J

    .line 456
    const-wide/16 v8, 0x0

    .line 459
    .local v8, "recordDuration":J
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ThreadedRenderer;->mPerfLockEnabled:Z

    if-nez v4, :cond_0

    .line 460
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/view/ThreadedRenderer;->mDeltLastSyncAndDrawFrame:J

    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/view/ThreadedRenderer;->isEnableperformLock(JJ)V

    .line 461
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Landroid/view/ThreadedRenderer;->mPerfLockBeginTime:J

    .line 464
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ThreadedRenderer;->mProfilingEnabled:Z

    if-eqz v4, :cond_1

    .line 465
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 468
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Landroid/view/ThreadedRenderer;->updateRootDisplayList(Landroid/view/View;Landroid/view/HardwareRenderer$HardwareDrawCallbacks;)V

    .line 470
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ThreadedRenderer;->mProfilingEnabled:Z

    if-eqz v4, :cond_2

    .line 471
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v8, v4, v8

    .line 474
    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, p2

    iput-boolean v4, v0, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 478
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    if-eqz v4, :cond_4

    .line 479
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    .line 480
    .local v11, "count":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v11, :cond_3

    .line 481
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/RenderNode;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/ThreadedRenderer;->registerAnimatingRenderNode(Landroid/view/RenderNode;)V

    .line 480
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 484
    :cond_3
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 487
    const/4 v4, 0x0

    move-object/from16 v0, p2

    iput-object v4, v0, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    .line 492
    .end local v11    # "count":I
    .end local v16    # "i":I
    :cond_4
    const-wide/16 v12, 0x0

    .local v12, "enter":J
    const-wide/16 v14, 0x0

    .line 493
    .local v14, "exit":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 495
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    invoke-static/range {v4 .. v10}, Landroid/view/ThreadedRenderer;->nSyncAndDrawFrame(JJJF)I

    move-result v17

    .line 499
    .local v17, "syncResult":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 500
    sub-long v4, v14, v12

    move-object/from16 v0, p0

    iput-wide v4, v0, Landroid/view/ThreadedRenderer;->mDeltLastSyncAndDrawFrame:J

    .line 501
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ThreadedRenderer;->mPerfLockEnabled:Z

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/view/ThreadedRenderer;->mPerfLockBeginTime:J

    sub-long v4, v14, v4

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/ThreadedRenderer;->mPerfLockDuration:I

    add-int/lit8 v10, v10, 0x5

    int-to-long v0, v10

    move-wide/from16 v18, v0

    cmp-long v4, v4, v18

    if-lez v4, :cond_5

    .line 502
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ThreadedRenderer;->mPerfLockEnabled:Z

    .line 504
    :cond_5
    and-int/lit8 v4, v17, 0x2

    if-eqz v4, :cond_6

    .line 505
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/ThreadedRenderer;->setEnabled(Z)V

    .line 506
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->release()V

    .line 509
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v4}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 511
    :cond_6
    and-int/lit8 v4, v17, 0x1

    if-eqz v4, :cond_7

    .line 512
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v4}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 517
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ThreadedRenderer;->mPerfLockEnabled:Z

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ThreadedRenderer;->mSchedAffinityEnabled:Z

    if-eqz v4, :cond_8

    .line 519
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ThreadedRenderer;->mThreadCpuInfo:[I

    invoke-static {v4, v5, v10}, Landroid/view/ThreadedRenderer;->nSchedReleaseAffinity(J[I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_9

    .line 520
    const-string v4, "ThreadedRenderer"

    const-string/jumbo v5, "releaseAffinity error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_8
    :goto_1
    return-void

    .line 523
    :cond_9
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ThreadedRenderer;->mSchedAffinityEnabled:Z

    goto :goto_1
.end method

.method dumpGfxInfo(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 287
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 288
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p2}, Landroid/view/ThreadedRenderer;->nDumpProfileInfo(JLjava/io/FileDescriptor;)V

    .line 289
    return-void
.end method

.method fence()V
    .locals 2

    .prologue
    .line 612
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nFence(J)V

    .line 613
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 633
    :try_start_0
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nDeleteProxy(J)V

    .line 634
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 636
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 638
    return-void

    .line 636
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method getHeight()I
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Landroid/view/ThreadedRenderer;->mHeight:I

    return v0
.end method

.method public getRenderThreadTid()V
    .locals 2

    .prologue
    .line 643
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nGetRenderThreadTid(J)I

    move-result v0

    iput v0, p0, Landroid/view/ThreadedRenderer;->mRenderThreadTid:I

    .line 644
    return-void
.end method

.method getWidth()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Landroid/view/ThreadedRenderer;->mWidth:I

    return v0
.end method

.method initialize(Landroid/view/Surface;)Z
    .locals 4
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 195
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    .line 196
    invoke-direct {p0, p1}, Landroid/view/ThreadedRenderer;->updateEnabledState(Landroid/view/Surface;)V

    .line 197
    iget-wide v2, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v2, v3, p1}, Landroid/view/ThreadedRenderer;->nInitialize(JLandroid/view/Surface;)Z

    move-result v0

    .line 198
    .local v0, "status":Z
    invoke-virtual {p1}, Landroid/view/Surface;->allocateBuffers()V

    .line 199
    return v0
.end method

.method invalidate(Landroid/view/Surface;)V
    .locals 0
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 234
    invoke-virtual {p0, p1}, Landroid/view/ThreadedRenderer;->updateSurface(Landroid/view/Surface;)V

    .line 235
    return-void
.end method

.method invalidateRoot()V
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mRootNodeNeedsUpdate:Z

    .line 355
    return-void
.end method

.method isEnableperformLock(JJ)V
    .locals 9
    .param p1, "deltLastperformTraversals"    # J
    .param p3, "deltLastDeltSyncAndDrawFrame"    # J

    .prologue
    .line 361
    const-wide/16 v4, 0xa

    cmp-long v4, p1, v4

    if-gtz v4, :cond_0

    const-wide/16 v4, 0x8

    cmp-long v4, p3, v4

    if-lez v4, :cond_2

    .line 362
    :cond_0
    iget-boolean v4, p0, Landroid/view/ThreadedRenderer;->mPerfLockTraceEnabled:Z

    if-eqz v4, :cond_1

    .line 363
    const-wide/16 v4, 0x8

    const-string/jumbo v6, "perfLockAcquire"

    invoke-static {v4, v5, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 365
    :cond_1
    iget-wide v4, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    iget-boolean v6, p0, Landroid/view/ThreadedRenderer;->mPerfLockTraceEnabled:Z

    invoke-static {v4, v5, v6}, Landroid/view/ThreadedRenderer;->nSchedSetAffinity(JZ)[I

    move-result-object v4

    iput-object v4, p0, Landroid/view/ThreadedRenderer;->mThreadCpuInfo:[I

    .line 366
    iget-object v4, p0, Landroid/view/ThreadedRenderer;->mThreadCpuInfo:[I

    const/4 v5, 0x4

    aget v2, v4, v5

    .line 367
    .local v2, "ret":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_3

    .line 368
    const-string v4, "ThreadedRenderer"

    const-string/jumbo v5, "nSchedSetAffinity error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    .end local v2    # "ret":I
    :cond_2
    :goto_0
    return-void

    .line 372
    .restart local v2    # "ret":I
    :cond_3
    iget-object v4, p0, Landroid/view/ThreadedRenderer;->mThreadCpuInfo:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    iput v4, p0, Landroid/view/ThreadedRenderer;->mThreadGroupPid:I

    .line 373
    iget-object v4, p0, Landroid/view/ThreadedRenderer;->mThreadCpuInfo:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    iput v4, p0, Landroid/view/ThreadedRenderer;->mThreadGroupCpuId:I

    .line 374
    iget-object v4, p0, Landroid/view/ThreadedRenderer;->mThreadCpuInfo:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    iput v4, p0, Landroid/view/ThreadedRenderer;->mRenderThreadTid:I

    .line 375
    iget-object v4, p0, Landroid/view/ThreadedRenderer;->mThreadCpuInfo:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    iput v4, p0, Landroid/view/ThreadedRenderer;->mRenderThreadCpuId:I

    .line 376
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/view/ThreadedRenderer;->mSchedAffinityEnabled:Z

    .line 379
    iget-object v4, p0, Landroid/view/ThreadedRenderer;->mPerfLock:Lorg/codeaurora/Performance;

    if-nez v4, :cond_4

    .line 380
    new-instance v4, Lorg/codeaurora/Performance;

    invoke-direct {v4}, Lorg/codeaurora/Performance;-><init>()V

    iput-object v4, p0, Landroid/view/ThreadedRenderer;->mPerfLock:Lorg/codeaurora/Performance;

    .line 389
    :cond_4
    iget v4, p0, Landroid/view/ThreadedRenderer;->mPerfLockCpuMinFreq:I

    div-int/lit8 v0, v4, 0x64

    .line 391
    .local v0, "cpuMinFreq":I
    move v3, v0

    .line 392
    .local v3, "threadGropCpuMinFreq":I
    move v1, v0

    .line 394
    .local v1, "renderThreadCpuMinFreq":I
    iget v4, p0, Landroid/view/ThreadedRenderer;->mThreadGroupCpuId:I

    packed-switch v4, :pswitch_data_0

    .line 408
    const-string v4, "ThreadedRenderer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get Wrong ThreadGroup cpuId"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/view/ThreadedRenderer;->mThreadGroupCpuId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :goto_1
    iget v4, p0, Landroid/view/ThreadedRenderer;->mThreadGroupCpuId:I

    iget v5, p0, Landroid/view/ThreadedRenderer;->mRenderThreadCpuId:I

    if-eq v4, v5, :cond_5

    .line 412
    iget v4, p0, Landroid/view/ThreadedRenderer;->mRenderThreadCpuId:I

    packed-switch v4, :pswitch_data_1

    .line 426
    const-string v4, "ThreadedRenderer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get Wrong RenderThread cpuId"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/view/ThreadedRenderer;->mRenderThreadCpuId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :goto_2
    iget-object v4, p0, Landroid/view/ThreadedRenderer;->mPerfLock:Lorg/codeaurora/Performance;

    iget v5, p0, Landroid/view/ThreadedRenderer;->mPerfLockDuration:I

    const/4 v6, 0x3

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v8, 0x702

    aput v8, v6, v7

    const/4 v7, 0x1

    aput v3, v6, v7

    const/4 v7, 0x2

    aput v1, v6, v7

    invoke-virtual {v4, v5, v6}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    .line 441
    :goto_3
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/view/ThreadedRenderer;->mPerfLockEnabled:Z

    .line 442
    iget-boolean v4, p0, Landroid/view/ThreadedRenderer;->mPerfLockTraceEnabled:Z

    if-eqz v4, :cond_2

    .line 443
    const-wide/16 v4, 0x8

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 396
    :pswitch_0
    or-int/lit16 v3, v0, 0x200

    .line 397
    goto :goto_1

    .line 399
    :pswitch_1
    or-int/lit16 v3, v0, 0x300

    .line 400
    goto :goto_1

    .line 402
    :pswitch_2
    or-int/lit16 v3, v0, 0x400

    .line 403
    goto :goto_1

    .line 405
    :pswitch_3
    or-int/lit16 v3, v0, 0x500

    .line 406
    goto :goto_1

    .line 414
    :pswitch_4
    or-int/lit16 v1, v0, 0x200

    .line 415
    goto :goto_2

    .line 417
    :pswitch_5
    or-int/lit16 v1, v0, 0x300

    .line 418
    goto :goto_2

    .line 420
    :pswitch_6
    or-int/lit16 v1, v0, 0x400

    .line 421
    goto :goto_2

    .line 423
    :pswitch_7
    or-int/lit16 v1, v0, 0x500

    .line 424
    goto :goto_2

    .line 435
    :cond_5
    move v1, v3

    .line 439
    iget-object v4, p0, Landroid/view/ThreadedRenderer;->mPerfLock:Lorg/codeaurora/Performance;

    iget v5, p0, Landroid/view/ThreadedRenderer;->mPerfLockDuration:I

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v8, 0x701

    aput v8, v6, v7

    const/4 v7, 0x1

    aput v3, v6, v7

    invoke-virtual {v4, v5, v6}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto :goto_3

    .line 394
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 412
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method loadSystemProperties()Z
    .locals 4

    .prologue
    .line 306
    iget-wide v2, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v2, v3}, Landroid/view/ThreadedRenderer;->nLoadSystemProperties(J)Z

    move-result v0

    .line 307
    .local v0, "changed":Z
    invoke-static {}, Landroid/view/ThreadedRenderer;->checkIfProfilingRequested()Z

    move-result v1

    .line 308
    .local v1, "wantProfiling":Z
    iget-boolean v2, p0, Landroid/view/ThreadedRenderer;->mProfilingEnabled:Z

    if-eq v1, v2, :cond_0

    .line 309
    iput-boolean v1, p0, Landroid/view/ThreadedRenderer;->mProfilingEnabled:Z

    .line 310
    const/4 v0, 0x1

    .line 312
    :cond_0
    if-eqz v0, :cond_1

    .line 313
    invoke-virtual {p0}, Landroid/view/ThreadedRenderer;->invalidateRoot()V

    .line 315
    :cond_1
    return v0
.end method

.method public notifyFramePending()V
    .locals 2

    .prologue
    .line 622
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nNotifyFramePending(J)V

    .line 623
    return-void
.end method

.method onLayerDestroyed(Landroid/view/HardwareLayer;)V
    .locals 4
    .param p1, "layer"    # Landroid/view/HardwareLayer;

    .prologue
    .line 603
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-virtual {p1}, Landroid/view/HardwareLayer;->getDeferredLayerUpdater()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nCancelLayerUpdate(JJ)V

    .line 604
    return-void
.end method

.method pauseSurface(Landroid/view/Surface;)Z
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 210
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/view/ThreadedRenderer;->nPauseSurface(JLandroid/view/Surface;)Z

    move-result v0

    return v0
.end method

.method pushLayerUpdate(Landroid/view/HardwareLayer;)V
    .locals 4
    .param p1, "layer"    # Landroid/view/HardwareLayer;

    .prologue
    .line 598
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-virtual {p1}, Landroid/view/HardwareLayer;->getDeferredLayerUpdater()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nPushLayerUpdate(JJ)V

    .line 599
    return-void
.end method

.method registerAnimatingRenderNode(Landroid/view/RenderNode;)V
    .locals 4
    .param p1, "animator"    # Landroid/view/RenderNode;

    .prologue
    .line 627
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    iget-wide v0, v0, Landroid/view/RenderNode;->mNativeRenderNode:J

    iget-wide v2, p1, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nRegisterAnimatingRenderNode(JJ)V

    .line 628
    return-void
.end method

.method setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 608
    return-void
.end method

.method setOpaque(Z)V
    .locals 4
    .param p1, "opaque"    # Z

    .prologue
    .line 272
    iget-wide v2, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mHasInsets:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/view/ThreadedRenderer;->nSetOpaque(JZ)V

    .line 273
    return-void

    .line 272
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setup(IILandroid/graphics/Rect;)V
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "surfaceInsets"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 244
    int-to-float v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v4, v0, v1

    .line 245
    .local v4, "lightX":F
    iput p1, p0, Landroid/view/ThreadedRenderer;->mWidth:I

    .line 246
    iput p2, p0, Landroid/view/ThreadedRenderer;->mHeight:I

    .line 247
    if-eqz p3, :cond_1

    iget v0, p3, Landroid/graphics/Rect;->left:I

    if-nez v0, :cond_0

    iget v0, p3, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_0

    iget v0, p3, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_0

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_1

    .line 249
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mHasInsets:Z

    .line 250
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iput v0, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    .line 251
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iput v0, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    .line 252
    iget v0, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    add-int/2addr v0, p1

    iget v1, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    .line 253
    iget v0, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    add-int/2addr v0, p2

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    .line 256
    invoke-virtual {p0, v2}, Landroid/view/ThreadedRenderer;->setOpaque(Z)V

    .line 264
    :goto_0
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    iget v1, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    neg-int v1, v1

    iget v2, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    neg-int v2, v2

    iget v3, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    iget v5, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 265
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    iget v2, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    iget v3, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    iget v5, p0, Landroid/view/ThreadedRenderer;->mLightY:F

    iget v6, p0, Landroid/view/ThreadedRenderer;->mLightZ:F

    iget v7, p0, Landroid/view/ThreadedRenderer;->mLightRadius:F

    iget v8, p0, Landroid/view/ThreadedRenderer;->mAmbientShadowAlpha:I

    iget v9, p0, Landroid/view/ThreadedRenderer;->mSpotShadowAlpha:I

    invoke-static/range {v0 .. v9}, Landroid/view/ThreadedRenderer;->nSetup(JIIFFFFII)V

    .line 268
    return-void

    .line 258
    :cond_1
    iput-boolean v2, p0, Landroid/view/ThreadedRenderer;->mHasInsets:Z

    .line 259
    iput v2, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    .line 260
    iput v2, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    .line 261
    iput p1, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    .line 262
    iput p2, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    goto :goto_0
.end method

.method stopDrawing()V
    .locals 2

    .prologue
    .line 617
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nStopDrawing(J)V

    .line 618
    return-void
.end method

.method updateSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 204
    invoke-direct {p0, p1}, Landroid/view/ThreadedRenderer;->updateEnabledState(Landroid/view/Surface;)V

    .line 205
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/view/ThreadedRenderer;->nUpdateSurface(JLandroid/view/Surface;)V

    .line 206
    return-void
.end method
