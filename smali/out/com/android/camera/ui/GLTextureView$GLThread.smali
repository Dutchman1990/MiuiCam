.class Lcom/android/camera/ui/GLTextureView$GLThread;
.super Ljava/lang/Thread;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GLThread"
.end annotation


# instance fields
.field private mEglHelper:Lcom/android/camera/ui/GLTextureView$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mFinishedCreatingEglSurface:Z

.field private mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/camera/ui/GLTextureView;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRequestPaused:Z

.field private mRequestRender:Z

.field private mShouldExit:Z

.field private mShouldReleaseEglContext:Z

.field private mSizeChanged:Z

.field private mSurfaceIsBad:Z

.field private mWaitingForSurface:Z

.field private mWidth:I


# direct methods
.method static synthetic -set0(Lcom/android/camera/ui/GLTextureView$GLThread;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mExited:Z

    return p1
.end method

.method constructor <init>(Ljava/lang/ref/WeakReference;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/camera/ui/GLTextureView;",
            ">;II)V"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mSizeChanged:Z

    iput p2, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mWidth:I

    iput p3, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHeight:I

    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestRender:Z

    iput v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRenderMode:I

    iput-object p1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private guardedRun()V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    new-instance v19, Lcom/android/camera/ui/GLTextureView$EglHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Lcom/android/camera/ui/GLTextureView$EglHelper;-><init>(Ljava/lang/ref/WeakReference;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mEglHelper:Lcom/android/camera/ui/GLTextureView$EglHelper;

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglContext:Z

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglSurface:Z

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/16 v18, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/16 v17, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    :cond_2f
    :goto_2f
    :try_start_2f
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v20

    monitor-enter v20
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_1a8

    :goto_34
    :try_start_34
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mShouldExit:Z

    move/from16 v19, v0
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_1a5

    if-eqz v19, :cond_4d

    :try_start_3c
    monitor-exit v20
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_1a8

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v20

    monitor-enter v20

    :try_start_42
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglContextLocked()V
    :try_end_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_4a

    monitor-exit v20

    return-void

    :catchall_4a
    move-exception v19

    monitor-exit v20

    throw v19

    :cond_4d
    :try_start_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_76

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Ljava/lang/Runnable;

    move-object v7, v0
    :try_end_6e
    .catchall {:try_start_4d .. :try_end_6e} :catchall_1a5

    :goto_6e
    :try_start_6e
    monitor-exit v20

    if-eqz v7, :cond_22c

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V
    :try_end_74
    .catchall {:try_start_6e .. :try_end_74} :catchall_1a8

    const/4 v7, 0x0

    goto :goto_2f

    :cond_76
    const/4 v11, 0x0

    :try_start_77
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mPaused:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestPaused:Z

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_a0

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestPaused:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestPaused:Z

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mPaused:Z

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->notifyAll()V

    :cond_a0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mShouldReleaseEglContext:Z

    move/from16 v19, v0

    if-eqz v19, :cond_b7

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglContextLocked()V

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mShouldReleaseEglContext:Z

    const/4 v2, 0x1

    :cond_b7
    if-eqz v10, :cond_c0

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglContextLocked()V

    const/4 v10, 0x0

    :cond_c0
    if-eqz v11, :cond_cd

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_cd

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    :cond_cd
    if-eqz v11, :cond_f5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglContext:Z

    move/from16 v19, v0

    if-eqz v19, :cond_f5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/camera/ui/GLTextureView;

    if-nez v16, :cond_1b6

    const/4 v12, 0x0

    :goto_e6
    if-eqz v12, :cond_f2

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->shouldReleaseEGLContextWhenPausing()Z

    move-result v19

    if-eqz v19, :cond_f5

    :cond_f2
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglContextLocked()V

    :cond_f5
    if-eqz v11, :cond_10a

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->shouldTerminateEGLWhenPausing()Z

    move-result v19

    if-eqz v19, :cond_10a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mEglHelper:Lcom/android/camera/ui/GLTextureView$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLTextureView$EglHelper;->finish()V

    :cond_10a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHasSurface:Z

    move/from16 v19, v0

    if-nez v19, :cond_11a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mWaitingForSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1bc

    :cond_11a
    :goto_11a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHasSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_139

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mWaitingForSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_139

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mWaitingForSurface:Z

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->notifyAll()V

    :cond_139
    if-eqz v6, :cond_14d

    const/16 v18, 0x0

    const/4 v6, 0x0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mRenderComplete:Z

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->notifyAll()V

    :cond_14d
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->readyToDraw()Z

    move-result v19

    if-eqz v19, :cond_223

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglContext:Z

    move/from16 v19, v0

    if-nez v19, :cond_15e

    if-eqz v2, :cond_1e0

    const/4 v2, 0x0

    :cond_15e
    :goto_15e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglContext:Z

    move/from16 v19, v0

    if-eqz v19, :cond_16e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_216

    :cond_16e
    :goto_16e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_223

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mSizeChanged:Z

    move/from16 v19, v0

    if-eqz v19, :cond_194

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHeight:I

    const/16 v18, 0x1

    const/4 v4, 0x1

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mSizeChanged:Z

    :cond_194
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestRender:Z

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->notifyAll()V
    :try_end_1a3
    .catchall {:try_start_77 .. :try_end_1a3} :catchall_1a5

    goto/16 :goto_6e

    :catchall_1a5
    move-exception v19

    :try_start_1a6
    monitor-exit v20

    throw v19
    :try_end_1a8
    .catchall {:try_start_1a6 .. :try_end_1a8} :catchall_1a8

    :catchall_1a8
    move-exception v19

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v20

    monitor-enter v20

    :try_start_1ae
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglContextLocked()V
    :try_end_1b4
    .catchall {:try_start_1ae .. :try_end_1b4} :catchall_324

    monitor-exit v20

    throw v19

    :cond_1b6
    :try_start_1b6
    invoke-static/range {v16 .. v16}, Lcom/android/camera/ui/GLTextureView;->-get6(Lcom/android/camera/ui/GLTextureView;)Z

    move-result v12

    goto/16 :goto_e6

    :cond_1bc
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1c7

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    :cond_1c7
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mWaitingForSurface:Z

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mSurfaceIsBad:Z

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->notifyAll()V

    goto/16 :goto_11a

    :cond_1e0
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->tryAcquireEglContextLocked(Lcom/android/camera/ui/GLTextureView$GLThread;)Z
    :try_end_1eb
    .catchall {:try_start_1b6 .. :try_end_1eb} :catchall_1a5

    move-result v19

    if-eqz v19, :cond_15e

    :try_start_1ee
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mEglHelper:Lcom/android/camera/ui/GLTextureView$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLTextureView$EglHelper;->start()V
    :try_end_1f7
    .catch Ljava/lang/RuntimeException; {:try_start_1ee .. :try_end_1f7} :catch_209
    .catchall {:try_start_1ee .. :try_end_1f7} :catchall_1a5

    const/16 v19, 0x1

    :try_start_1f9
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglContext:Z

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->notifyAll()V

    goto/16 :goto_15e

    :catch_209
    move-exception v15

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->releaseEglContextLocked(Lcom/android/camera/ui/GLTextureView$GLThread;)V

    throw v15

    :cond_216
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglSurface:Z

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v13, 0x1

    goto/16 :goto_16e

    :cond_223
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->wait()V
    :try_end_22a
    .catchall {:try_start_1f9 .. :try_end_22a} :catchall_1a5

    goto/16 :goto_34

    :cond_22c
    if-eqz v4, :cond_250

    :try_start_22e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mEglHelper:Lcom/android/camera/ui/GLTextureView$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLTextureView$EglHelper;->createSurface()Z

    move-result v19

    if-eqz v19, :cond_2fd

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v20

    monitor-enter v20
    :try_end_23f
    .catchall {:try_start_22e .. :try_end_23f} :catchall_1a8

    const/16 v19, 0x1

    :try_start_241
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mFinishedCreatingEglSurface:Z

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->notifyAll()V
    :try_end_24e
    .catchall {:try_start_241 .. :try_end_24e} :catchall_2fa

    :try_start_24e
    monitor-exit v20

    const/4 v4, 0x0

    :cond_250
    if-eqz v5, :cond_26b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mEglHelper:Lcom/android/camera/ui/GLTextureView$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLTextureView$EglHelper;->createGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v8, v0

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V

    const/4 v5, 0x0

    :cond_26b
    if-eqz v3, :cond_293

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/camera/ui/GLTextureView;

    if-eqz v16, :cond_292

    invoke-static/range {v16 .. v16}, Lcom/android/camera/ui/GLTextureView;->-get7(Lcom/android/camera/ui/GLTextureView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mEglHelper:Lcom/android/camera/ui/GLTextureView$EglHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/camera/ui/GLTextureView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v8, v1}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    :cond_292
    const/4 v3, 0x0

    :cond_293
    if-eqz v13, :cond_2af

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/camera/ui/GLTextureView;

    if-eqz v16, :cond_2ae

    invoke-static/range {v16 .. v16}, Lcom/android/camera/ui/GLTextureView;->-get7(Lcom/android/camera/ui/GLTextureView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-interface {v0, v8, v1, v9}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    :cond_2ae
    const/4 v13, 0x0

    :cond_2af
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/camera/ui/GLTextureView;

    if-eqz v16, :cond_2c6

    invoke-static/range {v16 .. v16}, Lcom/android/camera/ui/GLTextureView;->-get7(Lcom/android/camera/ui/GLTextureView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    :cond_2c6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLTextureView$GLThread;->mEglHelper:Lcom/android/camera/ui/GLTextureView$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLTextureView$EglHelper;->swap()I

    move-result v14

    sparse-switch v14, :sswitch_data_328

    const-string/jumbo v19, "GLThread"

    const-string/jumbo v20, "eglSwapBuffers"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v14}, Lcom/android/camera/ui/GLTextureView$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v20

    monitor-enter v20
    :try_end_2e5
    .catchall {:try_start_24e .. :try_end_2e5} :catchall_1a8

    const/16 v19, 0x1

    :try_start_2e7
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mSurfaceIsBad:Z

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->notifyAll()V
    :try_end_2f4
    .catchall {:try_start_2e7 .. :try_end_2f4} :catchall_321

    :try_start_2f4
    monitor-exit v20

    :goto_2f5
    :sswitch_2f5
    if-eqz v18, :cond_2f

    const/4 v6, 0x1

    goto/16 :goto_2f

    :catchall_2fa
    move-exception v19

    monitor-exit v20

    throw v19

    :cond_2fd
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v20

    monitor-enter v20
    :try_end_302
    .catchall {:try_start_2f4 .. :try_end_302} :catchall_1a8

    const/16 v19, 0x1

    :try_start_304
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mFinishedCreatingEglSurface:Z

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLTextureView$GLThread;->mSurfaceIsBad:Z

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->notifyAll()V
    :try_end_319
    .catchall {:try_start_304 .. :try_end_319} :catchall_31c

    :try_start_319
    monitor-exit v20

    goto/16 :goto_2f

    :catchall_31c
    move-exception v19

    monitor-exit v20

    throw v19

    :sswitch_31f
    const/4 v10, 0x1

    goto :goto_2f5

    :catchall_321
    move-exception v19

    monitor-exit v20

    throw v19
    :try_end_324
    .catchall {:try_start_319 .. :try_end_324} :catchall_1a8

    :catchall_324
    move-exception v19

    monitor-exit v20

    throw v19

    nop

    :sswitch_data_328
    .sparse-switch
        0x3000 -> :sswitch_2f5
        0x300e -> :sswitch_31f
    .end sparse-switch
.end method

.method private readyToDraw()Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mPaused:Z

    if-nez v2, :cond_e

    iget-boolean v2, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHasSurface:Z

    if-eqz v2, :cond_e

    iget-boolean v2, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mSurfaceIsBad:Z

    if-eqz v2, :cond_10

    :cond_e
    move v0, v1

    :cond_f
    :goto_f
    return v0

    :cond_10
    iget v2, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mWidth:I

    if-lez v2, :cond_e

    iget v2, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHeight:I

    if-lez v2, :cond_e

    iget-boolean v2, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestRender:Z

    if-nez v2, :cond_f

    iget v2, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRenderMode:I

    if-eq v2, v0, :cond_f

    move v0, v1

    goto :goto_f
.end method

.method private stopEglContextLocked()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mEglHelper:Lcom/android/camera/ui/GLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView$EglHelper;->finish()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglContext:Z

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->releaseEglContextLocked(Lcom/android/camera/ui/GLTextureView$GLThread;)V

    :cond_13
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglSurface:Z

    iget-object v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mEglHelper:Lcom/android/camera/ui/GLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView$EglHelper;->destroySurface()V

    :cond_c
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->readyToDraw()Z

    move-result v0

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getRenderMode()I
    .registers 3

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    :try_start_5
    iget v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRenderMode:I
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_9

    monitor-exit v0

    return v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public onPause()V
    .registers 4

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_6
    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestPaused:Z

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->notifyAll()V

    :goto_f
    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mExited:Z

    if-nez v1, :cond_17

    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mPaused:Z
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_2a

    if-eqz v1, :cond_19

    :cond_17
    monitor-exit v2

    return-void

    :cond_19
    :try_start_19
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->wait()V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_20} :catch_21
    .catchall {:try_start_19 .. :try_end_20} :catchall_2a

    goto :goto_f

    :catch_21
    move-exception v0

    :try_start_22
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_2a

    goto :goto_f

    :catchall_2a
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onResume()V
    .registers 4

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_6
    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestPaused:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestRender:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRenderComplete:Z

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->notifyAll()V

    :goto_15
    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mExited:Z

    if-nez v1, :cond_21

    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mPaused:Z

    if-eqz v1, :cond_21

    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRenderComplete:Z
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_34

    if-eqz v1, :cond_23

    :cond_21
    monitor-exit v2

    return-void

    :cond_23
    :try_start_23
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->wait()V
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_2a} :catch_2b
    .catchall {:try_start_23 .. :try_end_2a} :catchall_34

    goto :goto_15

    :catch_2b
    move-exception v0

    :try_start_2c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_34

    goto :goto_15

    :catchall_34
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onWindowResize(II)V
    .registers 6

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    :try_start_5
    iput p1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mWidth:I

    iput p2, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHeight:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mSizeChanged:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestRender:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRenderComplete:Z

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->notifyAll()V

    :goto_19
    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mExited:Z

    if-nez v1, :cond_21

    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mPaused:Z
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_3e

    if-eqz v1, :cond_23

    :cond_21
    monitor-exit v2

    return-void

    :cond_23
    :try_start_23
    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRenderComplete:Z

    if-nez v1, :cond_21

    invoke-virtual {p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->ableToDraw()Z
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_3e

    move-result v1

    if-eqz v1, :cond_21

    :try_start_2d
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->wait()V
    :try_end_34
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_34} :catch_35
    .catchall {:try_start_2d .. :try_end_34} :catchall_3e

    goto :goto_19

    :catch_35
    move-exception v0

    :try_start_36
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_3e

    goto :goto_19

    :catchall_3e
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public requestExitAndWait()V
    .registers 4

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_6
    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mShouldExit:Z

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->notifyAll()V

    :goto_f
    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mExited:Z
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_24

    if-nez v1, :cond_27

    :try_start_13
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->wait()V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_1a} :catch_1b
    .catchall {:try_start_13 .. :try_end_1a} :catchall_24

    goto :goto_f

    :catch_1b
    move-exception v0

    :try_start_1c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_24

    goto :goto_f

    :catchall_24
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_27
    monitor-exit v2

    return-void
.end method

.method public requestReleaseEglContextLocked()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mShouldReleaseEglContext:Z

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->notifyAll()V

    return-void
.end method

.method public requestRender()V
    .registers 3

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRequestRender:Z

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->notifyAll()V
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_11

    monitor-exit v1

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public run()V
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GLThread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/GLTextureView$GLThread;->setName(Ljava/lang/String;)V

    :try_start_1b
    invoke-direct {p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->guardedRun()V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1e} :catch_26
    .catchall {:try_start_1b .. :try_end_1e} :catchall_2f

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->threadExiting(Lcom/android/camera/ui/GLTextureView$GLThread;)V

    :goto_25
    return-void

    :catch_26
    move-exception v0

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->threadExiting(Lcom/android/camera/ui/GLTextureView$GLThread;)V

    goto :goto_25

    :catchall_2f
    move-exception v1

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->threadExiting(Lcom/android/camera/ui/GLTextureView$GLThread;)V

    throw v1
.end method

.method public setRenderMode(I)V
    .registers 4

    if-ltz p1, :cond_5

    const/4 v0, 0x1

    if-le p1, v0, :cond_e

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    :try_start_13
    iput p1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mRenderMode:I

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->notifyAll()V
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1e

    monitor-exit v1

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public surfaceCreated()V
    .registers 4

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_6
    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHasSurface:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mFinishedCreatingEglSurface:Z

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->notifyAll()V

    :goto_12
    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mWaitingForSurface:Z

    if-eqz v1, :cond_1a

    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mFinishedCreatingEglSurface:Z
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_31

    if-eqz v1, :cond_1c

    :cond_1a
    monitor-exit v2

    return-void

    :cond_1c
    :try_start_1c
    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mExited:Z
    :try_end_1e
    .catchall {:try_start_1c .. :try_end_1e} :catchall_31

    if-nez v1, :cond_1a

    :try_start_20
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->wait()V
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_27} :catch_28
    .catchall {:try_start_20 .. :try_end_27} :catchall_31

    goto :goto_12

    :catch_28
    move-exception v0

    :try_start_29
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_31

    goto :goto_12

    :catchall_31
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public surfaceDestroyed()V
    .registers 4

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_6
    iput-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mHasSurface:Z

    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->notifyAll()V

    :goto_f
    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mWaitingForSurface:Z

    if-nez v1, :cond_17

    iget-boolean v1, p0, Lcom/android/camera/ui/GLTextureView$GLThread;->mExited:Z
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_2a

    if-eqz v1, :cond_19

    :cond_17
    monitor-exit v2

    return-void

    :cond_19
    :try_start_19
    invoke-static {}, Lcom/android/camera/ui/GLTextureView;->-get9()Lcom/android/camera/ui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->wait()V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_20} :catch_21
    .catchall {:try_start_19 .. :try_end_20} :catchall_2a

    goto :goto_f

    :catch_21
    move-exception v0

    :try_start_22
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_2a

    goto :goto_f

    :catchall_2a
    move-exception v1

    monitor-exit v2

    throw v1
.end method
