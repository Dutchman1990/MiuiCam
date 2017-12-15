.class public Lcom/android/camera/camera_adapter/VideoMTK;
.super Lcom/android/camera/module/VideoModule;
.source "VideoMTK.java"


# static fields
.field private static sProxy:Lcom/android/camera/hardware/MTKCameraProxy;


# instance fields
.field private final mStereoCameraWarningCallback:Lcom/android/camera/stereo/WarningCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x0

    const/4 v4, 0x5

    const/4 v3, 0x4

    const/high16 v7, -0x80000000

    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v2

    check-cast v2, Lcom/android/camera/hardware/MTKCameraProxy;

    sput-object v2, Lcom/android/camera/camera_adapter/VideoMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    invoke-static {}, Lcom/android/camera/Device;->isSupportedHFR()Z

    move-result v2

    if-eqz v2, :cond_4b

    const-string/jumbo v2, "com.mediatek.camcorder.CamcorderProfileEx"

    const-string/jumbo v5, "SLOW_MOTION_480P_120FPS"

    const-string/jumbo v6, "I"

    invoke-static {v2, v8, v5, v6}, Lcom/android/camera/Util;->getIntField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sget-object v2, Lcom/android/camera/camera_adapter/VideoMTK;->VIDEO_QUALITY_TO_HIGHSPEED:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-eq v0, v7, :cond_4c

    :goto_28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "com.mediatek.camcorder.CamcorderProfileEx"

    const-string/jumbo v3, "SLOW_MOTION_HD_120FPS"

    const-string/jumbo v5, "I"

    invoke-static {v2, v8, v3, v5}, Lcom/android/camera/Util;->getIntField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lcom/android/camera/camera_adapter/VideoMTK;->VIDEO_QUALITY_TO_HIGHSPEED:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eq v1, v7, :cond_4e

    :goto_44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4b
    return-void

    :cond_4c
    move v0, v3

    goto :goto_28

    :cond_4e
    move v1, v4

    goto :goto_44
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;-><init>()V

    new-instance v0, Lcom/android/camera/stereo/WarningCallback;

    invoke-direct {v0}, Lcom/android/camera/stereo/WarningCallback;-><init>()V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mStereoCameraWarningCallback:Lcom/android/camera/stereo/WarningCallback;

    return-void
.end method

.method private setParameterExtra(Landroid/media/MediaRecorder;Ljava/lang/String;)V
    .registers 10

    :try_start_0
    const-string/jumbo v5, "android.media.MediaRecorder"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v5, "setParametersExtra"

    const-string/jumbo v6, "(Ljava/lang/String;)V"

    invoke-static {v0, v5, v6}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {v4, v0, p1, v5}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_1a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_1a} :catch_31
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_1a} :catch_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_1a} :catch_1b

    :goto_1a
    return-void

    :catch_1b
    move-exception v2

    const-string/jumbo v5, "VideoMTK"

    const-string/jumbo v6, "Illegal argument"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a

    :catch_26
    move-exception v3

    const-string/jumbo v5, "VideoMTK"

    const-string/jumbo v6, "no method setParametersExtra"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a

    :catch_31
    move-exception v1

    const-string/jumbo v5, "VideoMTK"

    const-string/jumbo v6, "android.media.MediaRecorder"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a
.end method


# virtual methods
.method protected closeCamera()V
    .registers 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereo()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setStereoWarningCallback(Ljava/lang/Object;)V

    :cond_10
    invoke-super {p0}, Lcom/android/camera/module/VideoModule;->closeCamera()V

    return-void
.end method

.method protected fetchProfile(II)Landroid/media/CamcorderProfile;
    .registers 12

    const/4 v8, 0x0

    :try_start_1
    const-string/jumbo v5, "com.mediatek.camcorder.CamcorderProfileEx"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v5, "getProfile"

    const-string/jumbo v6, "(II)Landroid/media/CamcorderProfile;"

    invoke-static {v0, v5, v6}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v5}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/CamcorderProfile;
    :try_end_2a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_2a} :catch_41
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_1 .. :try_end_2a} :catch_36
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_2a} :catch_2b

    return-object v5

    :catch_2b
    move-exception v2

    const-string/jumbo v5, "VideoMTK"

    const-string/jumbo v6, "Illegal argument"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_35
    return-object v8

    :catch_36
    move-exception v3

    const-string/jumbo v5, "VideoMTK"

    const-string/jumbo v6, "no method getProfile"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_35

    :catch_41
    move-exception v1

    const-string/jumbo v5, "VideoMTK"

    const-string/jumbo v6, "com.mediatek.camcorder.CamcorderProfileEx"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_35
.end method

.method protected getNormalVideoFrameRate()I
    .registers 2

    const/16 v0, 0x1e

    return v0
.end method

.method protected isProfileExist(ILjava/lang/Integer;)Z
    .registers 4

    const/4 v0, 0x1

    return v0
.end method

.method protected onCameraOpen()V
    .registers 3

    const-string/jumbo v0, "pref_camera_stereo_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mStereoCameraWarningCallback:Lcom/android/camera/stereo/WarningCallback;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/android/camera/stereo/WarningCallback;->setActivity(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mStereoCameraWarningCallback:Lcom/android/camera/stereo/WarningCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setStereoWarningCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isDualCameraHintShown(Lcom/android/camera/preferences/CameraSettingPreferences;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_26
    return-void
.end method

.method public onSettingValueChanged(Ljava/lang/String;)V
    .registers 6

    iget-object v1, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v1, :cond_5

    return-void

    :cond_5
    const-string/jumbo v1, "pref_camera_stereo_key"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string/jumbo v2, "pref_camera_stereo_key"

    const v3, 0x7f0e01e1

    invoke-virtual {p0, v3}, Lcom/android/camera/camera_adapter/VideoMTK;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "VideoMTK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vfLevel value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/camera/camera_adapter/VideoMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/hardware/MTKCameraProxy;->setVsDofLevel(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    const-string/jumbo v1, "pref_camera_stereo_key"

    invoke-virtual {p0, v1}, Lcom/android/camera/camera_adapter/VideoMTK;->updateStatusBar(Ljava/lang/String;)V

    :goto_4c
    return-void

    :cond_4d
    invoke-super {p0, p1}, Lcom/android/camera/module/VideoModule;->onSettingValueChanged(Ljava/lang/String;)V

    goto :goto_4c
.end method

.method protected pauseMediaRecorder(Landroid/media/MediaRecorder;)V
    .registers 9

    :try_start_0
    const-string/jumbo v5, "com.mediatek.media.MediaRecorderEx"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v5, "pause"

    const-string/jumbo v6, "(Landroid/media/MediaRecorder;)V"

    invoke-static {v0, v5, v6}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v5}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_1b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_1b} :catch_32
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_1b} :catch_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_1b} :catch_1c

    :goto_1b
    return-void

    :catch_1c
    move-exception v2

    const-string/jumbo v5, "VideoMTK"

    const-string/jumbo v6, "Illegal argument"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    :catch_27
    move-exception v3

    const-string/jumbo v5, "VideoMTK"

    const-string/jumbo v6, "no method pause"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    :catch_32
    move-exception v1

    const-string/jumbo v5, "VideoMTK"

    const-string/jumbo v6, "com.mediatek.media.MediaRecorderEx"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b
.end method

.method protected prepareOpenCamera()V
    .registers 2

    const-string/jumbo v0, "pref_camera_stereo_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    sget-object v0, Lcom/android/camera/camera_adapter/VideoMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/hardware/MTKCameraProxy;->enableStereoMode()V

    goto :goto_d
.end method

.method protected setHFRSpeed(Landroid/media/MediaRecorder;I)V
    .registers 6

    invoke-static {}, Lcom/android/camera/Device;->isSupportedHFR()Z

    move-result v1

    if-eqz v1, :cond_1d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "media-param-slowmotion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/camera_adapter/VideoMTK;->setParameterExtra(Landroid/media/MediaRecorder;Ljava/lang/String;)V

    :cond_1d
    return-void
.end method

.method protected startRecordVideo()Z
    .registers 4

    invoke-super {p0}, Lcom/android/camera/module/VideoModule;->startRecordVideo()Z

    move-result v0

    const-string/jumbo v1, "pref_camera_stereo_mode_key"

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-string/jumbo v2, "media-param-audio-stop-first=1"

    invoke-direct {p0, v1, v2}, Lcom/android/camera/camera_adapter/VideoMTK;->setParameterExtra(Landroid/media/MediaRecorder;Ljava/lang/String;)V

    :cond_15
    return v0
.end method

.method protected updateVideoParametersPreference()V
    .registers 6

    const/16 v4, 0x1388

    invoke-super {p0}, Lcom/android/camera/module/VideoModule;->updateVideoParametersPreference()V

    sget-object v1, Lcom/android/camera/camera_adapter/VideoMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/hardware/MTKCameraProxy;->setCameraMode(Landroid/hardware/Camera$Parameters;I)V

    invoke-static {}, Lcom/android/camera/Device;->isSupportedHFR()Z

    move-result v1

    if-eqz v1, :cond_4a

    const-string/jumbo v1, "slow"

    iget-object v2, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mHfr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9a

    sget-object v1, Lcom/android/camera/camera_adapter/VideoMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v3, "on"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/hardware/MTKCameraProxy;->setSlowMotion(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    sget-object v1, Lcom/android/camera/camera_adapter/VideoMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v3, "off"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/hardware/MTKCameraProxy;->set3dnrMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    sget-object v1, Lcom/android/camera/camera_adapter/VideoMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/hardware/MTKCameraProxy;->setVideoHighFrameRate(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :goto_41
    iget-object v1, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    :cond_4a
    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereo()Z

    move-result v1

    if-eqz v1, :cond_99

    const-string/jumbo v1, "pref_camera_stereo_mode_key"

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_af

    iget-object v1, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const/16 v2, 0x5dc0

    invoke-virtual {v1, v4, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    sget-object v1, Lcom/android/camera/camera_adapter/VideoMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/hardware/MTKCameraProxy;->setVsDofMode(Landroid/hardware/Camera$Parameters;Z)V

    iget-object v1, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string/jumbo v2, "pref_camera_stereo_key"

    const v3, 0x7f0e01e1

    invoke-virtual {p0, v3}, Lcom/android/camera/camera_adapter/VideoMTK;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "VideoMTK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vfLevel value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/camera/camera_adapter/VideoMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/hardware/MTKCameraProxy;->setVsDofLevel(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :cond_99
    :goto_99
    return-void

    :cond_9a
    sget-object v1, Lcom/android/camera/camera_adapter/VideoMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v3, "off"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/hardware/MTKCameraProxy;->setSlowMotion(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    sget-object v1, Lcom/android/camera/camera_adapter/VideoMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v3, "on"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/hardware/MTKCameraProxy;->set3dnrMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_41

    :cond_af
    sget-object v1, Lcom/android/camera/camera_adapter/VideoMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/hardware/MTKCameraProxy;->setVsDofMode(Landroid/hardware/Camera$Parameters;Z)V

    iget-object v1, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const/16 v2, 0x7530

    invoke-virtual {v1, v4, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_99
.end method
