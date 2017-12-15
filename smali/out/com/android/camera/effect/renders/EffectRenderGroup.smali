.class public Lcom/android/camera/effect/renders/EffectRenderGroup;
.super Lcom/android/camera/effect/renders/RenderGroup;
.source "EffectRenderGroup.java"


# instance fields
.field private mBasicTextureAttri:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

.field private mEffectIndex:I

.field private mEffectRenders:Lcom/android/camera/effect/renders/RenderGroup;

.field private mFocusPeakingRender:Lcom/android/camera/effect/renders/Render;

.field private mIgnoreTimes:I

.field private mNoneEffectRender:Lcom/android/camera/effect/renders/Render;

.field private mPreviewPeakRender:Lcom/android/camera/effect/renders/PipeRenderPair;

.field private mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

.field private mTexMatrix:[F


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    invoke-direct {v0}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mBasicTextureAttri:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectIndex:I

    new-instance v0, Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-direct {v0, p1}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    iput-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    iget-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/EffectRenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    iget-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    new-instance v1, Lcom/android/camera/effect/renders/SurfaceTextureRender;

    invoke-direct {v1, p1}, Lcom/android/camera/effect/renders/SurfaceTextureRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->setFirstRender(Lcom/android/camera/effect/renders/Render;)V

    new-instance v0, Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-direct {v0, p1}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    iput-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPeakRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getEffectRenderGroup()Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectRenders:Lcom/android/camera/effect/renders/RenderGroup;

    return-void
.end method

.method private drawAnimationMask(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V
    .registers 10

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->getBlurAnimationValue()I

    move-result v6

    if-lez v6, :cond_26

    iget-object v7, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    new-instance v0, Lcom/android/camera/effect/draw_mode/FillRectAttribute;

    move-object v2, p1

    check-cast v2, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget v2, v2, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mWidth:I

    int-to-float v3, v2

    check-cast p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget v2, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mHeight:I

    int-to-float v4, v2

    invoke-static {v6, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/draw_mode/FillRectAttribute;-><init>(FFFFI)V

    invoke-interface {v7, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    :cond_26
    return-void
.end method

.method private drawDisplay(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V
    .registers 14

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v9, 0x0

    const/high16 v8, -0x41000000    # -0.5f

    const/4 v7, 0x0

    move-object v0, p1

    check-cast v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-static {}, Lcom/android/camera/Device;->isSupportedShaderEffect()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/effect/EffectController;->isDisplayShow()Z

    move-result v4

    if-eqz v4, :cond_26

    iget v4, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mIgnoreTimes:I

    if-lez v4, :cond_29

    iget v4, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mIgnoreTimes:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mIgnoreTimes:I

    return-void

    :cond_26
    iput v7, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mIgnoreTimes:I

    return-void

    :cond_29
    iget-object v4, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-virtual {v4}, Lcom/android/camera/effect/renders/PipeRenderPair;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v4

    if-nez v4, :cond_32

    return-void

    :cond_32
    iget-object v4, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    const/4 v5, 0x1

    const/4 v6, -0x1

    invoke-interface {v4, v5, v6}, Lcom/android/gallery3d/ui/GLCanvas;->prepareEffectRenders(ZI)V

    iget-object v4, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mTexMatrix:[F

    if-nez v4, :cond_63

    const/high16 v1, 0x3f800000    # 1.0f

    iget v4, v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mHeight:I

    mul-int/lit8 v4, v4, 0x9

    iget v5, v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mWidth:I

    mul-int/lit8 v5, v5, 0x10

    if-ne v4, v5, :cond_94

    const/high16 v1, 0x3f100000    # 0.5625f

    :goto_4b
    const/16 v4, 0x10

    new-array v4, v4, [F

    fill-array-data v4, :array_98

    iput-object v4, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mTexMatrix:[F

    iget-object v4, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mTexMatrix:[F

    invoke-static {v4, v7, v10, v10, v9}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v4, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mTexMatrix:[F

    invoke-static {v4, v7, v11, v1, v11}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget-object v4, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mTexMatrix:[F

    invoke-static {v4, v7, v8, v8, v9}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    :cond_63
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/effect/EffectController;->isDisplayShow()Z

    move-result v4

    if-eqz v4, :cond_93

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/android/camera/effect/renders/EffectRenderGroup;->drawEffectTexture()V

    const-string/jumbo v4, "EffectRenderGroup"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Camera preview drawEffectTexture time ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_93
    return-void

    :cond_94
    const/high16 v1, 0x3f400000    # 0.75f

    goto :goto_4b

    nop

    :array_98
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private drawEffectTexture()V
    .registers 21

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->getDisplayStartIndex()I

    move-result v17

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->getDisplayEndIndex()I

    move-result v10

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->getSurfacePosition()Lcom/android/camera/effect/EffectController$SurfacePosition;

    move-result-object v16

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/camera/effect/EffectController$SurfacePosition;->mWidth:I

    move-object/from16 v0, v16

    iget v12, v0, Lcom/android/camera/effect/EffectController$SurfacePosition;->mHonSpace:I

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/camera/effect/EffectController$SurfacePosition;->mVerSpace:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/android/camera/effect/EffectController$SurfacePosition;->mIsRtl:Z

    if-eqz v2, :cond_81

    const/4 v11, -0x1

    :goto_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mTexMatrix:[F

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/GLCanvasState;->setTexMatrix([F)V

    move/from16 v13, v17

    :goto_42
    if-ge v13, v10, :cond_93

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mBasicTextureAttri:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-virtual {v3}, Lcom/android/camera/effect/renders/PipeRenderPair;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v3

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/camera/effect/EffectController$SurfacePosition;->mStartX:I

    sub-int v5, v13, v17

    sget v7, Lcom/android/camera/effect/EffectController;->COLUMN_COUNT:I

    rem-int/2addr v5, v7

    add-int v7, v6, v12

    mul-int/2addr v5, v7

    mul-int/2addr v5, v11

    add-int/2addr v4, v5

    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/camera/effect/EffectController$SurfacePosition;->mStartY:I

    sub-int v7, v13, v17

    sget v19, Lcom/android/camera/effect/EffectController;->COLUMN_COUNT:I

    div-int v7, v7, v19

    add-int v19, v6, v18

    mul-int v7, v7, v19

    add-int/2addr v5, v7

    move v7, v6

    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->init(Lcom/android/gallery3d/ui/BasicTexture;IIII)Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    if-nez v13, :cond_83

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mNoneEffectRender:Lcom/android/camera/effect/renders/Render;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mBasicTextureAttri:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    :goto_7e
    add-int/lit8 v13, v13, 0x1

    goto :goto_42

    :cond_81
    const/4 v11, 0x1

    goto :goto_31

    :cond_83
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectRenders:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v2, v13}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mBasicTextureAttri:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    goto :goto_7e

    :cond_93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v8, v2, v14

    const-wide/16 v2, 0x64

    cmp-long v2, v8, v2

    if-lez v2, :cond_a4

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mIgnoreTimes:I

    :cond_a4
    return-void
.end method

.method private drawPreview(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z
    .registers 6

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectController;->hasEffect()Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectController;->isDisplayShow()Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectController;->isBackGroundBlur()Z

    move-result v1

    if-eqz v1, :cond_51

    :cond_1e
    iget-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mNoneEffectRender:Lcom/android/camera/effect/renders/Render;

    if-nez v1, :cond_51

    invoke-static {}, Lcom/android/camera/Device;->isSupportedShaderEffect()Z

    move-result v1

    if-eqz v1, :cond_51

    iget-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    iget v2, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectIndex:I

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Lcom/android/gallery3d/ui/GLCanvas;->prepareEffectRenders(ZI)V

    new-instance v1, Lcom/android/camera/effect/renders/NoneEffectRender;

    iget-object v2, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-direct {v1, v2}, Lcom/android/camera/effect/renders/NoneEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    iput-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mNoneEffectRender:Lcom/android/camera/effect/renders/Render;

    iget-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mNoneEffectRender:Lcom/android/camera/effect/renders/Render;

    invoke-virtual {p0, v1}, Lcom/android/camera/effect/renders/EffectRenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    iget-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectRenders:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {p0, v1}, Lcom/android/camera/effect/renders/EffectRenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    iget v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mViewportWidth:I

    iget v2, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mViewportHeight:I

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/effect/renders/EffectRenderGroup;->setViewportSize(II)V

    iget v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewWidth:I

    iget v2, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewHeight:I

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/effect/renders/EffectRenderGroup;->setPreviewSize(II)V

    :cond_51
    move-object v0, p1

    check-cast v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    iget-boolean v2, v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mEffectPopup:Z

    invoke-direct {p0, v2}, Lcom/android/camera/effect/renders/EffectRenderGroup;->getPreviewSecondRender(Z)Lcom/android/camera/effect/renders/Render;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/renders/PipeRenderPair;->setSecondRender(Lcom/android/camera/effect/renders/Render;)V

    iget-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->isBackGroundBlur()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/renders/PipeRenderPair;->setUsedMiddleBuffer(Z)V

    iget-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-virtual {v1, p1}, Lcom/android/camera/effect/renders/PipeRenderPair;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/EffectRenderGroup;->drawAnimationMask(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/EffectRenderGroup;->drawDisplay(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    const/4 v1, 0x1

    return v1
.end method

.method private getPreviewSecondRender(Z)Lcom/android/camera/effect/renders/Render;
    .registers 6

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedShaderEffect()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1f

    :cond_11
    const/4 v0, 0x0

    :cond_12
    :goto_12
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectController;->isNeedDrawPeaking()Z

    move-result v1

    if-eqz v1, :cond_1e

    if-eqz p1, :cond_50

    :cond_1e
    return-object v0

    :cond_1f
    iget-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectRenders:Lcom/android/camera/effect/renders/RenderGroup;

    if-eqz v1, :cond_11

    iget v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectIndex:I

    if-nez v1, :cond_36

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectController;->isDisplayShow()Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mNoneEffectRender:Lcom/android/camera/effect/renders/Render;

    goto :goto_12

    :cond_34
    const/4 v0, 0x0

    goto :goto_12

    :cond_36
    iget-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectRenders:Lcom/android/camera/effect/renders/RenderGroup;

    iget v2, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectIndex:I

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_12

    iget-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    iget v2, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectIndex:I

    invoke-interface {v1, v3, v2}, Lcom/android/gallery3d/ui/GLCanvas;->prepareEffectRenders(ZI)V

    iget-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectRenders:Lcom/android/camera/effect/renders/RenderGroup;

    iget v2, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectIndex:I

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    goto :goto_12

    :cond_50
    iget-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mFocusPeakingRender:Lcom/android/camera/effect/renders/Render;

    if-nez v1, :cond_65

    iget-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    sget v2, Lcom/android/camera/effect/EffectController;->sPeakingMFIndex:I

    invoke-interface {v1, v3, v2}, Lcom/android/gallery3d/ui/GLCanvas;->prepareEffectRenders(ZI)V

    iget-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectRenders:Lcom/android/camera/effect/renders/RenderGroup;

    sget v2, Lcom/android/camera/effect/EffectController;->sPeakingMFIndex:I

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mFocusPeakingRender:Lcom/android/camera/effect/renders/Render;

    :cond_65
    if-nez v0, :cond_6a

    iget-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mFocusPeakingRender:Lcom/android/camera/effect/renders/Render;

    return-object v1

    :cond_6a
    iget-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPeakRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    iget-object v2, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mFocusPeakingRender:Lcom/android/camera/effect/renders/Render;

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/effect/renders/PipeRenderPair;->setRenderPairs(Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;)V

    iget-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPeakRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    return-object v1
.end method


# virtual methods
.method public draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z
    .registers 5

    iget v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectIndex:I

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/EffectController;->getEffect(Z)I

    move-result v1

    iput v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectIndex:I

    iget v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectIndex:I

    if-eq v1, v0, :cond_20

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectController;->isBackGroundBlur()Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-virtual {v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->prepareCopyBlurTexture()V

    :cond_20
    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v1

    packed-switch v1, :pswitch_data_2e

    const/4 v1, 0x0

    return v1

    :pswitch_29
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/EffectRenderGroup;->drawPreview(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    move-result v1

    return v1

    :pswitch_data_2e
    .packed-switch 0x8
        :pswitch_29
    .end packed-switch
.end method

.method public setPreviewSize(II)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/android/camera/effect/renders/RenderGroup;->setPreviewSize(II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mTexMatrix:[F

    return-void
.end method
