.class public Lcom/android/camera/ui/V6EffectCropView;
.super Landroid/view/View;
.source "V6EffectCropView.java"

# interfaces
.implements Lcom/android/camera/ui/V6FunctionUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/V6EffectCropView$1;
    }
.end annotation


# static fields
.field private static final ANIMATE_START_RADIUS:I

.field private static final ANIMATE_START_RANGE:I

.field private static final CIRCLE_RESIZE_TOUCH_TOLERANCE:I

.field private static final CORNER_BALL_RADIUS:I

.field private static final DEFAULT_RADIUS:I

.field private static final DEFAULT_RANGE:I

.field private static final MIN_CROP_WIDTH_HEIGHT:I

.field private static final MIN_DIS_FOR_MOVE_POINT:F

.field private static final MIN_DIS_FOR_SLOPE:I

.field private static final MIN_RANGE:I

.field private static final TOUCH_TOLERANCE:I


# instance fields
.field private mAnimateHandler:Landroid/os/Handler;

.field private mAnimateRadius:I

.field private mAnimateRangeWidth:I

.field private mAnimateThread:Landroid/os/HandlerThread;

.field private mAnimationStartRadius:I

.field private mAnimationStartRange:I

.field private mAnimationStartTime:J

.field private mAnimationTotalTime:J

.field private final mBorderPaint:Landroid/graphics/Paint;

.field private mCenterLineSquare:I

.field private final mCornerPaint:Landroid/graphics/Paint;

.field private final mCropBounds:Landroid/graphics/RectF;

.field private final mDefaultCircleBounds:Landroid/graphics/RectF;

.field private final mDefaultRectBounds:Landroid/graphics/RectF;

.field private final mDisplayBounds:Landroid/graphics/RectF;

.field private final mEffectPoint1:Landroid/graphics/PointF;

.field private final mEffectPoint2:Landroid/graphics/PointF;

.field private final mEffectRect:Landroid/graphics/RectF;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsCircle:Z

.field private mIsInTapSlop:Z

.field private mIsRect:Z

.field private mIsTiltShift:Z

.field private mLastMoveDis:D

.field private mLastX:F

.field private mLastY:F

.field private mMaxRange:I

.field private mMovingEdges:I

.field private mNormalizedWidth:F

.field private final mPoint1:Landroid/graphics/Point;

.field private final mPoint2:Landroid/graphics/Point;

.field private mRadius:I

.field private mRangeWidth:I

.field private mTapSlop:I

.field private mTiltShiftMaskAlive:Z

.field private mTiltShiftMaskFadeInAnimator:Landroid/animation/ObjectAnimator;

.field private mTiltShiftMaskFadeOutAnimator:Landroid/animation/ObjectAnimator;

.field private mTiltShiftMaskFadeOutListener:Landroid/animation/AnimatorListenerAdapter;

.field private mTiltShiftMaskHandler:Landroid/os/Handler;

.field private final mTouchCenter:Landroid/graphics/Point;

.field private mVisible:Z


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/V6EffectCropView;)I
    .registers 2

    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateRadius:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/V6EffectCropView;)I
    .registers 2

    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateRangeWidth:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/camera/ui/V6EffectCropView;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskAlive:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/camera/ui/V6EffectCropView;)Landroid/animation/ObjectAnimator;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskFadeInAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/camera/ui/V6EffectCropView;)Landroid/animation/ObjectAnimator;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskFadeOutAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/camera/ui/V6EffectCropView;)I
    .registers 2

    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimationStartRadius:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/camera/ui/V6EffectCropView;)I
    .registers 2

    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimationStartRange:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/camera/ui/V6EffectCropView;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimationStartTime:J

    return-wide v0
.end method

.method static synthetic -get5(Lcom/android/camera/ui/V6EffectCropView;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimationTotalTime:J

    return-wide v0
.end method

.method static synthetic -get6(Lcom/android/camera/ui/V6EffectCropView;)Landroid/graphics/RectF;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/camera/ui/V6EffectCropView;)Landroid/graphics/RectF;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mDefaultCircleBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/camera/ui/V6EffectCropView;)Landroid/view/animation/Interpolator;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/camera/ui/V6EffectCropView;)I
    .registers 2

    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mRadius:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/camera/ui/V6EffectCropView;I)I
    .registers 2

    iput p1, p0, Lcom/android/camera/ui/V6EffectCropView;->mRadius:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/camera/ui/V6EffectCropView;I)I
    .registers 2

    iput p1, p0, Lcom/android/camera/ui/V6EffectCropView;->mRangeWidth:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/camera/ui/V6EffectCropView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskAlive:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/ui/V6EffectCropView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/ui/V6EffectCropView;->hideTiltShiftMask()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/camera/ui/V6EffectCropView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/ui/V6EffectCropView;->onCropChange()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    const/high16 v2, 0x41f00000    # 30.0f

    const/high16 v1, 0x41200000    # 10.0f

    const/high16 v0, 0x42800000    # 64.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6EffectCropView;->MIN_CROP_WIDTH_HEIGHT:I

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    mul-int/2addr v0, v1

    sput v0, Lcom/android/camera/ui/V6EffectCropView;->MIN_DIS_FOR_SLOPE:I

    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    mul-int/2addr v0, v1

    int-to-float v0, v0

    sput v0, Lcom/android/camera/ui/V6EffectCropView;->MIN_DIS_FOR_MOVE_POINT:F

    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6EffectCropView;->TOUCH_TOLERANCE:I

    const/high16 v0, 0x42100000    # 36.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6EffectCropView;->CIRCLE_RESIZE_TOUCH_TOLERANCE:I

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6EffectCropView;->MIN_RANGE:I

    sget v0, Lcom/android/camera/Util;->sWindowHeight:I

    div-int/lit8 v0, v0, 0x3

    sput v0, Lcom/android/camera/ui/V6EffectCropView;->DEFAULT_RANGE:I

    sget v0, Lcom/android/camera/Util;->sWindowHeight:I

    div-int/lit8 v0, v0, 0x6

    sput v0, Lcom/android/camera/ui/V6EffectCropView;->DEFAULT_RADIUS:I

    sget v0, Lcom/android/camera/Util;->sWindowHeight:I

    sput v0, Lcom/android/camera/ui/V6EffectCropView;->ANIMATE_START_RANGE:I

    sget v0, Lcom/android/camera/Util;->sWindowHeight:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/camera/ui/V6EffectCropView;->ANIMATE_START_RADIUS:I

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6EffectCropView;->CORNER_BALL_RADIUS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 12

    const/4 v3, -0x1

    const/4 v8, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mDefaultRectBounds:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mDefaultCircleBounds:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v5, v5, v6, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mEffectRect:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mTouchCenter:Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mEffectPoint1:Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mEffectPoint2:Landroid/graphics/PointF;

    iput v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mNormalizedWidth:F

    iput v7, p0, Lcom/android/camera/ui/V6EffectCropView;->mRangeWidth:I

    iput v7, p0, Lcom/android/camera/ui/V6EffectCropView;->mRadius:I

    new-instance v1, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mInterpolator:Landroid/view/animation/Interpolator;

    iput v7, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateRangeWidth:I

    iput v7, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateRadius:I

    new-instance v1, Lcom/android/camera/ui/V6EffectCropView$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/V6EffectCropView$1;-><init>(Lcom/android/camera/ui/V6EffectCropView;)V

    iput-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskFadeOutListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mBorderPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v1

    if-eqz v1, :cond_103

    const/4 v1, 0x4

    :goto_83
    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mCornerPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mCornerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mCornerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mTapSlop:I

    const v1, 0x7f05001a

    invoke-static {p1, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    iput-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskFadeInAnimator:Landroid/animation/ObjectAnimator;

    const v1, 0x7f05001b

    invoke-static {p1, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    iput-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskFadeOutAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskFadeInAnimator:Landroid/animation/ObjectAnimator;

    new-array v2, v8, [Landroid/animation/PropertyValuesHolder;

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getPropertyName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Keyframe;

    invoke-static {v5}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object v5

    aput-object v5, v4, v7

    const v5, 0x3e99999a    # 0.3f

    invoke-static {v5, v6}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v6, v6}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskFadeOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskFadeOutAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskFadeOutListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :cond_103
    const/4 v1, 0x2

    goto/16 :goto_83
.end method

.method private computeCertenLineCrossPoints(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 14

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6EffectCropView;->squareOfPoints(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result v8

    sget v9, Lcom/android/camera/ui/V6EffectCropView;->MIN_DIS_FOR_SLOPE:I

    if-ge v8, v9, :cond_9

    return-void

    :cond_9
    iget-object v8, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    float-to-int v5, v8

    iget-object v8, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    float-to-int v0, v8

    iget v8, p1, Landroid/graphics/Point;->x:I

    iget v9, p2, Landroid/graphics/Point;->x:I

    if-ne v8, v9, :cond_30

    iget v8, p1, Landroid/graphics/Point;->x:I

    const/4 v9, 0x0

    invoke-static {v8, v9, v5}, Lcom/android/camera/Util;->clamp(III)I

    move-result v6

    iget-object v8, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Landroid/graphics/Point;->set(II)V

    iget-object v8, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    invoke-virtual {v8, v6, v0}, Landroid/graphics/Point;->set(II)V

    return-void

    :cond_30
    iget v8, p1, Landroid/graphics/Point;->y:I

    iget v9, p2, Landroid/graphics/Point;->y:I

    if-ne v8, v9, :cond_49

    iget v8, p1, Landroid/graphics/Point;->y:I

    const/4 v9, 0x0

    invoke-static {v8, v9, v0}, Lcom/android/camera/Util;->clamp(III)I

    move-result v7

    iget-object v8, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v7}, Landroid/graphics/Point;->set(II)V

    iget-object v8, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    invoke-virtual {v8, v5, v7}, Landroid/graphics/Point;->set(II)V

    return-void

    :cond_49
    const/4 v8, 0x2

    new-array v2, v8, [Landroid/graphics/Point;

    const/4 v3, 0x0

    iget v8, p2, Landroid/graphics/Point;->y:I

    iget v9, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, p2, Landroid/graphics/Point;->x:I

    iget v10, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    div-float v1, v8, v9

    iget v8, p1, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    iget v9, p1, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    div-float/2addr v9, v1

    sub-float/2addr v8, v9

    float-to-int v6, v8

    if-ltz v6, :cond_72

    if-gt v6, v5, :cond_72

    const/4 v8, 0x0

    const/4 v3, 0x1

    new-instance v9, Landroid/graphics/Point;

    const/4 v10, 0x0

    invoke-direct {v9, v6, v10}, Landroid/graphics/Point;-><init>(II)V

    aput-object v9, v2, v8

    :cond_72
    iget v8, p1, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    iget v9, p1, Landroid/graphics/Point;->y:I

    sub-int v9, v0, v9

    int-to-float v9, v9

    div-float/2addr v9, v1

    add-float/2addr v8, v9

    float-to-int v6, v8

    if-ltz v6, :cond_8b

    if-gt v6, v5, :cond_8b

    add-int/lit8 v4, v3, 0x1

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v6, v0}, Landroid/graphics/Point;-><init>(II)V

    aput-object v8, v2, v3

    move v3, v4

    :cond_8b
    iget v8, p1, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    iget v9, p1, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    mul-float/2addr v9, v1

    sub-float/2addr v8, v9

    float-to-int v7, v8

    if-ltz v7, :cond_9f

    if-gt v7, v0, :cond_9f

    const/4 v8, 0x0

    invoke-direct {p0, v2, v8, v7}, Lcom/android/camera/ui/V6EffectCropView;->isContained([Landroid/graphics/Point;II)Z

    move-result v8

    if-eqz v8, :cond_f7

    :cond_9f
    :goto_9f
    iget v8, p1, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    iget v9, p1, Landroid/graphics/Point;->x:I

    sub-int v9, v5, v9

    int-to-float v9, v9

    mul-float/2addr v9, v1

    add-float/2addr v8, v9

    float-to-int v7, v8

    if-ltz v7, :cond_b4

    if-gt v7, v0, :cond_b4

    invoke-direct {p0, v2, v5, v7}, Lcom/android/camera/ui/V6EffectCropView;->isContained([Landroid/graphics/Point;II)Z

    move-result v8

    if-eqz v8, :cond_103

    :cond_b4
    move v4, v3

    :goto_b5
    const/4 v8, 0x1

    if-ne v4, v8, :cond_10d

    add-int/lit8 v3, v4, 0x1

    new-instance v8, Landroid/graphics/Point;

    const/4 v9, 0x0

    aget-object v9, v2, v9

    invoke-direct {v8, v9}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    aput-object v8, v2, v4

    :goto_c4
    const/4 v8, 0x2

    if-ne v3, v8, :cond_f6

    sget v8, Lcom/android/camera/ui/V6EffectCropView;->MIN_CROP_WIDTH_HEIGHT:I

    sget v9, Lcom/android/camera/ui/V6EffectCropView;->MIN_CROP_WIDTH_HEIGHT:I

    mul-int/2addr v8, v9

    const/4 v9, 0x0

    aget-object v9, v2, v9

    const/4 v10, 0x1

    aget-object v10, v2, v10

    invoke-direct {p0, v9, v10}, Lcom/android/camera/ui/V6EffectCropView;->squareOfPoints(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result v9

    if-gt v8, v9, :cond_f6

    iget-object v8, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    const/4 v9, 0x0

    aget-object v9, v2, v9

    iget v9, v9, Landroid/graphics/Point;->x:I

    const/4 v10, 0x0

    aget-object v10, v2, v10

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Point;->set(II)V

    iget-object v8, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    const/4 v9, 0x1

    aget-object v9, v2, v9

    iget v9, v9, Landroid/graphics/Point;->x:I

    const/4 v10, 0x1

    aget-object v10, v2, v10

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Point;->set(II)V

    :cond_f6
    return-void

    :cond_f7
    add-int/lit8 v4, v3, 0x1

    new-instance v8, Landroid/graphics/Point;

    const/4 v9, 0x0

    invoke-direct {v8, v9, v7}, Landroid/graphics/Point;-><init>(II)V

    aput-object v8, v2, v3

    move v3, v4

    goto :goto_9f

    :cond_103
    add-int/lit8 v4, v3, 0x1

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v5, v7}, Landroid/graphics/Point;-><init>(II)V

    aput-object v8, v2, v3

    goto :goto_b5

    :cond_10d
    move v3, v4

    goto :goto_c4
.end method

.method private computePointWithDistance(I)Landroid/graphics/Point;
    .registers 8

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    if-ne v4, v5, :cond_1c

    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, p1

    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Point;->set(II)V

    :goto_1b
    return-object v3

    :cond_1c
    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    if-ne v4, v5, :cond_33

    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, p1

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Point;->set(II)V

    goto :goto_1b

    :cond_33
    iget v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mCenterLineSquare:I

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    mul-int/2addr v4, p1

    int-to-float v4, v4

    div-float/2addr v4, v0

    float-to-int v1, v4

    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    mul-int/2addr v4, p1

    int-to-float v4, v4

    div-float/2addr v4, v0

    float-to-int v2, v4

    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Point;->set(II)V

    goto :goto_1b
.end method

.method private detectMovingEdges(FF)V
    .registers 23

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mIsRect:Z

    if-eqz v2, :cond_e7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sget v3, Lcom/android/camera/ui/V6EffectCropView;->TOUCH_TOLERANCE:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_54

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sget v3, Lcom/android/camera/ui/V6EffectCropView;->TOUCH_TOLERANCE:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    cmpg-float v2, v2, p2

    if-gtz v2, :cond_54

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v15

    sget v2, Lcom/android/camera/ui/V6EffectCropView;->TOUCH_TOLERANCE:I

    int-to-float v2, v2

    cmpg-float v2, v12, v2

    if-gtz v2, :cond_be

    cmpg-float v2, v12, v15

    if-gez v2, :cond_be

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    or-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    :cond_54
    :goto_54
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sget v3, Lcom/android/camera/ui/V6EffectCropView;->TOUCH_TOLERANCE:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_a3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sget v3, Lcom/android/camera/ui/V6EffectCropView;->TOUCH_TOLERANCE:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    cmpg-float v2, v2, p1

    if-gtz v2, :cond_a3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v8

    sget v2, Lcom/android/camera/ui/V6EffectCropView;->TOUCH_TOLERANCE:I

    int-to-float v2, v2

    cmpg-float v2, v17, v2

    if-gtz v2, :cond_d0

    const/4 v2, 0x1

    move v3, v2

    :goto_91
    cmpg-float v2, v17, v8

    if-gez v2, :cond_d3

    const/4 v2, 0x1

    :goto_96
    and-int/2addr v2, v3

    if-eqz v2, :cond_d5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    or-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    :cond_a3
    :goto_a3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_bd

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    if-nez v2, :cond_bd

    const/16 v2, 0x10

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    :cond_bd
    :goto_bd
    return-void

    :cond_be
    sget v2, Lcom/android/camera/ui/V6EffectCropView;->TOUCH_TOLERANCE:I

    int-to-float v2, v2

    cmpg-float v2, v15, v2

    if-gtz v2, :cond_54

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    or-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    goto :goto_54

    :cond_d0
    const/4 v2, 0x0

    move v3, v2

    goto :goto_91

    :cond_d3
    const/4 v2, 0x0

    goto :goto_96

    :cond_d5
    sget v2, Lcom/android/camera/ui/V6EffectCropView;->TOUCH_TOLERANCE:I

    int-to-float v2, v2

    cmpg-float v2, v8, v2

    if-gtz v2, :cond_a3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    or-int/lit8 v2, v2, 0x8

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    goto :goto_a3

    :cond_e7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mIsCircle:Z

    if-eqz v2, :cond_157

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/V6EffectCropView;->showTiltShiftMask()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x40800000    # 4.0f

    div-float v13, v2, v3

    mul-float v14, v13, v13

    sget v2, Lcom/android/camera/ui/V6EffectCropView;->CIRCLE_RESIZE_TOUCH_TOLERANCE:I

    int-to-float v2, v2

    add-float/2addr v2, v13

    sget v3, Lcom/android/camera/ui/V6EffectCropView;->CIRCLE_RESIZE_TOUCH_TOLERANCE:I

    int-to-float v3, v3

    add-float/2addr v3, v13

    mul-float v16, v2, v3

    sub-float v2, p1, v9

    sub-float v3, p1, v9

    mul-float/2addr v2, v3

    sub-float v3, p2, v10

    sub-float v4, p2, v10

    mul-float/2addr v3, v4

    add-float v11, v2, v3

    cmpl-float v2, v11, v14

    if-lez v2, :cond_13b

    cmpg-float v2, v11, v16

    if-gtz v2, :cond_13b

    const/16 v2, 0x20

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    :cond_13b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_bd

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    if-nez v2, :cond_bd

    const/16 v2, 0x10

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    goto/16 :goto_bd

    :cond_157
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/V6EffectCropView;->showTiltShiftMask()V

    new-instance v19, Landroid/graphics/Point;

    move/from16 v0, p1

    float-to-int v2, v0

    move/from16 v0, p2

    float-to-int v3, v0

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mTouchCenter:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    sget v2, Lcom/android/camera/ui/V6EffectCropView;->MIN_DIS_FOR_MOVE_POINT:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/V6EffectCropView;->mCenterLineSquare:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1b3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v2}, Lcom/android/camera/ui/V6EffectCropView;->squareOfPoints(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/V6EffectCropView;->mCenterLineSquare:I

    div-int/lit8 v3, v3, 0x10

    if-ge v2, v3, :cond_1b3

    const/16 v2, 0x101

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    goto/16 :goto_bd

    :cond_1b3
    sget v2, Lcom/android/camera/ui/V6EffectCropView;->MIN_DIS_FOR_MOVE_POINT:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/V6EffectCropView;->mCenterLineSquare:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1da

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v2}, Lcom/android/camera/ui/V6EffectCropView;->squareOfPoints(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/V6EffectCropView;->mCenterLineSquare:I

    div-int/lit8 v3, v3, 0x10

    if-ge v2, v3, :cond_1da

    const/16 v2, 0x102

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    goto/16 :goto_bd

    :cond_1da
    new-instance v5, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    invoke-direct {v5, v2}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    new-instance v6, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    invoke-direct {v6, v2}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/ui/V6EffectCropView;->getSquareOfDistance(FFLandroid/graphics/PointF;Landroid/graphics/PointF;Z)F

    move-result v18

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mRangeWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/V6EffectCropView;->mRangeWidth:I

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x9

    int-to-float v2, v2

    cmpg-float v2, v18, v2

    if-gez v2, :cond_20f

    const/16 v2, 0x10

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    goto/16 :goto_bd

    :cond_20f
    move/from16 v0, v18

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mLastMoveDis:D

    const/16 v2, 0x104

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    goto/16 :goto_bd
.end method

.method private getSquareOfDistance(FFLandroid/graphics/PointF;Landroid/graphics/PointF;Z)F
    .registers 22

    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p4

    iget v8, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p4

    iget v10, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v11, v7, v8

    if-nez v11, :cond_1a

    sub-float v11, p1, v7

    sub-float v12, p1, v7

    mul-float/2addr v11, v12

    return v11

    :cond_1a
    cmpl-float v11, v9, v10

    if-nez v11, :cond_24

    sub-float v11, p2, v9

    sub-float v12, p2, v9

    mul-float/2addr v11, v12

    return v11

    :cond_24
    sub-float v11, v8, v7

    sub-float v12, p1, v7

    mul-float/2addr v11, v12

    sub-float v12, v10, v9

    sub-float v13, p2, v9

    mul-float/2addr v12, v13

    add-float v2, v11, v12

    if-eqz p5, :cond_45

    float-to-double v12, v2

    const-wide/16 v14, 0x0

    cmpg-double v11, v12, v14

    if-gtz v11, :cond_45

    sub-float v11, p1, v7

    sub-float v12, p1, v7

    mul-float/2addr v11, v12

    sub-float v12, p2, v9

    sub-float v13, p2, v9

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    return v11

    :cond_45
    sub-float v11, v8, v7

    sub-float v12, v8, v7

    mul-float/2addr v11, v12

    sub-float v12, v10, v9

    sub-float v13, v10, v9

    mul-float/2addr v12, v13

    add-float v3, v11, v12

    if-eqz p5, :cond_63

    cmpl-float v11, v2, v3

    if-ltz v11, :cond_63

    sub-float v11, p1, v8

    sub-float v12, p1, v8

    mul-float/2addr v11, v12

    sub-float v12, p2, v10

    sub-float v13, p2, v10

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    return v11

    :cond_63
    div-float v6, v2, v3

    sub-float v11, v8, v7

    mul-float/2addr v11, v6

    add-float v4, v7, v11

    sub-float v11, v10, v9

    mul-float/2addr v11, v6

    add-float v5, v9, v11

    sub-float v11, p1, v4

    sub-float v12, p1, v4

    mul-float/2addr v11, v12

    sub-float v12, v5, p2

    sub-float v13, v5, p2

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    return v11
.end method

.method private hideTiltShiftMask()V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private initHandler()V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskHandler:Landroid/os/Handler;

    if-nez v0, :cond_f

    new-instance v0, Lcom/android/camera/ui/V6EffectCropView$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/V6EffectCropView$2;-><init>(Lcom/android/camera/ui/V6EffectCropView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskHandler:Landroid/os/Handler;

    :cond_f
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateHandler:Landroid/os/Handler;

    if-nez v0, :cond_2f

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "animateThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/camera/ui/V6EffectCropView$3;

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/V6EffectCropView$3;-><init>(Lcom/android/camera/ui/V6EffectCropView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateHandler:Landroid/os/Handler;

    :cond_2f
    return-void
.end method

.method private static isCircle(I)Z
    .registers 2

    sget v0, Lcom/android/camera/effect/EffectController;->sGaussianIndex:I

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private isContained([Landroid/graphics/Point;II)Z
    .registers 9

    const/4 v2, 0x0

    if-eqz p1, :cond_1c

    array-length v1, p1

    if-eqz v1, :cond_1c

    array-length v3, p1

    move v1, v2

    :goto_8
    if-ge v1, v3, :cond_1c

    aget-object v0, p1, v1

    if-nez v0, :cond_f

    return v2

    :cond_f
    iget v4, v0, Landroid/graphics/Point;->x:I

    if-eq v4, p2, :cond_17

    iget v4, v0, Landroid/graphics/Point;->y:I

    if-ne v4, p3, :cond_19

    :cond_17
    const/4 v1, 0x1

    return v1

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1c
    return v2
.end method

.method private static isRect(I)Z
    .registers 2

    invoke-static {p0}, Lcom/android/camera/ui/V6EffectCropView;->isTiltShift(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private static isTiltShift(I)Z
    .registers 3

    const/4 v0, 0x1

    sget v1, Lcom/android/camera/effect/EffectController;->sTiltShiftIndex:I

    if-eq p0, v1, :cond_9

    sget v1, Lcom/android/camera/effect/EffectController;->sGaussianIndex:I

    if-ne p0, v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private moveCircle(FFFF)V
    .registers 15

    const/4 v7, 0x0

    iget v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    const/16 v6, 0x10

    if-ne v5, v6, :cond_4e

    cmpl-float v5, p3, v7

    if-lez v5, :cond_32

    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    iget-object v6, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v6

    invoke-static {v5, p3}, Ljava/lang/Math;->min(FF)F

    move-result p3

    :goto_18
    cmpl-float v5, p4, v7

    if-lez v5, :cond_40

    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, v6

    invoke-static {v5, p4}, Ljava/lang/Math;->min(FF)F

    move-result p4

    :goto_29
    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v5, p3, p4}, Landroid/graphics/RectF;->offset(FF)V

    :goto_2e
    invoke-direct {p0}, Lcom/android/camera/ui/V6EffectCropView;->onCropChange()V

    return-void

    :cond_32
    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v6

    invoke-static {v5, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    goto :goto_18

    :cond_40
    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v6

    invoke-static {v5, p4}, Ljava/lang/Math;->max(FF)F

    move-result p4

    goto :goto_29

    :cond_4e
    sget v5, Lcom/android/camera/ui/V6EffectCropView;->MIN_CROP_WIDTH_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v3, v5

    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget-object v6, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v2, v5, v6

    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    sub-float v5, p1, v0

    sub-float v6, p1, v0

    mul-float/2addr v5, v6

    sub-float v6, p2, v1

    sub-float v7, p2, v1

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v4, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    sub-float v6, v0, v4

    sub-float v7, v1, v4

    add-float v8, v0, v4

    add-float v9, v1, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2e
.end method

.method private moveCrop(FFFF)V
    .registers 13

    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    const/16 v1, 0x104

    if-ne v0, v1, :cond_39

    new-instance v3, Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    invoke-direct {v3, v0}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    new-instance v4, Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    invoke-direct {v4, v0}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/V6EffectCropView;->getSquareOfDistance(FFLandroid/graphics/PointF;Landroid/graphics/PointF;Z)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mRangeWidth:I

    iget-wide v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastMoveDis:D

    sub-double v2, v6, v2

    double-to-int v1, v2

    add-int/2addr v0, v1

    sget v1, Lcom/android/camera/ui/V6EffectCropView;->MIN_RANGE:I

    iget v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mMaxRange:I

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mRangeWidth:I

    iput-wide v6, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastMoveDis:D

    :cond_35
    :goto_35
    invoke-direct {p0}, Lcom/android/camera/ui/V6EffectCropView;->onCropChange()V

    return-void

    :cond_39
    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    const/16 v1, 0x101

    if-eq v0, v1, :cond_45

    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    const/16 v1, 0x102

    if-ne v0, v1, :cond_52

    :cond_45
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mTouchCenter:Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    float-to-int v2, p1

    float-to-int v3, p2

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/V6EffectCropView;->computeCertenLineCrossPoints(Landroid/graphics/Point;Landroid/graphics/Point;)V

    goto :goto_35

    :cond_52
    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_35

    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    float-to-int v2, p3

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    float-to-int v3, p4

    add-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    new-instance v1, Landroid/graphics/Point;

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    float-to-int v3, p3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    float-to-int v4, p4

    add-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/V6EffectCropView;->computeCertenLineCrossPoints(Landroid/graphics/Point;Landroid/graphics/Point;)V

    goto :goto_35
.end method

.method private moveEdges(FF)V
    .registers 8

    const/4 v4, 0x0

    iget v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_4e

    cmpl-float v2, p1, v4

    if-lez v2, :cond_32

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    :goto_18
    cmpl-float v2, p2, v4

    if-lez v2, :cond_40

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    invoke-static {v2, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    :goto_29
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    :goto_2e
    invoke-direct {p0}, Lcom/android/camera/ui/V6EffectCropView;->onCropChange()V

    return-void

    :cond_32
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_18

    :cond_40
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    goto :goto_29

    :cond_4e
    sget v2, Lcom/android/camera/ui/V6EffectCropView;->MIN_CROP_WIDTH_HEIGHT:I

    int-to-float v1, v2

    sget v2, Lcom/android/camera/ui/V6EffectCropView;->MIN_CROP_WIDTH_HEIGHT:I

    int-to-float v0, v2

    iget v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_6c

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, p1

    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->left:F

    :cond_6c
    iget v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_84

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p2

    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    :cond_84
    iget v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_9c

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, p1

    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    :cond_9c
    iget v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_b4

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p2

    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    :cond_b4
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    goto/16 :goto_2e
.end method

.method private normalizeRangeWidth()V
    .registers 8

    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mRangeWidth:I

    invoke-direct {p0, v0}, Lcom/android/camera/ui/V6EffectCropView;->computePointWithDistance(I)Landroid/graphics/Point;

    move-result-object v6

    iget v0, v6, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float v1, v0, v1

    iget v0, v6, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float v2, v0, v2

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mEffectPoint1:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mEffectPoint2:Landroid/graphics/PointF;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/V6EffectCropView;->getSquareOfDistance(FFLandroid/graphics/PointF;Landroid/graphics/PointF;Z)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mNormalizedWidth:F

    return-void
.end method

.method private onCropChange()V
    .registers 8

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mEffectRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    div-float/2addr v3, v1

    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    div-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    div-float/2addr v5, v1

    iget-object v6, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v6, v0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mEffectPoint1:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    div-float/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mEffectPoint2:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    div-float/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    invoke-direct {p0, v2, v3}, Lcom/android/camera/ui/V6EffectCropView;->squareOfPoints(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mCenterLineSquare:I

    invoke-direct {p0}, Lcom/android/camera/ui/V6EffectCropView;->normalizeRangeWidth()V

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mEffectRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mEffectPoint1:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mEffectPoint2:Landroid/graphics/PointF;

    iget v6, p0, Lcom/android/camera/ui/V6EffectCropView;->mNormalizedWidth:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/camera/effect/EffectController;->setEffectAttribute(Landroid/graphics/RectF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)V

    iget-boolean v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsRect:Z

    if-eqz v2, :cond_6a

    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectCropView;->invalidate()V

    :cond_6a
    return-void
.end method

.method private showTiltShiftMask()V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private squareOfPoints(Landroid/graphics/Point;Landroid/graphics/Point;)I
    .registers 7

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p2, Landroid/graphics/Point;->x:I

    sub-int v0, v2, v3

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p2, Landroid/graphics/Point;->y:I

    sub-int v1, v2, v3

    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    return v2
.end method


# virtual methods
.method public enableControls(Z)V
    .registers 2

    return-void
.end method

.method public hide()V
    .registers 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mVisible:Z

    if-eqz v0, :cond_19

    iput-boolean v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mVisible:Z

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6EffectCropView;->setVisibility(I)V

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->clearEffectAttribute()V

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectController;->setInvertFlag(I)V

    :cond_19
    return-void
.end method

.method public isMoved()Z
    .registers 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsInTapSlop:Z

    if-nez v1, :cond_a

    iget v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public isVisible()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mVisible:Z

    return v0
.end method

.method public onCameraOpen()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectCropView;->updateVisible()V

    return-void
.end method

.method public onCreate()V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/ui/V6EffectCropView;->initHandler()V

    return-void
.end method

.method public onDestory()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateThread:Landroid/os/HandlerThread;

    iput-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateHandler:Landroid/os/Handler;

    :cond_e
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mVisible:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsRect:Z

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sget v2, Lcom/android/camera/ui/V6EffectCropView;->CORNER_BALL_RADIUS:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCornerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sget v2, Lcom/android/camera/ui/V6EffectCropView;->CORNER_BALL_RADIUS:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCornerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sget v2, Lcom/android/camera/ui/V6EffectCropView;->CORNER_BALL_RADIUS:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCornerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sget v2, Lcom/android/camera/ui/V6EffectCropView;->CORNER_BALL_RADIUS:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCornerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_50
    return-void
.end method

.method public onPause()V
    .registers 4

    const/4 v2, 0x2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimationStartRange:I

    iget v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateRangeWidth:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mRangeWidth:I

    :cond_22
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimationStartRadius:I

    iget v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateRadius:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mRadius:I

    :cond_36
    return-void
.end method

.method public onResume()V
    .registers 1

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 12

    const/4 v4, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mDefaultRectBounds:Landroid/graphics/RectF;

    mul-int/lit8 v2, p1, 0x3

    div-int/lit8 v2, v2, 0x8

    int-to-float v2, v2

    mul-int/lit8 v3, p2, 0x3

    div-int/lit8 v3, v3, 0x8

    int-to-float v3, v3

    mul-int/lit8 v4, p1, 0x5

    div-int/lit8 v4, v4, 0x8

    int-to-float v4, v4

    mul-int/lit8 v5, p2, 0x5

    div-int/lit8 v5, v5, 0x8

    int-to-float v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    sget v1, Lcom/android/camera/ui/V6EffectCropView;->DEFAULT_RADIUS:I

    int-to-float v0, v1

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mDefaultCircleBounds:Landroid/graphics/RectF;

    int-to-float v2, p1

    div-float/2addr v2, v6

    sub-float/2addr v2, v0

    int-to-float v3, p2

    div-float/2addr v3, v6

    sub-float/2addr v3, v0

    int-to-float v4, p1

    div-float/2addr v4, v6

    add-float/2addr v4, v0

    int-to-float v5, p2

    div-float/2addr v5, v6

    add-float/2addr v5, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget-boolean v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsRect:Z

    if-eqz v1, :cond_63

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mDefaultRectBounds:Landroid/graphics/RectF;

    :goto_3f
    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    div-int/lit8 v2, p2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Point;->set(II)V

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    div-int/lit8 v2, p2, 0x2

    invoke-virtual {v1, p1, v2}, Landroid/graphics/Point;->set(II)V

    mul-int/lit8 v1, p2, 0x2

    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mMaxRange:I

    iget-boolean v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mVisible:Z

    if-eqz v1, :cond_66

    sget v1, Lcom/android/camera/ui/V6EffectCropView;->DEFAULT_RANGE:I

    :goto_5d
    iput v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mRangeWidth:I

    invoke-direct {p0}, Lcom/android/camera/ui/V6EffectCropView;->onCropChange()V

    return-void

    :cond_63
    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mDefaultCircleBounds:Landroid/graphics/RectF;

    goto :goto_3f

    :cond_66
    sget v1, Lcom/android/camera/ui/V6EffectCropView;->ANIMATE_START_RANGE:I

    goto :goto_5d
.end method

.method public onViewTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-boolean v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mVisible:Z

    if-nez v4, :cond_7

    return v7

    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectCropView;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    packed-switch v4, :pswitch_data_84

    :cond_1e
    :goto_1e
    :pswitch_1e
    return v8

    :pswitch_1f
    invoke-direct {p0, v2, v3}, Lcom/android/camera/ui/V6EffectCropView;->detectMovingEdges(FF)V

    iput-boolean v8, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsInTapSlop:Z

    iput v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastX:F

    iput v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastY:F

    goto :goto_1e

    :pswitch_29
    iget v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastX:F

    sub-float v0, v2, v4

    iget v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastY:F

    sub-float v1, v3, v4

    iget-boolean v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsInTapSlop:Z

    if-eqz v4, :cond_43

    iget v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mTapSlop:I

    int-to-float v4, v4

    mul-float v5, v0, v0

    mul-float v6, v1, v1

    add-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_43

    iput-boolean v7, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsInTapSlop:Z

    :cond_43
    iget-boolean v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsInTapSlop:Z

    if-nez v4, :cond_1e

    iget v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    if-eqz v4, :cond_5a

    iget-boolean v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsRect:Z

    if-eqz v4, :cond_5f

    iget v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastX:F

    sub-float v4, v2, v4

    iget v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastY:F

    sub-float v5, v3, v5

    invoke-direct {p0, v4, v5}, Lcom/android/camera/ui/V6EffectCropView;->moveEdges(FF)V

    :cond_5a
    :goto_5a
    iput v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastX:F

    iput v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastY:F

    goto :goto_1e

    :cond_5f
    iget-boolean v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsCircle:Z

    if-eqz v4, :cond_6f

    iget v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastX:F

    sub-float v4, v2, v4

    iget v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastY:F

    sub-float v5, v3, v5

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/camera/ui/V6EffectCropView;->moveCircle(FFFF)V

    goto :goto_5a

    :cond_6f
    iget v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastX:F

    sub-float v4, v2, v4

    iget v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastY:F

    sub-float v5, v3, v5

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/camera/ui/V6EffectCropView;->moveCrop(FFFF)V

    goto :goto_5a

    :pswitch_7b
    iput v7, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    invoke-direct {p0}, Lcom/android/camera/ui/V6EffectCropView;->hideTiltShiftMask()V

    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectCropView;->invalidate()V

    goto :goto_1e

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_7b
        :pswitch_29
        :pswitch_7b
        :pswitch_1e
        :pswitch_7b
    .end packed-switch
.end method

.method public removeTiltShiftMask()V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskHandler:Landroid/os/Handler;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_10
    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .registers 2

    return-void
.end method

.method public show()V
    .registers 4

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/EffectController;->getEffect(Z)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6EffectCropView;->show(I)V

    return-void
.end method

.method public show(I)V
    .registers 12

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/camera/effect/EffectController;->isNeedRect(I)Z

    move-result v2

    if-eqz v2, :cond_bd

    iget-boolean v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mVisible:Z

    if-eqz v2, :cond_19

    iget-boolean v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsRect:Z

    invoke-static {p1}, Lcom/android/camera/ui/V6EffectCropView;->isRect(I)Z

    move-result v3

    if-eq v2, v3, :cond_be

    :cond_19
    :goto_19
    iput-boolean v8, p0, Lcom/android/camera/ui/V6EffectCropView;->mVisible:Z

    iput v7, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    invoke-virtual {p0, v7}, Lcom/android/camera/ui/V6EffectCropView;->setVisibility(I)V

    invoke-static {p1}, Lcom/android/camera/ui/V6EffectCropView;->isRect(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsRect:Z

    invoke-static {p1}, Lcom/android/camera/ui/V6EffectCropView;->isCircle(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsCircle:Z

    invoke-static {p1}, Lcom/android/camera/ui/V6EffectCropView;->isTiltShift(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsTiltShift:Z

    iget-boolean v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsTiltShift:Z

    if-eqz v2, :cond_d2

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v7, v3}, Landroid/graphics/Point;->set(II)V

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    sget v2, Lcom/android/camera/ui/V6EffectCropView;->ANIMATE_START_RANGE:I

    iput v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mRangeWidth:I

    sget v2, Lcom/android/camera/ui/V6EffectCropView;->ANIMATE_START_RADIUS:I

    iput v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mRadius:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimationStartTime:J

    const-wide/16 v2, 0x258

    iput-wide v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimationTotalTime:J

    sget v2, Lcom/android/camera/ui/V6EffectCropView;->DEFAULT_RANGE:I

    iget v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mRangeWidth:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateRangeWidth:I

    iget v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mRangeWidth:I

    iput v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimationStartRange:I

    sget v2, Lcom/android/camera/ui/V6EffectCropView;->DEFAULT_RADIUS:I

    iget v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mRadius:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateRadius:I

    iget v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mRadius:I

    iput v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimationStartRadius:I

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mDefaultCircleBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mDefaultCircleBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mRadius:I

    int-to-float v3, v3

    sub-float v3, v0, v3

    iget v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mRadius:I

    int-to-float v4, v4

    sub-float v4, v1, v4

    iget v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mRadius:I

    int-to-float v5, v5

    add-float/2addr v5, v0

    iget v6, p0, Lcom/android/camera/ui/V6EffectCropView;->mRadius:I

    int-to-float v6, v6

    add-float/2addr v6, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-direct {p0}, Lcom/android/camera/ui/V6EffectCropView;->showTiltShiftMask()V

    sget v2, Lcom/android/camera/effect/EffectController;->sTiltShiftIndex:I

    if-ne v2, p1, :cond_c8

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_b0
    :goto_b0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectCropView;->invalidate()V

    :goto_b3
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/camera/effect/EffectController;->setInvertFlag(I)V

    invoke-direct {p0}, Lcom/android/camera/ui/V6EffectCropView;->onCropChange()V

    :cond_bd
    return-void

    :cond_be
    iget-boolean v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsCircle:Z

    invoke-static {p1}, Lcom/android/camera/ui/V6EffectCropView;->isCircle(I)Z

    move-result v3

    if-eq v2, v3, :cond_bd

    goto/16 :goto_19

    :cond_c8
    sget v2, Lcom/android/camera/effect/EffectController;->sGaussianIndex:I

    if-ne v2, p1, :cond_b0

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_b0

    :cond_d2
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mDefaultRectBounds:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v9, v2}, Lcom/android/camera/ui/V6EffectCropView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_b3
.end method

.method public updateVisible()V
    .registers 4

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/EffectController;->getEffect(Z)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6EffectCropView;->updateVisible(I)V

    return-void
.end method

.method public updateVisible(I)V
    .registers 3

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/EffectController;->isNeedRect(I)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6EffectCropView;->show(I)V

    :goto_13
    return-void

    :cond_14
    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectCropView;->hide()V

    goto :goto_13
.end method
