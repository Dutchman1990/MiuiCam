.class public Lcom/android/camera/ui/V6TopTextView;
.super Landroid/widget/TextView;
.source "V6TopTextView.java"

# interfaces
.implements Lcom/android/camera/ui/MessageDispacher;
.implements Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;
.implements Lcom/android/camera/ui/V6FunctionUI;
.implements Lcom/android/camera/ui/AnimateView;


# instance fields
.field protected mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field protected mOverrideValue:Ljava/lang/String;

.field protected mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

.field protected mPreference:Lcom/android/camera/preferences/IconListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private doTapButton()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->isOverridden()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_50

    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4c

    :cond_2b
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/V6TopTextView;->setPressed(Z)V

    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->showPopup()V

    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/android/camera/ui/V6PreviewPage;->simplifyPopup(ZZ)V

    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0, v3}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    :goto_4b
    return-void

    :cond_4c
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->dismissPopup()Z

    goto :goto_4b

    :cond_50
    invoke-direct {p0}, Lcom/android/camera/ui/V6TopTextView;->toggle()V

    goto :goto_4b
.end method

.method private getKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_8

    const-string/jumbo v0, ""

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method private getPreferenceSize()I
    .registers 3

    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_a

    array-length v1, v0

    :goto_9
    return v1

    :cond_a
    const/4 v1, 0x0

    goto :goto_9
.end method

.method private initAnimation(Z)Landroid/view/animation/Animation;
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mContext:Landroid/content/Context;

    const v2, 0x7f05000f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mContext:Landroid/content/Context;

    const/high16 v2, 0x7f050000

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/android/camera/ui/SimpleAnimationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/ui/SimpleAnimationListener;-><init>(Landroid/view/View;Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_c
.end method

.method private toggle()V
    .registers 4

    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v2, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    invoke-direct {p0}, Lcom/android/camera/ui/V6TopTextView;->getPreferenceSize()I

    move-result v1

    if-lt v0, v1, :cond_19

    const/4 v0, 0x0

    :cond_19
    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->reloadPreference()V

    :cond_21
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->notifyClickToDispatcher()V

    return-void
.end method


# virtual methods
.method public dismissPopup()Z
    .registers 5

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2e

    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6PreviewPage;->dismissPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)V

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/V6TopTextView;->notifyPopupVisibleChange(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/PopupManager;->notifyDismissPopup()V

    :cond_2e
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/V6TopTextView;->setPressed(Z)V

    return v0
.end method

.method public dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 7

    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->dismissPopup()Z

    instance-of v0, p5, Ljava/lang/Boolean;

    if-eqz v0, :cond_11

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    :goto_f
    const/4 v0, 0x1

    return v0

    :cond_11
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->notifyClickToDispatcher()V

    goto :goto_f
.end method

.method public enableControls(Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6TopTextView;->setEnabled(Z)V

    return-void
.end method

.method public hide(Z)V
    .registers 3

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->clearAnimation()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/V6TopTextView;->initAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6TopTextView;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_d
    return-void

    :cond_e
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6TopTextView;->setVisibility(I)V

    goto :goto_d
.end method

.method protected initializePopup()V
    .registers 5

    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    return-void

    :cond_16
    const-string/jumbo v1, "V6TopTextView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no need to initialize popup, key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/camera/ui/V6TopTextView;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mPreference="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mPopup="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4f
    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getTopPopupParent()Lcom/android/camera/ui/TopPopupParent;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/camera/ui/V6TopTextView;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/camera/ui/SettingPopupFactory;->createSettingPopup(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/content/Context;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    iget-object v2, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreferenceGroup()Lcom/android/camera/preferences/PreferenceGroup;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2, v1, v3, p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public isOverridden()Z
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mOverrideValue:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected notifyClickToDispatcher()V
    .registers 1

    return-void
.end method

.method protected notifyPopupVisibleChange(Z)V
    .registers 2

    return-void
.end method

.method public onCameraOpen()V
    .registers 1

    return-void
.end method

.method public onCreate()V
    .registers 1

    return-void
.end method

.method public onOtherPopupShowed(I)Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->dismissPopup()Z

    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .registers 1

    return-void
.end method

.method public onResume()V
    .registers 1

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_9

    return v4

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->isOverridden()Z

    move-result v1

    if-eqz v1, :cond_1c

    :cond_15
    const/4 v1, 0x3

    if-ne v0, v1, :cond_20

    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->dismissPopup()Z

    return v3

    :cond_1c
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/V6TopTextView;->setPressed(Z)V

    return v3

    :cond_20
    if-ne v0, v3, :cond_5e

    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_39

    :cond_2e
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/camera/ui/V6TopTextView;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    :cond_39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-static {v1, v2, p0}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-direct {p0}, Lcom/android/camera/ui/V6TopTextView;->doTapButton()V

    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-nez v1, :cond_51

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/V6TopTextView;->setPressed(Z)V

    :cond_51
    invoke-virtual {p0, v4}, Lcom/android/camera/ui/V6TopTextView;->playSoundEffect(I)V

    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    :cond_5d
    return v3

    :cond_5e
    return v3
.end method

.method public recoverIfNeeded()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->showPopup()V

    return-void
.end method

.method public reloadPreference()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->updateTitle()V

    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    :cond_c
    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .registers 2

    iput-object p1, p0, Lcom/android/camera/ui/V6TopTextView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    return-void
.end method

.method public show(Z)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6TopTextView;->setVisibility(I)V

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->clearAnimation()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/ui/V6TopTextView;->initAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6TopTextView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_11
    return-void
.end method

.method public showPopup()V
    .registers 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->initializePopup()V

    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setOrientation(IZ)V

    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewPage;->showPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6TopTextView;->notifyPopupVisibleChange(Z)V

    :cond_22
    return-void
.end method

.method protected updateTitle()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6TopTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
