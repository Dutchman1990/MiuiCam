.class public Lcom/android/camera/ui/StereoButton;
.super Landroid/widget/ImageView;
.source "StereoButton.java"

# interfaces
.implements Lcom/android/camera/ui/V6FunctionUI;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/ui/MessageDispacher;
.implements Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/StereoButton$AnimationType;,
        Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;
    }
.end annotation


# instance fields
.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private mAnimatorListener:Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;

.field private mExitButton:Lcom/android/camera/ui/ExitButton;

.field private mExitView:Lcom/android/camera/ui/V6ModeExitView;

.field private mIsShowing:Z

.field private mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field private mModeExitButtonCenterX:I

.field private mModeExitButtonHalfWidth:I

.field private mModeExitButtonPadding:I

.field private mPopup:Lcom/android/camera/ui/StereoPopup;

.field private mPreference:Lcom/android/camera/preferences/IconListPreference;

.field private mRotateImageAnim:Landroid/view/animation/Animation;

.field private mSlideDownAnim:Landroid/view/animation/Animation;

.field private mSlideUpAnim:Landroid/view/animation/Animation;

.field private mTransitionDrawable:Landroid/graphics/drawable/TransitionDrawable;


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/StereoButton;)Lcom/android/camera/ui/ExitButton;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mExitButton:Lcom/android/camera/ui/ExitButton;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/StereoButton;)Lcom/android/camera/ui/V6ModeExitView;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/camera/ui/StereoButton;)Lcom/android/camera/preferences/IconListPreference;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/camera/ui/StereoButton;)Landroid/graphics/drawable/TransitionDrawable;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mTransitionDrawable:Landroid/graphics/drawable/TransitionDrawable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/camera/ui/StereoButton;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/camera/ui/StereoButton;->mIsShowing:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/camera/ui/StereoButton;I)I
    .registers 2

    iput p1, p0, Lcom/android/camera/ui/StereoButton;->mModeExitButtonCenterX:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/camera/ui/StereoButton;I)I
    .registers 2

    iput p1, p0, Lcom/android/camera/ui/StereoButton;->mModeExitButtonHalfWidth:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/camera/ui/StereoButton;I)I
    .registers 2

    iput p1, p0, Lcom/android/camera/ui/StereoButton;->mModeExitButtonPadding:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/ui/StereoButton;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/ui/StereoButton;->updateActivated()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p0}, Lcom/android/camera/ui/StereoButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PopupManager;->setOnOtherPopupShowedListener(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    const v0, 0x7f05000c

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/StereoButton;->mRotateImageAnim:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mRotateImageAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v0, 0x7f050013

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/StereoButton;->mSlideUpAnim:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mSlideUpAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v0, 0x7f050012

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/StereoButton;->mSlideDownAnim:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mSlideDownAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v0, p0, Lcom/android/camera/ui/StereoButton;->mTransitionDrawable:Landroid/graphics/drawable/TransitionDrawable;

    return-void
.end method

.method private animateShow()V
    .registers 3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/StereoButton;->mIsShowing:Z

    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/StereoButton;->showPopup(Z)V

    :goto_c
    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    return-void

    :cond_18
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mRotateImageAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_c
.end method

.method private clearAllAnimation()V
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mRotateImageAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mRotateImageAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_c
    :goto_c
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1d
    return-void

    :cond_1e
    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->clearAnimation()V

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mRotateImageAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mRotateImageAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    goto :goto_c
.end method

.method private createExpandAnimator(Z)V
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimatorListener:Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;

    if-nez v0, :cond_4c

    new-instance v0, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;-><init>(Lcom/android/camera/ui/StereoButton;)V

    iput-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimatorListener:Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;

    :goto_d
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mContext:Landroid/content/Context;

    const v1, 0x7f050005

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    iput-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mAnimatorListener:Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2a
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v2, v1, v2

    iget v2, p0, Lcom/android/camera/ui/StereoButton;->mModeExitButtonHalfWidth:I

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    if-eqz p1, :cond_52

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimatorListener:Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;

    sget-object v1, Lcom/android/camera/ui/StereoButton$AnimationType;->EXPAND:Lcom/android/camera/ui/StereoButton$AnimationType;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->setAnimationType(Lcom/android/camera/ui/StereoButton$AnimationType;)V

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :goto_46
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mExitButton:Lcom/android/camera/ui/ExitButton;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/ExitButton;->setExpandedAnimation(Z)V

    return-void

    :cond_4c
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimatorListener:Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;

    invoke-virtual {v0}, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->updateParameters()V

    goto :goto_d

    :cond_52
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimatorListener:Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;

    sget-object v1, Lcom/android/camera/ui/StereoButton$AnimationType;->COLLAPSE:Lcom/android/camera/ui/StereoButton$AnimationType;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->setAnimationType(Lcom/android/camera/ui/StereoButton$AnimationType;)V

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->reverse()V

    goto :goto_46
.end method

.method private doWithPopup(ZZ)V
    .registers 4

    if-eqz p2, :cond_14

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mSlideUpAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoButton;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_9
    return-void

    :cond_a
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoButton;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoButton;->showScale(Z)V

    goto :goto_9

    :cond_14
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mSlideDownAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_9
.end method

.method private getKey()Ljava/lang/String;
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_c
    return-object v1
.end method

.method private initializePopup()V
    .registers 5

    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v1

    if-eqz v1, :cond_10

    sget-boolean v1, Lcom/android/camera/Device;->IS_B7:Z

    if-eqz v1, :cond_49

    :cond_10
    const-string/jumbo v1, "StereoButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no need to initialize popup, key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/camera/ui/StereoButton;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mPreference="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mPopup="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_49
    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    if-eqz v1, :cond_53

    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/StereoPopup;->reloadPreference()V

    return-void

    :cond_53
    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPopupParent()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/camera/ui/SettingPopupFactory;->createSettingPopup(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/content/Context;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/StereoPopup;

    iput-object v1, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    iget-object v2, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreferenceGroup()Lcom/android/camera/preferences/PreferenceGroup;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2, v1, v3, p0}, Lcom/android/camera/ui/StereoPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private reloadPreference()V
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateAperture()V

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/StereoPopup;->reloadPreference()V

    :cond_18
    return-void
.end method

.method private updateActivated()V
    .registers 2

    const-string/jumbo v0, "pref_camera_stereo_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->isPopupVisible()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_f
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoButton;->setActivated(Z)V

    :goto_13
    return-void

    :cond_14
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoButton;->setActivated(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mTransitionDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_13
.end method

.method private updateExitButton(Z)V
    .registers 6

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getExitText(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2c

    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    if-eqz p1, :cond_2d

    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/V6ModeExitView;->setExitContent(I)V

    :goto_21
    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    iget-object v2, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/ui/V6ModeExitView;->setExitButtonClickListener(Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    :cond_2c
    :goto_2c
    return-void

    :cond_2d
    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/ui/V6ModeExitView;->updateExitButton(IZ)V

    goto :goto_21

    :cond_34
    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    iget-object v2, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6ModeExitView;->isCurrentExitView(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    if-nez p1, :cond_4a

    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/ui/V6ModeExitView;->updateExitButton(IZ)V

    :cond_4a
    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v1, v3, v3}, Lcom/android/camera/ui/V6ModeExitView;->setExitButtonClickListener(Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto :goto_2c
.end method


# virtual methods
.method public dismissPopup(Z)Z
    .registers 4

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/ui/StereoButton;->mIsShowing:Z

    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->isPopupVisible()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/StereoPopup;->dismiss(Z)V

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/StereoButton;->dismissScale(Z)V

    if-nez p1, :cond_16

    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->updateVisible()V

    :cond_16
    const/4 v0, 0x1

    return v0

    :cond_18
    return v1
.end method

.method public dismissScale(Z)V
    .registers 6

    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6ModeExitView;->isExitButtonShown()Z

    move-result v1

    if-nez v1, :cond_9

    return-void

    :cond_9
    if-eqz p1, :cond_3c

    new-instance v0, Lcom/android/camera/ui/StereoButton$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/StereoButton$2;-><init>(Lcom/android/camera/ui/StereoButton;)V

    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6ModeExitView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/camera/ui/StereoButton;->createExpandAnimator(Z)V

    :goto_3b
    return-void

    :cond_3c
    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6ModeExitView;->setExitButtonVisible(I)V

    goto :goto_3b
.end method

.method public dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 12

    packed-switch p1, :pswitch_data_32

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const v2, 0x7f09007c

    const/4 v3, 0x2

    move v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_13
    invoke-direct {p0}, Lcom/android/camera/ui/StereoButton;->reloadPreference()V

    :goto_16
    const/4 v0, 0x0

    return v0

    :pswitch_18
    const-string/jumbo v0, "pref_camera_stereo_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-direct {p0}, Lcom/android/camera/ui/StereoButton;->updateActivated()V

    :cond_24
    new-instance v0, Lcom/android/camera/ui/StereoButton$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/StereoButton$1;-><init>(Lcom/android/camera/ui/StereoButton;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoButton;->post(Ljava/lang/Runnable;)Z

    goto :goto_16

    :pswitch_2d
    invoke-direct {p0}, Lcom/android/camera/ui/StereoButton;->updateActivated()V

    goto :goto_16

    nop

    :pswitch_data_32
    .packed-switch 0xb
        :pswitch_2d
        :pswitch_18
    .end packed-switch
.end method

.method public enableControls(Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/StereoButton;->setEnabled(Z)V

    return-void
.end method

.method public getPopup()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    return-object v0
.end method

.method public isPopupVisible()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/StereoPopup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 5

    const/16 v2, 0x8

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/StereoButton;->mIsShowing:Z

    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->updateVisible()V

    return-void

    :cond_16
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mRotateImageAnim:Landroid/view/animation/Animation;

    if-ne v0, p1, :cond_2c

    iget-boolean v0, p0, Lcom/android/camera/ui/StereoButton;->mIsShowing:Z

    if-eqz v0, :cond_2c

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/StereoButton;->showPopup(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    if-nez v0, :cond_2b

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/StereoButton;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/StereoButton;->showScale(Z)V

    :cond_2b
    :goto_2b
    return-void

    :cond_2c
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mSlideUpAnim:Landroid/view/animation/Animation;

    if-ne v0, p1, :cond_2b

    iget-boolean v0, p0, Lcom/android/camera/ui/StereoButton;->mIsShowing:Z

    if-eqz v0, :cond_2b

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/StereoButton;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/StereoButton;->showScale(Z)V

    goto :goto_2b
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
    .registers 5

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereo()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereoVideo()Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_15
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_1f
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/StereoButton;->setVisibility(I)V

    return-void

    :cond_23
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreferenceGroup()Lcom/android/camera/preferences/PreferenceGroup;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_stereo_mode_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/preferences/IconListPreference;

    iput-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    :cond_3e
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_46

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/StereoButton;->setVisibility(I)V

    return-void

    :cond_46
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PopupManager;->setOnOtherPopupShowedListener(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    iget-boolean v0, p0, Lcom/android/camera/ui/StereoButton;->mIsShowing:Z

    if-nez v0, :cond_6e

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->isPopupVisible()Z

    move-result v0

    if-nez v0, :cond_6b

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/StereoButton;->setVisibility(I)V

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/StereoButton;->showPopup(Z)V

    :cond_6b
    :goto_6b
    invoke-direct {p0, v2}, Lcom/android/camera/ui/StereoButton;->updateExitButton(Z)V

    :cond_6e
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/StereoPopup;->updateBackground()V

    :cond_77
    return-void

    :cond_78
    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->updateVisible()V

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/StereoButton;->dismissPopup(Z)Z

    goto :goto_6b
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_23

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/V6PreviewPage;->simplifyPopup(ZZ)V

    invoke-direct {p0}, Lcom/android/camera/ui/StereoButton;->animateShow()V

    :goto_22
    return-void

    :cond_23
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    move v0, v1

    :goto_30
    invoke-virtual {p0, v0, v2, v2}, Lcom/android/camera/ui/StereoButton;->setStereoValue(ZZZ)V

    goto :goto_22

    :cond_34
    move v0, v2

    goto :goto_30
.end method

.method public onCreate()V
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ModeExitView;->getExitButton()Lcom/android/camera/ui/ExitButton;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/StereoButton;->mExitButton:Lcom/android/camera/ui/ExitButton;

    :cond_1a
    return-void
.end method

.method public onOtherPopupShowed(I)Z
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/StereoButton;->dismissPopup(Z)Z

    move-result v0

    invoke-direct {p0}, Lcom/android/camera/ui/StereoButton;->updateActivated()V

    return v0
.end method

.method public onPause()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/ui/StereoButton;->mIsShowing:Z

    if-eqz v0, :cond_e

    sget-boolean v0, Lcom/android/camera/Device;->IS_B7:Z

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    invoke-direct {p0}, Lcom/android/camera/ui/StereoButton;->clearAllAnimation()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/StereoButton;->mIsShowing:Z

    goto :goto_e
.end method

.method public onResume()V
    .registers 1

    return-void
.end method

.method public recoverIfNeeded()V
    .registers 1

    return-void
.end method

.method public setActivated(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setActivated(Z)V

    if-nez p1, :cond_a

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mTransitionDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    :cond_a
    return-void
.end method

.method public setDeltaX(I)V
    .registers 6

    iget v2, p0, Lcom/android/camera/ui/StereoButton;->mModeExitButtonCenterX:I

    iget v3, p0, Lcom/android/camera/ui/StereoButton;->mModeExitButtonPadding:I

    sub-int/2addr v2, v3

    sub-int v0, v2, p1

    iget v2, p0, Lcom/android/camera/ui/StereoButton;->mModeExitButtonCenterX:I

    iget v3, p0, Lcom/android/camera/ui/StereoButton;->mModeExitButtonPadding:I

    add-int/2addr v2, v3

    add-int v1, v2, p1

    iget-object v2, p0, Lcom/android/camera/ui/StereoButton;->mExitButton:Lcom/android/camera/ui/ExitButton;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/ui/ExitButton;->setExpandingSize(II)V

    iget-object v2, p0, Lcom/android/camera/ui/StereoButton;->mExitButton:Lcom/android/camera/ui/ExitButton;

    invoke-virtual {v2}, Lcom/android/camera/ui/ExitButton;->postInvalidateOnAnimation()V

    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/StereoPopup;->setEnabled(Z)V

    :cond_c
    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .registers 2

    iput-object p1, p0, Lcom/android/camera/ui/StereoButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    return-void
.end method

.method public setStereoValue(ZZZ)V
    .registers 10

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_14

    const-string/jumbo v0, "StereoButton"

    const-string/jumbo v1, "null preference"

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_14
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, p1, :cond_21

    return-void

    :cond_21
    if-eqz p1, :cond_5a

    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mContext:Landroid/content/Context;

    const v2, 0x7f0e017c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->setValue(Ljava/lang/String;)V

    :goto_3e
    if-eqz p1, :cond_6a

    if-eqz p3, :cond_66

    invoke-direct {p0}, Lcom/android/camera/ui/StereoButton;->animateShow()V

    :goto_45
    invoke-direct {p0, p3}, Lcom/android/camera/ui/StereoButton;->updateExitButton(Z)V

    if-eqz p2, :cond_59

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x0

    const v2, 0x7f09007c

    const/4 v3, 0x2

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_59
    return-void

    :cond_5a
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->findSupportedDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_3e

    :cond_66
    invoke-virtual {p0, p3}, Lcom/android/camera/ui/StereoButton;->showPopup(Z)V

    goto :goto_45

    :cond_6a
    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->clearAnimation()V

    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PopupManager;->clearRecoveredPopupListenerIfNeeded(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    invoke-virtual {p0, p3}, Lcom/android/camera/ui/StereoButton;->dismissPopup(Z)Z

    goto :goto_45
.end method

.method public setVisibility(I)V
    .registers 3

    if-eqz p1, :cond_9

    iget-boolean v0, p0, Lcom/android/camera/ui/StereoButton;->mIsShowing:Z

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/android/camera/ui/StereoButton;->clearAllAnimation()V

    :cond_9
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public showPopup(Z)V
    .registers 3

    invoke-direct {p0}, Lcom/android/camera/ui/StereoButton;->initializePopup()V

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/StereoPopup;->show(Z)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/StereoButton;->doWithPopup(ZZ)V

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->onPopupChange()V

    :cond_1f
    return-void
.end method

.method public showScale(Z)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ModeExitView;->isExitButtonShown()Z

    move-result v0

    if-eqz v0, :cond_c

    iput-boolean v1, p0, Lcom/android/camera/ui/StereoButton;->mIsShowing:Z

    return-void

    :cond_c
    if-eqz p1, :cond_12

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/ui/StereoButton;->createExpandAnimator(Z)V

    :cond_12
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ModeExitView;->setExitButtonVisible(I)V

    return-void
.end method

.method public switchOffStereo(Z)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/android/camera/ui/StereoButton;->setStereoValue(ZZZ)V

    return-void
.end method

.method public updateVisible()V
    .registers 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereo()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereoVideo()Z

    move-result v0

    if-nez v0, :cond_37

    :cond_13
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v0

    if-eqz v0, :cond_37

    :cond_19
    const-string/jumbo v0, "pref_camera_stereo_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->getPopup()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->isPopupVisible()Z

    move-result v0

    if-eqz v0, :cond_67

    :cond_2e
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/StereoButton;->setActivated(Z)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoButton;->setVisibility(I)V

    :goto_36
    return-void

    :cond_37
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isNoCameraModeSelected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/Module;->isCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_19

    const-string/jumbo v0, "pref_camera_stereo_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/StereoButton;->setActivated(Z)V

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/StereoButton;->setVisibility(I)V

    goto :goto_36

    :cond_67
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/StereoButton;->setVisibility(I)V

    goto :goto_36
.end method
