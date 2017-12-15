.class Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;
.super Ljava/lang/Object;
.source "MorphoPanoramaModule.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/MorphoPanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StillPreviewRender"
.end annotation


# instance fields
.field private mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

.field mTransform:[F

.field final synthetic this$0:Lcom/android/camera/module/MorphoPanoramaModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/MorphoPanoramaModule;)V
    .registers 4

    iput-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;->mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;->mTransform:[F

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/MorphoPanoramaModule;Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;-><init>(Lcom/android/camera/module/MorphoPanoramaModule;)V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 15

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v0, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v11

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-virtual {v0}, Lcom/android/camera/module/MorphoPanoramaModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->getGLCanvas()Lcom/android/gallery3d/ui/GLCanvas;

    move-result-object v7

    if-eqz v11, :cond_82

    if-eqz v7, :cond_82

    monitor-enter v7

    :try_start_1b
    invoke-interface {v7}, Lcom/android/gallery3d/ui/GLCanvas;->clearBuffer()V

    invoke-interface {v7}, Lcom/android/gallery3d/ui/GLCanvas;->getWidth()I

    move-result v10

    invoke-interface {v7}, Lcom/android/gallery3d/ui/GLCanvas;->getHeight()I

    move-result v9

    invoke-interface {v7}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v0}, Lcom/android/camera/module/MorphoPanoramaModule;->-get14(Lcom/android/camera/module/MorphoPanoramaModule;)Lcom/android/camera/ui/GLTextureView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView;->getWidth()I

    move-result v12

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v0}, Lcom/android/camera/module/MorphoPanoramaModule;->-get14(Lcom/android/camera/module/MorphoPanoramaModule;)Lcom/android/camera/ui/GLTextureView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView;->getHeight()I

    move-result v8

    invoke-interface {v7, v12, v8}, Lcom/android/gallery3d/ui/GLCanvas;->setSize(II)V

    invoke-virtual {v11}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;->mTransform:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;->mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-virtual {v11}, Lcom/android/camera/CameraScreenNail;->getExtTexture()Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;->mTransform:[F

    iget-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v3}, Lcom/android/camera/module/MorphoPanoramaModule;->-get16(Lcom/android/camera/module/MorphoPanoramaModule;)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v4}, Lcom/android/camera/module/MorphoPanoramaModule;->-get17(Lcom/android/camera/module/MorphoPanoramaModule;)I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v5}, Lcom/android/camera/module/MorphoPanoramaModule;->-get18(Lcom/android/camera/module/MorphoPanoramaModule;)I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillPreviewRender;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v6}, Lcom/android/camera/module/MorphoPanoramaModule;->-get15(Lcom/android/camera/module/MorphoPanoramaModule;)I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->init(Lcom/android/gallery3d/ui/ExtTexture;[FIIII)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    invoke-interface {v7, v10, v9}, Lcom/android/gallery3d/ui/GLCanvas;->setSize(II)V

    invoke-interface {v7}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    invoke-interface {v7}, Lcom/android/gallery3d/ui/GLCanvas;->recycledResources()V
    :try_end_81
    .catchall {:try_start_1b .. :try_end_81} :catchall_83

    monitor-exit v7

    :cond_82
    return-void

    :catchall_83
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
