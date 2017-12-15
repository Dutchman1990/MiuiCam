.class public Lcom/android/camera/ui/TopControlPanel;
.super Lcom/android/camera/ui/V6RelativeLayout;
.source "TopControlPanel.java"

# interfaces
.implements Lcom/android/camera/ui/MessageDispacher;


# instance fields
.field public mBeautyButton:Lcom/android/camera/ui/SkinBeautyButton;

.field private mControlVisible:Z

.field public mFlashButton:Lcom/android/camera/ui/FlashButton;

.field public mHdrButton:Lcom/android/camera/ui/HdrButton;

.field private mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field public mPeakButton:Lcom/android/camera/ui/PeakButton;


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/TopControlPanel;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/ui/TopControlPanel;->mControlVisible:Z

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private hideSubViewExcept(Landroid/view/View;Z)V
    .registers 7

    const/16 v3, 0x8

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0}, Lcom/android/camera/ui/TopControlPanel;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_25

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/TopControlPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eq v1, p1, :cond_1e

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_1e

    instance-of v2, v1, Lcom/android/camera/ui/AnimateView;

    if-eqz v2, :cond_21

    check-cast v1, Lcom/android/camera/ui/AnimateView;

    invoke-interface {v1, p2}, Lcom/android/camera/ui/AnimateView;->hide(Z)V

    :cond_1e
    :goto_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_21
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1e

    :cond_25
    return-void
.end method


# virtual methods
.method public animateIn(Ljava/lang/Runnable;)V
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/TopControlPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/camera/ui/TopControlPanel;->mControlVisible:Z

    if-eqz v0, :cond_c

    :goto_b
    return-void

    :cond_c
    invoke-virtual {p0}, Lcom/android/camera/ui/TopControlPanel;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/TopControlPanel;->setVisibility(I)V

    :cond_15
    invoke-virtual {p0}, Lcom/android/camera/ui/TopControlPanel;->animate()Landroid/view/ViewPropertyAnimator;

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

    iput-boolean v0, p0, Lcom/android/camera/ui/TopControlPanel;->mControlVisible:Z

    goto :goto_b
.end method

.method public animateOut(Ljava/lang/Runnable;)V
    .registers 6

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/ui/TopControlPanel;->mControlVisible:Z

    invoke-virtual {p0}, Lcom/android/camera/ui/TopControlPanel;->getVisibility()I

    move-result v1

    if-nez v1, :cond_31

    new-instance v0, Lcom/android/camera/ui/TopControlPanel$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ui/TopControlPanel$1;-><init>(Lcom/android/camera/ui/TopControlPanel;Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/camera/ui/TopControlPanel;->animate()Landroid/view/ViewPropertyAnimator;

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

    :cond_31
    return-void
.end method

.method public dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 12

    const/4 v4, 0x0

    const v3, 0x7f090067

    const v2, 0x7f090066

    const/4 v1, 0x1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1b

    move-object v0, p4

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_33

    if-ne p2, v2, :cond_2b

    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mFlashButton:Lcom/android/camera/ui/FlashButton;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/TopControlPanel;->hideSubViewExcept(Landroid/view/View;Z)V

    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_2b
    if-ne p2, v3, :cond_1b

    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mHdrButton:Lcom/android/camera/ui/HdrButton;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/TopControlPanel;->hideSubViewExcept(Landroid/view/View;Z)V

    goto :goto_1b

    :cond_33
    if-ne p2, v2, :cond_56

    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mHdrButton:Lcom/android/camera/ui/HdrButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/HdrButton;->couldBeVisible()Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mHdrButton:Lcom/android/camera/ui/HdrButton;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/HdrButton;->overrideSettings(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mHdrButton:Lcom/android/camera/ui/HdrButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/HdrButton;->show(Z)V

    goto :goto_1b

    :cond_48
    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mPeakButton:Lcom/android/camera/ui/PeakButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/PeakButton;->couldBeVisible()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mPeakButton:Lcom/android/camera/ui/PeakButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PeakButton;->show(Z)V

    goto :goto_1b

    :cond_56
    if-ne p2, v3, :cond_1b

    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mFlashButton:Lcom/android/camera/ui/FlashButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FlashButton;->show(Z)V

    goto :goto_1b

    :cond_5e
    const/4 v0, 0x0

    return v0
.end method

.method public getFlashButton()Lcom/android/camera/ui/FlashButton;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mFlashButton:Lcom/android/camera/ui/FlashButton;

    return-object v0
.end method

.method public getHdrButton()Lcom/android/camera/ui/HdrButton;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mHdrButton:Lcom/android/camera/ui/HdrButton;

    return-object v0
.end method

.method public getPeakButton()Lcom/android/camera/ui/PeakButton;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mPeakButton:Lcom/android/camera/ui/PeakButton;

    return-object v0
.end method

.method public getSkinBeautyButton()Lcom/android/camera/ui/SkinBeautyButton;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mBeautyButton:Lcom/android/camera/ui/SkinBeautyButton;

    return-object v0
.end method

.method public onCameraOpen()V
    .registers 3

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onCameraOpen()V

    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isScanQRCodeIntent()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/TopControlPanel;->setVisibility(I)V

    :goto_12
    invoke-virtual {p0}, Lcom/android/camera/ui/TopControlPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3e

    const/4 v0, 0x1

    :goto_19
    iput-boolean v0, p0, Lcom/android/camera/ui/TopControlPanel;->mControlVisible:Z

    return-void

    :cond_1c
    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_34

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isPanoramaModule()Z

    move-result v0

    if-eqz v0, :cond_3a

    :cond_34
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/TopControlPanel;->setVisibility(I)V

    goto :goto_12

    :cond_3a
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/TopControlPanel;->setVisibility(I)V

    goto :goto_12

    :cond_3e
    move v0, v1

    goto :goto_19
.end method

.method protected onFinishInflate()V
    .registers 2

    const v0, 0x7f090066

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/TopControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/FlashButton;

    iput-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mFlashButton:Lcom/android/camera/ui/FlashButton;

    const v0, 0x7f090067

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/TopControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/HdrButton;

    iput-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mHdrButton:Lcom/android/camera/ui/HdrButton;

    const v0, 0x7f090068

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/TopControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SkinBeautyButton;

    iput-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mBeautyButton:Lcom/android/camera/ui/SkinBeautyButton;

    const v0, 0x7f090069

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/TopControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PeakButton;

    iput-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mPeakButton:Lcom/android/camera/ui/PeakButton;

    return-void
.end method

.method public onShowModeSettings()V
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mFlashButton:Lcom/android/camera/ui/FlashButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/FlashButton;->dismissPopup()Z

    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mHdrButton:Lcom/android/camera/ui/HdrButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/HdrButton;->dismissPopup()Z

    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .registers 2

    invoke-super {p0, p0}, Lcom/android/camera/ui/V6RelativeLayout;->setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V

    iput-object p1, p0, Lcom/android/camera/ui/TopControlPanel;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    return-void
.end method
