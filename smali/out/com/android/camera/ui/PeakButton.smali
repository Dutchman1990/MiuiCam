.class public Lcom/android/camera/ui/PeakButton;
.super Lcom/android/camera/ui/V6TopTextView;
.source "PeakButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6TopTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public couldBeVisible()Z
    .registers 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedPeakingMF()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_11
    :goto_11
    return v0

    :cond_12
    const-string/jumbo v1, "pref_camera_manual_mode_key"

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v2, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_11
.end method

.method protected notifyClickToDispatcher()V
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/ui/PeakButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v1, :cond_6

    return-void

    :cond_6
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {p0}, Lcom/android/camera/ui/PeakButton;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1d

    const-string/jumbo v0, "pref_camera_peak_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    :cond_1d
    invoke-virtual {v1, v0}, Lcom/android/camera/effect/EffectController;->setDrawPeaking(Z)V

    invoke-virtual {p0}, Lcom/android/camera/ui/PeakButton;->reloadPreference()V

    return-void
.end method

.method public onCameraOpen()V
    .registers 4

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedPeakingMF()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v1, v0, :cond_28

    :cond_1f
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PeakButton;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/camera/ui/PeakButton;->notifyClickToDispatcher()V

    return-void

    :cond_28
    iget-object v0, p0, Lcom/android/camera/ui/PeakButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/PeakButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_3b

    iget-object v0, p0, Lcom/android/camera/ui/PeakButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0, v2}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    :cond_3b
    invoke-virtual {p0}, Lcom/android/camera/ui/PeakButton;->updateTitle()V

    invoke-virtual {p0}, Lcom/android/camera/ui/PeakButton;->updateVisible()V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    invoke-super {p0}, Lcom/android/camera/ui/V6TopTextView;->onFinishInflate()V

    new-instance v0, Lcom/android/camera/preferences/PreferenceInflater;

    iget-object v1, p0, Lcom/android/camera/ui/PeakButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;-><init>(Landroid/content/Context;)V

    const v1, 0x7f060007

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;->inflate(I)Lcom/android/camera/preferences/CameraPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/preferences/IconListPreference;

    iput-object v1, p0, Lcom/android/camera/ui/PeakButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-static {}, Lcom/android/camera/Device;->isSupportedPeakingMF()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_2b

    :cond_25
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/PeakButton;->setVisibility(I)V

    return-void

    :cond_2b
    invoke-virtual {p0}, Lcom/android/camera/ui/PeakButton;->updateTitle()V

    return-void
.end method

.method public onPause()V
    .registers 3

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectController;->setDrawPeaking(Z)V

    return-void
.end method

.method public updateVisible()V
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/PeakButton;->couldBeVisible()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/ui/PeakButton;->getVisibility()I

    move-result v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    :goto_c
    if-eq v0, v2, :cond_13

    if-eqz v0, :cond_19

    :goto_10
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/PeakButton;->setVisibility(I)V

    :cond_13
    invoke-virtual {p0}, Lcom/android/camera/ui/PeakButton;->notifyClickToDispatcher()V

    return-void

    :cond_17
    move v2, v1

    goto :goto_c

    :cond_19
    const/16 v1, 0x8

    goto :goto_10
.end method
