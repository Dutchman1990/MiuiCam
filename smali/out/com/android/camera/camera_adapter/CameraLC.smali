.class public Lcom/android/camera/camera_adapter/CameraLC;
.super Lcom/android/camera/module/CameraModule;
.source "CameraLC.java"


# static fields
.field private static sProxy:Lcom/android/camera/hardware/LCCameraProxy;


# instance fields
.field private mIsLongShotMode:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v0

    check-cast v0, Lcom/android/camera/hardware/LCCameraProxy;

    sput-object v0, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsLongShotMode:Z

    return-void
.end method

.method private getZSL()Z
    .registers 3

    const v0, 0x7f0e016e

    invoke-virtual {p0, v0}, Lcom/android/camera/camera_adapter/CameraLC;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautifyValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraLC;->mMultiSnapStatus:Z

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraLC;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraLC;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v0

    if-eqz v0, :cond_2e

    :cond_25
    sget-object v0, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/LCCameraProxy;->getZslSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method private lcUpdateCameraParametersPreference()V
    .registers 12

    const/4 v10, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraLC;->setBeautyParams()V

    invoke-static {}, Lcom/android/camera/Device;->isSupportedIntelligentBeautify()Z

    move-result v5

    if-eqz v5, :cond_57

    iget-object v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string/jumbo v7, "pref_camera_show_gender_age_key"

    const v8, 0x7f0e0154

    invoke-virtual {p0, v8}, Lcom/android/camera/camera_adapter/CameraLC;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraLC;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/camera/ui/FaceView;->setShowGenderAndAge(Ljava/lang/String;)V

    const-string/jumbo v5, "Camera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SetShowGenderAndAge ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "on"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    iget-object v7, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v8, "xiaomi-preview-rotation"

    iget v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mOrientation:I

    const/4 v9, -0x1

    if-ne v5, v9, :cond_19a

    move v5, v6

    :goto_54
    invoke-virtual {v7, v8, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    :cond_57
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/effect/EffectController;->hasEffect()Z

    move-result v5

    if-eqz v5, :cond_19e

    invoke-static {}, Lcom/android/camera/Device;->isEffectWatermarkFilted()Z

    move-result v5

    :goto_65
    if-nez v5, :cond_6f

    iget-object v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v5}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v5

    if-eqz v5, :cond_1a1

    :cond_6f
    sget-object v5, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v7, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v8, "off"

    invoke-virtual {v5, v7, v8}, Lcom/android/camera/hardware/LCCameraProxy;->setTimeWatermark(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :goto_79
    const-string/jumbo v5, "pref_qc_camera_iso_key"

    const v7, 0x7f0e00c2

    invoke-virtual {p0, v7}, Lcom/android/camera/camera_adapter/CameraLC;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/android/camera/camera_adapter/CameraLC;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v7, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v7}, Lcom/android/camera/hardware/LCCameraProxy;->getSupportedIsoValues(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/camera/camera_adapter/CameraLC;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_b6

    const-string/jumbo v5, "Camera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ISO value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v7, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v7, v1}, Lcom/android/camera/hardware/LCCameraProxy;->setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :cond_b6
    iget-object v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string/jumbo v7, "pref_qc_camera_saturation_key"

    const v8, 0x7f0e00ae

    invoke-virtual {p0, v8}, Lcom/android/camera/camera_adapter/CameraLC;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "Camera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Saturation value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v7, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v7, v2}, Lcom/android/camera/hardware/LCCameraProxy;->setSaturation(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string/jumbo v7, "pref_qc_camera_contrast_key"

    const v8, 0x7f0e00ac

    invoke-virtual {p0, v8}, Lcom/android/camera/camera_adapter/CameraLC;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "Camera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Contrast value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v7, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v7, v0}, Lcom/android/camera/hardware/LCCameraProxy;->setContrast(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string/jumbo v7, "pref_qc_camera_sharpness_key"

    const v8, 0x7f0e00b0

    invoke-virtual {p0, v8}, Lcom/android/camera/camera_adapter/CameraLC;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "Camera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Sharpness value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v7, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v7, v3}, Lcom/android/camera/hardware/LCCameraProxy;->setSharpness(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v5}, Lcom/android/camera/camera_adapter/CameraLC;->setPictureFlipIfNeed(Landroid/hardware/Camera$Parameters;)V

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraLC;->getZSL()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsZSLMode:Z

    sget-object v7, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v8, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-boolean v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsZSLMode:Z

    if-eqz v5, :cond_1b5

    const-string/jumbo v5, "true"

    :goto_15f
    invoke-virtual {v7, v8, v5}, Lcom/android/camera/hardware/LCCameraProxy;->setZSLMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsZSLMode:Z

    if-eqz v5, :cond_16e

    iget-boolean v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mMultiSnapStatus:Z

    if-eqz v5, :cond_16e

    iget-boolean v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsLongShotMode:Z

    if-eqz v5, :cond_1b9

    :cond_16e
    iget-boolean v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsLongShotMode:Z

    if-eqz v5, :cond_1c5

    iput-boolean v6, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsLongShotMode:Z

    sget-object v5, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v6, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v6, v10}, Lcom/android/camera/hardware/LCCameraProxy;->setBurstShotNum(Landroid/hardware/Camera$Parameters;I)V

    :goto_17b
    const-string/jumbo v5, "Camera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Long Shot mode value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraLC;->isLongShotMode()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_19a
    iget v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mOrientation:I

    goto/16 :goto_54

    :cond_19e
    move v5, v6

    goto/16 :goto_65

    :cond_1a1
    iget-object v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->isWaterMarkOpen(Landroid/content/SharedPreferences;)Z

    move-result v5

    if-eqz v5, :cond_6f

    sget-object v5, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v7, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v8, "on"

    invoke-virtual {v5, v7, v8}, Lcom/android/camera/hardware/LCCameraProxy;->setTimeWatermark(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto/16 :goto_79

    :cond_1b5
    const-string/jumbo v5, "false"

    goto :goto_15f

    :cond_1b9
    iput-boolean v10, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsLongShotMode:Z

    sget-object v5, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v6, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    sget v7, Lcom/android/camera/camera_adapter/CameraLC;->BURST_SHOOTING_COUNT:I

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/hardware/LCCameraProxy;->setBurstShotNum(Landroid/hardware/Camera$Parameters;I)V

    goto :goto_17b

    :cond_1c5
    sget-object v5, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v6, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v6, v10}, Lcom/android/camera/hardware/LCCameraProxy;->setBurstShotNum(Landroid/hardware/Camera$Parameters;I)V

    goto :goto_17b
.end method

.method private setPictureFlipIfNeed(Landroid/hardware/Camera$Parameters;)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraLC;->isFrontMirror()Z

    move-result v0

    if-eqz v0, :cond_2f

    sget-object v0, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    const-string/jumbo v1, "1"

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/hardware/LCCameraProxy;->setPictureFlip(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :goto_e
    const-string/jumbo v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Picture flip value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    invoke-virtual {v2, p1}, Lcom/android/camera/hardware/LCCameraProxy;->getPictureFlip(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2f
    sget-object v0, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    const-string/jumbo v1, "0"

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/hardware/LCCameraProxy;->setPictureFlip(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_e
.end method


# virtual methods
.method protected applyMultiShutParameters(Z)V
    .registers 5

    sget-object v1, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz p1, :cond_c

    sget v0, Lcom/android/camera/camera_adapter/CameraLC;->BURST_SHOOTING_COUNT:I

    :goto_8
    invoke-virtual {v1, v2, v0}, Lcom/android/camera/hardware/LCCameraProxy;->setBurstShotNum(Landroid/hardware/Camera$Parameters;I)V

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_8
.end method

.method protected cancelContinuousShot()V
    .registers 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsLongShotMode:Z

    if-eqz v0, :cond_11

    iput-boolean v1, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsLongShotMode:Z

    invoke-virtual {p0, v1}, Lcom/android/camera/camera_adapter/CameraLC;->applyMultiShutParameters(Z)V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraLC;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_11
    return-void
.end method

.method protected isLongShotMode()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsLongShotMode:Z

    return v0
.end method

.method protected isSupportSceneMode()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected isZeroShotMode()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsZSLMode:Z

    return v0
.end method

.method protected needAutoFocusBeforeCapture()Z
    .registers 3

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraLC;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->isNeedFlashOn()Z

    move-result v1

    if-nez v1, :cond_1f

    :cond_17
    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_1e
    return v1

    :cond_1f
    const/4 v1, 0x1

    goto :goto_1e
.end method

.method protected needSetupPreview()Z
    .registers 2

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraLC;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->isPreviewEnable()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public onSettingValueChanged(Ljava/lang/String;)V
    .registers 6

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraLC;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v1, :cond_5

    return-void

    :cond_5
    const-string/jumbo v1, "pref_qc_camera_iso_key"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraLC;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string/jumbo v2, "pref_qc_camera_iso_key"

    const v3, 0x7f0e00c2

    invoke-virtual {p0, v3}, Lcom/android/camera/camera_adapter/CameraLC;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/LCCameraProxy;->getSupportedIsoValues(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/camera_adapter/CameraLC;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_4d

    const-string/jumbo v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ISO value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/hardware/LCCameraProxy;->setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :cond_4d
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraLC;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    :goto_54
    return-void

    :cond_55
    invoke-super {p0, p1}, Lcom/android/camera/module/CameraModule;->onSettingValueChanged(Ljava/lang/String;)V

    goto :goto_54
.end method

.method protected prepareCapture()V
    .registers 2

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/CameraLC;->setPictureFlipIfNeed(Landroid/hardware/Camera$Parameters;)V

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraLC;->setTimeWatermarkIfNeed()V

    return-void
.end method

.method protected setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .registers 5

    sget-object v1, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    invoke-virtual {v1, p1}, Lcom/android/camera/hardware/LCCameraProxy;->getSupportedAutoexposure(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    sget-object v1, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/hardware/LCCameraProxy;->setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method protected updateCameraParametersPreference()V
    .registers 1

    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->updateCameraParametersPreference()V

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraLC;->lcUpdateCameraParametersPreference()V

    return-void
.end method
