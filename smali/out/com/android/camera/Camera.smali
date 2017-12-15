.class public Lcom/android/camera/Camera;
.super Lcom/android/camera/ActivityBase;
.source "Camera.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/Camera$1;,
        Lcom/android/camera/Camera$LogThread;,
        Lcom/android/camera/Camera$MyOrientationEventListener;,
        Lcom/android/camera/Camera$WatchDogThread;
    }
.end annotation


# instance fields
.field private mCameraErrorShown:Z

.field private mContentFrame:Landroid/widget/FrameLayout;

.field private mContentInflated:Z

.field private mCurrentModuleIndex:I

.field private mDebugThread:Lcom/android/camera/Camera$LogThread;

.field private mImageSaver:Lcom/android/camera/storage/ImageSaver;

.field private mIntentChanged:Z

.field private mIsFromLauncher:Z

.field private mIsGoingToCamera2:Z

.field private mLastIgnoreKey:I

.field private mLastKeyEventTime:J

.field private mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

.field private mProximitySensorLock:Lcom/android/camera/ProximitySensorLock;

.field private mSensorStateManager:Lcom/android/camera/SensorStateManager;

.field private mTick:I

.field private mWatchDog:Ljava/lang/Thread;

.field private final tickerRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/camera/Camera;)I
    .registers 2

    iget v0, p0, Lcom/android/camera/Camera;->mTick:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/camera/Camera;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/Camera;->tickerRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/camera/Camera;I)I
    .registers 2

    iput p1, p0, Lcom/android/camera/Camera;->mTick:I

    return p1
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/camera/ActivityBase;-><init>()V

    iput v2, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/Camera;->mLastKeyEventTime:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsGoingToCamera2:Z

    new-instance v0, Lcom/android/camera/Camera$1;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$1;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->tickerRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private closeModule(Lcom/android/camera/module/Module;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mPaused:Z

    invoke-interface {p1}, Lcom/android/camera/module/Module;->onPauseBeforeSuper()V

    invoke-interface {p1}, Lcom/android/camera/module/Module;->onPauseAfterSuper()V

    invoke-interface {p1}, Lcom/android/camera/module/Module;->onStop()V

    invoke-interface {p1}, Lcom/android/camera/module/Module;->onDestroy()V

    return-void
.end method

.method private getCameraByDevice()Lcom/android/camera/module/Module;
    .registers 2

    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/android/camera/camera_adapter/CameraPadOne;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/CameraPadOne;-><init>()V

    return-object v0

    :cond_c
    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Lcom/android/camera/camera_adapter/CameraQcom;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/CameraQcom;-><init>()V

    return-object v0

    :cond_18
    invoke-static {}, Lcom/android/camera/Device;->isLCPlatform()Z

    move-result v0

    if-eqz v0, :cond_24

    new-instance v0, Lcom/android/camera/camera_adapter/CameraLC;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/CameraLC;-><init>()V

    return-object v0

    :cond_24
    invoke-static {}, Lcom/android/camera/Device;->isNvPlatform()Z

    move-result v0

    if-eqz v0, :cond_30

    new-instance v0, Lcom/android/camera/camera_adapter/CameraNv;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/CameraNv;-><init>()V

    return-object v0

    :cond_30
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_3c

    new-instance v0, Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/CameraMTK;-><init>()V

    return-object v0

    :cond_3c
    new-instance v0, Lcom/android/camera/module/CameraModule;

    invoke-direct {v0}, Lcom/android/camera/module/CameraModule;-><init>()V

    return-object v0
.end method

.method private getDualcamByDevice()Lcom/android/camera/module/Module;
    .registers 2

    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;-><init>()V

    return-object v0

    :cond_c
    const/4 v0, 0x0

    return-object v0
.end method

.method private getModuleByIndex(I)Lcom/android/camera/module/Module;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_11

    iput p1, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    iget v1, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/ui/V6ModulePicker;->setCurrentModule(I)V

    new-instance v0, Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-direct {v0}, Lcom/android/camera/module/MorphoPanoramaModule;-><init>()V

    :goto_10
    return-object v0

    :cond_11
    const/4 v1, 0x3

    if-ne p1, v1, :cond_20

    iput p1, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    iget v1, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/ui/V6ModulePicker;->setCurrentModule(I)V

    invoke-direct {p0}, Lcom/android/camera/Camera;->getDualcamByDevice()Lcom/android/camera/module/Module;

    move-result-object v0

    goto :goto_10

    :cond_20
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2f

    iput p1, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    iget v1, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/ui/V6ModulePicker;->setCurrentModule(I)V

    invoke-direct {p0}, Lcom/android/camera/Camera;->getVideoByDevice()Lcom/android/camera/module/Module;

    move-result-object v0

    goto :goto_10

    :cond_2f
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    iget v1, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/ui/V6ModulePicker;->setCurrentModule(I)V

    invoke-direct {p0}, Lcom/android/camera/Camera;->getCameraByDevice()Lcom/android/camera/module/Module;

    move-result-object v0

    goto :goto_10
.end method

.method private getVideoByDevice()Lcom/android/camera/module/Module;
    .registers 2

    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/android/camera/camera_adapter/VideoQcom;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/VideoQcom;-><init>()V

    return-object v0

    :cond_c
    invoke-static {}, Lcom/android/camera/Device;->isLCPlatform()Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Lcom/android/camera/camera_adapter/VideoLC;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/VideoLC;-><init>()V

    return-object v0

    :cond_18
    invoke-static {}, Lcom/android/camera/Device;->isNvPlatform()Z

    move-result v0

    if-eqz v0, :cond_24

    new-instance v0, Lcom/android/camera/camera_adapter/VideoNv;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/VideoNv;-><init>()V

    return-object v0

    :cond_24
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_30

    new-instance v0, Lcom/android/camera/camera_adapter/VideoMTK;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/VideoMTK;-><init>()V

    return-object v0

    :cond_30
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v0

    if-eqz v0, :cond_3c

    new-instance v0, Lcom/android/camera/camera_adapter/VideoPadOne;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/VideoPadOne;-><init>()V

    return-object v0

    :cond_3c
    new-instance v0, Lcom/android/camera/module/VideoModule;

    invoke-direct {v0}, Lcom/android/camera/module/VideoModule;-><init>()V

    return-object v0
.end method

.method private isFromKeyguard()Z
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getKeyguardFlag()Z

    move-result v2

    :cond_19
    return v2
.end method

.method private openModule(Lcom/android/camera/module/Module;)V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {p1, v0}, Lcom/android/camera/module/Module;->transferOrientationCompensation(Lcom/android/camera/module/Module;)V

    iput-object p1, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mPaused:Z

    invoke-interface {p1, p0}, Lcom/android/camera/module/Module;->onCreate(Lcom/android/camera/Camera;)V

    invoke-interface {p1}, Lcom/android/camera/module/Module;->onResumeBeforeSuper()V

    invoke-interface {p1}, Lcom/android/camera/module/Module;->onResumeAfterSuper()V

    return-void
.end method

.method private resetDualMode()V
    .registers 2

    sget-boolean v0, Lcom/android/camera/Device;->IS_B7:Z

    if-eqz v0, :cond_13

    const-string/jumbo v0, "pref_camera_stereo_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string/jumbo v0, "pref_camera_stereo_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->resetPreference(Ljava/lang/String;)V

    :cond_13
    const-string/jumbo v0, "pref_camera_mono_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string/jumbo v0, "pref_camera_mono_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->resetPreference(Ljava/lang/String;)V

    :cond_22
    const-string/jumbo v0, "pref_camera_raw_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    const-string/jumbo v0, "pref_camera_raw_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->resetPreference(Ljava/lang/String;)V

    :cond_31
    return-void
.end method

.method private setTranslucentNavigation(Z)V
    .registers 5

    invoke-static {p0}, Lcom/android/camera/Util;->checkDeviceHasNavigationBar(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x300

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_18
    return-void
.end method

.method private showDebug()V
    .registers 3

    invoke-static {}, Lcom/android/camera/Util;->isShowDebugInfo()Z

    move-result v0

    if-eqz v0, :cond_20

    const-string/jumbo v0, "CameraDebug"

    const-string/jumbo v1, "ready to start show debug info "

    invoke-static {v0, v1}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/Camera;->mUIController:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->showDebugView()V

    new-instance v0, Lcom/android/camera/Camera$LogThread;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$LogThread;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mDebugThread:Lcom/android/camera/Camera$LogThread;

    iget-object v0, p0, Lcom/android/camera/Camera;->mDebugThread:Lcom/android/camera/Camera$LogThread;

    invoke-virtual {v0}, Lcom/android/camera/Camera$LogThread;->start()V

    :cond_20
    return-void
.end method

.method private switchEdgeFingerMode(Z)V
    .registers 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedEdgeTouch()Z

    move-result v0

    if-nez v0, :cond_8

    return-void

    :cond_8
    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->setEdgeMode(Landroid/content/Context;Z)V

    if-eqz p1, :cond_1a

    new-instance v0, Lcom/android/camera/Camera$WatchDogThread;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/Camera$WatchDogThread;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$WatchDogThread;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mWatchDog:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/camera/Camera;->mWatchDog:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/android/camera/Camera;->mWatchDog:Ljava/lang/Thread;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/camera/Camera;->mWatchDog:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iput-object v1, p0, Lcom/android/camera/Camera;->mWatchDog:Ljava/lang/Thread;

    goto :goto_19
.end method


# virtual methods
.method public changeRequestOrientation()V
    .registers 2

    sget-boolean v0, Lcom/android/camera/Device;->IS_A8:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setRequestedOrientation(I)V

    :goto_f
    return-void

    :cond_10
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setRequestedOrientation(I)V

    goto :goto_f
.end method

.method public couldShowErrorDialog()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mCameraErrorShown:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public createContentView()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mContentInflated:Z

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera;->mContentFrame:Landroid/widget/FrameLayout;

    const v2, 0x7f040020

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mContentInflated:Z

    :cond_13
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/camera/Camera;->mProximitySensorLock:Lcom/android/camera/ProximitySensorLock;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/camera/Camera;->mProximitySensorLock:Lcom/android/camera/ProximitySensorLock;

    invoke-virtual {v0, p1}, Lcom/android/camera/ProximitySensorLock;->intercept(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera/Camera;->mProximitySensorLock:Lcom/android/camera/ProximitySensorLock;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/camera/Camera;->mProximitySensorLock:Lcom/android/camera/ProximitySensorLock;

    invoke-virtual {v1}, Lcom/android/camera/ProximitySensorLock;->active()Z

    move-result v1

    if-eqz v1, :cond_e

    return v0

    :cond_e
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0, p1}, Lcom/android/camera/module/Module;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_1a
    return v0
.end method

.method public getCapturePosture()I
    .registers 2

    iget-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->getCapturePosture()I

    move-result v0

    return v0
.end method

.method public getImageSaver()Lcom/android/camera/storage/ImageSaver;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    return-object v0
.end method

.method public getSensorStateManager()Lcom/android/camera/SensorStateManager;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    return-object v0
.end method

.method public isGoingToCamera2()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsGoingToCamera2:Z

    return v0
.end method

.method public isStable()Z
    .registers 2

    iget-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->isStable()Z

    move-result v0

    return v0
.end method

.method public onBackPressed()V
    .registers 2

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onBackPressed()V

    :cond_b
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    instance-of v0, v0, Lcom/android/camera/module/Base2Module;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    check-cast v0, Lcom/android/camera/module/Base2Module;

    invoke-virtual {v0, p1}, Lcom/android/camera/module/Base2Module;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_14
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/camera/ProximitySensorLock;->enabled()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-direct {p0}, Lcom/android/camera/Camera;->isFromKeyguard()Z

    move-result v2

    if-eqz v2, :cond_1f

    new-instance v2, Lcom/android/camera/ProximitySensorLock;

    invoke-direct {v2, p0}, Lcom/android/camera/ProximitySensorLock;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/Camera;->mProximitySensorLock:Lcom/android/camera/ProximitySensorLock;

    iget-object v2, p0, Lcom/android/camera/Camera;->mProximitySensorLock:Lcom/android/camera/ProximitySensorLock;

    invoke-virtual {v2}, Lcom/android/camera/ProximitySensorLock;->startWatching()V

    :cond_1f
    invoke-static {}, Lcom/android/camera/effect/EffectController;->releaseInstance()V

    const v2, 0x7f040026

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/camera/Camera;->startFromKeyguard()Z

    move-result v2

    if-nez v2, :cond_38

    invoke-static {p0}, Lcom/android/camera/permission/PermissionManager;->requestCameraRuntimePermissions(Landroid/app/Activity;)Z

    :cond_38
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mContentInflated:Z

    const v2, 0x7f090076

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/camera/Camera;->mContentFrame:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/android/camera/ui/UIController;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/UIController;-><init>(Lcom/android/camera/Camera;)V

    iput-object v2, p0, Lcom/android/camera/Camera;->mUIController:Lcom/android/camera/ui/UIController;

    const/4 v1, -0x1

    if-eqz p1, :cond_b3

    const-string/jumbo v2, "killed-moduleIndex"

    invoke-virtual {p1, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v5, :cond_b3

    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->getModuleByIndex(I)Lcom/android/camera/module/Module;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    iget-object v2, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v2, v4}, Lcom/android/camera/module/Module;->setRestoring(Z)V

    const-string/jumbo v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restoreModuleIndex="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7d
    :goto_7d
    iput-boolean v4, p0, Lcom/android/camera/Camera;->mIsFromLauncher:Z

    invoke-static {p0}, Lcom/android/camera/Util;->updateCountryIso(Landroid/content/Context;)V

    new-instance v2, Lcom/android/camera/SensorStateManager;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/camera/SensorStateManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    iget-object v2, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v2, p0}, Lcom/android/camera/module/Module;->onCreate(Lcom/android/camera/Camera;)V

    new-instance v2, Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-direct {v2, p0, p0}, Lcom/android/camera/Camera$MyOrientationEventListener;-><init>(Lcom/android/camera/Camera;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    new-instance v3, Lcom/android/camera/storage/ImageSaver;

    iget-object v5, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v2

    if-nez v2, :cond_ca

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isVideoCaptureIntent()Z

    move-result v2

    :goto_a7
    invoke-direct {v3, p0, v5, v2}, Lcom/android/camera/storage/ImageSaver;-><init>(Lcom/android/camera/ActivityBase;Landroid/os/Handler;Z)V

    iput-object v3, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    invoke-direct {p0}, Lcom/android/camera/Camera;->showDebug()V

    invoke-direct {p0, v4}, Lcom/android/camera/Camera;->setTranslucentNavigation(Z)V

    return-void

    :cond_b3
    invoke-static {p0}, Lcom/android/camera/Util;->getStartModuleIndex(Landroid/app/Activity;)I

    move-result v0

    if-gez v0, :cond_ba

    move v0, v3

    :cond_ba
    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->getModuleByIndex(I)Lcom/android/camera/module/Module;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v2

    if-eqz v2, :cond_7d

    invoke-direct {p0}, Lcom/android/camera/Camera;->resetDualMode()V

    goto :goto_7d

    :cond_ca
    move v2, v4

    goto :goto_a7
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onDestroy()V

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onDestroy()V

    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    invoke-virtual {v0}, Lcom/android/camera/storage/ImageSaver;->onHostDestroy()V

    iget-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->onDestory()V

    invoke-static {p0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/QRCodeManager;->onDestroy()V

    invoke-static {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->onDestroy(Lcom/android/camera/ActivityBase;)V

    iget-object v0, p0, Lcom/android/camera/Camera;->mDebugThread:Lcom/android/camera/Camera$LogThread;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/camera/Camera;->mDebugThread:Lcom/android/camera/Camera$LogThread;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera$LogThread;->setRunFlag(Z)V

    :cond_26
    iget-object v0, p0, Lcom/android/camera/Camera;->mProximitySensorLock:Lcom/android/camera/ProximitySensorLock;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/camera/Camera;->mProximitySensorLock:Lcom/android/camera/ProximitySensorLock;

    invoke-virtual {v0}, Lcom/android/camera/ProximitySensorLock;->destroy()V

    :cond_2f
    return-void
.end method

.method public onEdgeTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-static {}, Lcom/android/camera/Device;->isSupportedEdgeTouch()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0, p1}, Lcom/android/camera/module/Module;->dispatchEdgeTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 11

    const/4 v6, 0x1

    const/4 v7, -0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_3d

    const/16 v0, 0x42

    if-eq p1, v0, :cond_10

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_2d

    :cond_10
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/Camera;->mLastKeyEventTime:J

    const-wide/16 v4, 0x96

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v0

    if-eqz v0, :cond_4a

    iput v7, p0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/module/Module;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_4d

    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_2c
    return v0

    :cond_2d
    const/16 v0, 0x58

    if-eq p1, v0, :cond_10

    const/16 v0, 0x57

    if-eq p1, v0, :cond_10

    const/16 v0, 0x18

    if-eq p1, v0, :cond_10

    const/16 v0, 0x19

    if-eq p1, v0, :cond_10

    :cond_3d
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_20

    iget v0, p0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    if-ne p1, v0, :cond_20

    iput v7, p0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    goto :goto_20

    :cond_4a
    iput p1, p0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    return v6

    :cond_4d
    move v0, v6

    goto :goto_2c
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 7

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    if-ne p1, v1, :cond_d

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/camera/Camera;->mLastKeyEventTime:J

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    return v0

    :cond_d
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/Camera;->mLastKeyEventTime:J

    iget-object v1, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v1, p1, p2}, Lcom/android/camera/module/Module;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_1f
    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onNewIntent(Landroid/content/Intent;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIntentChanged:Z

    invoke-virtual {p0, p1}, Lcom/android/camera/Camera;->setIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onNewIntent()V

    return-void
.end method

.method public onPause()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mPaused:Z

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mActivityPaused:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->switchEdgeFingerMode(Z)V

    iget-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/Camera$MyOrientationEventListener;->disable()V

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onPauseBeforeSuper()V

    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onPause()V

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onPauseAfterSuper()V

    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    invoke-virtual {v0}, Lcom/android/camera/storage/ImageSaver;->onHostPause()V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageEnd()V

    return-void
.end method

.method public onPreviewUIDestroyed()V
    .registers 2

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    instance-of v0, v0, Lcom/android/camera/module/Base2Module;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    check-cast v0, Lcom/android/camera/module/Base2Module;

    invoke-virtual {v0}, Lcom/android/camera/module/Base2Module;->onPreviewUIDestroyed()V

    :cond_11
    return-void
.end method

.method public onPreviewUIReady()V
    .registers 2

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    instance-of v0, v0, Lcom/android/camera/module/Base2Module;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    check-cast v0, Lcom/android/camera/module/Base2Module;

    invoke-virtual {v0}, Lcom/android/camera/module/Base2Module;->onPreviewUIReady()V

    :cond_11
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 6

    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->getCameraRuntimePermissionRequestCode()I

    move-result v1

    if-ne p1, v1, :cond_28

    invoke-static {p2, p3}, Lcom/android/camera/permission/PermissionManager;->isCameraLaunchPermissionsResultReady([Ljava/lang/String;[I)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    :cond_f
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mPaused:Z

    if-nez v1, :cond_28

    invoke-static {p2, p3}, Lcom/android/camera/permission/PermissionManager;->isCameraLocationPermissionsResultReady([Ljava/lang/String;[I)Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isRecordLocation(Landroid/content/SharedPreferences;)Z

    move-result v0

    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    :cond_28
    return-void
.end method

.method public onResume()V
    .registers 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->startFromKeyguard()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result v1

    if-eqz v1, :cond_70

    :cond_e
    :goto_e
    invoke-static {p0}, Lcom/android/camera/Util;->checkDeviceHasNavigationBar(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-static {p0}, Lcom/android/camera/Util;->getWindowAttribute(Landroid/content/Context;)V

    :cond_17
    iget-object v1, p0, Lcom/android/camera/Camera;->mProximitySensorLock:Lcom/android/camera/ProximitySensorLock;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/camera/Camera;->mProximitySensorLock:Lcom/android/camera/ProximitySensorLock;

    invoke-virtual {v1}, Lcom/android/camera/ProximitySensorLock;->onResume()V

    :cond_20
    const-string/jumbo v1, "CameraActivity"

    invoke-static {p0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/camera/Util;->checkLockedOrientation(Landroid/app/Activity;)V

    iput-boolean v3, p0, Lcom/android/camera/Camera;->mPaused:Z

    iput-boolean v3, p0, Lcom/android/camera/Camera;->mActivityPaused:Z

    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->switchEdgeFingerMode(Z)V

    invoke-static {p0}, Lcom/android/camera/storage/Storage;->initStorage(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v1}, Lcom/android/camera/Camera$MyOrientationEventListener;->enable()V

    invoke-static {p0}, Lcom/android/camera/Util;->getStartModuleIndex(Landroid/app/Activity;)I

    move-result v0

    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIntentChanged:Z

    if-eqz v1, :cond_42

    if-gez v0, :cond_74

    :cond_42
    iget-object v1, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v1}, Lcom/android/camera/module/Module;->onResumeBeforeSuper()V

    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onResume()V

    iget-object v1, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v1}, Lcom/android/camera/module/Module;->onResumeAfterSuper()V

    :goto_4f
    iget v1, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    if-nez v1, :cond_56

    invoke-static {p0}, Lcom/android/camera/Util;->replaceStartEffectRender(Landroid/app/Activity;)I

    :cond_56
    invoke-virtual {p0, v3}, Lcom/android/camera/Camera;->setBlurFlag(Z)V

    iget-object v3, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v1

    if-nez v1, :cond_86

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isVideoCaptureIntent()Z

    move-result v1

    :goto_65
    invoke-virtual {v3, v1}, Lcom/android/camera/storage/ImageSaver;->onHostResume(Z)V

    invoke-static {p0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/zxing/QRCodeManager;->resetQRScanExit(Z)V

    return-void

    :cond_70
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    goto :goto_e

    :cond_74
    iget v1, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    if-eq v0, v1, :cond_42

    if-nez v0, :cond_7d

    invoke-direct {p0}, Lcom/android/camera/Camera;->resetDualMode()V

    :cond_7d
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onResume()V

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->switchToOtherModule(I)V

    iput-boolean v3, p0, Lcom/android/camera/Camera;->mIntentChanged:Z

    goto :goto_4f

    :cond_86
    move v1, v2

    goto :goto_65
.end method

.method public onStop()V
    .registers 2

    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onStop()V

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onStop()V

    return-void
.end method

.method public onUserInteraction()V
    .registers 2

    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onUserInteraction()V

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onUserInteraction()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0, p1}, Lcom/android/camera/module/Module;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->canIgnoreFocusChanged()Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_14
    :goto_14
    if-eqz p1, :cond_2e

    invoke-static {p0}, Lcom/android/camera/Util;->checkLockedOrientation(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->checkActivityOrientation()V

    iget-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->register()V

    :cond_27
    :goto_27
    return-void

    :cond_28
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraBrightness;->onWindowFocusChanged(Z)V

    goto :goto_14

    :cond_2e
    iget-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->unregister(I)V

    goto :goto_27
.end method

.method public pause()V
    .registers 2

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->isVideoRecording()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-super {p0}, Lcom/android/camera/ActivityBase;->pause()V

    :cond_b
    return-void
.end method

.method public resume()V
    .registers 2

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->isVideoRecording()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-super {p0}, Lcom/android/camera/ActivityBase;->resume()V

    :cond_b
    return-void
.end method

.method public setBlurFlag(Z)V
    .registers 5

    const/4 v1, 0x4

    if-eqz p1, :cond_21

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->setBackgroundColor(I)V

    :goto_20
    return-void

    :cond_21
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_20
.end method

.method public showErrorDialog()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mCameraErrorShown:Z

    return-void
.end method

.method public switchToOtherModule(I)V
    .registers 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPaused:Z

    if-eqz v0, :cond_6

    return-void

    :cond_6
    const/4 v0, 0x3

    if-ne p1, v0, :cond_24

    const/4 v0, 0x1

    :goto_a
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsGoingToCamera2:Z

    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsFromLauncher:Z

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->keep()V

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->closeModule(Lcom/android/camera/module/Module;)V

    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->getModuleByIndex(I)Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->openModule(Lcom/android/camera/module/Module;)V

    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsGoingToCamera2:Z

    return-void

    :cond_24
    move v0, v1

    goto :goto_a
.end method
