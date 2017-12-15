.class public Lcom/android/camera/ui/V6SettingsStatusBar;
.super Lcom/android/camera/ui/V6RelativeLayout;
.source "V6SettingsStatusBar.java"

# interfaces
.implements Lcom/android/camera/ui/MutexView;


# instance fields
.field private mApertureTextView:Landroid/widget/TextView;

.field private mEvTextView:Landroid/widget/TextView;

.field private mMarginTop:I

.field private mMarginTopLandscape:I

.field private mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field private mOrientation:I

.field private mVisible:Z

.field private mZoomTextView:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/V6SettingsStatusBar;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mVisible:Z

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mOrientation:I

    return-void
.end method

.method private setSubViewVisible(Landroid/view/View;IZ)V
    .registers 10

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne p2, v0, :cond_a

    if-eqz p3, :cond_a

    return-void

    :cond_a
    const/16 v0, 0x8

    if-eq p2, v0, :cond_11

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->show()V

    :cond_11
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->isSubViewShown()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v1, 0x4

    const v2, 0x7f090092

    const/4 v3, 0x3

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_2a
    return-void
.end method

.method private updateEV(F)V
    .registers 11

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3d4ccccd    # 0.05f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_46

    const/4 v3, 0x0

    cmpg-float v3, p1, v3

    if-gez v3, :cond_42

    const-string/jumbo v1, "-"

    :goto_15
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v4, "%s %.1f"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v7

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mEvTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v3, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mEvTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mEvTextView:Landroid/widget/TextView;

    invoke-direct {p0, v3, v7, v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->setSubViewVisible(Landroid/view/View;IZ)V

    :goto_41
    return-void

    :cond_42
    const-string/jumbo v1, "+"

    goto :goto_15

    :cond_46
    iget-object v3, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mEvTextView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-direct {p0, v3, v4, v8}, Lcom/android/camera/ui/V6SettingsStatusBar;->setSubViewVisible(Landroid/view/View;IZ)V

    goto :goto_41
.end method

.method private updateZoom(F)V
    .registers 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v2, v2, v4

    if-lez v2, :cond_3a

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v3, "x %.1f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mZoomTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v2, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mZoomTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mZoomTextView:Landroid/widget/TextView;

    invoke-direct {p0, v2, v6, v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->setSubViewVisible(Landroid/view/View;IZ)V

    :goto_39
    return-void

    :cond_3a
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mZoomTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-direct {p0, v2, v3, v7}, Lcom/android/camera/ui/V6SettingsStatusBar;->setSubViewVisible(Landroid/view/View;IZ)V

    goto :goto_39
.end method


# virtual methods
.method public animateIn(Ljava/lang/Runnable;)V
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mVisible:Z

    if-eqz v0, :cond_c

    :goto_b
    return-void

    :cond_c
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6SettingsStatusBar;->setVisibility(I)V

    :cond_15
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mVisible:Z

    goto :goto_b
.end method

.method public animateOut(Ljava/lang/Runnable;)V
    .registers 6

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mVisible:Z

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_31

    new-instance v0, Lcom/android/camera/ui/V6SettingsStatusBar$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ui/V6SettingsStatusBar$1;-><init>(Lcom/android/camera/ui/V6SettingsStatusBar;Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_31
    return-void
.end method

.method public hide()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mVisible:Z

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->setVisibility(I)V

    return-void
.end method

.method public isSubViewShown()Z
    .registers 5

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mChildren:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    return v2

    :cond_1b
    return v3
.end method

.method public onCameraOpen()V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateStatus()V

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_b

    const/4 v0, 0x1

    :cond_b
    iput-boolean v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mVisible:Z

    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onFinishInflate()V

    const v0, 0x7f090094

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mEvTextView:Landroid/widget/TextView;

    const v0, 0x7f090095

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mZoomTextView:Landroid/widget/TextView;

    const v0, 0x7f090096

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mApertureTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mMarginTop:I

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mMarginTopLandscape:I

    return-void
.end method

.method public onResume()V
    .registers 1

    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/camera/ui/V6RelativeLayout;->setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V

    iput-object p1, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    return-void
.end method

.method public setOrientation(IZ)V
    .registers 3

    return-void
.end method

.method public show()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mVisible:Z

    return-void
.end method

.method public updateAperture()V
    .registers 7

    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereoAperture()Z

    move-result v3

    if-eqz v3, :cond_3c

    const-string/jumbo v3, "pref_camera_stereo_mode_key"

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    iget-object v3, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/android/camera/ActivityBase;

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getPreferenceGroup()Lcom/android/camera/preferences/PreferenceGroup;

    move-result-object v3

    const-string/jumbo v4, "pref_camera_stereo_key"

    invoke-virtual {v3, v4}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->getEntry()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mApertureTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v3, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mApertureTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mApertureTextView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, v1}, Lcom/android/camera/ui/V6SettingsStatusBar;->setSubViewVisible(Landroid/view/View;IZ)V

    :goto_3b
    return-void

    :cond_3c
    iget-object v3, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mApertureTextView:Landroid/widget/TextView;

    const/16 v4, 0x8

    const/4 v5, 0x1

    invoke-direct {p0, v3, v4, v5}, Lcom/android/camera/ui/V6SettingsStatusBar;->setSubViewVisible(Landroid/view/View;IZ)V

    goto :goto_3b
.end method

.method public updateEV()V
    .registers 5

    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/preferences/CameraSettingPreferences;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v3

    mul-float v0, v2, v3

    invoke-direct {p0, v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateEV(F)V

    :cond_1c
    return-void
.end method

.method public updateStatus()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateEV()V

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateZoom()V

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateAperture()V

    return-void
.end method

.method public updateStatus(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "pref_camera_zoom_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateZoom()V

    :cond_c
    :goto_c
    return-void

    :cond_d
    const-string/jumbo v0, "pref_camera_exposure_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateEV()V

    goto :goto_c

    :cond_1a
    const-string/jumbo v0, "pref_camera_stereo_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateAperture()V

    goto :goto_c
.end method

.method public updateStatus(Ljava/lang/String;F)V
    .registers 4

    const-string/jumbo v0, "pref_camera_zoom_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0, p2}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateZoom(F)V

    :cond_c
    :goto_c
    return-void

    :cond_d
    const-string/jumbo v0, "pref_camera_exposure_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0, p2}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateEV(F)V

    goto :goto_c
.end method

.method public updateZoom()V
    .registers 11

    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_5f

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v7

    invoke-static {v7}, Lcom/android/camera/CameraSettings;->readZoom(Lcom/android/camera/preferences/CameraSettingPreferences;)I

    move-result v4

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v7, 0x64

    if-le v3, v7, :cond_5f

    div-int/lit8 v3, v3, 0xa

    div-int/lit8 v6, v3, 0xa

    rem-int/lit8 v5, v3, 0xa

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "x "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mZoomTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v7, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mZoomTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mZoomTextView:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8, v1}, Lcom/android/camera/ui/V6SettingsStatusBar;->setSubViewVisible(Landroid/view/View;IZ)V

    return-void

    :cond_5f
    iget-object v7, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mZoomTextView:Landroid/widget/TextView;

    const/16 v8, 0x8

    const/4 v9, 0x1

    invoke-direct {p0, v7, v8, v9}, Lcom/android/camera/ui/V6SettingsStatusBar;->setSubViewVisible(Landroid/view/View;IZ)V

    return-void
.end method
