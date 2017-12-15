.class public Lcom/android/camera/CaptureAnimManager;
.super Ljava/lang/Object;
.source "CaptureAnimManager.java"


# instance fields
.field private mAnimStartTime:J

.field private mAnimType:I

.field private mDrawHeight:I

.field private mDrawWidth:I

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public animateHold()V
    .registers 2

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    return-void
.end method

.method public animateHoldAndSlide()V
    .registers 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    return-void
.end method

.method public animateSlide()V
    .registers 3

    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    return-void

    :cond_6
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimStartTime:J

    return-void
.end method

.method public clearAnimation()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    return-void
.end method

.method public drawAnimation(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z
    .registers 16

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/CaptureAnimManager;->mAnimStartTime:J

    sub-long v8, v0, v2

    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_15

    const-wide/16 v0, 0x78

    cmp-long v0, v8, v0

    if-lez v0, :cond_15

    const/4 v0, 0x0

    return v0

    :cond_15
    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    const-wide/16 v0, 0x8c

    cmp-long v0, v8, v0

    if-lez v0, :cond_22

    const/4 v0, 0x0

    return v0

    :cond_22
    iget v6, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_36

    const-wide/16 v0, 0x14

    cmp-long v0, v8, v0

    if-gez v0, :cond_4e

    const/4 v6, 0x2

    :goto_30
    const/4 v0, 0x3

    if-ne v6, v0, :cond_36

    const-wide/16 v0, 0x14

    sub-long/2addr v8, v0

    :cond_36
    const/4 v0, 0x2

    if-ne v6, v0, :cond_50

    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget v1, p0, Lcom/android/camera/CaptureAnimManager;->mX:F

    float-to-int v2, v1

    iget v1, p0, Lcom/android/camera/CaptureAnimManager;->mY:F

    float-to-int v3, v1

    iget v4, p0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    iget v5, p0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    move-object v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;IIII)V

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    :goto_4c
    const/4 v0, 0x1

    return v0

    :cond_4e
    const/4 v6, 0x3

    goto :goto_30

    :cond_50
    const/4 v0, 0x3

    if-ne v6, v0, :cond_82

    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget v1, p0, Lcom/android/camera/CaptureAnimManager;->mX:F

    float-to-int v2, v1

    iget v1, p0, Lcom/android/camera/CaptureAnimManager;->mY:F

    float-to-int v3, v1

    iget v4, p0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    iget v5, p0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    move-object v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;IIII)V

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    new-instance v0, Lcom/android/camera/effect/draw_mode/FillRectAttribute;

    iget v1, p0, Lcom/android/camera/CaptureAnimManager;->mX:F

    iget v2, p0, Lcom/android/camera/CaptureAnimManager;->mY:F

    iget v3, p0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    int-to-float v4, v4

    const/16 v5, 0xb2

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v5, v7, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/draw_mode/FillRectAttribute;-><init>(FFFFI)V

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    goto :goto_4c

    :cond_82
    const/4 v0, 0x0

    return v0
.end method

.method public startAnimation(IIII)V
    .registers 7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimStartTime:J

    iput p3, p0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    iput p4, p0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    int-to-float v0, p1

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mX:F

    int-to-float v0, p2

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mY:F

    return-void
.end method
