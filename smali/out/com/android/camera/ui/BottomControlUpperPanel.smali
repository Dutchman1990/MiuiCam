.class public Lcom/android/camera/ui/BottomControlUpperPanel;
.super Lcom/android/camera/ui/V6RelativeLayout;
.source "BottomControlUpperPanel.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private mAnimationIn:Landroid/view/animation/Animation;

.field private mAnimationInCallback:Ljava/lang/Runnable;

.field private mAnimationOut:Landroid/view/animation/Animation;

.field private mAnimationOutCallback:Ljava/lang/Runnable;

.field public mCameraPicker:Lcom/android/camera/ui/V6CameraPicker;

.field private mControlVisible:Z

.field public mEffectButton:Lcom/android/camera/ui/EffectButton;

.field public mModeButton:Lcom/android/camera/ui/ModeButton;

.field public mSkinBeautyButton:Lcom/android/camera/ui/SkinBeautyButton;

.field public mVideoCaptureButton:Lcom/android/camera/ui/V6VideoCaptureButton;


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/BottomControlUpperPanel;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mControlVisible:Z

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public animateIn(Ljava/lang/Runnable;)V
    .registers 3

    const/16 v0, 0xc8

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ui/BottomControlUpperPanel;->animateIn(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public animateIn(Ljava/lang/Runnable;I)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/ui/BottomControlUpperPanel;->animateIn(Ljava/lang/Runnable;IZ)V

    return-void
.end method

.method public animateIn(Ljava/lang/Runnable;IZ)V
    .registers 9

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string/jumbo v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "V6TopControl animateIn getVisibility()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/BottomControlUpperPanel;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationInCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationInCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v3, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationInCallback:Ljava/lang/Runnable;

    :cond_2b
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomControlUpperPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_36

    iget-boolean v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mControlVisible:Z

    if-eqz v0, :cond_36

    :goto_35
    return-void

    :cond_36
    iput-object p1, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationInCallback:Ljava/lang/Runnable;

    if-eqz p3, :cond_3d

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/BottomControlUpperPanel;->setVisibility(I)V

    :cond_3d
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomControlUpperPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_55

    invoke-virtual {p0}, Lcom/android/camera/ui/BottomControlUpperPanel;->clearAnimation()V

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationIn:Landroid/view/animation/Animation;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationIn:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomControlUpperPanel;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_51
    :goto_51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mControlVisible:Z

    goto :goto_35

    :cond_55
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationInCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationInCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v3, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationInCallback:Ljava/lang/Runnable;

    goto :goto_51
.end method

.method public animateOut(Ljava/lang/Runnable;)V
    .registers 3

    const/16 v0, 0xc8

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ui/BottomControlUpperPanel;->animateOut(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public animateOut(Ljava/lang/Runnable;I)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/ui/BottomControlUpperPanel;->animateOut(Ljava/lang/Runnable;IZ)V

    return-void
.end method

.method public animateOut(Ljava/lang/Runnable;IZ)V
    .registers 9

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string/jumbo v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "V6TopControl animateOut getVisibility()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/BottomControlUpperPanel;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mControlVisible:Z

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationOutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationOutCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v3, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationOutCallback:Ljava/lang/Runnable;

    :cond_2d
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomControlUpperPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_50

    if-eqz p3, :cond_51

    new-instance v0, Lcom/android/camera/ui/BottomControlUpperPanel$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ui/BottomControlUpperPanel$1;-><init>(Lcom/android/camera/ui/BottomControlUpperPanel;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationOutCallback:Ljava/lang/Runnable;

    :goto_3c
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomControlUpperPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_54

    invoke-virtual {p0}, Lcom/android/camera/ui/BottomControlUpperPanel;->clearAnimation()V

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationOut:Landroid/view/animation/Animation;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationOut:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomControlUpperPanel;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_50
    :goto_50
    return-void

    :cond_51
    iput-object p1, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationOutCallback:Ljava/lang/Runnable;

    goto :goto_3c

    :cond_54
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationOutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationOutCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v3, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationOutCallback:Ljava/lang/Runnable;

    goto :goto_50
.end method

.method public getEffectButton()Lcom/android/camera/ui/EffectButton;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mEffectButton:Lcom/android/camera/ui/EffectButton;

    return-object v0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationIn:Landroid/view/animation/Animation;

    if-ne v0, p1, :cond_11

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationInCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationInCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v1, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationInCallback:Ljava/lang/Runnable;

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationOut:Landroid/view/animation/Animation;

    if-ne v0, p1, :cond_10

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationOutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationOutCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v1, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationOutCallback:Ljava/lang/Runnable;

    goto :goto_10
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
    .registers 3

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onCameraOpen()V

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isScanQRCodeIntent()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomControlUpperPanel;->setVisibility(I)V

    :goto_12
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomControlUpperPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3e

    const/4 v0, 0x1

    :goto_19
    iput-boolean v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mControlVisible:Z

    return-void

    :cond_1c
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mContext:Landroid/content/Context;

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

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomControlUpperPanel;->setVisibility(I)V

    goto :goto_12

    :cond_3a
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/BottomControlUpperPanel;->setVisibility(I)V

    goto :goto_12

    :cond_3e
    move v0, v1

    goto :goto_19
.end method

.method protected onFinishInflate()V
    .registers 7

    const-wide/16 v4, 0xc8

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onFinishInflate()V

    const v0, 0x7f09001e

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomControlUpperPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6CameraPicker;

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mCameraPicker:Lcom/android/camera/ui/V6CameraPicker;

    const v0, 0x7f090068

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomControlUpperPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SkinBeautyButton;

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mSkinBeautyButton:Lcom/android/camera/ui/SkinBeautyButton;

    const v0, 0x7f09001d

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomControlUpperPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ModeButton;

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mModeButton:Lcom/android/camera/ui/ModeButton;

    const v0, 0x7f09001c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomControlUpperPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/EffectButton;

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mEffectButton:Lcom/android/camera/ui/EffectButton;

    const v0, 0x7f090016

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomControlUpperPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6VideoCaptureButton;

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mVideoCaptureButton:Lcom/android/camera/ui/V6VideoCaptureButton;

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationIn:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationIn:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationOut:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationOut:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method
