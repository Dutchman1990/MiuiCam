.class public Lcom/android/camera/ui/GLSurfaceTexture;
.super Landroid/graphics/SurfaceTexture;
.source "GLSurfaceTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/GLSurfaceTexture$BaseConfigChooser;,
        Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;,
        Lcom/android/camera/ui/GLSurfaceTexture$DefaultContextFactory;,
        Lcom/android/camera/ui/GLSurfaceTexture$DefaultWindowSurfaceFactory;,
        Lcom/android/camera/ui/GLSurfaceTexture$EGLConfigChooser;,
        Lcom/android/camera/ui/GLSurfaceTexture$EGLContextFactory;,
        Lcom/android/camera/ui/GLSurfaceTexture$EGLWindowSurfaceFactory;,
        Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;,
        Lcom/android/camera/ui/GLSurfaceTexture$GLThread;,
        Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;,
        Lcom/android/camera/ui/GLSurfaceTexture$GLWrapper;,
        Lcom/android/camera/ui/GLSurfaceTexture$LogWriter;,
        Lcom/android/camera/ui/GLSurfaceTexture$SimpleEGLConfigChooser;
    }
.end annotation


# static fields
.field private static final sGLThreadManager:Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;


# instance fields
.field private mDebugFlags:I

.field private mEGLConfigChooser:Lcom/android/camera/ui/GLSurfaceTexture$EGLConfigChooser;

.field private mEGLContextClientVersion:I

.field private mEGLContextFactory:Lcom/android/camera/ui/GLSurfaceTexture$EGLContextFactory;

.field private mEGLWindowSurfaceFactory:Lcom/android/camera/ui/GLSurfaceTexture$EGLWindowSurfaceFactory;

.field private mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

.field private mGLWrapper:Lcom/android/camera/ui/GLSurfaceTexture$GLWrapper;

.field private mPreserveEGLContextOnPause:Z

.field private mPreservedHeight:I

.field private mPreservedWidth:I

.field private mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

.field private mShareContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mStopped:Z

.field private final mThisWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/camera/ui/GLSurfaceTexture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/GLSurfaceTexture;)I
    .registers 2

    iget v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mDebugFlags:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/GLSurfaceTexture;)Lcom/android/camera/ui/GLSurfaceTexture$EGLConfigChooser;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mEGLConfigChooser:Lcom/android/camera/ui/GLSurfaceTexture$EGLConfigChooser;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/camera/ui/GLSurfaceTexture;)I
    .registers 2

    iget v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mEGLContextClientVersion:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/camera/ui/GLSurfaceTexture;)Lcom/android/camera/ui/GLSurfaceTexture$EGLContextFactory;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mEGLContextFactory:Lcom/android/camera/ui/GLSurfaceTexture$EGLContextFactory;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/camera/ui/GLSurfaceTexture;)Lcom/android/camera/ui/GLSurfaceTexture$EGLWindowSurfaceFactory;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mEGLWindowSurfaceFactory:Lcom/android/camera/ui/GLSurfaceTexture$EGLWindowSurfaceFactory;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/camera/ui/GLSurfaceTexture;)Lcom/android/camera/ui/GLSurfaceTexture$GLWrapper;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLWrapper:Lcom/android/camera/ui/GLSurfaceTexture$GLWrapper;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/camera/ui/GLSurfaceTexture;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mPreserveEGLContextOnPause:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/camera/ui/GLSurfaceTexture;)Landroid/opengl/GLSurfaceView$Renderer;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/camera/ui/GLSurfaceTexture;)Ljavax/microedition/khronos/egl/EGLContext;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mShareContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object v0
.end method

.method static synthetic -get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;
    .registers 1

    sget-object v0, Lcom/android/camera/ui/GLSurfaceTexture;->sGLThreadManager:Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;-><init>(Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;)V

    sput-object v0, Lcom/android/camera/ui/GLSurfaceTexture;->sGLThreadManager:Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/graphics/SurfaceTexture;-><init>(IZ)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/android/camera/ui/GLSurfaceTexture;->detachFromGLContext()V

    return-void
.end method

.method private checkRenderThreadState()V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    return-void
.end method

.method private internalStart()V
    .registers 4

    iget-object v1, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    if-eqz v1, :cond_3d

    iget-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mStopped:Z

    if-eqz v1, :cond_2b

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    invoke-virtual {v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->getRenderMode()I

    move-result v0

    :cond_13
    new-instance v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    iget-object v2, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v1, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    iget v1, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mPreservedWidth:I

    iget v2, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mPreservedHeight:I

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/ui/GLSurfaceTexture;->setSize(II)V

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2b

    iget-object v1, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->setRenderMode(I)V

    :cond_2b
    iget-object v1, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    invoke-virtual {v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_3d

    iget-object v1, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    invoke-virtual {v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->start()V

    iget-object v1, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    invoke-virtual {v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->surfaceCreated()V

    :cond_3d
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mStopped:Z

    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->requestExitAndWait()V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_d

    :cond_9
    invoke-super {p0}, Landroid/graphics/SurfaceTexture;->finalize()V

    return-void

    :catchall_d
    move-exception v0

    invoke-super {p0}, Landroid/graphics/SurfaceTexture;->finalize()V

    throw v0
.end method

.method public pause()V
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->onPause()V

    return-void
.end method

.method public release()V
    .registers 1

    return-void
.end method

.method public requestRender()V
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->requestRender()V

    return-void
.end method

.method public resume()V
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->onResume()V

    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .registers 2

    invoke-direct {p0}, Lcom/android/camera/ui/GLSurfaceTexture;->checkRenderThreadState()V

    iput p1, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mEGLContextClientVersion:I

    return-void
.end method

.method public setPreserveEGLContextOnPause(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mPreserveEGLContextOnPause:Z

    return-void
.end method

.method public setRenderMode(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->setRenderMode(I)V

    return-void
.end method

.method public setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/camera/ui/GLSurfaceTexture;->checkRenderThreadState()V

    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mEGLConfigChooser:Lcom/android/camera/ui/GLSurfaceTexture$EGLConfigChooser;

    if-nez v0, :cond_10

    new-instance v0, Lcom/android/camera/ui/GLSurfaceTexture$SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/GLSurfaceTexture$SimpleEGLConfigChooser;-><init>(Lcom/android/camera/ui/GLSurfaceTexture;Z)V

    iput-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mEGLConfigChooser:Lcom/android/camera/ui/GLSurfaceTexture$EGLConfigChooser;

    :cond_10
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mEGLContextFactory:Lcom/android/camera/ui/GLSurfaceTexture$EGLContextFactory;

    if-nez v0, :cond_1b

    new-instance v0, Lcom/android/camera/ui/GLSurfaceTexture$DefaultContextFactory;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/ui/GLSurfaceTexture$DefaultContextFactory;-><init>(Lcom/android/camera/ui/GLSurfaceTexture;Lcom/android/camera/ui/GLSurfaceTexture$DefaultContextFactory;)V

    iput-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mEGLContextFactory:Lcom/android/camera/ui/GLSurfaceTexture$EGLContextFactory;

    :cond_1b
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mEGLWindowSurfaceFactory:Lcom/android/camera/ui/GLSurfaceTexture$EGLWindowSurfaceFactory;

    if-nez v0, :cond_26

    new-instance v0, Lcom/android/camera/ui/GLSurfaceTexture$DefaultWindowSurfaceFactory;

    invoke-direct {v0, v2}, Lcom/android/camera/ui/GLSurfaceTexture$DefaultWindowSurfaceFactory;-><init>(Lcom/android/camera/ui/GLSurfaceTexture$DefaultWindowSurfaceFactory;)V

    iput-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mEGLWindowSurfaceFactory:Lcom/android/camera/ui/GLSurfaceTexture$EGLWindowSurfaceFactory;

    :cond_26
    iput-object p1, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    new-instance v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    iget-object v1, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    return-void
.end method

.method public setSize(II)V
    .registers 4

    iput p1, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mPreservedWidth:I

    iput p2, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mPreservedHeight:I

    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->onWindowResize(II)V

    return-void
.end method

.method public startWithShareContext(Ljavax/microedition/khronos/egl/EGLContext;)V
    .registers 2

    iput-object p1, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mShareContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-direct {p0}, Lcom/android/camera/ui/GLSurfaceTexture;->internalStart()V

    return-void
.end method

.method public stop()V
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->requestExitAndWait()V

    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mStopped:Z

    return-void
.end method
