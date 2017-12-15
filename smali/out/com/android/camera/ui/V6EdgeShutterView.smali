.class public Lcom/android/camera/ui/V6EdgeShutterView;
.super Landroid/view/View;
.source "V6EdgeShutterView.java"

# interfaces
.implements Lcom/android/camera/ui/V6FunctionUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/V6EdgeShutterView$1;,
        Lcom/android/camera/ui/V6EdgeShutterView$CustomAnimatorListener;,
        Lcom/android/camera/ui/V6EdgeShutterView$ReverseInterpolator;
    }
.end annotation


# static fields
.field private static final CENTER_RADIUS:I

.field private static final NEAR_THRESHOLD:I

.field private static NORMAL_TAP_MAXY:I

.field private static NORMAL_TOUCH_MAXY:I

.field private static final OUTER_CIRCLE_WIDTH:I

.field private static final OUT_RADIUS:I

.field private static final VIEW_WIDTH:I


# instance fields
.field private mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mCenterPaint:Landroid/graphics/Paint;

.field private mClickAnim:Landroid/animation/ValueAnimator;

.field private mFlyOutAnim:Landroid/animation/ValueAnimator;

.field private mFlyinAnim:Landroid/animation/ValueAnimator;

.field private mFlyinInterpolator:Landroid/view/animation/Interpolator;

.field private mHandler:Landroid/os/Handler;

.field private mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field private mMoveAnim:Landroid/animation/ValueAnimator;

.field private mMoveInterpolator:Landroid/view/animation/Interpolator;

.field private mOuterPaint:Landroid/graphics/Paint;

.field private mPressInterpolator:Landroid/view/animation/Interpolator;

.field private mVisableBount:Landroid/graphics/Rect;

.field private mVisibleState:I


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/V6EdgeShutterView;)Landroid/animation/ValueAnimator;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mClickAnim:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/V6EdgeShutterView;)Landroid/animation/ValueAnimator;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mFlyOutAnim:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/camera/ui/V6EdgeShutterView;)I
    .registers 2

    iget v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mLeft:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/camera/ui/V6EdgeShutterView;)Landroid/animation/ValueAnimator;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mMoveAnim:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/camera/ui/V6EdgeShutterView;)I
    .registers 2

    iget v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mVisibleState:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/camera/ui/V6EdgeShutterView;I)I
    .registers 2

    iput p1, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mVisibleState:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/ui/V6EdgeShutterView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/ui/V6EdgeShutterView;->checkPosture()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/camera/ui/V6EdgeShutterView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/ui/V6EdgeShutterView;->hideShutterView()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/camera/ui/V6EdgeShutterView;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6EdgeShutterView;->setRelateVisible(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    const v0, 0x4285570a    # 66.67f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6EdgeShutterView;->NEAR_THRESHOLD:I

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6EdgeShutterView;->OUTER_CIRCLE_WIDTH:I

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6EdgeShutterView;->OUT_RADIUS:I

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6EdgeShutterView;->CENTER_RADIUS:I

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6EdgeShutterView;->VIEW_WIDTH:I

    sget v0, Lcom/android/camera/Util;->sWindowHeight:I

    const-string/jumbo v1, "camera_edge_max"

    const/16 v2, 0x4b

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    sput v0, Lcom/android/camera/ui/V6EdgeShutterView;->NORMAL_TAP_MAXY:I

    sget v0, Lcom/android/camera/ui/V6EdgeShutterView;->NORMAL_TAP_MAXY:I

    sget v1, Lcom/android/camera/ui/V6EdgeShutterView;->NEAR_THRESHOLD:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/android/camera/ui/V6EdgeShutterView;->NORMAL_TOUCH_MAXY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mFlyinInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/android/camera/ui/V6EdgeShutterView$ReverseInterpolator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/V6EdgeShutterView$ReverseInterpolator;-><init>(Lcom/android/camera/ui/V6EdgeShutterView;Lcom/android/camera/ui/V6EdgeShutterView$ReverseInterpolator;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mPressInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mMoveInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/android/camera/ui/V6EdgeShutterView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/V6EdgeShutterView$1;-><init>(Lcom/android/camera/ui/V6EdgeShutterView;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/graphics/Rect;

    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    sget v2, Lcom/android/camera/Util;->sWindowHeight:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mVisableBount:Landroid/graphics/Rect;

    return-void
.end method

.method private checkPosture()V
    .registers 4

    iget-object v1, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCapturePosture()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    iget v1, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mLeft:I

    if-eqz v1, :cond_13

    :cond_f
    :goto_f
    invoke-direct {p0}, Lcom/android/camera/ui/V6EdgeShutterView;->hideShutterView()V

    :cond_12
    return-void

    :cond_13
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a

    iget v1, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mLeft:I

    if-eqz v1, :cond_f

    :cond_1a
    if-nez v0, :cond_12

    iget v1, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mTop:I

    sget v2, Lcom/android/camera/ui/V6EdgeShutterView;->NORMAL_TAP_MAXY:I

    if-le v1, v2, :cond_12

    goto :goto_f
.end method

.method private couldTouch(II)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mVisibleState:I

    if-ne v2, v0, :cond_26

    iget v2, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mLeft:I

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sget v3, Lcom/android/camera/ui/V6EdgeShutterView;->NEAR_THRESHOLD:I

    if-gt v2, v3, :cond_26

    iget v2, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mTop:I

    iget v3, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mBottom:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sget v3, Lcom/android/camera/ui/V6EdgeShutterView;->NEAR_THRESHOLD:I

    if-gt v2, v3, :cond_24

    :goto_23
    return v0

    :cond_24
    move v0, v1

    goto :goto_23

    :cond_26
    move v0, v1

    goto :goto_23
.end method

.method private createClickAnimation()Landroid/animation/ValueAnimator;
    .registers 6

    const-string/jumbo v2, "x"

    const/4 v1, 0x1

    new-array v3, v1, [F

    iget v1, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mLeft:I

    sget v4, Lcom/android/camera/ui/V6EdgeShutterView;->VIEW_WIDTH:I

    if-ge v1, v4, :cond_2b

    iget v1, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mLeft:I

    sget v4, Lcom/android/camera/ui/V6EdgeShutterView;->VIEW_WIDTH:I

    div-int/lit8 v4, v4, 0x5

    add-int/2addr v1, v4

    :goto_13
    int-to-float v1, v1

    const/4 v4, 0x0

    aput v1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mPressInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    :cond_2b
    iget v1, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mLeft:I

    sget v4, Lcom/android/camera/ui/V6EdgeShutterView;->VIEW_WIDTH:I

    div-int/lit8 v4, v4, 0x5

    sub-int/2addr v1, v4

    goto :goto_13
.end method

.method private createFlyInAnimation()Landroid/animation/ValueAnimator;
    .registers 8

    iget v3, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mLeft:I

    sget v4, Lcom/android/camera/ui/V6EdgeShutterView;->VIEW_WIDTH:I

    if-ge v3, v4, :cond_2c

    sget v3, Lcom/android/camera/ui/V6EdgeShutterView;->VIEW_WIDTH:I

    neg-int v2, v3

    const/4 v1, 0x0

    :goto_a
    const-string/jumbo v3, "translationX"

    const/4 v4, 0x2

    new-array v4, v4, [F

    int-to-float v5, v2

    const/4 v6, 0x0

    aput v5, v4, v6

    int-to-float v5, v1

    const/4 v6, 0x1

    aput v5, v4, v6

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mFlyinInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    :cond_2c
    sget v2, Lcom/android/camera/ui/V6EdgeShutterView;->VIEW_WIDTH:I

    const/4 v1, 0x0

    goto :goto_a
.end method

.method private createFlyOutAnimation()Landroid/animation/ValueAnimator;
    .registers 8

    iget v3, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mLeft:I

    sget v4, Lcom/android/camera/ui/V6EdgeShutterView;->VIEW_WIDTH:I

    if-ge v3, v4, :cond_2c

    const/4 v2, 0x0

    sget v3, Lcom/android/camera/ui/V6EdgeShutterView;->VIEW_WIDTH:I

    neg-int v1, v3

    :goto_a
    const-string/jumbo v3, "translationX"

    const/4 v4, 0x2

    new-array v4, v4, [F

    int-to-float v5, v2

    const/4 v6, 0x0

    aput v5, v4, v6

    int-to-float v5, v1

    const/4 v6, 0x1

    aput v5, v4, v6

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mMoveInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    :cond_2c
    const/4 v2, 0x0

    sget v1, Lcom/android/camera/ui/V6EdgeShutterView;->VIEW_WIDTH:I

    goto :goto_a
.end method

.method private createMoveAnimation(Landroid/graphics/Rect;)Landroid/animation/ValueAnimator;
    .registers 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string/jumbo v3, "x"

    new-array v4, v7, [F

    iget v5, p1, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const-string/jumbo v3, "y"

    new-array v4, v7, [F

    iget v5, p1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v3, v6

    aput-object v2, v3, v7

    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mMoveInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private flyto(II)V
    .registers 9

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mVisableBount:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, v1}, Lcom/android/camera/ui/V6EdgeShutterView;->reviseLocation(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    const-string/jumbo v1, "CameraEdgeShutterView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "flyto "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/ui/V6EdgeShutterView;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " rec="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " viewstate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/camera/ui/V6EdgeShutterView;->getViewState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/ui/V6EdgeShutterView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_6d

    invoke-virtual {p0}, Lcom/android/camera/ui/V6EdgeShutterView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_50

    invoke-direct {p0, v0}, Lcom/android/camera/ui/V6EdgeShutterView;->setInitLayoutParameters(Landroid/graphics/Rect;)V

    :cond_50
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/camera/ui/V6EdgeShutterView;->layout(IIII)V

    invoke-direct {p0}, Lcom/android/camera/ui/V6EdgeShutterView;->createFlyInAnimation()Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mFlyinAnim:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mFlyinAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mVisibleState:I

    invoke-direct {p0, v5}, Lcom/android/camera/ui/V6EdgeShutterView;->setRelateVisible(I)V

    :goto_6c
    return-void

    :cond_6d
    iget-object v1, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mFlyOutAnim:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_7e

    iget-object v1, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mFlyOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_7e

    iget-object v1, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mFlyOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_7e
    iget-object v1, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mFlyinAnim:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_8f

    iget-object v1, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mFlyinAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_8f

    iget-object v1, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mFlyinAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_8f
    invoke-direct {p0, v0}, Lcom/android/camera/ui/V6EdgeShutterView;->createMoveAnimation(Landroid/graphics/Rect;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mMoveAnim:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mMoveAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mVisibleState:I

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/camera/ui/V6EdgeShutterView;->layout(IIII)V

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6EdgeShutterView;->setX(F)V

    goto :goto_6c
.end method

.method private getViewState()Ljava/lang/String;
    .registers 6

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v1, "View state mleft=%d mtop=%d width=%d height=%d mVisibleState=%d getVisibility()=%d"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mLeft:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mTop:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/android/camera/ui/V6EdgeShutterView;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/android/camera/ui/V6EdgeShutterView;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mVisibleState:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/android/camera/ui/V6EdgeShutterView;->getVisibility()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hideShutterView()V
    .registers 3

    iget v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mVisibleState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    invoke-direct {p0}, Lcom/android/camera/ui/V6EdgeShutterView;->createFlyOutAnimation()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mFlyOutAnim:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mFlyOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mVisibleState:I

    :cond_13
    return-void
.end method

.method private isDeviceStateReady(III)Z
    .registers 10

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isStable()Z

    move-result v2

    if-nez v2, :cond_16

    const-string/jumbo v2, "CameraEdgeShutterView"

    const-string/jumbo v3, "Device is not stable, ignore edgetouch"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_16
    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCapturePosture()I

    move-result v1

    if-nez v1, :cond_5a

    if-le p2, p3, :cond_5a

    const-string/jumbo v2, "CameraEdgeShutterView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Device post wrong, y is too big, capturePosture="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " maxY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_5a
    if-ne v1, v3, :cond_8f

    if-eqz p1, :cond_8f

    :cond_5e
    const-string/jumbo v2, "CameraEdgeShutterView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Device post wrong, touching bottom edge, capturePosture="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_8f
    const/4 v2, 0x2

    if-ne v1, v2, :cond_94

    if-eqz p1, :cond_5e

    :cond_94
    return v3
.end method

.method private resendUnusedMessage()V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private reviseLocation(IILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 10

    const-string/jumbo v2, "CameraEdgeShutterView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "flyto reviseLocation x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " bound="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " viewstate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/camera/ui/V6EdgeShutterView;->getViewState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget v2, Lcom/android/camera/ui/V6EdgeShutterView;->VIEW_WIDTH:I

    mul-int/2addr v2, p2

    sget v3, Lcom/android/camera/Util;->sWindowHeight:I

    div-int v0, v2, v3

    new-instance v1, Landroid/graphics/Rect;

    sub-int v2, p2, v0

    sget v3, Lcom/android/camera/ui/V6EdgeShutterView;->VIEW_WIDTH:I

    add-int/2addr v3, p1

    sub-int v4, p2, v0

    sget v5, Lcom/android/camera/ui/V6EdgeShutterView;->VIEW_WIDTH:I

    add-int/2addr v4, v5

    invoke-direct {v1, p1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p3, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_5c

    return-object v1

    :cond_5c
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_83

    iget v2, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/graphics/Rect;->left:I

    :cond_6f
    :goto_6f
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_97

    iget v2, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    :cond_82
    :goto_82
    return-object v1

    :cond_83
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->right:I

    if-le v2, v3, :cond_6f

    iget v2, p3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->right:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    goto :goto_6f

    :cond_97
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->bottom:I

    if-le v2, v3, :cond_82

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_82
.end method

.method private setInitLayoutParameters(Landroid/graphics/Rect;)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/camera/ui/V6EdgeShutterView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6EdgeShutterView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setRelateVisible(I)V
    .registers 4

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/android/camera/ui/V6EdgeShutterView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_10

    if-eq v1, p1, :cond_d

    const/4 v1, 0x0

    :cond_d
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_10
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6EdgeShutterView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/camera/ui/V6EdgeShutterView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mLeft:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6EdgeShutterView;->setX(F)V

    iget v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mTop:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6EdgeShutterView;->setY(F)V

    return-void
.end method

.method public enableControls(Z)V
    .registers 2

    return-void
.end method

.method public onCameraOpen()V
    .registers 1

    return-void
.end method

.method public onCreate()V
    .registers 3

    const/4 v1, -0x1

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mCenterPaint:Landroid/graphics/Paint;

    const v1, -0xfc0ff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mOuterPaint:Landroid/graphics/Paint;

    const v1, -0x6f000001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_17
    return-void

    :cond_18
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_17
.end method

.method public onDeviceMoving()V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onDevicePostureChanged()V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    sget v0, Lcom/android/camera/ui/V6EdgeShutterView;->VIEW_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sget v1, Lcom/android/camera/ui/V6EdgeShutterView;->VIEW_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget v2, Lcom/android/camera/ui/V6EdgeShutterView;->OUT_RADIUS:I

    add-int/lit8 v2, v2, -0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    sget v0, Lcom/android/camera/ui/V6EdgeShutterView;->VIEW_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sget v1, Lcom/android/camera/ui/V6EdgeShutterView;->VIEW_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget v2, Lcom/android/camera/ui/V6EdgeShutterView;->CENTER_RADIUS:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onEdgeTap(II)Z
    .registers 6

    const-string/jumbo v0, "CameraEdgeShutterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEdgeTouch x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " viewstate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/camera/ui/V6EdgeShutterView;->getViewState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6EdgeShutterView;->couldTouch(II)Z

    move-result v0

    if-nez v0, :cond_4a

    sget v0, Lcom/android/camera/ui/V6EdgeShutterView;->NORMAL_TAP_MAXY:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/ui/V6EdgeShutterView;->isDeviceStateReady(III)Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6EdgeShutterView;->flyto(II)V

    invoke-direct {p0}, Lcom/android/camera/ui/V6EdgeShutterView;->resendUnusedMessage()V

    const/4 v0, 0x1

    return v0

    :cond_4a
    const/4 v0, 0x0

    return v0
.end method

.method public onEdgeTouch(II)Z
    .registers 9

    const/4 v1, 0x0

    const/4 v4, 0x0

    const-string/jumbo v0, "CameraEdgeShutterView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onEdgeTouch x="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " y="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " viewstate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/camera/ui/V6EdgeShutterView;->getViewState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6EdgeShutterView;->couldTouch(II)Z

    move-result v0

    if-eqz v0, :cond_73

    sget v0, Lcom/android/camera/ui/V6EdgeShutterView;->NORMAL_TOUCH_MAXY:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/ui/V6EdgeShutterView;->isDeviceStateReady(III)Z

    move-result v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mFlyinAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mFlyinAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mFlyinAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_55
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const v2, 0x7f09009b

    const/4 v3, 0x2

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_63
    invoke-direct {p0}, Lcom/android/camera/ui/V6EdgeShutterView;->createClickAnimation()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mClickAnim:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mClickAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    invoke-direct {p0}, Lcom/android/camera/ui/V6EdgeShutterView;->resendUnusedMessage()V

    const/4 v0, 0x1

    return v0

    :cond_73
    return v1
.end method

.method protected onFinishInflate()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, -0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mCenterPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mCenterPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mOuterPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mOuterPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mOuterPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/camera/ui/V6EdgeShutterView;->OUTER_CIRCLE_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Lcom/android/camera/ui/V6EdgeShutterView$CustomAnimatorListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/V6EdgeShutterView$CustomAnimatorListener;-><init>(Lcom/android/camera/ui/V6EdgeShutterView;Lcom/android/camera/ui/V6EdgeShutterView$CustomAnimatorListener;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    sget v0, Lcom/android/camera/ui/V6EdgeShutterView;->VIEW_WIDTH:I

    sget v1, Lcom/android/camera/ui/V6EdgeShutterView;->VIEW_WIDTH:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/V6EdgeShutterView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPause()V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/camera/ui/V6EdgeShutterView;->setRelateVisible(I)V

    return-void
.end method

.method public onResume()V
    .registers 1

    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .registers 2

    iput-object p1, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    return-void
.end method
