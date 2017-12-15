.class public Lcom/android/camera/module/Base2Module;
.super Ljava/lang/Object;
.source "Base2Module.java"

# interfaces
.implements Lcom/android/camera/module/Module;
.implements Lcom/android/camera/ui/FocusView$ExposureViewListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/Base2Module$DecodeTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mActivity:Lcom/android/camera/Camera;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mDisplayOrientation:I

.field protected mDisplayRotation:I

.field protected mIgnoreFocusChanged:Z

.field private mIgnoreTouchEvent:Z

.field protected mImageCaptureShowing:Z

.field protected mIsImageCaptureIntent:Z

.field protected mJpegImageData:[B

.field protected mJpegRotation:I

.field protected mMainThreadId:J

.field protected mOrientation:I

.field protected mOrientationCompensation:I

.field protected mPaused:Z

.field protected mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

.field private mRestoring:Z

.field protected mSaveUri:Landroid/net/Uri;

.field protected mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

.field protected mUIStyle:I

.field private mZoomEnabled:Z

.field private mZoomMax:F

.field private mZoomScaled:F

.field private mZoomValue:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/camera/module/Base2Module;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/Base2Module;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/module/Base2Module;->mZoomValue:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/Base2Module;->mOrientationCompensation:I

    iput v1, p0, Lcom/android/camera/module/Base2Module;->mOrientation:I

    iput v1, p0, Lcom/android/camera/module/Base2Module;->mUIStyle:I

    return-void
.end method


# virtual methods
.method public IsIgnoreTouchEvent()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/module/Base2Module;->mIgnoreTouchEvent:Z

    return v0
.end method

.method public canIgnoreFocusChanged()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/module/Base2Module;->mIgnoreFocusChanged:Z

    return v0
.end method

.method protected changePreviewSurfaceSize()V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget v2, p0, Lcom/android/camera/module/Base2Module;->mUIStyle:I

    packed-switch v2, :pswitch_data_1a

    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    sget v2, Lcom/android/camera/Util;->sWindowWidth:I

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v0, v2, 0x3

    :goto_f
    iget-object v2, p0, Lcom/android/camera/module/Base2Module;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2, v1, v0}, Lcom/android/camera/Camera;->onLayoutChange(II)V

    return-void

    :pswitch_15
    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    sget v0, Lcom/android/camera/Util;->sWindowHeight:I

    goto :goto_f

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_15
    .end packed-switch
.end method

.method public checkActivityOrientation()V
    .registers 3

    iget v0, p0, Lcom/android/camera/module/Base2Module;->mDisplayRotation:I

    iget-object v1, p0, Lcom/android/camera/module/Base2Module;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    if-eq v0, v1, :cond_d

    invoke-virtual {p0}, Lcom/android/camera/module/Base2Module;->setDisplayOrientation()V

    :cond_d
    return-void
.end method

.method public dispatchEdgeTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/camera/module/Base2Module;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6GestureRecognizer;->onEdgeTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/camera/module/Base2Module;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6GestureRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public enableCameraControls(Z)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/camera/module/Base2Module;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/UIController;->enableControls(Z)V

    if-eqz p1, :cond_e

    const/4 v0, 0x0

    :goto_a
    invoke-virtual {p0, v0}, Lcom/android/camera/module/Base2Module;->ignoreTouchEvent(Z)V

    return-void

    :cond_e
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public getSupportedSettingKeys()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUIController()Lcom/android/camera/ui/UIController;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/module/Base2Module;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    return-object v0
.end method

.method protected getZoomValue()F
    .registers 2

    iget v0, p0, Lcom/android/camera/module/Base2Module;->mZoomValue:F

    return v0
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    return v0
.end method

.method public ignoreTouchEvent(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/camera/module/Base2Module;->mIgnoreTouchEvent:Z

    return-void
.end method

.method protected initializeZoom(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/Base2Module;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->isZoomSupported(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/android/camera/module/Base2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initializeZoom: zoom unsupported!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    iget-object v0, p0, Lcom/android/camera/module/Base2Module;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->getMaxZoom(Ljava/util/List;)F

    move-result v0

    iput v0, p0, Lcom/android/camera/module/Base2Module;->mZoomMax:F

    iget-object v0, p0, Lcom/android/camera/module/Base2Module;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->isZoomSupported(Ljava/util/List;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/Base2Module;->mZoomEnabled:Z

    return-void
.end method

.method public isCaptureIntent()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isKeptBitmapTexture()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isMeteringAreaOnly()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected declared-synchronized isPaused()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/camera/module/Base2Module;->mPaused:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected isRestoring()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/module/Base2Module;->mRestoring:Z

    return v0
.end method

.method public isShowCaptureButton()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isVideoRecording()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected isZoomEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/module/Base2Module;->mZoomEnabled:Z

    return v0
.end method

.method public notifyError()V
    .registers 1

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    return-void
.end method

.method public onBackPressed()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    return-void
.end method

.method public onCreate(Lcom/android/camera/Camera;)V
    .registers 4

    sget-object v0, Lcom/android/camera/module/Base2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/camera/module/Base2Module;->mActivity:Lcom/android/camera/Camera;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/Base2Module;->mMainThreadId:J

    invoke-virtual {p1}, Lcom/android/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/Base2Module;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/Base2Module;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    return-void
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public onGestureTrack(Landroid/graphics/RectF;Z)Z
    .registers 4

    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/16 v0, 0x52

    if-ne p1, v0, :cond_c

    iget-object v0, p0, Lcom/android/camera/module/Base2Module;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->startFromSecureKeyguard()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    :goto_c
    const/4 v0, 0x0

    return v0

    :cond_e
    invoke-virtual {p0}, Lcom/android/camera/module/Base2Module;->openSettingActivity()V

    goto :goto_c
.end method

.method public onLongPress(II)V
    .registers 3

    return-void
.end method

.method public onNewIntent()V
    .registers 1

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 5

    const/4 v1, -0x1

    if-ne p1, v1, :cond_4

    return-void

    :cond_4
    iget v1, p0, Lcom/android/camera/module/Base2Module;->mOrientation:I

    invoke-static {p1, v1}, Lcom/android/camera/Util;->roundOrientation(II)I

    move-result v1

    iput v1, p0, Lcom/android/camera/module/Base2Module;->mOrientation:I

    invoke-virtual {p0}, Lcom/android/camera/module/Base2Module;->checkActivityOrientation()V

    iget v1, p0, Lcom/android/camera/module/Base2Module;->mOrientation:I

    iget v2, p0, Lcom/android/camera/module/Base2Module;->mDisplayRotation:I

    add-int/2addr v1, v2

    rem-int/lit16 v0, v1, 0x168

    iget v1, p0, Lcom/android/camera/module/Base2Module;->mOrientationCompensation:I

    if-eq v1, v0, :cond_22

    iput v0, p0, Lcom/android/camera/module/Base2Module;->mOrientationCompensation:I

    iget v1, p0, Lcom/android/camera/module/Base2Module;->mOrientationCompensation:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/module/Base2Module;->setOrientationIndicator(IZ)V

    :cond_22
    return-void
.end method

.method public onPauseAfterSuper()V
    .registers 2

    iget-object v0, p0, Lcom/android/camera/module/Base2Module;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onPause()V

    iget-object v0, p0, Lcom/android/camera/module/Base2Module;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/camera/module/Base2Module;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->cancelHint()V

    :cond_1a
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/camera/module/Base2Module;->setZoomValue(F)V

    return-void
.end method

.method public onPauseBeforeSuper()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/Base2Module;->setPaused(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/Base2Module;->enableCameraControls(Z)V

    return-void
.end method

.method public onPreviewTextureCopied()V
    .registers 1

    return-void
.end method

.method public onPreviewUIDestroyed()V
    .registers 1

    return-void
.end method

.method public onPreviewUIReady()V
    .registers 1

    return-void
.end method

.method public onResumeAfterSuper()V
    .registers 2

    iget-object v0, p0, Lcom/android/camera/module/Base2Module;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/camera/module/Base2Module;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    :cond_11
    return-void
.end method

.method public onResumeBeforeSuper()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/Base2Module;->setPaused(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    const-string/jumbo v0, "killed-moduleIndex"

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->getCurrentModule()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onScale(FFF)Z
    .registers 6

    invoke-virtual {p0}, Lcom/android/camera/module/Base2Module;->isZoomEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget v0, p0, Lcom/android/camera/module/Base2Module;->mZoomScaled:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v1, p3, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/module/Base2Module;->mZoomScaled:F

    iget v0, p0, Lcom/android/camera/module/Base2Module;->mZoomScaled:F

    invoke-virtual {p0, v0}, Lcom/android/camera/module/Base2Module;->scaleZoomValue(F)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/module/Base2Module;->mZoomScaled:F

    :cond_1a
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(FF)Z
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/module/Base2Module;->mZoomScaled:F

    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd()V
    .registers 1

    return-void
.end method

.method public onSingleTapUp(II)V
    .registers 3

    return-void
.end method

.method public onStop()V
    .registers 1

    return-void
.end method

.method public onSwitchAnimationDone()V
    .registers 1

    return-void
.end method

.method public onUserInteraction()V
    .registers 1

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    if-eqz p1, :cond_5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/Base2Module;->mIgnoreFocusChanged:Z

    :cond_5
    return-void
.end method

.method protected onZoomChanged(F)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/camera/module/Base2Module;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/camera/module/Base2Module;->setZoomValue(F)V

    const-string/jumbo v0, "pref_camera_zoom_key"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/module/Base2Module;->updateStatusBar(Ljava/lang/String;F)V

    return-void
.end method

.method protected openSettingActivity()V
    .registers 1

    return-void
.end method

.method protected playCameraSound(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/module/Base2Module;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isCameraSoundOpen(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/camera/module/Base2Module;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/android/camera/Camera;->playCameraSound(I)V

    :cond_d
    return-void
.end method

.method public requestRender()V
    .registers 1

    return-void
.end method

.method protected resetCameraSettingsIfNeed()V
    .registers 8

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/module/Base2Module;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraAppImpl()Lcom/android/camera/CameraAppImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraAppImpl;->isNeedRestore()Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Lcom/android/camera/module/Base2Module;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraAppImpl()Lcom/android/camera/CameraAppImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraAppImpl;->resetRestoreFlag()V

    invoke-static {}, Lcom/android/camera/module/BaseModule$CameraMode;->values()[Lcom/android/camera/module/BaseModule$CameraMode;

    move-result-object v3

    array-length v4, v3

    :goto_1b
    if-ge v2, v4, :cond_46

    aget-object v1, v3, v2

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/android/camera/module/Base2Module;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    iget v6, v1, Lcom/android/camera/module/BaseModule$CameraMode;->value:I

    add-int/lit8 v6, v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/camera/preferences/CameraSettingPreferences;->setLocalId(I)Lcom/android/camera/preferences/CameraSettingPreferences;

    iget-object v5, p0, Lcom/android/camera/module/Base2Module;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v5, v0}, Lcom/android/camera/CameraSettings;->resetSettingsNoNeedToSave(Lcom/android/camera/preferences/CameraSettingPreferences;I)V

    const/4 v0, 0x1

    iget-object v5, p0, Lcom/android/camera/module/Base2Module;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    iget v6, v1, Lcom/android/camera/module/BaseModule$CameraMode;->value:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/camera/preferences/CameraSettingPreferences;->setLocalId(I)Lcom/android/camera/preferences/CameraSettingPreferences;

    iget-object v5, p0, Lcom/android/camera/module/Base2Module;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v5, v0}, Lcom/android/camera/CameraSettings;->resetSettingsNoNeedToSave(Lcom/android/camera/preferences/CameraSettingPreferences;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_40
    const-string/jumbo v2, "pref_camera_panoramamode_key"

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->resetPreference(Ljava/lang/String;)V

    :cond_46
    return-void
.end method

.method public scaleZoomValue(F)Z
    .registers 6

    iget v2, p0, Lcom/android/camera/module/Base2Module;->mZoomMax:F

    mul-float v0, v2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3c23d70a    # 0.01f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_11

    const/4 v2, 0x0

    return v2

    :cond_11
    invoke-virtual {p0}, Lcom/android/camera/module/Base2Module;->getZoomValue()F

    move-result v2

    add-float v1, v2, v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_24

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_1f
    :goto_1f
    invoke-virtual {p0, v1}, Lcom/android/camera/module/Base2Module;->onZoomChanged(F)V

    const/4 v2, 0x1

    return v2

    :cond_24
    iget v2, p0, Lcom/android/camera/module/Base2Module;->mZoomMax:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1f

    iget v1, p0, Lcom/android/camera/module/Base2Module;->mZoomMax:F

    goto :goto_1f
.end method

.method protected setDisplayOrientation()V
    .registers 1

    return-void
.end method

.method protected setOrientationIndicator(IZ)V
    .registers 8

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v1, v3, [Lcom/android/camera/ui/Rotatable;

    invoke-virtual {p0}, Lcom/android/camera/module/Base2Module;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v3, p0, Lcom/android/camera/module/Base2Module;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    array-length v3, v1

    :goto_14
    if-ge v2, v3, :cond_20

    aget-object v0, v1, v2

    if-eqz v0, :cond_1d

    invoke-interface {v0, p1, p2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_20
    return-void
.end method

.method protected declared-synchronized setPaused(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/android/camera/module/Base2Module;->mPaused:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRestoring(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/camera/module/Base2Module;->mRestoring:Z

    return-void
.end method

.method protected setZoomValue(F)V
    .registers 2

    iput p1, p0, Lcom/android/camera/module/Base2Module;->mZoomValue:F

    return-void
.end method

.method public transferOrientationCompensation(Lcom/android/camera/module/Module;)V
    .registers 3

    move-object v0, p1

    check-cast v0, Lcom/android/camera/module/BaseModule;

    iget v0, v0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    iput v0, p0, Lcom/android/camera/module/Base2Module;->mOrientation:I

    check-cast p1, Lcom/android/camera/module/BaseModule;

    iget v0, p1, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    iput v0, p0, Lcom/android/camera/module/Base2Module;->mOrientationCompensation:I

    return-void
.end method

.method protected updateStatusBar(Ljava/lang/String;F)V
    .registers 4

    iget-object v0, p0, Lcom/android/camera/module/Base2Module;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateStatus(Ljava/lang/String;F)V

    return-void
.end method
