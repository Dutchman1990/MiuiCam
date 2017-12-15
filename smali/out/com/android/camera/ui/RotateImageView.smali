.class public Lcom/android/camera/ui/RotateImageView;
.super Lcom/android/camera/ui/TwoStateImageView;
.source "RotateImageView.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/RotateImageView$1;,
        Lcom/android/camera/ui/RotateImageView$OnRotateFinishedListener;
    }
.end annotation


# instance fields
.field private mAnimationEndTime:J

.field private mAnimationStartTime:J

.field private mAxisCurrentDegree:I

.field private mClockwise:Z

.field private mEnableAnimation:Z

.field private mOnRotateFinishedListener:Lcom/android/camera/ui/RotateImageView$OnRotateFinishedListener;

.field private mOverturn:Z

.field private mPointCurrentDegree:I

.field private mPointStartDegree:I

.field private mPointTargetDegree:I

.field private mSwitchEnd:Ljava/lang/Runnable;

.field private mThumb:Landroid/graphics/Bitmap;

.field private mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

.field private mThumbs:[Landroid/graphics/drawable/Drawable;


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/RotateImageView;)[Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/TwoStateImageView;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/android/camera/ui/RotateImageView;->mPointCurrentDegree:I

    iput v1, p0, Lcom/android/camera/ui/RotateImageView;->mPointStartDegree:I

    iput v1, p0, Lcom/android/camera/ui/RotateImageView;->mPointTargetDegree:I

    iput-boolean v1, p0, Lcom/android/camera/ui/RotateImageView;->mClockwise:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/RotateImageView;->mEnableAnimation:Z

    iput-boolean v1, p0, Lcom/android/camera/ui/RotateImageView;->mOverturn:Z

    iput v1, p0, Lcom/android/camera/ui/RotateImageView;->mAxisCurrentDegree:I

    iput-wide v2, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationStartTime:J

    iput-wide v2, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationEndTime:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/RotateImageView;->mOnRotateFinishedListener:Lcom/android/camera/ui/RotateImageView$OnRotateFinishedListener;

    new-instance v0, Lcom/android/camera/ui/RotateImageView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/RotateImageView$1;-><init>(Lcom/android/camera/ui/RotateImageView;)V

    iput-object v0, p0, Lcom/android/camera/ui/RotateImageView;->mSwitchEnd:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/TwoStateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/android/camera/ui/RotateImageView;->mPointCurrentDegree:I

    iput v1, p0, Lcom/android/camera/ui/RotateImageView;->mPointStartDegree:I

    iput v1, p0, Lcom/android/camera/ui/RotateImageView;->mPointTargetDegree:I

    iput-boolean v1, p0, Lcom/android/camera/ui/RotateImageView;->mClockwise:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/RotateImageView;->mEnableAnimation:Z

    iput-boolean v1, p0, Lcom/android/camera/ui/RotateImageView;->mOverturn:Z

    iput v1, p0, Lcom/android/camera/ui/RotateImageView;->mAxisCurrentDegree:I

    iput-wide v2, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationStartTime:J

    iput-wide v2, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationEndTime:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/RotateImageView;->mOnRotateFinishedListener:Lcom/android/camera/ui/RotateImageView$OnRotateFinishedListener;

    new-instance v0, Lcom/android/camera/ui/RotateImageView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/RotateImageView$1;-><init>(Lcom/android/camera/ui/RotateImageView;)V

    iput-object v0, p0, Lcom/android/camera/ui/RotateImageView;->mSwitchEnd:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 27

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    new-instance v13, Landroid/graphics/Matrix;

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    new-instance v6, Landroid/graphics/Camera;

    invoke-direct {v6}, Landroid/graphics/Camera;-><init>()V

    if-nez v9, :cond_11

    return-void

    :cond_11
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v0, v5, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    iget v0, v5, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    sub-int v20, v22, v23

    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    iget v0, v5, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v10, v22, v23

    if-eqz v20, :cond_2d

    if-nez v10, :cond_2e

    :cond_2d
    return-void

    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/RotateImageView;->mOverturn:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1a7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/RotateImageView;->mAxisCurrentDegree:I

    move/from16 v22, v0

    const/16 v23, 0xb4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_194

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/RotateImageView;->mOverturn:Z

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/ui/RotateImageView;->mAxisCurrentDegree:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/RotateImageView;->mOnRotateFinishedListener:Lcom/android/camera/ui/RotateImageView$OnRotateFinishedListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_65

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/RotateImageView;->mOnRotateFinishedListener:Lcom/android/camera/ui/RotateImageView$OnRotateFinishedListener;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/camera/ui/RotateImageView$OnRotateFinishedListener;->OnRotateAxisFinished()V

    :cond_65
    :goto_65
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->getPaddingLeft()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->getPaddingTop()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->getPaddingRight()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->getPaddingBottom()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->getWidth()I

    move-result v22

    sub-int v22, v22, v12

    sub-int v21, v22, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->getHeight()I

    move-result v22

    sub-int v22, v22, v17

    sub-int v11, v22, v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v16

    invoke-virtual {v6}, Landroid/graphics/Camera;->save()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/RotateImageView;->mPointCurrentDegree:I

    move/from16 v22, v0

    if-eqz v22, :cond_a2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/RotateImageView;->mPointCurrentDegree:I

    move/from16 v22, v0

    const/16 v23, 0xb4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_223

    :cond_a2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/RotateImageView;->mAxisCurrentDegree:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/graphics/Camera;->rotateY(F)V

    :goto_b2
    invoke-virtual {v6, v13}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v6}, Landroid/graphics/Camera;->restore()V

    shr-int/lit8 v22, v20, 0x1

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    shr-int/lit8 v23, v10, 0x1

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    shr-int/lit8 v22, v20, 0x1

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    shr-int/lit8 v23, v10, 0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v22

    sget-object v23, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_136

    move/from16 v0, v21

    move/from16 v1, v20

    if-lt v0, v1, :cond_105

    if-ge v11, v10, :cond_136

    :cond_105
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    int-to-float v0, v11

    move/from16 v23, v0

    int-to-float v0, v10

    move/from16 v24, v0

    div-float v23, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(FF)F

    move-result v14

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    int-to-float v0, v11

    move/from16 v23, v0

    const/high16 v24, 0x40000000    # 2.0f

    div-float v23, v23, v24

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v14, v14, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_136
    div-int/lit8 v22, v21, 0x2

    add-int v22, v22, v12

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-int/lit8 v23, v11, 0x2

    add-int v23, v23, v17

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/RotateImageView;->mPointCurrentDegree:I

    move/from16 v22, v0

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    neg-int v0, v10

    move/from16 v23, v0

    div-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :cond_194
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/RotateImageView;->mAxisCurrentDegree:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0xa

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/ui/RotateImageView;->mAxisCurrentDegree:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->invalidate()V

    goto/16 :goto_65

    :cond_1a7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/RotateImageView;->mPointCurrentDegree:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/RotateImageView;->mPointTargetDegree:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_65

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/ui/RotateImageView;->mAnimationEndTime:J

    move-wide/from16 v22, v0

    cmp-long v22, v18, v22

    if-gez v22, :cond_204

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/ui/RotateImageView;->mAnimationStartTime:J

    move-wide/from16 v22, v0

    sub-long v22, v18, v22

    move-wide/from16 v0, v22

    long-to-int v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/RotateImageView;->mPointStartDegree:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/RotateImageView;->mClockwise:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1f9

    :goto_1e0
    mul-int/lit16 v0, v8, 0x10e

    move/from16 v23, v0

    move/from16 v0, v23

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v23, v0

    add-int v7, v22, v23

    if-ltz v7, :cond_1fb

    rem-int/lit16 v7, v7, 0x168

    :goto_1f0
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/camera/ui/RotateImageView;->mPointCurrentDegree:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/RotateImageView;->invalidate()V

    goto/16 :goto_65

    :cond_1f9
    neg-int v8, v8

    goto :goto_1e0

    :cond_1fb
    rem-int/lit16 v0, v7, 0x168

    move/from16 v22, v0

    move/from16 v0, v22

    add-int/lit16 v7, v0, 0x168

    goto :goto_1f0

    :cond_204
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/RotateImageView;->mPointTargetDegree:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/ui/RotateImageView;->mPointCurrentDegree:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/RotateImageView;->mOnRotateFinishedListener:Lcom/android/camera/ui/RotateImageView$OnRotateFinishedListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_65

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/RotateImageView;->mOnRotateFinishedListener:Lcom/android/camera/ui/RotateImageView$OnRotateFinishedListener;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/camera/ui/RotateImageView$OnRotateFinishedListener;->OnRotatePointFinished()V

    goto/16 :goto_65

    :cond_223
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/RotateImageView;->mAxisCurrentDegree:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/graphics/Camera;->rotateX(F)V

    goto/16 :goto_b2
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 11

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    iget-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mSwitchEnd:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/RotateImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    if-nez p1, :cond_15

    iput-object v4, p0, Lcom/android/camera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    const v3, 0x7f0200f3

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    return-void

    :cond_15
    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->getPaddingRight()I

    move-result v4

    sub-int v1, v3, v4

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->getPaddingBottom()I

    move-result v4

    sub-int v0, v3, v4

    invoke-static {p1, v1, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_82

    iget-boolean v3, p0, Lcom/android/camera/ui/RotateImageView;->mEnableAnimation:Z

    if-eqz v3, :cond_82

    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->isShown()Z

    move-result v3

    if-eqz v3, :cond_82

    iget-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v7

    aput-object v4, v3, v8

    iget-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v4, v3, v7

    new-instance v3, Landroid/graphics/drawable/TransitionDrawable;

    iget-object v4, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    iget-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    const/16 v4, 0x1f4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    iget-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mSwitchEnd:Ljava/lang/Runnable;

    const-wide/16 v4, 0x208

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/camera/ui/RotateImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_7e
    invoke-virtual {p0, v8}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    return-void

    :cond_82
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v4, v3, v7

    iget-object v3, p0, Lcom/android/camera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v7

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7e
.end method

.method public setOrientation(IZ)V
    .registers 9

    const/4 v1, 0x0

    iput-boolean p2, p0, Lcom/android/camera/ui/RotateImageView;->mEnableAnimation:Z

    if-ltz p1, :cond_c

    rem-int/lit16 p1, p1, 0x168

    :goto_7
    iget v2, p0, Lcom/android/camera/ui/RotateImageView;->mPointTargetDegree:I

    if-ne p1, v2, :cond_11

    return-void

    :cond_c
    rem-int/lit16 v2, p1, 0x168

    add-int/lit16 p1, v2, 0x168

    goto :goto_7

    :cond_11
    iput p1, p0, Lcom/android/camera/ui/RotateImageView;->mPointTargetDegree:I

    iget-boolean v2, p0, Lcom/android/camera/ui/RotateImageView;->mEnableAnimation:Z

    if-eqz v2, :cond_49

    iget v2, p0, Lcom/android/camera/ui/RotateImageView;->mPointCurrentDegree:I

    iput v2, p0, Lcom/android/camera/ui/RotateImageView;->mPointStartDegree:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationStartTime:J

    iget v2, p0, Lcom/android/camera/ui/RotateImageView;->mPointTargetDegree:I

    iget v3, p0, Lcom/android/camera/ui/RotateImageView;->mPointCurrentDegree:I

    sub-int v0, v2, v3

    if-ltz v0, :cond_46

    :goto_29
    const/16 v2, 0xb4

    if-le v0, v2, :cond_2f

    add-int/lit16 v0, v0, -0x168

    :cond_2f
    if-ltz v0, :cond_32

    const/4 v1, 0x1

    :cond_32
    iput-boolean v1, p0, Lcom/android/camera/ui/RotateImageView;->mClockwise:Z

    iget-wide v2, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationStartTime:J

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    div-int/lit16 v1, v1, 0x10e

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/camera/ui/RotateImageView;->mAnimationEndTime:J

    :goto_42
    invoke-virtual {p0}, Lcom/android/camera/ui/RotateImageView;->invalidate()V

    return-void

    :cond_46
    add-int/lit16 v0, v0, 0x168

    goto :goto_29

    :cond_49
    iget v1, p0, Lcom/android/camera/ui/RotateImageView;->mPointTargetDegree:I

    iput v1, p0, Lcom/android/camera/ui/RotateImageView;->mPointCurrentDegree:I

    goto :goto_42
.end method
