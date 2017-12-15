.class public Lcom/android/camera/ui/V6RecordingTimeView;
.super Landroid/widget/TextView;
.source "V6RecordingTimeView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/android/camera/ui/V6FunctionUI;


# instance fields
.field private mAnimationIn:Landroid/view/animation/Animation;

.field private mAnimationInCallback:Ljava/lang/Runnable;

.field private mAnimationOut:Landroid/view/animation/Animation;

.field private mAnimationOutCallback:Ljava/lang/Runnable;

.field private mPause:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public animateIn(Ljava/lang/Runnable;IZ)V
    .registers 8

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationInCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationInCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v1, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationInCallback:Ljava/lang/Runnable;

    :cond_d
    iput-object p1, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationInCallback:Ljava/lang/Runnable;

    if-eqz p3, :cond_14

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/V6RecordingTimeView;->setVisibility(I)V

    :cond_14
    iget-boolean v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mPause:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_21
    invoke-virtual {p0}, Lcom/android/camera/ui/V6RecordingTimeView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_36

    invoke-virtual {p0}, Lcom/android/camera/ui/V6RecordingTimeView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationIn:Landroid/view/animation/Animation;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationIn:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RecordingTimeView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_35
    :goto_35
    return-void

    :cond_36
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationInCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationInCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v1, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationInCallback:Ljava/lang/Runnable;

    goto :goto_35
.end method

.method public animateOut(Ljava/lang/Runnable;IZ)V
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v1, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    :cond_c
    if-eqz p3, :cond_39

    new-instance v0, Lcom/android/camera/ui/V6RecordingTimeView$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ui/V6RecordingTimeView$1;-><init>(Lcom/android/camera/ui/V6RecordingTimeView;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    :goto_15
    iget-boolean v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mPause:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v1, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    :cond_24
    invoke-virtual {p0}, Lcom/android/camera/ui/V6RecordingTimeView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3c

    invoke-virtual {p0}, Lcom/android/camera/ui/V6RecordingTimeView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOut:Landroid/view/animation/Animation;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOut:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RecordingTimeView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_38
    :goto_38
    return-void

    :cond_39
    iput-object p1, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    goto :goto_15

    :cond_3c
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v1, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    goto :goto_38
.end method

.method public enableControls(Z)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationIn:Landroid/view/animation/Animation;

    if-ne v0, p1, :cond_11

    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationInCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationInCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v1, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationInCallback:Ljava/lang/Runnable;

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOut:Landroid/view/animation/Animation;

    if-ne v0, p1, :cond_10

    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v1, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

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

    const-wide/16 v4, 0xc8

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationIn:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationIn:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOut:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOut:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOut:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    return-void
.end method

.method public onPause()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mPause:Z

    return-void
.end method

.method public onResume()V
    .registers 2

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RecordingTimeView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/camera/ui/V6RecordingTimeView;->clearAnimation()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mPause:Z

    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .registers 2

    return-void
.end method
