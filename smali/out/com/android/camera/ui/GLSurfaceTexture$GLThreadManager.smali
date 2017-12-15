.class Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;
.super Ljava/lang/Object;
.source "GLSurfaceTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/GLSurfaceTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GLThreadManager"
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mEglOwner:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

.field private mGLESDriverCheckComplete:Z

.field private mGLESVersion:I

.field private mGLESVersionCheckComplete:Z

.field private mLimitedGLESContexts:Z

.field private mMultipleGLESContextsAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "GLThreadManager"

    sput-object v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;-><init>()V

    return-void
.end method

.method private checkGLESVersion()V
    .registers 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->mGLESVersionCheckComplete:Z

    if-nez v0, :cond_9

    iput-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    iput-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->mGLESVersionCheckComplete:Z

    :cond_9
    return-void
.end method


# virtual methods
.method public declared-synchronized checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 7

    const/4 v1, 0x0

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_3
    iget-boolean v3, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->mGLESDriverCheckComplete:Z

    if-nez v3, :cond_2e

    invoke-direct {p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->checkGLESVersion()V

    const/16 v3, 0x1f01

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    iget v3, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->mGLESVersion:I

    const/high16 v4, 0x20000

    if-ge v3, v4, :cond_25

    const-string/jumbo v3, "Q3Dimension MSM7500 "

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    move v3, v1

    :goto_20
    iput-boolean v3, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    invoke-virtual {p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V

    :cond_25
    iget-boolean v3, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-eqz v3, :cond_32

    :goto_29
    iput-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->mLimitedGLESContexts:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->mGLESDriverCheckComplete:Z
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_34

    :cond_2e
    monitor-exit p0

    return-void

    :cond_30
    move v3, v2

    goto :goto_20

    :cond_32
    move v1, v2

    goto :goto_29

    :catchall_34
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public releaseEglContextLocked(Lcom/android/camera/ui/GLSurfaceTexture$GLThread;)V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->mEglOwner:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    if-ne v0, p1, :cond_7

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->mEglOwner:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V

    return-void
.end method

.method public declared-synchronized shouldReleaseEGLContextWhenPausing()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->mLimitedGLESContexts:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shouldTerminateEGLWhenPausing()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->checkGLESVersion()V

    iget-boolean v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->mMultipleGLESContextsAllowed:Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_d

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    :goto_9
    monitor-exit p0

    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_9

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized threadExiting(Lcom/android/camera/ui/GLSurfaceTexture$GLThread;)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-static {p1, v0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->-set0(Lcom/android/camera/ui/GLSurfaceTexture$GLThread;Z)Z

    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->mEglOwner:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    if-ne v0, p1, :cond_c

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->mEglOwner:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    :cond_c
    invoke-virtual {p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tryAcquireEglContextLocked(Lcom/android/camera/ui/GLSurfaceTexture$GLThread;)Z
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->mEglOwner:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    if-eq v0, p1, :cond_9

    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->mEglOwner:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    if-nez v0, :cond_f

    :cond_9
    iput-object p1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->mEglOwner:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    invoke-virtual {p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V

    return v1

    :cond_f
    invoke-direct {p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->checkGLESVersion()V

    iget-boolean v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-eqz v0, :cond_17

    return v1

    :cond_17
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->mEglOwner:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->mEglOwner:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->requestReleaseEglContextLocked()V

    :cond_20
    const/4 v0, 0x0

    return v0
.end method
