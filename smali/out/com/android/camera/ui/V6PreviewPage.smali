.class public Lcom/android/camera/ui/V6PreviewPage;
.super Lcom/android/camera/ui/V6RelativeLayout;
.source "V6PreviewPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/V6PreviewPage$1;,
        Lcom/android/camera/ui/V6PreviewPage$2;,
        Lcom/android/camera/ui/V6PreviewPage$AnimationType;,
        Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/android/camera/ActivityBase;

.field private mAnimPopup:Landroid/animation/ValueAnimator;

.field private mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

.field public mAsdIndicatorView:Landroid/widget/ImageView;

.field private mCollapseInterpolator:Landroid/animation/TimeInterpolator;

.field private mExpandInterpolator:Landroid/animation/TimeInterpolator;

.field private mHidePreviewCover:Ljava/lang/Runnable;

.field private mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field public mLyingOriFlag:Lcom/android/camera/ui/OrientationIndicator;

.field private mModeExitButton:Landroid/view/View;

.field public mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

.field private mOrientationArea:Lcom/android/camera/ui/RotateLayout;

.field private mOrientationParent:Landroid/widget/RelativeLayout;

.field public mPanoramaViewRoot:Landroid/widget/RelativeLayout;

.field private mPopupGroupVisible:Z

.field private mPopupIndicator:Landroid/view/View;

.field public mPopupIndicatorLayout:Landroid/view/View;

.field public mPopupParent:Landroid/view/ViewGroup;

.field public mPopupParentLayout:Landroid/view/ViewGroup;

.field private mPopupVisible:Z

.field private mPreviewCover:Landroid/view/View;

.field public mStereoButton:Lcom/android/camera/ui/StereoButton;

.field public mTopPopupParent:Lcom/android/camera/ui/TopPopupParent;

.field private mVisible:Z

.field public mWarningMessageLayout:Landroid/widget/LinearLayout;

.field public mWarningView:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicator:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPreviewCover:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/camera/ui/V6PreviewPage;Landroid/view/View;)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6PreviewPage;->getChildY(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/camera/ui/V6PreviewPage;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->clearOnLayoutChangeListener()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/camera/ui/V6PreviewPage;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->createAnimation()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/camera/ui/V6PreviewPage;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->createOrUpdateAnimatorListener()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/camera/ui/V6PreviewPage;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->setupOnLayoutChangeListener()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mVisible:Z

    iput-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupGroupVisible:Z

    iput-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mCollapseInterpolator:Landroid/animation/TimeInterpolator;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mExpandInterpolator:Landroid/animation/TimeInterpolator;

    new-instance v0, Lcom/android/camera/ui/V6PreviewPage$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/V6PreviewPage$1;-><init>(Lcom/android/camera/ui/V6PreviewPage;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    new-instance v0, Lcom/android/camera/ui/V6PreviewPage$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/V6PreviewPage$2;-><init>(Lcom/android/camera/ui/V6PreviewPage;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mHidePreviewCover:Ljava/lang/Runnable;

    check-cast p1, Lcom/android/camera/ActivityBase;

    iput-object p1, p0, Lcom/android/camera/ui/V6PreviewPage;->mActivity:Lcom/android/camera/ActivityBase;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mVisible:Z

    iput-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupGroupVisible:Z

    iput-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mCollapseInterpolator:Landroid/animation/TimeInterpolator;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mExpandInterpolator:Landroid/animation/TimeInterpolator;

    new-instance v0, Lcom/android/camera/ui/V6PreviewPage$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/V6PreviewPage$1;-><init>(Lcom/android/camera/ui/V6PreviewPage;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    new-instance v0, Lcom/android/camera/ui/V6PreviewPage$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/V6PreviewPage$2;-><init>(Lcom/android/camera/ui/V6PreviewPage;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mHidePreviewCover:Ljava/lang/Runnable;

    check-cast p1, Lcom/android/camera/ActivityBase;

    iput-object p1, p0, Lcom/android/camera/ui/V6PreviewPage;->mActivity:Lcom/android/camera/ActivityBase;

    return-void
.end method

.method private clearOnLayoutChangeListener()V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicator:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ModeExitView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private createAnimation()V
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v1, "V6PreviewPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createAnimation: popupHeight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    if-nez v1, :cond_29

    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->createOrUpdateAnimatorListener()V

    :cond_29
    const-string/jumbo v1, "translationY"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v3, v2, v4

    iget-object v3, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    int-to-float v3, v3

    aput v3, v2, v5

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    new-array v2, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimPopup:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimPopup:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimPopup:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private createOrUpdateAnimatorListener()V
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    if-nez v0, :cond_c

    new-instance v0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;-><init>(Lcom/android/camera/ui/V6PreviewPage;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->updateParameters()V

    goto :goto_b
.end method

.method private doViewAnimation(Landroid/view/View;Z)V
    .registers 5

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_8
    if-eq v0, p2, :cond_15

    if-eqz p2, :cond_1c

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    if-ne p1, v0, :cond_18

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ModeExitView;->show()V

    :cond_15
    :goto_15
    return-void

    :cond_16
    move v0, v1

    goto :goto_8

    :cond_18
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_15

    :cond_1c
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    if-ne p1, v0, :cond_26

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ModeExitView;->hide()V

    goto :goto_15

    :cond_26
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_15
.end method

.method private getChildY(Landroid/view/View;)I
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_8
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_1b

    if-eq v0, p0, :cond_1b

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_8

    :cond_1b
    return v2
.end method

.method private getCurrentPopupShownView()Landroid/view/View;
    .registers 3

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isShown()Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v0, 0x0

    :goto_9
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_27

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    return-object v1

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_27
    const/4 v1, 0x0

    return-object v1
.end method

.method private hasCollapsedPopup()Z
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingPage;->getCurrentPopup()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getStereoButton()Lcom/android/camera/ui/StereoButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/StereoButton;->isPopupVisible()Z

    move-result v0

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x1

    goto :goto_22
.end method

.method private hidePopupView()V
    .registers 4

    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->getCurrentPopupShownView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/android/camera/ui/StereoPopup;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getStereoButton()Lcom/android/camera/ui/StereoButton;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/StereoButton;->dismissPopup(Z)Z

    :goto_18
    return-void

    :cond_19
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    sget-object v2, Lcom/android/camera/ui/V6PreviewPage$AnimationType;->COLLAPSE:Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->setAnimationType(Lcom/android/camera/ui/V6PreviewPage$AnimationType;)V

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimPopup:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewPage;->mCollapseInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimPopup:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_18
.end method

.method private initAnimation(Lcom/android/camera/ui/V6AbstractSettingPopup;Z)Landroid/view/animation/Animation;
    .registers 7

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_11

    if-eqz p2, :cond_1d

    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewPage;->mContext:Landroid/content/Context;

    const v3, 0x7f050013

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    :cond_11
    :goto_11
    if-nez p2, :cond_1c

    new-instance v1, Lcom/android/camera/ui/SimpleAnimationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/camera/ui/SimpleAnimationListener;-><init>(Landroid/view/View;Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1c
    return-object v0

    :cond_1d
    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewPage;->mContext:Landroid/content/Context;

    const v3, 0x7f050012

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_11
.end method

.method private setupOnLayoutChangeListener()V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicator:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ModeExitView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private shouldAnimatePopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)Z
    .registers 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/camera/ui/V6PreviewPage;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/android/camera/ActivityBase;

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->isPaused()Z

    move-result v3

    if-eqz v3, :cond_d

    return v5

    :cond_d
    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_f
    iget-object v3, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_2f

    iget-object v3, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2c

    iget-object v3, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eq v2, p1, :cond_2c

    return v5

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_2f
    if-nez v2, :cond_32

    return v4

    :cond_32
    if-eqz p1, :cond_46

    if-ne p1, v2, :cond_46

    iget-object v3, p0, Lcom/android/camera/ui/V6PreviewPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/PopupManager;->getLastOnOtherPopupShowedListener()Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;

    move-result-object v1

    if-nez v1, :cond_44

    move v3, v4

    :goto_43
    return v3

    :cond_44
    move v3, v5

    goto :goto_43

    :cond_46
    return v5
.end method

.method private updatePopupIndicatorImageResource()V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicator:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewFrame;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicator:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0200d2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_22
    :goto_22
    return-void

    :cond_23
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicator:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0200d1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_22
.end method

.method private updatePopupVisibility(ZZZ)V
    .registers 8

    const/4 v2, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_19

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ModeExitView;->show()V

    :goto_9
    iget-object v3, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    if-eqz p2, :cond_1f

    move v0, v1

    :goto_e
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    if-eqz p3, :cond_21

    :goto_15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_19
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ModeExitView;->hide()V

    goto :goto_9

    :cond_1f
    move v0, v2

    goto :goto_e

    :cond_21
    move v1, v2

    goto :goto_15
.end method

.method private updateRotateLayout(ILandroid/view/View;)V
    .registers 9

    const/16 v5, 0xc

    const/16 v4, 0xb

    const/16 v3, 0xa

    const/16 v2, 0x9

    const/4 v1, -0x1

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    sparse-switch p1, :sswitch_data_32

    :goto_1e
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :sswitch_22
    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1e

    :sswitch_26
    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1e

    :sswitch_2a
    invoke-virtual {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1e

    :sswitch_2e
    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1e

    :sswitch_data_32
    .sparse-switch
        0x0 -> :sswitch_22
        0x5a -> :sswitch_26
        0xb4 -> :sswitch_2a
        0x10e -> :sswitch_2e
    .end sparse-switch
.end method


# virtual methods
.method public dismissPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6PreviewPage;->shouldAnimatePopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->clearAnimation()V

    invoke-direct {p0, p1, v1}, Lcom/android/camera/ui/V6PreviewPage;->initAnimation(Lcom/android/camera/ui/V6AbstractSettingPopup;Z)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_11
    return-void

    :cond_12
    invoke-virtual {p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->clearAnimation()V

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->dismiss(Z)V

    goto :goto_11
.end method

.method public inflatePanoramaView()V
    .registers 4

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mPanoramaViewRoot:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_20

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f040016

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v1, 0x7f090042

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6PreviewPage;->findChildrenById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mPanoramaViewRoot:Landroid/widget/RelativeLayout;

    :cond_20
    return-void
.end method

.method public isPopupShown()Z
    .registers 2

    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->getCurrentPopupShownView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isPreviewPageVisible()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mVisible:Z

    return v0
.end method

.method public onCameraOpen()V
    .registers 4

    const/16 v2, 0x8

    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onCameraOpen()V

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mWarningView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAsdIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPreviewCover:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mVisible:Z

    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->updatePopupIndicatorImageResource()V

    return-void
.end method

.method public onCapture()V
    .registers 5

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPreviewCover:Landroid/view/View;

    const v1, 0x7f0c000a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPreviewCover:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mHidePreviewCover:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mHidePreviewCover:Ljava/lang/Runnable;

    const-wide/16 v2, 0x78

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/camera/ui/V6PreviewPage;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/V6PreviewPage;->simplifyPopup(ZZ)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onFinishInflate()V

    const v0, 0x7f09007a

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParentLayout:Landroid/view/ViewGroup;

    const v0, 0x7f09007b

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    const v0, 0x7f09007d

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/TopPopupParent;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mTopPopupParent:Lcom/android/camera/ui/TopPopupParent;

    const v0, 0x7f09004f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6ModeExitView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    const v0, 0x7f09006c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitButton:Landroid/view/View;

    const v0, 0x7f090022

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mWarningView:Landroid/widget/TextView;

    const v0, 0x7f090020

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mWarningMessageLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f09006d

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    const v0, 0x7f09006e

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicator:Landroid/view/View;

    const v0, 0x7f09006b

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAsdIndicatorView:Landroid/widget/ImageView;

    const v0, 0x7f09003f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mOrientationParent:Landroid/widget/RelativeLayout;

    const v0, 0x7f090040

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mOrientationArea:Lcom/android/camera/ui/RotateLayout;

    const v0, 0x7f090041

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/OrientationIndicator;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mLyingOriFlag:Lcom/android/camera/ui/OrientationIndicator;

    const v0, 0x7f09007c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/StereoButton;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mStereoButton:Lcom/android/camera/ui/StereoButton;

    const v0, 0x7f090079

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPreviewCover:Landroid/view/View;

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicator:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->setupOnLayoutChangeListener()V

    return-void
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onPause()V

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mHidePreviewCover:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPreviewCover:Landroid/view/View;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPreviewCover:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onPopupChange()V
    .registers 3

    const-string/jumbo v0, "V6PreviewPage"

    const-string/jumbo v1, "onPopupChange"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimPopup:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    if-nez v0, :cond_1b

    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->hasCollapsedPopup()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1b
    return-void

    :cond_1c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setOrientation(IZ)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;->setOrientation(IZ)V

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mOrientationArea:Lcom/android/camera/ui/RotateLayout;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/V6PreviewPage;->updateRotateLayout(ILandroid/view/View;)V

    return-void
.end method

.method public setPopupVisible(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupGroupVisible:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupGroupVisible:Z

    invoke-virtual {p0}, Lcom/android/camera/ui/V6PreviewPage;->updatePopupIndicator()V

    return-void
.end method

.method public showPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6PreviewPage;->shouldAnimatePopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->show(Z)V

    invoke-virtual {p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->clearAnimation()V

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/camera/ui/V6PreviewPage;->initAnimation(Lcom/android/camera/ui/V6AbstractSettingPopup;Z)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_15
    return-void

    :cond_16
    invoke-virtual {p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->clearAnimation()V

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->show(Z)V

    goto :goto_15
.end method

.method public showPopupWithoutExitView()V
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->hasCollapsedPopup()Z

    move-result v0

    if-eqz v0, :cond_d

    iput-boolean v2, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    invoke-direct {p0, v1, v2, v1}, Lcom/android/camera/ui/V6PreviewPage;->updatePopupVisibility(ZZZ)V

    :cond_d
    return-void
.end method

.method public simplifyPopup(ZZ)V
    .registers 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "V6PreviewPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "simplifyPopup: simplify="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",animation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    if-nez v0, :cond_2e

    if-eqz p1, :cond_2e

    return-void

    :cond_2e
    if-eqz p1, :cond_42

    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->hasCollapsedPopup()Z

    move-result v0

    if-eqz v0, :cond_42

    iput-boolean v3, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    if-eqz p2, :cond_3e

    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->hidePopupView()V

    :cond_3d
    :goto_3d
    return-void

    :cond_3e
    invoke-direct {p0, v3, v3, v4}, Lcom/android/camera/ui/V6PreviewPage;->updatePopupVisibility(ZZZ)V

    goto :goto_3d

    :cond_42
    if-nez p1, :cond_3d

    iput-boolean v4, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    if-eqz p2, :cond_6e

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimPopup:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->getAnimationType()Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    move-result-object v0

    sget-object v1, Lcom/android/camera/ui/V6PreviewPage$AnimationType;->EXPAND:Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    if-eq v0, v1, :cond_3d

    :cond_5a
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    sget-object v1, Lcom/android/camera/ui/V6PreviewPage$AnimationType;->EXPAND:Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->setAnimationType(Lcom/android/camera/ui/V6PreviewPage$AnimationType;)V

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimPopup:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mExpandInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimPopup:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_3d

    :cond_6e
    invoke-direct {p0, v4, v4, v3}, Lcom/android/camera/ui/V6PreviewPage;->updatePopupVisibility(ZZZ)V

    goto :goto_3d
.end method

.method public switchWithAnimation(Z)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "Camera10"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchWithAnimation: toPreviewPage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",popupVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",groupVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupGroupVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_6d

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mWarningView:Landroid/widget/TextView;

    invoke-direct {p0, v0, v4}, Lcom/android/camera/ui/V6PreviewPage;->doViewAnimation(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mOrientationArea:Lcom/android/camera/ui/RotateLayout;

    invoke-direct {p0, v0, v4}, Lcom/android/camera/ui/V6PreviewPage;->doViewAnimation(Landroid/view/View;Z)V

    iget-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupGroupVisible:Z

    if-eqz v0, :cond_54

    iget-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-direct {p0, v0, v4}, Lcom/android/camera/ui/V6PreviewPage;->doViewAnimation(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v4}, Lcom/android/camera/ui/V6PreviewPage;->doViewAnimation(Landroid/view/View;Z)V

    :cond_54
    :goto_54
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mStereoButton:Lcom/android/camera/ui/StereoButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/StereoButton;->updateVisible()V

    :goto_59
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mTopPopupParent:Lcom/android/camera/ui/TopPopupParent;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/TopPopupParent;->onPreviewPageShown(Z)V

    iput-boolean p1, p0, Lcom/android/camera/ui/V6PreviewPage;->mVisible:Z

    return-void

    :cond_61
    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->hasCollapsedPopup()Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    invoke-direct {p0, v0, v4}, Lcom/android/camera/ui/V6PreviewPage;->doViewAnimation(Landroid/view/View;Z)V

    goto :goto_54

    :cond_6d
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-direct {p0, v0, v3}, Lcom/android/camera/ui/V6PreviewPage;->doViewAnimation(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mWarningView:Landroid/widget/TextView;

    invoke-direct {p0, v0, v3}, Lcom/android/camera/ui/V6PreviewPage;->doViewAnimation(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAsdIndicatorView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v3}, Lcom/android/camera/ui/V6PreviewPage;->doViewAnimation(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v3}, Lcom/android/camera/ui/V6PreviewPage;->doViewAnimation(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/camera/ui/V6PreviewPage;->doViewAnimation(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mOrientationArea:Lcom/android/camera/ui/RotateLayout;

    invoke-direct {p0, v0, v3}, Lcom/android/camera/ui/V6PreviewPage;->doViewAnimation(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mStereoButton:Lcom/android/camera/ui/StereoButton;

    invoke-direct {p0, v0, v3}, Lcom/android/camera/ui/V6PreviewPage;->doViewAnimation(Landroid/view/View;Z)V

    goto :goto_59
.end method

.method public updateOrientationLayout(Z)V
    .registers 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/camera/Device;->isOrientationIndicatorEnabled()Z

    move-result v1

    if-nez v1, :cond_8

    return-void

    :cond_8
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mOrientationParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    if-eqz v1, :cond_2d

    const/4 v1, 0x1

    :goto_15
    if-eq p1, v1, :cond_2c

    if-eqz p1, :cond_2f

    invoke-virtual {p0}, Lcom/android/camera/ui/V6PreviewPage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080075

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_24
    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mOrientationParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2c
    return-void

    :cond_2d
    move v1, v2

    goto :goto_15

    :cond_2f
    move v1, v2

    goto :goto_24
.end method

.method public updatePopupIndicator()V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->hasCollapsedPopup()Z

    move-result v0

    const-string/jumbo v2, "V6PreviewPage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePopupIndicator: groupVisible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupGroupVisible:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",popupVisible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",hasSettingPopup="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupGroupVisible:Z

    if-eqz v2, :cond_4b

    iget-boolean v2, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    iget-boolean v3, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    iget-boolean v4, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    if-nez v4, :cond_49

    :goto_45
    invoke-direct {p0, v2, v3, v0}, Lcom/android/camera/ui/V6PreviewPage;->updatePopupVisibility(ZZZ)V

    :goto_48
    return-void

    :cond_49
    move v0, v1

    goto :goto_45

    :cond_4b
    invoke-direct {p0, v1, v1, v1}, Lcom/android/camera/ui/V6PreviewPage;->updatePopupVisibility(ZZZ)V

    goto :goto_48
.end method
