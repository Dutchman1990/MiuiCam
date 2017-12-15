.class public Lcom/android/camera/ui/BottomControlLowerPanel;
.super Lcom/android/camera/ui/V6RelativeLayout;
.source "BottomControlLowerPanel.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# static fields
.field private static final DURATION:I


# instance fields
.field private mControlVisible:Z

.field private mModuleAnimationCallback:Ljava/lang/Runnable;

.field public mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

.field private mModulePickerSwitchIn:Landroid/view/animation/AnimationSet;

.field public mPauseRecordingButton:Lcom/android/camera/ui/V6PauseRecordingButton;

.field public mProgressBar:Landroid/view/View;

.field public mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

.field private mShutterButtonSwitchIn:Landroid/view/animation/AnimationSet;

.field public mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

.field public mVideoCaptureButton:Lcom/android/camera/ui/V6VideoCaptureButton;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/android/camera/Device;->IS_CM_TEST:Z

    if-eqz v0, :cond_9

    const/16 v0, 0xc8

    :goto_6
    sput v0, Lcom/android/camera/ui/BottomControlLowerPanel;->DURATION:I

    return-void

    :cond_9
    const/16 v0, 0x12c

    goto :goto_6
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private clearLastAnimation()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mShutterButtonSwitchIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ShutterButton;->clearAnimation()V

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ModulePicker;->clearAnimation()V

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModuleAnimationCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModuleAnimationCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v1, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModuleAnimationCallback:Ljava/lang/Runnable;

    :cond_1e
    return-void
.end method

.method private initModulePickTransView(Z)Landroid/graphics/drawable/TransitionDrawable;
    .registers 8

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x2

    new-array v0, v2, [Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3e

    iget-object v2, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020051

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v4

    iget-object v2, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02013c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v5

    iget-object v2, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    invoke-virtual {p0}, Lcom/android/camera/ui/BottomControlLowerPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0133

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/V6ModulePicker;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_35
    new-instance v1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    return-object v1

    :cond_3e
    iget-object v2, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200f8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v4

    iget-object v2, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020034

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v5

    iget-object v2, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    invoke-virtual {p0}, Lcom/android/camera/ui/BottomControlLowerPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0134

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/V6ModulePicker;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_35
.end method

.method private initModulePickerSwitchAnimation(FFFF)V
    .registers 15

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModulePickerSwitchIn:Landroid/view/animation/AnimationSet;

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModulePickerSwitchIn:Landroid/view/animation/AnimationSet;

    sget v1, Lcom/android/camera/ui/BottomControlLowerPanel;->DURATION:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModulePickerSwitchIn:Landroid/view/animation/AnimationSet;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v9, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModulePickerSwitchIn:Landroid/view/animation/AnimationSet;

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    div-float v1, p2, p3

    div-float v3, p2, p3

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v9, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModulePickerSwitchIn:Landroid/view/animation/AnimationSet;

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v1, p4

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p1, v2

    sub-float/2addr v1, v2

    neg-float v2, v1

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private initShutterButtonSwitchAnimation(FFFF)V
    .registers 15

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mShutterButtonSwitchIn:Landroid/view/animation/AnimationSet;

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mShutterButtonSwitchIn:Landroid/view/animation/AnimationSet;

    sget v1, Lcom/android/camera/ui/BottomControlLowerPanel;->DURATION:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mShutterButtonSwitchIn:Landroid/view/animation/AnimationSet;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mShutterButtonSwitchIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, p0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v9, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mShutterButtonSwitchIn:Landroid/view/animation/AnimationSet;

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    div-float v1, p3, p2

    div-float v3, p3, p2

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v9, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mShutterButtonSwitchIn:Landroid/view/animation/AnimationSet;

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v1, p4

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p1, v2

    sub-float v2, v1, v2

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private initShutterTransView(Z)Landroid/graphics/drawable/TransitionDrawable;
    .registers 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x2

    new-array v0, v2, [Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2e

    iget-object v2, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020034

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v5

    iget-object v2, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02013d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v4

    :goto_25
    new-instance v1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    return-object v1

    :cond_2e
    iget-object v2, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02013c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v5

    iget-object v2, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020035

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v4

    goto :goto_25
.end method


# virtual methods
.method public animateSwitch(Ljava/lang/Runnable;Z)V
    .registers 7

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/BottomControlLowerPanel;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/camera/ui/BottomControlLowerPanel;->clearLastAnimation()V

    invoke-direct {p0, p2}, Lcom/android/camera/ui/BottomControlLowerPanel;->initModulePickTransView(Z)Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/android/camera/ui/BottomControlLowerPanel;->initShutterTransView(Z)Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v1

    iput-object p1, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModuleAnimationCallback:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    invoke-virtual {v2, v0}, Lcom/android/camera/ui/V6ModulePicker;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v2, Lcom/android/camera/ui/BottomControlLowerPanel;->DURATION:I

    add-int/lit8 v2, v2, -0x32

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    iget-object v2, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/V6ShutterButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v2, Lcom/android/camera/ui/BottomControlLowerPanel;->DURATION:I

    add-int/lit8 v2, v2, -0x32

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    iget-object v2, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    iget-object v3, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mShutterButtonSwitchIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/V6ShutterButton;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    iget-object v3, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModulePickerSwitchIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/V6ModulePicker;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public animationSwitchToCamera(Ljava/lang/Runnable;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ui/BottomControlLowerPanel;->animateSwitch(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public animationSwitchToVideo(Ljava/lang/Runnable;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ui/BottomControlLowerPanel;->animateSwitch(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public getModulePicker()Lcom/android/camera/ui/V6ModulePicker;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    return-object v0
.end method

.method public getProgressBar()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mProgressBar:Landroid/view/View;

    return-object v0
.end method

.method public getShutterButton()Lcom/android/camera/ui/V6ShutterButton;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    return-object v0
.end method

.method public getThumbnailButton()Lcom/android/camera/ui/V6ThumbnailButton;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    return-object v0
.end method

.method public getVideoCaptureButton()Lcom/android/camera/ui/V6VideoCaptureButton;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mVideoCaptureButton:Lcom/android/camera/ui/V6VideoCaptureButton;

    return-object v0
.end method

.method public getVideoPauseButton()Lcom/android/camera/ui/V6PauseRecordingButton;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mPauseRecordingButton:Lcom/android/camera/ui/V6PauseRecordingButton;

    return-object v0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mShutterButtonSwitchIn:Landroid/view/animation/AnimationSet;

    if-ne v0, p1, :cond_10

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModuleAnimationCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModuleAnimationCallback:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomControlLowerPanel;->post(Ljava/lang/Runnable;)Z

    iput-object v1, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModuleAnimationCallback:Ljava/lang/Runnable;

    :cond_10
    return-void
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

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onCameraOpen()V

    invoke-virtual {p0}, Lcom/android/camera/ui/BottomControlLowerPanel;->getVisibility()I

    move-result v1

    if-nez v1, :cond_b

    const/4 v0, 0x1

    :cond_b
    iput-boolean v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mControlVisible:Z

    return-void
.end method

.method protected onFinishInflate()V
    .registers 8

    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onFinishInflate()V

    const v4, 0x7f09000e

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/BottomControlLowerPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/V6ThumbnailButton;

    iput-object v4, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    const v4, 0x7f090012

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/BottomControlLowerPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/V6ShutterButton;

    iput-object v4, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    const v4, 0x7f090015

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/BottomControlLowerPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/V6ModulePicker;

    iput-object v4, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    const v4, 0x7f090010

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/BottomControlLowerPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mProgressBar:Landroid/view/View;

    const v4, 0x7f090011

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/BottomControlLowerPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/V6PauseRecordingButton;

    iput-object v4, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mPauseRecordingButton:Lcom/android/camera/ui/V6PauseRecordingButton;

    const v4, 0x7f090016

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/BottomControlLowerPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/V6VideoCaptureButton;

    iput-object v4, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mVideoCaptureButton:Lcom/android/camera/ui/V6VideoCaptureButton;

    iget-object v4, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    iget-object v4, v4, Lcom/android/camera/ui/V6ThumbnailButton;->mImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v4}, Lcom/android/camera/ui/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v3, v4

    iget-object v4, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    invoke-virtual {v4}, Lcom/android/camera/ui/V6ShutterButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v2, v4

    iget-object v4, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    invoke-virtual {v4}, Lcom/android/camera/ui/V6ModulePicker;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v0, v4

    iget-object v4, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08003a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v1, v4

    invoke-direct {p0, v3, v2, v0, v1}, Lcom/android/camera/ui/BottomControlLowerPanel;->initShutterButtonSwitchAnimation(FFFF)V

    invoke-direct {p0, v3, v2, v0, v1}, Lcom/android/camera/ui/BottomControlLowerPanel;->initModulePickerSwitchAnimation(FFFF)V

    return-void
.end method

.method public onResume()V
    .registers 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onResume()V

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/BottomControlLowerPanel;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ThumbnailButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ShutterButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ModulePicker;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mPauseRecordingButton:Lcom/android/camera/ui/V6PauseRecordingButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6PauseRecordingButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mVideoCaptureButton:Lcom/android/camera/ui/V6VideoCaptureButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6VideoCaptureButton;->setVisibility(I)V

    return-void
.end method

.method public updateThumbnailView(Lcom/android/camera/Thumbnail;)V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlLowerPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6ThumbnailButton;->updateThumbnail(Lcom/android/camera/Thumbnail;)V

    return-void
.end method
