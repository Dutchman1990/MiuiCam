.class public Lcom/android/camera/ui/ObjectView;
.super Lcom/android/camera/ui/FrameView;
.source "ObjectView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ObjectView$1;,
        Lcom/android/camera/ui/ObjectView$EndAction;,
        Lcom/android/camera/ui/ObjectView$Filter;,
        Lcom/android/camera/ui/ObjectView$ObjectViewListener;,
        Lcom/android/camera/ui/ObjectView$StartAction;
    }
.end annotation


# static fields
.field private static final NEAR_EDGE:I

.field private static final OBJECT_TRACKING_ICON:[I

.field private static final RECT_EDGE_WIDTH:I

.field private static final TOUCH_TOLERANCE:I

.field private static final VERTEXS_TOUCH_TOLERANCE:I


# instance fields
.field private final mDisplayBounds:Landroid/graphics/RectF;

.field private mEndAction:Ljava/lang/Runnable;

.field protected mFace:Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

.field private mFace2UIMatrix:Landroid/graphics/Matrix;

.field private mFilter:Lcom/android/camera/ui/ObjectView$Filter;

.field private mHandler:Landroid/os/Handler;

.field private mLastX:F

.field private mLastY:F

.field private mListener:Lcom/android/camera/ui/ObjectView$ObjectViewListener;

.field private mLostTrackThreshold:I

.field private mLostTrackingNum:I

.field private mMovingMode:I

.field protected mObjectRect:Landroid/graphics/RectF;

.field protected mOldObjectRect:Landroid/graphics/RectF;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mStartAction:Ljava/lang/Runnable;

.field protected mTrackIndicator:Landroid/graphics/drawable/Drawable;

.field private mTrackStatusIndicator:[Landroid/graphics/drawable/Drawable;

.field private mZoomAnimaState:I


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/ObjectView;)Lcom/android/camera/ui/ObjectView$Filter;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mFilter:Lcom/android/camera/ui/ObjectView$Filter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/ObjectView;)Lcom/android/camera/ui/ObjectView$ObjectViewListener;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mListener:Lcom/android/camera/ui/ObjectView$ObjectViewListener;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/camera/ui/ObjectView;I)I
    .registers 2

    iput p1, p0, Lcom/android/camera/ui/ObjectView;->mZoomAnimaState:I

    return p1
.end method

.method static constructor <clinit>()V
    .registers 2

    const/high16 v1, 0x420c0000    # 35.0f

    const/high16 v0, 0x41c80000    # 25.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/ObjectView;->TOUCH_TOLERANCE:I

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/ObjectView;->VERTEXS_TOUCH_TOLERANCE:I

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/ObjectView;->NEAR_EDGE:I

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/ObjectView;->RECT_EDGE_WIDTH:I

    const v0, 0x7f0200ca

    const v1, 0x7f0200cb

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/ObjectView;->OBJECT_TRACKING_ICON:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/FrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v1, Lcom/android/camera/ui/ObjectView$StartAction;

    invoke-direct {v1, p0, v2}, Lcom/android/camera/ui/ObjectView$StartAction;-><init>(Lcom/android/camera/ui/ObjectView;Lcom/android/camera/ui/ObjectView$StartAction;)V

    iput-object v1, p0, Lcom/android/camera/ui/ObjectView;->mStartAction:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/camera/ui/ObjectView$EndAction;

    invoke-direct {v1, p0, v2}, Lcom/android/camera/ui/ObjectView$EndAction;-><init>(Lcom/android/camera/ui/ObjectView;Lcom/android/camera/ui/ObjectView$EndAction;)V

    iput-object v1, p0, Lcom/android/camera/ui/ObjectView;->mEndAction:Ljava/lang/Runnable;

    sget-object v1, Lcom/android/camera/ui/ObjectView;->OBJECT_TRACKING_ICON:[I

    array-length v1, v1

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/camera/ui/ObjectView;->mTrackStatusIndicator:[Landroid/graphics/drawable/Drawable;

    iput v4, p0, Lcom/android/camera/ui/ObjectView;->mZoomAnimaState:I

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/ObjectView;->mOldObjectRect:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/ObjectView;->mDisplayBounds:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/ObjectView;->mFace2UIMatrix:Landroid/graphics/Matrix;

    iput v4, p0, Lcom/android/camera/ui/ObjectView;->mLostTrackingNum:I

    new-instance v1, Lcom/android/camera/ui/ObjectView$Filter;

    invoke-direct {v1, p0, v2}, Lcom/android/camera/ui/ObjectView$Filter;-><init>(Lcom/android/camera/ui/ObjectView;Lcom/android/camera/ui/ObjectView$Filter;)V

    iput-object v1, p0, Lcom/android/camera/ui/ObjectView;->mFilter:Lcom/android/camera/ui/ObjectView$Filter;

    new-instance v1, Lcom/android/camera/ui/ObjectView$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/ObjectView$1;-><init>(Lcom/android/camera/ui/ObjectView;)V

    iput-object v1, p0, Lcom/android/camera/ui/ObjectView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    :goto_49
    sget-object v1, Lcom/android/camera/ui/ObjectView;->OBJECT_TRACKING_ICON:[I

    array-length v1, v1

    if-ge v0, v1, :cond_63

    iget-object v1, p0, Lcom/android/camera/ui/ObjectView;->mTrackStatusIndicator:[Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/camera/ui/ObjectView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/android/camera/ui/ObjectView;->OBJECT_TRACKING_ICON:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    :cond_63
    iget-object v1, p0, Lcom/android/camera/ui/ObjectView;->mTrackStatusIndicator:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v4

    iput-object v1, p0, Lcom/android/camera/ui/ObjectView;->mTrackIndicator:Landroid/graphics/drawable/Drawable;

    check-cast p1, Lcom/android/camera/Camera;

    iput-object p1, p0, Lcom/android/camera/ui/ObjectView;->mContext:Landroid/content/Context;

    return-void
.end method

.method private detectMovingStyle(FFFF)V
    .registers 13

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    cmpg-float v6, p3, v7

    if-ltz v6, :cond_b

    cmpg-float v6, p4, v7

    if-gez v6, :cond_8f

    :cond_b
    iput v5, p0, Lcom/android/camera/ui/ObjectView;->mMovingMode:I

    iget-object v6, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    sub-float v6, p1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v6, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    sub-float v6, p1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sget v6, Lcom/android/camera/ui/ObjectView;->TOUCH_TOLERANCE:I

    int-to-float v6, v6

    cmpg-float v6, v1, v6

    if-gtz v6, :cond_6f

    cmpg-float v6, v1, v2

    if-gez v6, :cond_6f

    iget v6, p0, Lcom/android/camera/ui/ObjectView;->mMovingMode:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/camera/ui/ObjectView;->mMovingMode:I

    :cond_32
    :goto_32
    iget-object v6, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    sub-float v6, p2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v6, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    sub-float v6, p2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v6, Lcom/android/camera/ui/ObjectView;->TOUCH_TOLERANCE:I

    int-to-float v6, v6

    cmpg-float v6, v3, v6

    if-gtz v6, :cond_7d

    move v6, v4

    :goto_4e
    cmpg-float v7, v3, v0

    if-gez v7, :cond_7f

    :goto_52
    and-int/2addr v4, v6

    if-eqz v4, :cond_81

    iget v4, p0, Lcom/android/camera/ui/ObjectView;->mMovingMode:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/android/camera/ui/ObjectView;->mMovingMode:I

    :cond_5b
    :goto_5b
    iget-object v4, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v4, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_6b

    iget v4, p0, Lcom/android/camera/ui/ObjectView;->mMovingMode:I

    if-nez v4, :cond_6b

    const/16 v4, 0x10

    iput v4, p0, Lcom/android/camera/ui/ObjectView;->mMovingMode:I

    :cond_6b
    :goto_6b
    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->invalidate()V

    return-void

    :cond_6f
    sget v6, Lcom/android/camera/ui/ObjectView;->TOUCH_TOLERANCE:I

    int-to-float v6, v6

    cmpg-float v6, v2, v6

    if-gtz v6, :cond_32

    iget v6, p0, Lcom/android/camera/ui/ObjectView;->mMovingMode:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/android/camera/ui/ObjectView;->mMovingMode:I

    goto :goto_32

    :cond_7d
    move v6, v5

    goto :goto_4e

    :cond_7f
    move v4, v5

    goto :goto_52

    :cond_81
    sget v4, Lcom/android/camera/ui/ObjectView;->TOUCH_TOLERANCE:I

    int-to-float v4, v4

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_5b

    iget v4, p0, Lcom/android/camera/ui/ObjectView;->mMovingMode:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/android/camera/ui/ObjectView;->mMovingMode:I

    goto :goto_5b

    :cond_8f
    iget-object v4, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sget v5, Lcom/android/camera/ui/ObjectView;->VERTEXS_TOUCH_TOLERANCE:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_6b

    iget-object v4, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sget v5, Lcom/android/camera/ui/ObjectView;->VERTEXS_TOUCH_TOLERANCE:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_6b

    iget-object v4, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-static {p2, p4}, Ljava/lang/Math;->min(FF)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sget v5, Lcom/android/camera/ui/ObjectView;->VERTEXS_TOUCH_TOLERANCE:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_6b

    iget-object v4, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sget v5, Lcom/android/camera/ui/ObjectView;->VERTEXS_TOUCH_TOLERANCE:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_6b

    const/16 v4, 0x20

    iput v4, p0, Lcom/android/camera/ui/ObjectView;->mMovingMode:I

    goto :goto_6b
.end method

.method private isInObjectViewArea(FF)Z
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sget v2, Lcom/android/camera/ui/ObjectView;->RECT_EDGE_WIDTH:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_32

    iget-object v1, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sget v2, Lcom/android/camera/ui/ObjectView;->RECT_EDGE_WIDTH:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpg-float v1, p1, v1

    if-gez v1, :cond_32

    iget-object v1, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sget v2, Lcom/android/camera/ui/ObjectView;->RECT_EDGE_WIDTH:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_32

    iget-object v1, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sget v2, Lcom/android/camera/ui/ObjectView;->RECT_EDGE_WIDTH:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpg-float v1, p2, v1

    if-gez v1, :cond_32

    const/4 v0, 0x1

    :cond_32
    return v0
.end method

.method private mapRect(Landroid/graphics/RectF;Z)Landroid/graphics/RectF;
    .registers 5

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    if-eqz p2, :cond_10

    iget-object v1, p0, Lcom/android/camera/ui/ObjectView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :goto_f
    return-object v0

    :cond_10
    iget-object v1, p0, Lcom/android/camera/ui/ObjectView;->mFace2UIMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto :goto_f
.end method

.method private moveObjectView(Landroid/view/MotionEvent;)V
    .registers 14

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x43480000    # 200.0f

    iget v6, p0, Lcom/android/camera/ui/ObjectView;->mMovingMode:I

    const/16 v7, 0x20

    if-ne v6, v7, :cond_53

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    sub-float v6, v3, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v9, v6

    if-gez v6, :cond_35

    iget-object v6, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iput v7, v6, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v6, Landroid/graphics/RectF;->right:F

    :cond_35
    sub-float v6, v5, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v9, v6

    if-gez v6, :cond_4f

    iget-object v6, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iput v7, v6, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v6, Landroid/graphics/RectF;->bottom:F

    :cond_4f
    :goto_4f
    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->invalidate()V

    return-void

    :cond_53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget v7, p0, Lcom/android/camera/ui/ObjectView;->mLastX:F

    sub-float v0, v6, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget v7, p0, Lcom/android/camera/ui/ObjectView;->mLastY:F

    sub-float v1, v6, v7

    iget v6, p0, Lcom/android/camera/ui/ObjectView;->mMovingMode:I

    const/16 v7, 0x10

    if-ne v6, v7, :cond_ad

    cmpl-float v6, v0, v10

    if-lez v6, :cond_91

    iget-object v6, p0, Lcom/android/camera/ui/ObjectView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget-object v7, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v7

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_7a
    cmpl-float v6, v1, v10

    if-lez v6, :cond_9f

    iget-object v6, p0, Lcom/android/camera/ui/ObjectView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    iget-object v7, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v7

    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    :goto_8b
    iget-object v6, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v6, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_4f

    :cond_91
    iget-object v6, p0, Lcom/android/camera/ui/ObjectView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v7

    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_7a

    :cond_9f
    iget-object v6, p0, Lcom/android/camera/ui/ObjectView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v7

    invoke-static {v6, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_8b

    :cond_ad
    iget v6, p0, Lcom/android/camera/ui/ObjectView;->mMovingMode:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_c5

    iget-object v6, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    add-float/2addr v7, v0

    iget-object v8, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    sub-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iput v7, v6, Landroid/graphics/RectF;->left:F

    :cond_c5
    iget v6, p0, Lcom/android/camera/ui/ObjectView;->mMovingMode:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_dd

    iget-object v6, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    add-float/2addr v7, v1

    iget-object v8, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iput v7, v6, Landroid/graphics/RectF;->top:F

    :cond_dd
    iget v6, p0, Lcom/android/camera/ui/ObjectView;->mMovingMode:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_f5

    iget-object v6, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    add-float/2addr v7, v0

    iget-object v8, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v6, Landroid/graphics/RectF;->right:F

    :cond_f5
    iget v6, p0, Lcom/android/camera/ui/ObjectView;->mMovingMode:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_10d

    iget-object v6, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v7, v1

    iget-object v8, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    add-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v6, Landroid/graphics/RectF;->bottom:F

    :cond_10d
    iget-object v6, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/android/camera/ui/ObjectView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v6, v7}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    goto/16 :goto_4f
.end method

.method private resetView()V
    .registers 5

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ObjectView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/ObjectView;->setScaleX(F)V

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/ObjectView;->setScaleY(F)V

    iget-object v1, p0, Lcom/android/camera/ui/ObjectView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/camera/ui/ObjectView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/android/camera/ui/ObjectView;->mTrackStatusIndicator:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/camera/ui/ObjectView;->mTrackIndicator:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private setMatrix()V
    .registers 5

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/camera/ui/ObjectView;->mPreviewWidth:I

    if-eqz v0, :cond_47

    iget v0, p0, Lcom/android/camera/ui/ObjectView;->mPreviewHeight:I

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/android/camera/ui/ObjectView;->mPreviewWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/ObjectView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/android/camera/ui/ObjectView;->mPreviewHeight:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/ObjectView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mFace2UIMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/camera/ui/ObjectView;->mFace2UIMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    :cond_47
    return-void
.end method

.method private updateAnimateView()V
    .registers 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->requestLayout()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/ObjectView;->mFace:Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mOldObjectRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-direct {p0}, Lcom/android/camera/ui/ObjectView;->resetView()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/ObjectView;->mZoomAnimaState:I

    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->invalidate()V

    return-void
.end method

.method public faceExists()Z
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mFace:Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->isAdjusting()Z

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x1

    goto :goto_8
.end method

.method public getFocusRect()Landroid/graphics/RectF;
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-boolean v1, p0, Lcom/android/camera/ui/ObjectView;->mPause:Z

    if-eqz v1, :cond_13

    :cond_12
    return-object v3

    :cond_13
    iget-object v1, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_12

    iget-object v1, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_12

    iget-object v1, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    return-object v1
.end method

.method public getFocusRectInPreviewFrame()Landroid/graphics/RectF;
    .registers 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->getFocusRect()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_d

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/ObjectView;->mapRect(Landroid/graphics/RectF;Z)Landroid/graphics/RectF;

    move-result-object v1

    return-object v1

    :cond_d
    return-object v1
.end method

.method public initializeTrackView(Landroid/graphics/RectF;Z)Z
    .registers 8

    const/4 v3, 0x0

    const/high16 v2, 0x43480000    # 200.0f

    const/4 v4, 0x1

    if-eqz p1, :cond_48

    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string/jumbo v1, "t2t_times"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_25

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_26

    :cond_25
    return v3

    :cond_26
    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mOldObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :goto_30
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/ObjectView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->resume()V

    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->requestLayout()V

    if-eqz p2, :cond_47

    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_47
    return v4

    :cond_48
    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/ui/ObjectView;->mOldObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_30
.end method

.method public isAdjusting()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/camera/ui/ObjectView;->mMovingMode:I

    if-nez v2, :cond_1f

    iget-object v2, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_22

    iget-object v2, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_22

    iget v2, p0, Lcom/android/camera/ui/ObjectView;->mZoomAnimaState:I

    if-nez v2, :cond_20

    :cond_1f
    :goto_1f
    return v0

    :cond_20
    move v0, v1

    goto :goto_1f

    :cond_22
    move v0, v1

    goto :goto_1f
.end method

.method public isTrackFailed()Z
    .registers 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera/ui/ObjectView;->mFace:Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/camera/ui/ObjectView;->mFace:Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    iget v1, v1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->score:I

    if-le v0, v1, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    const/high16 v6, 0x40000000    # 2.0f

    sget-boolean v0, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v0, :cond_81

    const-string/jumbo v0, "ObjectView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDraw(), mZoomAnimaState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/ObjectView;->mZoomAnimaState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mPause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/ui/ObjectView;->mPause:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mObjectRect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mFace="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/ObjectView;->mFace:Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mTrackIndicator="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/ObjectView;->mTrackIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", getWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", getheight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mDisplayBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/ObjectView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_81
    iget-boolean v0, p0, Lcom/android/camera/ui/ObjectView;->mPause:Z

    if-nez v0, :cond_ec

    iget v0, p0, Lcom/android/camera/ui/ObjectView;->mZoomAnimaState:I

    if-eqz v0, :cond_92

    iget v0, p0, Lcom/android/camera/ui/ObjectView;->mZoomAnimaState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_ec

    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mFace:Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    if-eqz v0, :cond_ec

    :cond_92
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mTrackIndicator:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    neg-float v1, v1

    div-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    neg-float v2, v2

    div-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mTrackIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_eb
    return-void

    :cond_ec
    invoke-super {p0, p1}, Lcom/android/camera/ui/FrameView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_eb
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11

    const/4 v5, 0x0

    const/4 v8, 0x2

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-boolean v2, p0, Lcom/android/camera/ui/ObjectView;->mPause:Z

    if-nez v2, :cond_20

    iget v2, p0, Lcom/android/camera/ui/ObjectView;->mMovingMode:I

    if-nez v2, :cond_1c

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/ObjectView;->isInObjectViewArea(FF)Z

    move-result v2

    if-eqz v2, :cond_20

    :cond_1c
    iget v2, p0, Lcom/android/camera/ui/ObjectView;->mLostTrackingNum:I

    if-eqz v2, :cond_21

    :cond_20
    return v6

    :cond_21
    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_e0

    :cond_2e
    :goto_2e
    :pswitch_2e
    return v7

    :pswitch_2f
    iget-object v2, p0, Lcom/android/camera/ui/ObjectView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_51

    iget-object v2, p0, Lcom/android/camera/ui/ObjectView;->mListener:Lcom/android/camera/ui/ObjectView$ObjectViewListener;

    if-eqz v2, :cond_4e

    iget v2, p0, Lcom/android/camera/ui/ObjectView;->mZoomAnimaState:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_44

    iget v2, p0, Lcom/android/camera/ui/ObjectView;->mZoomAnimaState:I

    if-ne v2, v8, :cond_47

    :cond_44
    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->clearAnimation()V

    :cond_47
    iput v6, p0, Lcom/android/camera/ui/ObjectView;->mZoomAnimaState:I

    iget-object v2, p0, Lcom/android/camera/ui/ObjectView;->mListener:Lcom/android/camera/ui/ObjectView$ObjectViewListener;

    invoke-interface {v2, v6}, Lcom/android/camera/ui/ObjectView$ObjectViewListener;->stopObjectTracking(Z)V

    :cond_4e
    invoke-virtual {p0, v5, v6}, Lcom/android/camera/ui/ObjectView;->initializeTrackView(Landroid/graphics/RectF;Z)Z

    :cond_51
    iget-object v2, p0, Lcom/android/camera/ui/ObjectView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0, v0, v1, v4, v4}, Lcom/android/camera/ui/ObjectView;->detectMovingStyle(FFFF)V

    iput v0, p0, Lcom/android/camera/ui/ObjectView;->mLastX:F

    iput v1, p0, Lcom/android/camera/ui/ObjectView;->mLastY:F

    goto :goto_2e

    :pswitch_5e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ne v2, v8, :cond_2e

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/camera/ui/ObjectView;->detectMovingStyle(FFFF)V

    iget v2, p0, Lcom/android/camera/ui/ObjectView;->mMovingMode:I

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2e

    iget-object v2, p0, Lcom/android/camera/ui/ObjectView;->mListener:Lcom/android/camera/ui/ObjectView$ObjectViewListener;

    if-eqz v2, :cond_2e

    iget v2, p0, Lcom/android/camera/ui/ObjectView;->mZoomAnimaState:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_8a

    iget v2, p0, Lcom/android/camera/ui/ObjectView;->mZoomAnimaState:I

    if-ne v2, v8, :cond_8d

    :cond_8a
    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->clearAnimation()V

    :cond_8d
    iput v6, p0, Lcom/android/camera/ui/ObjectView;->mZoomAnimaState:I

    iget-object v2, p0, Lcom/android/camera/ui/ObjectView;->mListener:Lcom/android/camera/ui/ObjectView$ObjectViewListener;

    invoke-interface {v2, v6}, Lcom/android/camera/ui/ObjectView$ObjectViewListener;->stopObjectTracking(Z)V

    invoke-direct {p0, p1}, Lcom/android/camera/ui/ObjectView;->moveObjectView(Landroid/view/MotionEvent;)V

    goto :goto_2e

    :pswitch_98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    if-ge v2, v8, :cond_2e

    iget v2, p0, Lcom/android/camera/ui/ObjectView;->mMovingMode:I

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/ObjectView;->mLastX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/ObjectView;->mLastY:F

    iget v2, p0, Lcom/android/camera/ui/ObjectView;->mLastX:F

    iget v3, p0, Lcom/android/camera/ui/ObjectView;->mLastY:F

    invoke-direct {p0, v2, v3, v4, v4}, Lcom/android/camera/ui/ObjectView;->detectMovingStyle(FFFF)V

    goto/16 :goto_2e

    :pswitch_c5
    iget v2, p0, Lcom/android/camera/ui/ObjectView;->mMovingMode:I

    if-eqz v2, :cond_cc

    invoke-direct {p0, p1}, Lcom/android/camera/ui/ObjectView;->moveObjectView(Landroid/view/MotionEvent;)V

    :cond_cc
    iput v0, p0, Lcom/android/camera/ui/ObjectView;->mLastX:F

    iput v1, p0, Lcom/android/camera/ui/ObjectView;->mLastY:F

    goto/16 :goto_2e

    :pswitch_d2
    iput v6, p0, Lcom/android/camera/ui/ObjectView;->mMovingMode:I

    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->invalidate()V

    iget-object v2, p0, Lcom/android/camera/ui/ObjectView;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v7, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2e

    :pswitch_data_e0
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_d2
        :pswitch_c5
        :pswitch_d2
        :pswitch_2e
        :pswitch_5e
        :pswitch_98
    .end packed-switch
.end method

.method public setDisplaySize(II)V
    .registers 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mDisplayBounds:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-direct {p0}, Lcom/android/camera/ui/ObjectView;->setMatrix()V

    return-void
.end method

.method public setObject(Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)V
    .registers 13

    const/4 v10, 0x0

    const/4 v5, 0x2

    const-wide v8, 0x3fd51eb851eb851fL    # 0.33

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-boolean v0, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v0, :cond_bb

    const-string/jumbo v0, "ObjectView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setObject(), mZoomAnimaState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/ObjectView;->mZoomAnimaState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , face.rect:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , face.score:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->score:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , face.t2tStop:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->t2tStop:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , moving="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/ObjectView;->mFilter:Lcom/android/camera/ui/ObjectView$Filter;

    iget v4, v4, Lcom/android/camera/ui/ObjectView$Filter;->mCurrentValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , mPause="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/ui/ObjectView;->mPause:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , visible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->getVisibility()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , getWidth()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ,mDisplayBounds.width()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/ObjectView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , getHeight()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ,mDisplayBounds.height()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/ObjectView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bb
    iget v0, p0, Lcom/android/camera/ui/ObjectView;->mZoomAnimaState:I

    if-gt v0, v5, :cond_c0

    return-void

    :cond_c0
    iget v0, p0, Lcom/android/camera/ui/ObjectView;->mZoomAnimaState:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_d2

    iget v0, p1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->score:I

    if-lt v0, v1, :cond_d1

    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->showSuccess()V

    :cond_d1
    :goto_d1
    return-void

    :cond_d2
    iget v0, p0, Lcom/android/camera/ui/ObjectView;->mZoomAnimaState:I

    const/4 v3, 0x5

    if-ne v0, v3, :cond_d1

    iget-boolean v0, p0, Lcom/android/camera/ui/ObjectView;->mPause:Z

    if-nez v0, :cond_d1

    iget v0, p1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->score:I

    if-ge v0, v1, :cond_1b4

    iget v0, p0, Lcom/android/camera/ui/ObjectView;->mLostTrackThreshold:I

    if-nez v0, :cond_107

    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/android/camera/ui/ObjectView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v3

    sget v3, Lcom/android/camera/ui/ObjectView;->NEAR_EDGE:I

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_103

    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/android/camera/ui/ObjectView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v3

    sget v3, Lcom/android/camera/ui/ObjectView;->NEAR_EDGE:I

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_18e

    :cond_103
    const/16 v0, 0x96

    iput v0, p0, Lcom/android/camera/ui/ObjectView;->mLostTrackThreshold:I

    :cond_107
    :goto_107
    iget v0, p0, Lcom/android/camera/ui/ObjectView;->mLostTrackingNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/ObjectView;->mLostTrackingNum:I

    iget v0, p0, Lcom/android/camera/ui/ObjectView;->mLostTrackingNum:I

    rem-int/lit8 v0, v0, 0x5

    if-eqz v0, :cond_119

    iget v0, p0, Lcom/android/camera/ui/ObjectView;->mLostTrackingNum:I

    iget v3, p0, Lcom/android/camera/ui/ObjectView;->mLostTrackThreshold:I

    if-ne v0, v3, :cond_13c

    :cond_119
    const-string/jumbo v0, "ObjectView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lost "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/ObjectView;->mLostTrackingNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " times"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13c
    iget v0, p0, Lcom/android/camera/ui/ObjectView;->mLostTrackThreshold:I

    iget v3, p0, Lcom/android/camera/ui/ObjectView;->mLostTrackingNum:I

    if-gt v0, v3, :cond_147

    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mListener:Lcom/android/camera/ui/ObjectView$ObjectViewListener;

    invoke-interface {v0, v1}, Lcom/android/camera/ui/ObjectView$ObjectViewListener;->stopObjectTracking(Z)V

    :cond_147
    :goto_147
    iget-object v0, p1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-double v4, v0

    iget v0, p0, Lcom/android/camera/ui/ObjectView;->mPreviewWidth:I

    int-to-double v6, v0

    div-double/2addr v4, v6

    cmpl-double v0, v4, v8

    if-gtz v0, :cond_1b9

    iget-object v0, p1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-double v4, v0

    iget v0, p0, Lcom/android/camera/ui/ObjectView;->mPreviewHeight:I

    int-to-double v6, v0

    div-double/2addr v4, v6

    cmpl-double v0, v4, v8

    if-lez v0, :cond_1bb

    move v0, v1

    :goto_166
    iput-boolean v0, p0, Lcom/android/camera/ui/ObjectView;->mIsBigEnoughRect:Z

    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/android/camera/ui/ObjectView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpl-float v0, v0, v3

    if-nez v0, :cond_186

    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/android/camera/ui/ObjectView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1bd

    :cond_186
    invoke-direct {p0}, Lcom/android/camera/ui/ObjectView;->resetView()V

    :cond_189
    :goto_189
    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->invalidate()V

    goto/16 :goto_d1

    :cond_18e
    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v3

    sget v3, Lcom/android/camera/ui/ObjectView;->NEAR_EDGE:I

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_103

    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v3

    sget v3, Lcom/android/camera/ui/ObjectView;->NEAR_EDGE:I

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_103

    const/16 v0, 0x32

    iput v0, p0, Lcom/android/camera/ui/ObjectView;->mLostTrackThreshold:I

    goto/16 :goto_107

    :cond_1b4
    iput v2, p0, Lcom/android/camera/ui/ObjectView;->mLostTrackThreshold:I

    iput v2, p0, Lcom/android/camera/ui/ObjectView;->mLostTrackingNum:I

    goto :goto_147

    :cond_1b9
    move v0, v1

    goto :goto_166

    :cond_1bb
    move v0, v2

    goto :goto_166

    :cond_1bd
    if-eqz p1, :cond_1f4

    iget v0, p1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->score:I

    if-lt v0, v1, :cond_1f4

    iput-object p1, p0, Lcom/android/camera/ui/ObjectView;->mFace:Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mTrackStatusIndicator:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/camera/ui/ObjectView;->mTrackIndicator:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/camera/ui/ObjectView;->mFace:Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    iget-object v3, v3, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    invoke-direct {v1, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {p0, v1, v2}, Lcom/android/camera/ui/ObjectView;->mapRect(Landroid/graphics/RectF;Z)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mOldObjectRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mFilter:Lcom/android/camera/ui/ObjectView$Filter;

    iget v1, p1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->t2tStop:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ObjectView$Filter;->isBecomeStable(I)Z

    move-result v0

    if-eqz v0, :cond_189

    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mListener:Lcom/android/camera/ui/ObjectView$ObjectViewListener;

    invoke-interface {v0}, Lcom/android/camera/ui/ObjectView$ObjectViewListener;->onObjectStable()V

    goto :goto_189

    :cond_1f4
    iput-object v10, p0, Lcom/android/camera/ui/ObjectView;->mFace:Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    goto :goto_189
.end method

.method public setObjectViewListener(Lcom/android/camera/ui/ObjectView$ObjectViewListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/camera/ui/ObjectView;->mListener:Lcom/android/camera/ui/ObjectView$ObjectViewListener;

    return-void
.end method

.method public setPreviewSize(II)V
    .registers 3

    iput p1, p0, Lcom/android/camera/ui/ObjectView;->mPreviewWidth:I

    iput p2, p0, Lcom/android/camera/ui/ObjectView;->mPreviewHeight:I

    invoke-direct {p0}, Lcom/android/camera/ui/ObjectView;->setMatrix()V

    return-void
.end method

.method public showFail()V
    .registers 1

    return-void
.end method

.method public showStart()V
    .registers 6

    const/4 v2, 0x0

    const v4, 0x3f99999a    # 1.2f

    const-string/jumbo v0, "ObjectView"

    const-string/jumbo v1, "showStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/camera/ui/ObjectView;->mZoomAnimaState:I

    if-eqz v0, :cond_12

    return-void

    :cond_12
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/ObjectView;->mZoomAnimaState:I

    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mTrackStatusIndicator:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/android/camera/ui/ObjectView;->mTrackIndicator:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/android/camera/ui/ObjectView;->updateAnimateView()V

    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mTrackIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ObjectView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/ObjectView;->mStartAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public showSuccess()V
    .registers 6

    const v4, 0x3f333333    # 0.7f

    const-string/jumbo v0, "ObjectView"

    const-string/jumbo v1, "showSuccess()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/camera/ui/ObjectView;->mZoomAnimaState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_12

    return-void

    :cond_12
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/camera/ui/ObjectView;->mZoomAnimaState:I

    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mTrackStatusIndicator:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/camera/ui/ObjectView;->mTrackIndicator:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/android/camera/ui/ObjectView;->updateAnimateView()V

    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mTrackIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ObjectView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x50

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/ObjectView;->mEndAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
