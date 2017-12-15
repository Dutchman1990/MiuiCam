.class public Lcom/android/camera/ui/BottomControlPanel;
.super Lcom/android/camera/ui/V6RelativeLayout;
.source "BottomControlPanel.java"


# instance fields
.field private mBackground:Landroid/view/View;

.field private mControl:Landroid/widget/RelativeLayout;

.field private mControlVisible:Z

.field public mIntentControlPanel:Lcom/android/camera/ui/CaptureControlPanel;

.field private mLowerControlGroup:Landroid/widget/RelativeLayout;

.field public mLowerPanel:Lcom/android/camera/ui/BottomControlLowerPanel;

.field public mUpperPanel:Lcom/android/camera/ui/BottomControlUpperPanel;


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/BottomControlPanel;)Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mControl:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/BottomControlPanel;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mControlVisible:Z

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public animateIn(Ljava/lang/Runnable;)V
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mControl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mControlVisible:Z

    if-eqz v0, :cond_e

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mControl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mControl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isPanoramaModule()Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewFrame;->isFullScreen()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomControlPanel;->setBackgroundVisible(Z)V

    :cond_34
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mControl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

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

    iput-boolean v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mControlVisible:Z

    goto :goto_d
.end method

.method public animateOut(Ljava/lang/Runnable;)V
    .registers 6

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/ui/BottomControlPanel;->mControlVisible:Z

    iget-object v1, p0, Lcom/android/camera/ui/BottomControlPanel;->mControl:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_35

    new-instance v0, Lcom/android/camera/ui/BottomControlPanel$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ui/BottomControlPanel$1;-><init>(Lcom/android/camera/ui/BottomControlPanel;Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/camera/ui/BottomControlPanel;->mControl:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_35
    return-void
.end method

.method public getLowerGroup()Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mLowerControlGroup:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getReviewCanceledView()Lcom/android/camera/ui/V6BottomAnimationImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mIntentControlPanel:Lcom/android/camera/ui/CaptureControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/CaptureControlPanel;->getReviewCanceledView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    return-object v0
.end method

.method public getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mIntentControlPanel:Lcom/android/camera/ui/CaptureControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/CaptureControlPanel;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    return-object v0
.end method

.method public onCameraOpen()V
    .registers 3

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onCameraOpen()V

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mControl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewFrame;->isFullScreen()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomControlPanel;->setBackgroundVisible(Z)V

    invoke-virtual {p0}, Lcom/android/camera/ui/BottomControlPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, 0x1

    :goto_23
    iput-boolean v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mControlVisible:Z

    return-void

    :cond_26
    move v0, v1

    goto :goto_23
.end method

.method protected onFinishInflate()V
    .registers 3

    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onFinishInflate()V

    const v0, 0x7f09001b

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/BottomControlUpperPanel;

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mUpperPanel:Lcom/android/camera/ui/BottomControlUpperPanel;

    const v0, 0x7f09000d

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/BottomControlLowerPanel;

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mLowerPanel:Lcom/android/camera/ui/BottomControlLowerPanel;

    const v0, 0x7f090023

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CaptureControlPanel;

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mIntentControlPanel:Lcom/android/camera/ui/CaptureControlPanel;

    invoke-virtual {p0}, Lcom/android/camera/ui/BottomControlPanel;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090018

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mBackground:Landroid/view/View;

    const v0, 0x7f090019

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mControl:Landroid/widget/RelativeLayout;

    const v0, 0x7f09001a

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mLowerControlGroup:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public setBackgroundVisible(Z)V
    .registers 5

    const/16 v1, 0x8

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isPanoramaModule()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlPanel;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_e
    return-void

    :cond_f
    const-string/jumbo v2, "pref_camera_stereo_mode_key"

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2a

    const-string/jumbo v2, "pref_camera_mono_mode_key"

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2a

    const-string/jumbo v2, "pref_camera_raw_mode_key"

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    :cond_2a
    iget-object v1, p0, Lcom/android/camera/ui/BottomControlPanel;->mBackground:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/ui/BottomControlPanel;->mBackground:Landroid/view/View;

    if-eqz p1, :cond_3a

    const v0, 0x7f0c0005

    :goto_36
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_e

    :cond_3a
    const v0, 0x7f0c0003

    goto :goto_36

    :cond_3e
    iget-object v2, p0, Lcom/android/camera/ui/BottomControlPanel;->mBackground:Landroid/view/View;

    if-eqz p1, :cond_46

    :goto_42
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_e

    :cond_46
    move v0, v1

    goto :goto_42
.end method
