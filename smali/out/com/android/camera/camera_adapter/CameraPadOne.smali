.class public Lcom/android/camera/camera_adapter/CameraPadOne;
.super Lcom/android/camera/module/CameraModule;
.source "CameraPadOne.java"


# instance fields
.field private final KEY_AUTO_ROTATE:Ljava/lang/String;

.field private final KEY_FLIP:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;-><init>()V

    const-string/jumbo v0, "Camera"

    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraPadOne;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "jpeg-auto-rotate"

    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraPadOne;->KEY_AUTO_ROTATE:Ljava/lang/String;

    const-string/jumbo v0, "jpeg-flip"

    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraPadOne;->KEY_FLIP:Ljava/lang/String;

    return-void
.end method

.method public static getLayoutModeKeys(Lcom/android/camera/Camera;ZZ)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/Camera;",
            "ZZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_e

    const-string/jumbo v1, "pref_camera_face_beauty_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_d
    return-object v0

    :cond_e
    const-string/jumbo v1, "pref_camera_face_beauty_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d
.end method

.method private updateCameraParametersPreference(Landroid/hardware/Camera$Parameters;)V
    .registers 7

    const-string/jumbo v2, "jpeg-auto-rotate"

    const-string/jumbo v3, "true"

    invoke-virtual {p1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->hasEffect()Z

    move-result v2

    if-eqz v2, :cond_ef

    invoke-static {}, Lcom/android/camera/Device;->isEffectWatermarkFilted()Z

    move-result v2

    :goto_17
    if-nez v2, :cond_f2

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraPadOne;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isWaterMarkOpen(Landroid/content/SharedPreferences;)Z

    move-result v2

    if-eqz v2, :cond_f2

    sget-object v2, Lcom/android/camera/camera_adapter/CameraPadOne;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    const-string/jumbo v3, "on"

    invoke-virtual {v2, p1, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->setTimeWatermark(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :goto_29
    const-string/jumbo v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SetTimeWatermark ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/camera/camera_adapter/CameraPadOne;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    invoke-virtual {v4, p1}, Lcom/android/camera/hardware/CameraHardwareProxy;->getTimeWatermark(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraPadOne;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string/jumbo v3, "pref_camera_face_beauty_key"

    const v4, 0x7f0e0173

    invoke-virtual {p0, v4}, Lcom/android/camera/camera_adapter/CameraPadOne;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/camera/camera_adapter/CameraPadOne;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    invoke-virtual {v2, p1, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->setStillBeautify(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    const-string/jumbo v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SetStillBeautify ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraPadOne;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string/jumbo v3, "pref_camera_show_gender_age_key"

    const v4, 0x7f0e0154

    invoke-virtual {p0, v4}, Lcom/android/camera/camera_adapter/CameraPadOne;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraPadOne;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/FaceView;->setShowGenderAndAge(Ljava/lang/String;)V

    const-string/jumbo v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SetShowGenderAndAge ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/camera/camera_adapter/CameraPadOne;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    const-string/jumbo v3, "on"

    invoke-virtual {v2, p1, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->setMultiFaceBeautify(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    const-string/jumbo v2, "Camera"

    const-string/jumbo v3, "SetMultiFaceBeautify =on"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraPadOne;->isFrontMirror()Z

    move-result v2

    if-eqz v2, :cond_fc

    const-string/jumbo v2, "jpeg-flip"

    const-string/jumbo v3, "true"

    invoke-virtual {p1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_cd
    const-string/jumbo v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Set JPEG horizontal flip = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "jpeg-flip"

    invoke-virtual {p1, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_ef
    const/4 v2, 0x0

    goto/16 :goto_17

    :cond_f2
    sget-object v2, Lcom/android/camera/camera_adapter/CameraPadOne;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    const-string/jumbo v3, "off"

    invoke-virtual {v2, p1, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->setTimeWatermark(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_fc
    const-string/jumbo v2, "jpeg-flip"

    const-string/jumbo v3, "false"

    invoke-virtual {p1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_cd
.end method


# virtual methods
.method protected isZeroShotMode()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected updateCameraParametersPreference()V
    .registers 2

    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->updateCameraParametersPreference()V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraPadOne;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/CameraPadOne;->updateCameraParametersPreference(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method
