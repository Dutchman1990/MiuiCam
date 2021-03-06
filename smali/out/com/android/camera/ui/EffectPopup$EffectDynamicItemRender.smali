.class public Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;
.super Ljava/lang/Object;
.source "EffectPopup.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/EffectPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EffectDynamicItemRender"
.end annotation


# instance fields
.field mEffectIndex:I

.field private mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

.field mTransform:[F

.field final synthetic this$0:Lcom/android/camera/ui/EffectPopup;


# direct methods
.method protected constructor <init>(Lcom/android/camera/ui/EffectPopup;)V
    .registers 4

    iput-object p1, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;->mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;->mTransform:[F

    return-void
.end method


# virtual methods
.method public bindEffectIndex(I)V
    .registers 2

    iput p1, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;->mEffectIndex:I

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 15

    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-static {v0}, Lcom/android/camera/ui/EffectPopup;->-get0(Lcom/android/camera/ui/EffectPopup;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v12

    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-static {v0}, Lcom/android/camera/ui/EffectPopup;->-get0(Lcom/android/camera/ui/EffectPopup;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->getGLCanvas()Lcom/android/gallery3d/ui/GLCanvas;

    move-result-object v7

    if-eqz v12, :cond_9d

    if-eqz v7, :cond_9d

    invoke-virtual {v12}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_9d

    monitor-enter v7

    :try_start_2b
    invoke-interface {v7}, Lcom/android/gallery3d/ui/GLCanvas;->clearBuffer()V

    invoke-interface {v7}, Lcom/android/gallery3d/ui/GLCanvas;->getWidth()I

    move-result v11

    invoke-interface {v7}, Lcom/android/gallery3d/ui/GLCanvas;->getHeight()I

    move-result v10

    invoke-interface {v7}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-static {v0}, Lcom/android/camera/ui/EffectPopup;->-get3(Lcom/android/camera/ui/EffectPopup;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-static {v1}, Lcom/android/camera/ui/EffectPopup;->-get2(Lcom/android/camera/ui/EffectPopup;)I

    move-result v1

    invoke-interface {v7, v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->setSize(II)V

    invoke-virtual {v12}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;->mTransform:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v8

    monitor-enter v8
    :try_end_5a
    .catchall {:try_start_2b .. :try_end_5a} :catchall_a1

    const/4 v0, 0x0

    :try_start_5b
    invoke-virtual {v8, v0}, Lcom/android/camera/effect/EffectController;->getEffect(Z)I

    move-result v9

    iget v0, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;->mEffectIndex:I

    invoke-virtual {v8, v0}, Lcom/android/camera/effect/EffectController;->setEffect(I)V

    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;->mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-virtual {v12}, Lcom/android/camera/CameraScreenNail;->getExtTexture()Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;->mTransform:[F

    iget-object v3, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-static {v3}, Lcom/android/camera/ui/EffectPopup;->-get7(Lcom/android/camera/ui/EffectPopup;)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-static {v4}, Lcom/android/camera/ui/EffectPopup;->-get8(Lcom/android/camera/ui/EffectPopup;)I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-static {v5}, Lcom/android/camera/ui/EffectPopup;->-get9(Lcom/android/camera/ui/EffectPopup;)I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-static {v6}, Lcom/android/camera/ui/EffectPopup;->-get6(Lcom/android/camera/ui/EffectPopup;)I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->init(Lcom/android/gallery3d/ui/ExtTexture;[FIIII)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    invoke-virtual {v8, v9}, Lcom/android/camera/effect/EffectController;->setEffect(I)V
    :try_end_8e
    .catchall {:try_start_5b .. :try_end_8e} :catchall_9e

    :try_start_8e
    monitor-exit v8

    invoke-interface {v7, v11, v10}, Lcom/android/gallery3d/ui/GLCanvas;->setSize(II)V

    invoke-interface {v7}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    invoke-interface {v7}, Lcom/android/gallery3d/ui/GLCanvas;->recycledResources()V
    :try_end_9c
    .catchall {:try_start_8e .. :try_end_9c} :catchall_a1

    monitor-exit v7

    :cond_9d
    return-void

    :catchall_9e
    move-exception v0

    :try_start_9f
    monitor-exit v8

    throw v0
    :try_end_a1
    .catchall {:try_start_9f .. :try_end_a1} :catchall_a1

    :catchall_a1
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 4

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 3

    return-void
.end method
