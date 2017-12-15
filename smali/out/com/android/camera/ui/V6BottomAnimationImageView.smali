.class public Lcom/android/camera/ui/V6BottomAnimationImageView;
.super Lcom/android/camera/ui/RotateImageView;
.source "V6BottomAnimationImageView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/android/camera/ui/V6FunctionUI;


# instance fields
.field private mAnimationIn:Landroid/view/animation/Animation;

.field private mAnimationInCallback:Ljava/lang/Runnable;

.field private mAnimationOut:Landroid/view/animation/Animation;

.field private mAnimationOutCallback:Ljava/lang/Runnable;

.field private mDoingAnimationIn:Z

.field protected mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public animateIn(Ljava/lang/Runnable;IZ)V
    .registers 8

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationInCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationInCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v1, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationInCallback:Ljava/lang/Runnable;

    :cond_d
    iput-object p1, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationInCallback:Ljava/lang/Runnable;

    if-eqz p3, :cond_14

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/V6BottomAnimationImageView;->setVisibility(I)V

    :cond_14
    invoke-virtual {p0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2c

    invoke-virtual {p0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationIn:Landroid/view/animation/Animation;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationIn:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mDoingAnimationIn:Z

    :cond_2b
    :goto_2b
    return-void

    :cond_2c
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationInCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationInCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v1, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationInCallback:Ljava/lang/Runnable;

    goto :goto_2b
.end method

.method public animateOut(Ljava/lang/Runnable;IZ)V
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOutCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v1, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOutCallback:Ljava/lang/Runnable;

    :cond_c
    if-eqz p3, :cond_2a

    new-instance v0, Lcom/android/camera/ui/V6BottomAnimationImageView$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ui/V6BottomAnimationImageView$1;-><init>(Lcom/android/camera/ui/V6BottomAnimationImageView;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOutCallback:Ljava/lang/Runnable;

    :goto_15
    invoke-virtual {p0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2d

    invoke-virtual {p0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOut:Landroid/view/animation/Animation;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOut:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_29
    :goto_29
    return-void

    :cond_2a
    iput-object p1, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOutCallback:Ljava/lang/Runnable;

    goto :goto_15

    :cond_2d
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOutCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v1, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOutCallback:Ljava/lang/Runnable;

    goto :goto_29
.end method

.method public enableControls(Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6BottomAnimationImageView;->setEnabled(Z)V

    return-void
.end method

.method public isVisibleWithAnimationDone()Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_b

    iget-boolean v1, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mDoingAnimationIn:Z

    if-eqz v1, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationIn:Landroid/view/animation/Animation;

    if-ne v0, p1, :cond_14

    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationInCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationInCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v1, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationInCallback:Ljava/lang/Runnable;

    :cond_10
    :goto_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mDoingAnimationIn:Z

    return-void

    :cond_14
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOut:Landroid/view/animation/Animation;

    if-ne v0, p1, :cond_10

    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOutCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v1, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOutCallback:Ljava/lang/Runnable;

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
    .registers 1

    return-void
.end method

.method public onCreate()V
    .registers 1

    return-void
.end method

.method protected onFinishInflate()V
    .registers 7

    const-wide/16 v4, 0x96

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/camera/ui/RotateImageView;->onFinishInflate()V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationIn:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationIn:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOut:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOut:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public onPause()V
    .registers 1

    return-void
.end method

.method public onResume()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->clearAnimation()V

    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .registers 2

    iput-object p1, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    return-void
.end method
