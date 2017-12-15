.class public abstract Lcom/android/camera/effect/renders/Render;
.super Ljava/lang/Object;
.source "Render.java"


# instance fields
.field protected mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

.field protected mId:I

.field protected mJpegOrientation:I

.field protected mMirror:Z

.field protected mOldViewportHeight:I

.field protected mOldViewportWidth:I

.field protected mOrientation:I

.field protected mParentFrameBufferId:I

.field protected mPreviewHeight:I

.field protected mPreviewWidth:I

.field protected mShootRotation:F

.field protected mSnapshotOriginHeight:I

.field protected mSnapshotOriginWidth:I

.field protected mViewportHeight:I

.field protected mViewportWidth:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/effect/renders/Render;->mId:I

    iput-object p1, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/effect/renders/Render;->mParentFrameBufferId:I

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/effect/renders/Render;->mId:I

    iput-object p1, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/effect/renders/Render;->mParentFrameBufferId:I

    iput p2, p0, Lcom/android/camera/effect/renders/Render;->mId:I

    return-void
.end method


# virtual methods
.method public abstract draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z
.end method

.method public getId()I
    .registers 2

    iget v0, p0, Lcom/android/camera/effect/renders/Render;->mId:I

    return v0
.end method

.method public setEffectRangeAttribute(Lcom/android/camera/effect/EffectController$EffectRectAttribute;)V
    .registers 2

    return-void
.end method

.method public setJpegOrientation(I)V
    .registers 2

    iput p1, p0, Lcom/android/camera/effect/renders/Render;->mJpegOrientation:I

    return-void
.end method

.method public setMirror(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/camera/effect/renders/Render;->mMirror:Z

    return-void
.end method

.method public setOrientation(I)V
    .registers 2

    iput p1, p0, Lcom/android/camera/effect/renders/Render;->mOrientation:I

    return-void
.end method

.method protected setParentFrameBufferId(I)V
    .registers 2

    iput p1, p0, Lcom/android/camera/effect/renders/Render;->mParentFrameBufferId:I

    return-void
.end method

.method public setPreviewSize(II)V
    .registers 3

    iput p1, p0, Lcom/android/camera/effect/renders/Render;->mPreviewWidth:I

    iput p2, p0, Lcom/android/camera/effect/renders/Render;->mPreviewHeight:I

    return-void
.end method

.method public setShootRotation(F)V
    .registers 2

    iput p1, p0, Lcom/android/camera/effect/renders/Render;->mShootRotation:F

    return-void
.end method

.method public setSnapshotSize(II)V
    .registers 3

    iput p1, p0, Lcom/android/camera/effect/renders/Render;->mSnapshotOriginWidth:I

    iput p2, p0, Lcom/android/camera/effect/renders/Render;->mSnapshotOriginHeight:I

    return-void
.end method

.method public setViewportSize(II)V
    .registers 4

    iput p1, p0, Lcom/android/camera/effect/renders/Render;->mViewportWidth:I

    iput p2, p0, Lcom/android/camera/effect/renders/Render;->mViewportHeight:I

    iget v0, p0, Lcom/android/camera/effect/renders/Render;->mOldViewportWidth:I

    if-nez v0, :cond_c

    iput p1, p0, Lcom/android/camera/effect/renders/Render;->mOldViewportWidth:I

    iput p2, p0, Lcom/android/camera/effect/renders/Render;->mOldViewportHeight:I

    :cond_c
    return-void
.end method

.method protected updateViewport()V
    .registers 5

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v0, p0, Lcom/android/camera/effect/renders/Render;->mViewportWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/Render;->mViewportHeight:I

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object v0, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/effect/renders/Render;->mViewportWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/effect/renders/Render;->mViewportHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/android/camera/effect/GLCanvasState;->ortho(FFFF)V

    return-void
.end method
