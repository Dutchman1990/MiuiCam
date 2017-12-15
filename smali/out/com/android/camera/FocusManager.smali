.class public Lcom/android/camera/FocusManager;
.super Lcom/android/camera/FocusManagerAbstract;
.source "FocusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/FocusManager$Listener;,
        Lcom/android/camera/FocusManager$MainHandler;
    }
.end annotation


# instance fields
.field private mAeAwbLock:Z

.field private mCafStartTime:J

.field private mContext:Landroid/content/Context;

.field private mDefaultFocusModes:[Ljava/lang/String;

.field private mFocusAreaSupported:Z

.field private mFocusMode:Ljava/lang/String;

.field private mFocusView:Lcom/android/camera/ui/FocusView;

.field private mFrameView:Lcom/android/camera/ui/FrameView;

.field private mHandler:Landroid/os/Handler;

.field private mKeepFocusUIState:Z

.field private mLastFocusFrom:I

.field private mLastState:I

.field private mLatestFocusFace:Landroid/graphics/RectF;

.field private mLatestFocusTime:J

.field private mListener:Lcom/android/camera/FocusManager$Listener;

.field private mLockAeAwbNeeded:Z

.field private mMeteringAreaSupported:Z

.field private mOverrideFocusMode:Ljava/lang/String;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPendingMultiCapture:Z


# direct methods
.method static synthetic -get0(Lcom/android/camera/FocusManager;)Lcom/android/camera/FocusManager$Listener;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/camera/FocusManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/FocusManager;->cancelAutoFocus()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/preferences/CameraSettingPreferences;[Ljava/lang/String;Lcom/android/camera/ui/FocusView;Landroid/hardware/Camera$Parameters;Lcom/android/camera/FocusManager$Listener;ZLandroid/os/Looper;)V
    .registers 10

    invoke-direct {p0}, Lcom/android/camera/FocusManagerAbstract;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/FocusManager;->mLastState:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    new-instance v0, Lcom/android/camera/FocusManager$MainHandler;

    invoke-direct {v0, p0, p8}, Lcom/android/camera/FocusManager$MainHandler;-><init>(Lcom/android/camera/FocusManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/camera/FocusManager;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/camera/FocusManager;->mDefaultFocusModes:[Ljava/lang/String;

    iput-object p4, p0, Lcom/android/camera/FocusManager;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {p0, p5}, Lcom/android/camera/FocusManager;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iput-object p6, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-virtual {p0, p7}, Lcom/android/camera/FocusManager;->setMirror(Z)V

    return-void
.end method

.method private autoFocus(I)V
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string/jumbo v0, "FocusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start autoFocus from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontFocus()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v3, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    if-eq p1, v1, :cond_67

    move v0, v1

    :goto_29
    invoke-interface {v3, v0}, Lcom/android/camera/FocusManager$Listener;->stopFaceDetection(Z)V

    :cond_2c
    if-ne p1, v1, :cond_34

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    instance-of v0, v0, Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_39

    :cond_34
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0, v2}, Lcom/android/camera/FocusManager$Listener;->stopObjectTracking(Z)V

    :cond_39
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->autoFocus()V

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    if-eqz v0, :cond_4f

    if-eq p1, v1, :cond_4f

    invoke-static {}, Lcom/android/camera/CameraSettings;->needStopFaceinFocusing()Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FrameView;->pause()V

    :cond_4f
    invoke-direct {p0, v1}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_67
    move v0, v2

    goto :goto_29
.end method

.method private cancelAutoFocus()V
    .registers 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    invoke-direct {p0}, Lcom/android/camera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->cancelAutoFocus()V

    :goto_f
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FrameView;->resume()V

    :cond_18
    invoke-direct {p0, v1}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    iput-boolean v1, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-string/jumbo v0, "FocusManager"

    const-string/jumbo v1, "cancelAutoFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_35
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->setFocusParameters()V

    goto :goto_f
.end method

.method private capture()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->capture()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/android/camera/Device;->isResetToCCAFAfterCapture()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0, v1}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    iput-boolean v1, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    :cond_14
    iput-boolean v1, p0, Lcom/android/camera/FocusManager;->mPendingMultiCapture:Z

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1b
    return-void
.end method

.method private focusPoint(IIIZ)V
    .registers 8

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    :cond_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->isAutoFocusMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_17
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->isNeedCancelAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-direct {p0}, Lcom/android/camera/FocusManager;->cancelAutoFocus()V

    :cond_20
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/FocusManager;->initializeParameters(IIIZ)V

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->setFocusParameters()V

    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_2e

    if-eqz p4, :cond_4c

    :cond_2e
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_4b

    const/4 v0, 0x3

    if-ne v0, p3, :cond_3d

    invoke-direct {p0, p3}, Lcom/android/camera/FocusManager;->isFocusValid(I)Z

    move-result v0

    if-eqz v0, :cond_3d

    iput-boolean v2, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    :cond_3d
    iput p3, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    invoke-direct {p0, v2}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4b
    :goto_4b
    return-void

    :cond_4c
    invoke-direct {p0, p3}, Lcom/android/camera/FocusManager;->isFocusValid(I)Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-direct {p0, p3}, Lcom/android/camera/FocusManager;->autoFocus(I)V

    goto :goto_4b
.end method

.method private getTapAction()I
    .registers 3

    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    const-string/jumbo v1, "edof"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    const-string/jumbo v1, "fixed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    const-string/jumbo v1, "lock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    const-string/jumbo v1, "manual"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    :cond_31
    const/4 v1, 0x1

    return v1

    :cond_33
    const/4 v1, 0x2

    return v1
.end method

.method private initializeFocusAreas(IIIIII)V
    .registers 16

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-nez v0, :cond_1b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    return-void
.end method

.method private initializeFocusIndicator(II)V
    .registers 4

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/FocusView;->setPosition(II)V

    return-void
.end method

.method private initializeMeteringAreas(IIIIIII)V
    .registers 18

    iget-object v1, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    if-nez v1, :cond_1b

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    iget-object v1, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    new-instance v2, Landroid/hardware/Camera$Area;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    const/4 v1, 0x1

    move/from16 v0, p7

    if-ne v0, v1, :cond_28

    iget-object v1, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FrameView;->isNeedExposure()Z

    move-result v1

    if-eqz v1, :cond_42

    :cond_28
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Area;

    iget-object v9, v1, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    const v4, 0x3fe66666    # 1.8f

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v1 .. v9}, Lcom/android/camera/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    return-void

    :cond_42
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    return-void
.end method

.method private initializeParameters(IIIZ)V
    .registers 14

    const/4 v2, 0x1

    const/4 v1, 0x0

    move v3, p1

    move v4, p2

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->isFishEye()Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x2

    new-array v8, v0, [F

    int-to-float v0, p1

    aput v0, v8, v1

    int-to-float v0, p2

    aput v0, v8, v2

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mPreviewChangeMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v8}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v0, v8, v1

    float-to-int v3, v0

    aget v0, v8, v2

    float-to-int v4, v0

    :cond_22
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_28

    if-eqz p4, :cond_3d

    :cond_28
    :goto_28
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_39

    iget v1, p0, Lcom/android/camera/FocusManager;->FOCUS_AREA_WIDTH:I

    iget v2, p0, Lcom/android/camera/FocusManager;->FOCUS_AREA_HEIGHT:I

    iget v5, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    iget v6, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    move-object v0, p0

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/FocusManager;->initializeMeteringAreas(IIIIIII)V

    :cond_39
    invoke-direct {p0, p1, p2}, Lcom/android/camera/FocusManager;->initializeFocusIndicator(II)V

    return-void

    :cond_3d
    iget v1, p0, Lcom/android/camera/FocusManager;->FOCUS_AREA_WIDTH:I

    iget v2, p0, Lcom/android/camera/FocusManager;->FOCUS_AREA_HEIGHT:I

    iget v5, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    iget v6, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/FocusManager;->initializeFocusAreas(IIIIII)V

    goto :goto_28
.end method

.method private isAutoFocusMode(Ljava/lang/String;)Z
    .registers 3

    const-string/jumbo v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string/jumbo v0, "macro"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x1

    goto :goto_10
.end method

.method private isFocusEnabled()Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_13

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_13

    invoke-direct {p0}, Lcom/android/camera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private isFocusValid(I)Z
    .registers 10

    const/4 v7, 0x3

    const/4 v6, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    if-eq v2, v7, :cond_f

    iget v2, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1f

    :cond_f
    const/16 v2, 0x1388

    :goto_11
    int-to-long v4, v2

    if-ge p1, v7, :cond_18

    iget v2, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    if-lt p1, v2, :cond_22

    :cond_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/FocusManager;->mLatestFocusTime:J

    return v6

    :cond_1f
    const/16 v2, 0xfa0

    goto :goto_11

    :cond_22
    iget-wide v2, p0, Lcom/android/camera/FocusManager;->mLatestFocusTime:J

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v2

    if-nez v2, :cond_18

    iget v2, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    if-ne v2, v6, :cond_31

    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    :cond_31
    const/4 v2, 0x0

    return v2
.end method

.method private isNeedCancelAutoFocus()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_14

    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    :cond_14
    return v0
.end method

.method private static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method private multiCapture()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->multiCapture()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-direct {p0, v1}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    iput-boolean v1, p0, Lcom/android/camera/FocusManager;->mPendingMultiCapture:Z

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_13
    return-void
.end method

.method private needAutoFocusCall()Z
    .registers 3

    invoke-direct {p0}, Lcom/android/camera/FocusManager;->getTapAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_a

    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private resetFocusAreaToCenter()V
    .registers 8

    iget v1, p0, Lcom/android/camera/FocusManager;->FOCUS_AREA_WIDTH:I

    iget v2, p0, Lcom/android/camera/FocusManager;->FOCUS_AREA_HEIGHT:I

    iget v0, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    div-int/lit8 v3, v0, 0x2

    iget v0, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    div-int/lit8 v4, v0, 0x2

    iget v5, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    iget v6, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/FocusManager;->initializeFocusAreas(IIIIII)V

    iget v0, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/camera/FocusManager;->initializeFocusIndicator(II)V

    return-void
.end method

.method private resetFocusAreaToFaceArea()Z
    .registers 9

    const/high16 v2, 0x40000000    # 2.0f

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FrameView;->faceExists()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FrameView;->getFocusRect()Landroid/graphics/RectF;

    move-result-object v7

    if-eqz v7, :cond_34

    iput-object v7, p0, Lcom/android/camera/FocusManager;->mLatestFocusFace:Landroid/graphics/RectF;

    iget v0, v7, Landroid/graphics/RectF;->left:F

    iget v1, v7, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    div-float/2addr v0, v2

    float-to-int v3, v0

    iget v0, v7, Landroid/graphics/RectF;->top:F

    iget v1, v7, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v1

    div-float/2addr v0, v2

    float-to-int v4, v0

    iget v1, p0, Lcom/android/camera/FocusManager;->FOCUS_AREA_WIDTH:I

    iget v2, p0, Lcom/android/camera/FocusManager;->FOCUS_AREA_HEIGHT:I

    iget v5, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    iget v6, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/FocusManager;->initializeFocusAreas(IIIIII)V

    const/4 v0, 0x1

    return v0

    :cond_34
    const/4 v0, 0x0

    return v0
.end method

.method private setFocusState(I)V
    .registers 2

    iput p1, p0, Lcom/android/camera/FocusManager;->mState:I

    return-void
.end method

.method private setLastFocusState(I)V
    .registers 2

    iput p1, p0, Lcom/android/camera/FocusManager;->mLastState:I

    return-void
.end method


# virtual methods
.method public cancelMultiSnapPending()Z
    .registers 4

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mPendingMultiCapture:Z

    if-eqz v0, :cond_e

    iput-boolean v2, p0, Lcom/android/camera/FocusManager;->mPendingMultiCapture:Z

    const/4 v0, 0x1

    return v0

    :cond_e
    return v2
.end method

.method public doMultiSnap(Z)V
    .registers 5

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_6

    return-void

    :cond_6
    if-nez p1, :cond_b

    invoke-direct {p0}, Lcom/android/camera/FocusManager;->multiCapture()V

    :cond_b
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_15

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_19

    :cond_15
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->multiCapture()V

    :cond_18
    :goto_18
    return-void

    :cond_19
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    if-ne v0, v2, :cond_2a

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    iput-boolean v2, p0, Lcom/android/camera/FocusManager;->mPendingMultiCapture:Z

    goto :goto_18

    :cond_2a
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    if-nez v0, :cond_18

    invoke-direct {p0}, Lcom/android/camera/FocusManager;->multiCapture()V

    goto :goto_18
.end method

.method public doSnap()V
    .registers 4

    const-string/jumbo v0, "FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "doSnap mInitialized is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " current status is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/FocusManager;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_2e

    return-void

    :cond_2e
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_38

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3c

    :cond_38
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->capture()V

    :cond_3b
    :goto_3b
    return-void

    :cond_3c
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_38

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4c

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    goto :goto_3b

    :cond_4c
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    if-nez v0, :cond_3b

    invoke-direct {p0}, Lcom/android/camera/FocusManager;->capture()V

    goto :goto_3b
.end method

.method public focusFaceArea()Z
    .registers 11

    const/high16 v9, 0x42a00000    # 80.0f

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    if-eqz v3, :cond_1d

    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/camera/FocusManager;->isAutoFocusMode(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FrameView;->getFocusRect()Landroid/graphics/RectF;

    move-result-object v0

    if-nez v0, :cond_1e

    return v6

    :cond_1d
    return v6

    :cond_1e
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mLatestFocusFace:Landroid/graphics/RectF;

    if-eqz v3, :cond_4d

    iget v3, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    if-ne v3, v7, :cond_4d

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/android/camera/FocusManager;->mLatestFocusFace:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v9

    if-gez v3, :cond_4d

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget v4, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/FocusManager;->mLatestFocusFace:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/android/camera/FocusManager;->mLatestFocusFace:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v9

    if-gez v3, :cond_4d

    return v6

    :cond_4d
    iput-object v0, p0, Lcom/android/camera/FocusManager;->mLatestFocusFace:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v4

    div-float/2addr v3, v8

    float-to-int v1, v3

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v4

    div-float/2addr v3, v8

    float-to-int v2, v3

    invoke-direct {p0, v1, v2, v7, v6}, Lcom/android/camera/FocusManager;->focusPoint(IIIZ)V

    return v7
.end method

.method public getAeAwbLock()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    return v0
.end method

.method public getFocusAreas()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    return-object v0
.end method

.method public getFocusMode()Ljava/lang/String;
    .registers 9

    iget-object v5, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    return-object v5

    :cond_7
    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v5

    new-instance v6, Lcom/android/camera/portability/Camera1Parameters;

    iget-object v7, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {v6, v7}, Lcom/android/camera/portability/Camera1Parameters;-><init>(Landroid/hardware/Camera$Parameters;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedFocusModes(Lcom/android/camera/portability/ICameraParameters;)Ljava/util/List;

    move-result-object v4

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v5, :cond_34

    iget-object v5, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v5, :cond_34

    const-string/jumbo v5, "manual"

    iget-object v6, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a4

    const-string/jumbo v5, "manual"

    iput-object v5, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    :cond_34
    :goto_34
    iget-object v5, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/android/camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_77

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3e
    iget-object v5, p0, Lcom/android/camera/FocusManager;->mDefaultFocusModes:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_50

    iget-object v5, p0, Lcom/android/camera/FocusManager;->mDefaultFocusModes:[Ljava/lang/String;

    aget-object v3, v5, v2

    invoke-static {v3, v4}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_cc

    iput-object v3, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    const/4 v1, 0x1

    :cond_50
    if-nez v1, :cond_60

    const-string/jumbo v5, "auto"

    invoke-static {v5, v4}, Lcom/android/camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_d0

    const-string/jumbo v5, "auto"

    iput-object v5, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    :cond_60
    :goto_60
    iget-object v5, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    if-eqz v5, :cond_77

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v5, "pref_camera_focus_mode_key"

    iget-object v6, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_77
    const-string/jumbo v5, "continuous-picture"

    iget-object v6, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_85

    const/4 v5, -0x1

    iput v5, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    :cond_85
    const-string/jumbo v5, "FocusManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "FocusMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    return-object v5

    :cond_a4
    const-string/jumbo v5, "continuous-picture"

    iget-object v6, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c5

    const-string/jumbo v5, "continuous-video"

    iget-object v6, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c5

    const-string/jumbo v5, "macro"

    iget-object v6, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    :cond_c5
    const-string/jumbo v5, "auto"

    iput-object v5, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto/16 :goto_34

    :cond_cc
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3e

    :cond_d0
    iget-object v5, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_60
.end method

.method public getMeteringAreas()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    return-object v0
.end method

.method public isFocusCompleted()Z
    .registers 4

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_b

    iget v1, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isFocusingSnapOnFinish()Z
    .registers 3

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public onAutoFocus(Z)V
    .registers 7

    const/4 v2, 0x4

    const/4 v4, 0x3

    const/4 v1, 0x1

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_26

    if-eqz p1, :cond_1b

    invoke-direct {p0, v4}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    invoke-direct {p0, v4}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    :goto_10
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mPendingMultiCapture:Z

    if-eqz v0, :cond_22

    invoke-direct {p0}, Lcom/android/camera/FocusManager;->multiCapture()V

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    invoke-direct {p0, v2}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    invoke-direct {p0, v2}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    goto :goto_10

    :cond_22
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->capture()V

    goto :goto_1a

    :cond_26
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    if-ne v0, v1, :cond_5f

    if-eqz p1, :cond_51

    invoke-direct {p0, v4}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    invoke-direct {p0, v4}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    const-string/jumbo v0, "continuous-picture"

    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    iget v0, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    if-eq v0, v1, :cond_46

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0, v1}, Lcom/android/camera/FocusManager$Listener;->playSound(I)V

    :cond_46
    :goto_46
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v1, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    goto :goto_1a

    :cond_51
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mMirror:Z

    if-eqz v0, :cond_5d

    move v0, v1

    :goto_56
    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    invoke-direct {p0, v2}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    goto :goto_46

    :cond_5d
    move v0, v2

    goto :goto_56

    :cond_5f
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    if-nez v0, :cond_1a

    goto :goto_1a
.end method

.method public onAutoFocusMoving(ZZ)V
    .registers 14

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    iget-boolean v2, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-nez v2, :cond_8

    return-void

    :cond_8
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FrameView;->faceExists()Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FocusView;->clear()V

    const/4 v0, 0x0

    :cond_1b
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-nez v2, :cond_30

    const-string/jumbo v2, "continuous-picture"

    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    iget v2, p0, Lcom/android/camera/FocusManager;->mState:I

    if-eq v2, v8, :cond_31

    :cond_30
    return-void

    :cond_31
    if-eqz p1, :cond_52

    iget v2, p0, Lcom/android/camera/FocusManager;->mState:I

    if-eq v2, v8, :cond_3b

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    :cond_3b
    const-string/jumbo v2, "FocusManager"

    const-string/jumbo v3, "Camera KPI: CAF start"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/FocusManager;->mCafStartTime:J

    if-eqz v0, :cond_51

    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FocusView;->showStart()V

    :cond_51
    :goto_51
    return-void

    :cond_52
    iget v1, p0, Lcom/android/camera/FocusManager;->mState:I

    const-string/jumbo v2, "FocusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Camera KPI: CAF stop: Focus time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/camera/FocusManager;->mCafStartTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_98

    invoke-direct {p0, v9}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    invoke-direct {p0, v9}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    :goto_7d
    if-eqz v0, :cond_86

    if-eqz p2, :cond_9f

    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FocusView;->showSuccess()V

    :cond_86
    :goto_86
    if-ne v1, v8, :cond_51

    invoke-direct {p0, v9}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FocusView;->showSuccess()V

    iget-boolean v2, p0, Lcom/android/camera/FocusManager;->mPendingMultiCapture:Z

    if-eqz v2, :cond_a5

    invoke-direct {p0}, Lcom/android/camera/FocusManager;->multiCapture()V

    goto :goto_51

    :cond_98
    invoke-direct {p0, v10}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    invoke-direct {p0, v10}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    goto :goto_7d

    :cond_9f
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FocusView;->showFail()V

    goto :goto_86

    :cond_a5
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->capture()V

    goto :goto_51
.end method

.method public onCameraReleased()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->onPreviewStopped()V

    return-void
.end method

.method public onDeviceKeepMoving(D)V
    .registers 10

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/FocusManager;->mLatestFocusTime:J

    const-wide/16 v4, 0xbb8

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-direct {p0, v6}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1b
    return-void
.end method

.method public onPreviewStarted()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    return-void
.end method

.method public onPreviewStopped()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    return-void
.end method

.method public onShutter()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    return-void
.end method

.method public onShutterDown()V
    .registers 1

    return-void
.end method

.method public onShutterUp()V
    .registers 1

    return-void
.end method

.method public onSingleTapUp(II)V
    .registers 6

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/camera/FocusManager;->getTapAction()I

    move-result v0

    if-ne v1, v0, :cond_c

    :goto_7
    const/4 v2, 0x3

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/camera/FocusManager;->focusPoint(IIIZ)V

    return-void

    :cond_c
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public overrideFocusMode(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    return-void
.end method

.method public prepareCapture(ZI)V
    .registers 11

    const/4 v5, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-boolean v4, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-nez v4, :cond_8

    return-void

    :cond_8
    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    if-ne p2, v4, :cond_28

    const-string/jumbo v4, "auto"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    const-string/jumbo v4, "macro"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    :cond_23
    iget v4, p0, Lcom/android/camera/FocusManager;->mLastState:I

    if-ne v4, v5, :cond_28

    const/4 v3, 0x0

    :cond_28
    const-string/jumbo v4, "continuous-picture"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-direct {p0}, Lcom/android/camera/FocusManager;->isFocusEnabled()Z

    move-result v4

    if-eqz v4, :cond_37

    if-eqz v2, :cond_4b

    :cond_37
    :goto_37
    if-nez v0, :cond_4a

    if-eqz p1, :cond_4a

    if-eqz v2, :cond_4a

    invoke-static {}, Lcom/android/camera/Device;->isHalDoesCafWhenFlashOn()Z

    move-result v4

    if-eqz v4, :cond_86

    iget v4, p0, Lcom/android/camera/FocusManager;->mState:I

    if-ne v4, v7, :cond_4a

    invoke-direct {p0}, Lcom/android/camera/FocusManager;->cancelAutoFocus()V

    :cond_4a
    :goto_4a
    return-void

    :cond_4b
    if-eqz v3, :cond_37

    iget v4, p0, Lcom/android/camera/FocusManager;->mState:I

    if-eq v4, v5, :cond_6f

    iget v4, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_6f

    iget-object v4, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    if-eqz v4, :cond_67

    iget-object v4, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    invoke-virtual {v4}, Lcom/android/camera/ui/FrameView;->faceExists()Z

    move-result v4

    if-eqz v4, :cond_67

    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->focusFaceArea()Z

    const/4 v0, 0x1

    goto :goto_37

    :cond_67
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->resetFocusAreaToCenter()V

    invoke-direct {p0, v6}, Lcom/android/camera/FocusManager;->autoFocus(I)V

    const/4 v0, 0x1

    goto :goto_37

    :cond_6f
    if-eqz p1, :cond_37

    iget-object v4, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v4, :cond_37

    invoke-static {}, Lcom/android/camera/Device;->isResetToCCAFAfterCapture()Z

    move-result v4

    if-nez v4, :cond_37

    iput-boolean v7, p0, Lcom/android/camera/FocusManager;->mKeepFocusUIState:Z

    iget v4, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    invoke-direct {p0, v4}, Lcom/android/camera/FocusManager;->autoFocus(I)V

    iput-boolean v6, p0, Lcom/android/camera/FocusManager;->mKeepFocusUIState:Z

    const/4 v0, 0x1

    goto :goto_37

    :cond_86
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->requestAutoFocus()V

    const/4 v0, 0x1

    goto :goto_4a
.end method

.method public removeMessages()V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public requestAutoFocus()V
    .registers 5

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/camera/FocusManager;->needAutoFocusCall()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-boolean v1, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-eqz v1, :cond_10

    iget v1, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_11

    :cond_10
    return-void

    :cond_11
    const/4 v0, 0x4

    invoke-direct {p0}, Lcom/android/camera/FocusManager;->isNeedCancelAutoFocus()Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v1}, Lcom/android/camera/FocusManager$Listener;->cancelAutoFocus()V

    iget-object v1, p0, Lcom/android/camera/FocusManager;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FocusView;->clear()V

    invoke-direct {p0, v3}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    iput-boolean v3, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    iget-object v1, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_32
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->resetFocusAreaToFaceArea()Z

    move-result v1

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/android/camera/FocusManager;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FocusView;->clear()V

    const/4 v0, 0x1

    :goto_3e
    iput-boolean v3, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    iget-object v1, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v1}, Lcom/android/camera/FocusManager$Listener;->setFocusParameters()V

    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->autoFocus(I)V

    return-void

    :cond_49
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->resetFocusAreaToCenter()V

    goto :goto_3e
.end method

.method public resetAfterCapture(Z)V
    .registers 4

    invoke-static {}, Lcom/android/camera/Device;->isResetToCCAFAfterCapture()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    :cond_9
    :goto_9
    return-void

    :cond_a
    if-eqz p1, :cond_9

    iget v0, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->cancelAutoFocus()V

    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->removeMessages()V

    goto :goto_9

    :cond_1d
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    goto :goto_9
.end method

.method public resetFocusIndicator()V
    .registers 2

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->clear()V

    return-void
.end method

.method public resetFocusStateIfNeeded()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    invoke-direct {p0, v1}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    iput-boolean v1, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1b
    return-void
.end method

.method public resetTouchFocus()V
    .registers 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-eqz v0, :cond_f

    iput-object v1, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    iput-object v1, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->resetFocusIndicator()V

    :cond_f
    return-void
.end method

.method public setAeAwbLock(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    return-void
.end method

.method public setFrameView(Lcom/android/camera/ui/FrameView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .registers 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-lez v0, :cond_40

    const-string/jumbo v0, "auto"

    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v3

    new-instance v4, Lcom/android/camera/portability/Camera1Parameters;

    iget-object v5, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {v4, v5}, Lcom/android/camera/portability/Camera1Parameters;-><init>(Landroid/hardware/Camera$Parameters;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedFocusModes(Lcom/android/camera/portability/ICameraParameters;)Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    :goto_22
    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    if-lez v0, :cond_2d

    move v1, v2

    :cond_2d
    iput-boolean v1, p0, Lcom/android/camera/FocusManager;->mMeteringAreaSupported:Z

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v2

    :cond_3d
    iput-boolean v2, p0, Lcom/android/camera/FocusManager;->mLockAeAwbNeeded:Z

    return-void

    :cond_40
    move v0, v1

    goto :goto_22
.end method

.method public setPreviewSize(II)V
    .registers 4

    iget v0, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    if-ne v0, p1, :cond_8

    iget v0, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    if-eq v0, p2, :cond_f

    :cond_8
    iput p1, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    iput p2, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->setMatrix()V

    :cond_f
    return-void
.end method

.method public updateFocusUI()V
    .registers 4

    const/4 v2, 0x1

    iget-boolean v1, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/android/camera/FocusManager;->mKeepFocusUIState:Z

    if-eqz v1, :cond_a

    :cond_9
    return-void

    :cond_a
    iget v1, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    if-ne v1, v2, :cond_18

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    :goto_10
    iget v1, p0, Lcom/android/camera/FocusManager;->mState:I

    if-nez v1, :cond_1b

    invoke-interface {v0}, Lcom/android/camera/ui/FocusIndicator;->clear()V

    :cond_17
    :goto_17
    return-void

    :cond_18
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusView:Lcom/android/camera/ui/FocusView;

    goto :goto_10

    :cond_1b
    iget v1, p0, Lcom/android/camera/FocusManager;->mState:I

    if-eq v1, v2, :cond_24

    iget v1, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_28

    :cond_24
    invoke-interface {v0}, Lcom/android/camera/ui/FocusIndicator;->showStart()V

    goto :goto_17

    :cond_28
    const-string/jumbo v1, "continuous-picture"

    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Lcom/android/camera/ui/FocusIndicator;->showSuccess()V

    goto :goto_17

    :cond_37
    iget v1, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_40

    invoke-interface {v0}, Lcom/android/camera/ui/FocusIndicator;->showSuccess()V

    goto :goto_17

    :cond_40
    iget v1, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_17

    invoke-interface {v0}, Lcom/android/camera/ui/FocusIndicator;->showFail()V

    goto :goto_17
.end method
