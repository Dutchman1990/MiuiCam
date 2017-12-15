.class public Lcom/android/camera/ui/RotateTextView;
.super Lcom/android/camera/ui/TwoStateTextView;
.source "RotateTextView.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# instance fields
.field private mAnimationEndTime:J

.field private mAnimationStartTime:J

.field private mClockwise:Z

.field private mCurrentDegree:I

.field private mStartDegree:I

.field private mTargetDegree:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/TwoStateTextView;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/android/camera/ui/RotateTextView;->mCurrentDegree:I

    iput v0, p0, Lcom/android/camera/ui/RotateTextView;->mStartDegree:I

    iput v0, p0, Lcom/android/camera/ui/RotateTextView;->mTargetDegree:I

    iput-boolean v0, p0, Lcom/android/camera/ui/RotateTextView;->mClockwise:Z

    iput-wide v2, p0, Lcom/android/camera/ui/RotateTextView;->mAnimationStartTime:J

    iput-wide v2, p0, Lcom/android/camera/ui/RotateTextView;->mAnimationEndTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/TwoStateTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/android/camera/ui/RotateTextView;->mCurrentDegree:I

    iput v0, p0, Lcom/android/camera/ui/RotateTextView;->mStartDegree:I

    iput v0, p0, Lcom/android/camera/ui/RotateTextView;->mTargetDegree:I

    iput-boolean v0, p0, Lcom/android/camera/ui/RotateTextView;->mClockwise:Z

    iput-wide v2, p0, Lcom/android/camera/ui/RotateTextView;->mAnimationStartTime:J

    iput-wide v2, p0, Lcom/android/camera/ui/RotateTextView;->mAnimationEndTime:J

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 16

    invoke-virtual {p0}, Lcom/android/camera/ui/RotateTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_b

    return-void

    :cond_b
    iget v12, p0, Lcom/android/camera/ui/RotateTextView;->mCurrentDegree:I

    iget v13, p0, Lcom/android/camera/ui/RotateTextView;->mTargetDegree:I

    if-eq v12, v13, :cond_35

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v8

    iget-wide v12, p0, Lcom/android/camera/ui/RotateTextView;->mAnimationEndTime:J

    cmp-long v12, v8, v12

    if-gez v12, :cond_8a

    iget-wide v12, p0, Lcom/android/camera/ui/RotateTextView;->mAnimationStartTime:J

    sub-long v12, v8, v12

    long-to-int v2, v12

    iget v12, p0, Lcom/android/camera/ui/RotateTextView;->mStartDegree:I

    iget-boolean v13, p0, Lcom/android/camera/ui/RotateTextView;->mClockwise:Z

    if-eqz v13, :cond_83

    :goto_26
    mul-int/lit16 v13, v2, 0x10e

    div-int/lit16 v13, v13, 0x3e8

    add-int v1, v12, v13

    if-ltz v1, :cond_85

    rem-int/lit16 v1, v1, 0x168

    :goto_30
    iput v1, p0, Lcom/android/camera/ui/RotateTextView;->mCurrentDegree:I

    invoke-virtual {p0}, Lcom/android/camera/ui/RotateTextView;->invalidate()V

    :cond_35
    :goto_35
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/camera/ui/RotateTextView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/camera/ui/RotateTextView;->getPaddingTop()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/camera/ui/RotateTextView;->getPaddingRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/camera/ui/RotateTextView;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/ui/RotateTextView;->getWidth()I

    move-result v12

    sub-int/2addr v12, v4

    sub-int v11, v12, v5

    invoke-virtual {p0}, Lcom/android/camera/ui/RotateTextView;->getHeight()I

    move-result v12

    sub-int/2addr v12, v10

    sub-int v3, v12, v0

    div-int/lit8 v12, v11, 0x2

    add-int/2addr v12, v4

    int-to-float v12, v12

    div-int/lit8 v13, v3, 0x2

    add-int/2addr v13, v10

    int-to-float v13, v13

    invoke-virtual {p1, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    iget v12, p0, Lcom/android/camera/ui/RotateTextView;->mCurrentDegree:I

    neg-int v12, v12

    int-to-float v12, v12

    invoke-virtual {p1, v12}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Lcom/android/camera/ui/RotateTextView;->getWidth()I

    move-result v12

    neg-int v12, v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-virtual {p0}, Lcom/android/camera/ui/RotateTextView;->getHeight()I

    move-result v13

    neg-int v13, v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    invoke-virtual {p1, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-super {p0, p1}, Lcom/android/camera/ui/TwoStateTextView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :cond_83
    neg-int v2, v2

    goto :goto_26

    :cond_85
    rem-int/lit16 v12, v1, 0x168

    add-int/lit16 v1, v12, 0x168

    goto :goto_30

    :cond_8a
    iget v12, p0, Lcom/android/camera/ui/RotateTextView;->mTargetDegree:I

    iput v12, p0, Lcom/android/camera/ui/RotateTextView;->mCurrentDegree:I

    goto :goto_35
.end method

.method protected onMeasure(II)V
    .registers 6

    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/TwoStateTextView;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/android/camera/ui/RotateTextView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/camera/ui/RotateTextView;->getMeasuredHeight()I

    move-result v0

    if-eq v2, v0, :cond_13

    if-le v2, v0, :cond_14

    move v1, v2

    :goto_10
    invoke-virtual {p0, v1, v1}, Lcom/android/camera/ui/RotateTextView;->setMeasuredDimension(II)V

    :cond_13
    return-void

    :cond_14
    move v1, v0

    goto :goto_10
.end method

.method public setOrientation(IZ)V
    .registers 9

    const/4 v1, 0x0

    if-ltz p1, :cond_a

    rem-int/lit16 p1, p1, 0x168

    :goto_5
    iget v2, p0, Lcom/android/camera/ui/RotateTextView;->mTargetDegree:I

    if-ne p1, v2, :cond_f

    return-void

    :cond_a
    rem-int/lit16 v2, p1, 0x168

    add-int/lit16 p1, v2, 0x168

    goto :goto_5

    :cond_f
    iput p1, p0, Lcom/android/camera/ui/RotateTextView;->mTargetDegree:I

    if-eqz p2, :cond_45

    iget v2, p0, Lcom/android/camera/ui/RotateTextView;->mCurrentDegree:I

    iput v2, p0, Lcom/android/camera/ui/RotateTextView;->mStartDegree:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/ui/RotateTextView;->mAnimationStartTime:J

    iget v2, p0, Lcom/android/camera/ui/RotateTextView;->mTargetDegree:I

    iget v3, p0, Lcom/android/camera/ui/RotateTextView;->mCurrentDegree:I

    sub-int v0, v2, v3

    if-ltz v0, :cond_42

    :goto_25
    const/16 v2, 0xb4

    if-le v0, v2, :cond_2b

    add-int/lit16 v0, v0, -0x168

    :cond_2b
    if-ltz v0, :cond_2e

    const/4 v1, 0x1

    :cond_2e
    iput-boolean v1, p0, Lcom/android/camera/ui/RotateTextView;->mClockwise:Z

    iget-wide v2, p0, Lcom/android/camera/ui/RotateTextView;->mAnimationStartTime:J

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    div-int/lit16 v1, v1, 0x10e

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/camera/ui/RotateTextView;->mAnimationEndTime:J

    :goto_3e
    invoke-virtual {p0}, Lcom/android/camera/ui/RotateTextView;->invalidate()V

    return-void

    :cond_42
    add-int/lit16 v0, v0, 0x168

    goto :goto_25

    :cond_45
    iget v1, p0, Lcom/android/camera/ui/RotateTextView;->mTargetDegree:I

    iput v1, p0, Lcom/android/camera/ui/RotateTextView;->mCurrentDegree:I

    goto :goto_3e
.end method
