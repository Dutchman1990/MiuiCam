.class public Lcom/android/camera/ui/AnimationImageView;
.super Lcom/android/camera/ui/RotateImageView;
.source "AnimationImageView.java"

# interfaces
.implements Lcom/android/camera/ui/V6FunctionUI;
.implements Lcom/android/camera/ui/AnimateView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/AnimationImageView$AnimationImageViewListener;
    }
.end annotation


# instance fields
.field private mIsEnable:Z

.field protected mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/AnimationImageView;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/ui/AnimationImageView;->mIsEnable:Z

    return v0
.end method

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

.method private initAnimation(Z)Landroid/view/animation/Animation;
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_16

    iget-object v1, p0, Lcom/android/camera/ui/AnimationImageView;->mContext:Landroid/content/Context;

    const v2, 0x7f05000f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/android/camera/ui/AnimationImageView$AnimationImageViewListener;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p0, v2}, Lcom/android/camera/ui/AnimationImageView$AnimationImageViewListener;-><init>(Lcom/android/camera/ui/AnimationImageView;Lcom/android/camera/ui/AnimationImageView;Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :goto_15
    return-object v0

    :cond_16
    iget-object v1, p0, Lcom/android/camera/ui/AnimationImageView;->mContext:Landroid/content/Context;

    const/high16 v2, 0x7f050000

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/android/camera/ui/AnimationImageView$AnimationImageViewListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p0, v2}, Lcom/android/camera/ui/AnimationImageView$AnimationImageViewListener;-><init>(Lcom/android/camera/ui/AnimationImageView;Lcom/android/camera/ui/AnimationImageView;Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_15
.end method


# virtual methods
.method public enableControls(Z)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/camera/ui/AnimationImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/camera/ui/AnimationImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_10
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/AnimationImageView;->setEnabled(Z)V

    :cond_13
    iput-boolean p1, p0, Lcom/android/camera/ui/AnimationImageView;->mIsEnable:Z

    return-void
.end method

.method public hide(Z)V
    .registers 4

    const/4 v1, 0x0

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/android/camera/ui/AnimationImageView;->clearAnimation()V

    invoke-direct {p0, v1}, Lcom/android/camera/ui/AnimationImageView;->initAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AnimationImageView;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/AnimationImageView;->setEnabled(Z)V

    :goto_10
    return-void

    :cond_11
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AnimationImageView;->setVisibility(I)V

    goto :goto_10
.end method

.method public onCameraOpen()V
    .registers 1

    return-void
.end method

.method public onCreate()V
    .registers 1

    return-void
.end method

.method public onPause()V
    .registers 1

    return-void
.end method

.method public onResume()V
    .registers 1

    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .registers 2

    iput-object p1, p0, Lcom/android/camera/ui/AnimationImageView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    return-void
.end method

.method public show(Z)V
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/AnimationImageView;->setVisibility(I)V

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Lcom/android/camera/ui/AnimationImageView;->clearAnimation()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/ui/AnimationImageView;->initAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AnimationImageView;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/AnimationImageView;->setEnabled(Z)V

    :cond_14
    return-void
.end method
