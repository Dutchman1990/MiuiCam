.class public Lcom/android/camera/ui/V6SettingPage;
.super Landroid/widget/RelativeLayout;
.source "V6SettingPage.java"

# interfaces
.implements Lcom/android/camera/ui/MessageDispacher;
.implements Lcom/android/camera/ui/V6FunctionUI;
.implements Lcom/android/camera/ui/Rotatable;
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private mDefaultColumnCount:I

.field private mDismissButton:Lcom/android/camera/ui/SettingDismissButton;

.field private mDismissing:Z

.field private mEnabled:Z

.field private mFadeIn:Landroid/view/animation/Animation;

.field private mFadeOut:Landroid/view/animation/Animation;

.field private mIndicatorWidth:I

.field private mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field private mModeView:Lcom/android/camera/ui/ModeView;

.field public mOrientation:I

.field private mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

.field public mSettingButton:Lcom/android/camera/ui/V6SettingButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private filterUnsupportedOptions(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/ListPreference;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/preferences/PreferenceGroup;",
            "Lcom/android/camera/preferences/ListPreference;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x1

    if-eqz p3, :cond_9

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_11

    :cond_9
    invoke-virtual {p2}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/V6SettingPage;->removePreference(Lcom/android/camera/preferences/PreferenceGroup;Ljava/lang/String;)Z

    return-void

    :cond_11
    invoke-virtual {p2, p3}, Lcom/android/camera/preferences/ListPreference;->filterUnsupported(Ljava/util/List;)V

    invoke-virtual {p2}, Lcom/android/camera/preferences/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-gt v0, v1, :cond_23

    invoke-virtual {p2}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/V6SettingPage;->removePreference(Lcom/android/camera/preferences/PreferenceGroup;Ljava/lang/String;)Z

    return-void

    :cond_23
    invoke-direct {p0, p2}, Lcom/android/camera/ui/V6SettingPage;->resetIfInvalid(Lcom/android/camera/preferences/ListPreference;)V

    return-void
.end method

.method private initAnimation()V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mContext:Landroid/content/Context;

    const v1, 0x7f05000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mFadeIn:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mContext:Landroid/content/Context;

    const v1, 0x7f05000e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mFadeOut:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private initPreference()V
    .registers 12

    invoke-static {}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result v1

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isDualModule()Z

    move-result v9

    if-eqz v9, :cond_a2

    iget-object v9, p0, Lcom/android/camera/ui/V6SettingPage;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->getCharacteristics(I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    new-instance v4, Lcom/android/camera/portability/Camera2Parameters;

    invoke-direct {v4, v2}, Lcom/android/camera/portability/Camera2Parameters;-><init>(Landroid/hardware/camera2/CameraCharacteristics;)V

    :goto_19
    iget-object v9, p0, Lcom/android/camera/ui/V6SettingPage;->mContext:Landroid/content/Context;

    check-cast v9, Lcom/android/camera/ActivityBase;

    invoke-virtual {v9}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/ui/UIController;->getPreferenceGroup()Lcom/android/camera/preferences/PreferenceGroup;

    move-result-object v9

    iput-object v9, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    iget-object v9, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    const-string/jumbo v10, "pref_video_quality_key"

    invoke-virtual {v9, v10}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v7

    iget-object v9, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    const-string/jumbo v10, "pref_video_time_lapse_frame_interval_key"

    invoke-virtual {v9, v10}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v6

    iget-object v9, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    const-string/jumbo v10, "pref_camera_whitebalance_key"

    invoke-virtual {v9, v10}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    const-string/jumbo v10, "pref_camera_scenemode_key"

    invoke-virtual {v9, v10}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v5

    iget-object v9, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    const-string/jumbo v10, "pref_camera_coloreffect_key"

    invoke-virtual {v9, v10}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v3

    iget-object v9, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    const-string/jumbo v10, "pref_camera_focus_mode_key"

    invoke-virtual {v9, v10}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v0

    if-eqz v7, :cond_68

    iget-object v9, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getSupportedVideoQuality(I)Ljava/util/ArrayList;

    move-result-object v10

    invoke-direct {p0, v9, v7, v10}, Lcom/android/camera/ui/V6SettingPage;->filterUnsupportedOptions(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/ListPreference;Ljava/util/List;)V

    :cond_68
    if-eqz v8, :cond_77

    iget-object v9, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedWhiteBalance(Lcom/android/camera/portability/ICameraParameters;)Ljava/util/List;

    move-result-object v10

    invoke-direct {p0, v9, v8, v10}, Lcom/android/camera/ui/V6SettingPage;->filterUnsupportedOptions(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/ListPreference;Ljava/util/List;)V

    :cond_77
    if-eqz v5, :cond_82

    iget-object v9, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    invoke-interface {v4}, Lcom/android/camera/portability/ICameraParameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v10

    invoke-direct {p0, v9, v5, v10}, Lcom/android/camera/ui/V6SettingPage;->filterUnsupportedOptions(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/ListPreference;Ljava/util/List;)V

    :cond_82
    if-eqz v3, :cond_8d

    iget-object v9, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    invoke-interface {v4}, Lcom/android/camera/portability/ICameraParameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v10

    invoke-direct {p0, v9, v3, v10}, Lcom/android/camera/ui/V6SettingPage;->filterUnsupportedOptions(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/ListPreference;Ljava/util/List;)V

    :cond_8d
    if-eqz v0, :cond_9c

    iget-object v9, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedFocusModes(Lcom/android/camera/portability/ICameraParameters;)Ljava/util/List;

    move-result-object v10

    invoke-direct {p0, v9, v0, v10}, Lcom/android/camera/ui/V6SettingPage;->filterUnsupportedOptions(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/ListPreference;Ljava/util/List;)V

    :cond_9c
    if-eqz v6, :cond_a1

    invoke-direct {p0, v6}, Lcom/android/camera/ui/V6SettingPage;->resetIfInvalid(Lcom/android/camera/preferences/ListPreference;)V

    :cond_a1
    return-void

    :cond_a2
    new-instance v4, Lcom/android/camera/portability/Camera1Parameters;

    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v9

    invoke-direct {v4, v9}, Lcom/android/camera/portability/Camera1Parameters;-><init>(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_19
.end method

.method private isDismissing()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/ui/V6SettingPage;->mDismissing:Z

    return v0
.end method

.method private removePreference(Lcom/android/camera/preferences/PreferenceGroup;Ljava/lang/String;)Z
    .registers 8

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/camera/preferences/PreferenceGroup;->size()I

    move-result v2

    :goto_6
    if-ge v1, v2, :cond_31

    invoke-virtual {p1, v1}, Lcom/android/camera/preferences/PreferenceGroup;->get(I)Lcom/android/camera/preferences/CameraPreference;

    move-result-object v0

    instance-of v3, v0, Lcom/android/camera/preferences/PreferenceGroup;

    if-eqz v3, :cond_1a

    move-object v3, v0

    check-cast v3, Lcom/android/camera/preferences/PreferenceGroup;

    invoke-direct {p0, v3, p2}, Lcom/android/camera/ui/V6SettingPage;->removePreference(Lcom/android/camera/preferences/PreferenceGroup;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    return v4

    :cond_1a
    instance-of v3, v0, Lcom/android/camera/preferences/ListPreference;

    if-eqz v3, :cond_2e

    check-cast v0, Lcom/android/camera/preferences/ListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-virtual {p1, v1}, Lcom/android/camera/preferences/PreferenceGroup;->removePreference(I)V

    return v4

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_31
    const/4 v3, 0x0

    return v3
.end method

.method private resetIfInvalid(Lcom/android/camera/preferences/ListPreference;)V
    .registers 5

    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/preferences/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_f

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/camera/preferences/ListPreference;->setValueIndex(I)V

    :cond_f
    return-void
.end method

.method private setDismissing(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/camera/ui/V6SettingPage;->mDismissing:Z

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingPage;->clearAnimation()V

    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingPage;->startAnimation(Landroid/view/animation/Animation;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingPage;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/ui/V6SettingPage;->setDismissing(Z)V

    return-void
.end method

.method public dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 12

    const/4 v4, 0x0

    const/16 v0, 0x9

    if-ne p1, v0, :cond_12

    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x0

    const v2, 0x7f090091

    const/4 v3, 0x3

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :goto_10
    const/4 v0, 0x1

    return v0

    :cond_12
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const v2, 0x7f09008e

    const/4 v3, 0x2

    move v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_10
.end method

.method public enableControls(Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6SettingPage;->setEnabled(Z)V

    iput-boolean p1, p0, Lcom/android/camera/ui/V6SettingPage;->mEnabled:Z

    return-void
.end method

.method public getCurrentPopup()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mModeView:Lcom/android/camera/ui/ModeView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModeView;->getCurrentPopup()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItemKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mModeView:Lcom/android/camera/ui/ModeView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModeView;->getSelectedItemKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initIndicators()V
    .registers 5

    iget-object v1, p0, Lcom/android/camera/ui/V6SettingPage;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/Module;->getSupportedSettingKeys()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_15

    :cond_14
    return-void

    :cond_15
    iget-object v1, p0, Lcom/android/camera/ui/V6SettingPage;->mModeView:Lcom/android/camera/ui/ModeView;

    iget-object v2, p0, Lcom/android/camera/ui/V6SettingPage;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v0, p0, v3}, Lcom/android/camera/ui/ModeView;->initializeSettingScreen(Lcom/android/camera/preferences/PreferenceGroup;Ljava/util/List;Lcom/android/camera/ui/MessageDispacher;I)V

    return-void
.end method

.method public isItemSelected()Z
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mModeView:Lcom/android/camera/ui/ModeView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModeView;->isItemSelected()Z

    move-result v0

    return v0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 8

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mFadeOut:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_19

    invoke-direct {p0, v1}, Lcom/android/camera/ui/V6SettingPage;->setDismissing(Z)V

    const v2, 0x7f09000c

    :cond_d
    :goto_d
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v3, 0x3

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_18
    return-void

    :cond_19
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mFadeIn:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_d

    const v2, 0x7f09000b

    goto :goto_d
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onCameraOpen()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingPage;->reload()V

    return-void
.end method

.method public onCreate()V
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mModeView:Lcom/android/camera/ui/ModeView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModeView;->resetSelectedFlag()V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x6

    :goto_a
    iput v0, p0, Lcom/android/camera/ui/V6SettingPage;->mDefaultColumnCount:I

    const v0, 0x7f09008f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ModeView;

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mModeView:Lcom/android/camera/ui/ModeView;

    const v0, 0x7f090090

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6SettingButton;

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mSettingButton:Lcom/android/camera/ui/V6SettingButton;

    const v0, 0x7f090091

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SettingDismissButton;

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mDismissButton:Lcom/android/camera/ui/SettingDismissButton;

    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6SettingPage;->mIndicatorWidth:I

    invoke-direct {p0}, Lcom/android/camera/ui/V6SettingPage;->initAnimation()V

    return-void

    :cond_40
    const/4 v0, 0x3

    goto :goto_a
.end method

.method public onPause()V
    .registers 1

    return-void
.end method

.method public onResume()V
    .registers 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingPage;->setVisibility(I)V

    return-void
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mModeView:Lcom/android/camera/ui/ModeView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ModeView;->overrideSettings([Ljava/lang/String;)V

    return-void
.end method

.method public reload()V
    .registers 4

    const-string/jumbo v0, "Camera5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reload getid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingPage;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingPage;->removePopup()V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingPage;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/camera/ui/V6SettingPage;->initPreference()V

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingPage;->updatePreference()V

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingPage;->initIndicators()V

    return-void
.end method

.method public reloadPreferences()V
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mModeView:Lcom/android/camera/ui/ModeView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModeView;->reloadPreferences()V

    return-void
.end method

.method public removePopup()V
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mModeView:Lcom/android/camera/ui/ModeView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModeView;->removePopup()V

    return-void
.end method

.method public resetSettings()Z
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mModeView:Lcom/android/camera/ui/ModeView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModeView;->resetSettings()Z

    move-result v0

    return v0
.end method

.method public setEnabled(Z)V
    .registers 3

    invoke-direct {p0}, Lcom/android/camera/ui/V6SettingPage;->isDismissing()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mSettingButton:Lcom/android/camera/ui/V6SettingButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6SettingButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mModeView:Lcom/android/camera/ui/ModeView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ModeView;->setEnabled(Z)V

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .registers 3

    iput-object p1, p0, Lcom/android/camera/ui/V6SettingPage;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mSettingButton:Lcom/android/camera/ui/V6SettingButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6SettingButton;->setMessageDispatcher(Lcom/android/camera/ui/MessageDispacher;)V

    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mDismissButton:Lcom/android/camera/ui/SettingDismissButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/SettingDismissButton;->setMessageDispatcher(Lcom/android/camera/ui/MessageDispacher;)V

    return-void
.end method

.method public setOrientation(IZ)V
    .registers 4

    iput p1, p0, Lcom/android/camera/ui/V6SettingPage;->mOrientation:I

    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mModeView:Lcom/android/camera/ui/ModeView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/ModeView;->setOrientation(IZ)V

    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mSettingButton:Lcom/android/camera/ui/V6SettingButton;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/V6SettingButton;->setOrientation(IZ)V

    return-void
.end method

.method public setVisibility(I)V
    .registers 5

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const-string/jumbo v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "V6SettingPage setVisibility ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public show()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingPage;->clearAnimation()V

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingPage;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingPage;->reloadPreferences()V

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingPage;->enableControls(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingPage;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public updatePreference()V
    .registers 1

    return-void
.end method
