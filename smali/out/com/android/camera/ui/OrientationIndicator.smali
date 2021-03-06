.class public Lcom/android/camera/ui/OrientationIndicator;
.super Landroid/view/View;
.source "OrientationIndicator.java"

# interfaces
.implements Lcom/android/camera/ui/V6FunctionUI;


# static fields
.field private static final TRIANGLE_BASE_DIS:I

.field private static final TRIANGLE_BASE_HEIGHT:I

.field private static final TRIANGLE_BASE_LEN:I


# instance fields
.field private mCaptureBitmap:Landroid/graphics/drawable/Drawable;

.field private mIndicatorPaint:Landroid/graphics/Paint;

.field private mIndicatorPath:Landroid/graphics/Path;

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/high16 v1, 0x40a00000    # 5.0f

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/OrientationIndicator;->TRIANGLE_BASE_LEN:I

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/OrientationIndicator;->TRIANGLE_BASE_HEIGHT:I

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/OrientationIndicator;->TRIANGLE_BASE_DIS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getIndicatorPath()V
    .registers 6

    iget-object v2, p0, Lcom/android/camera/ui/OrientationIndicator;->mIndicatorPath:Landroid/graphics/Path;

    if-nez v2, :cond_47

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/OrientationIndicator;->mIndicatorPath:Landroid/graphics/Path;

    sget v2, Lcom/android/camera/ui/OrientationIndicator;->TRIANGLE_BASE_LEN:I

    neg-int v2, v2

    div-int/lit8 v0, v2, 0x2

    iget-object v2, p0, Lcom/android/camera/ui/OrientationIndicator;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    sget v3, Lcom/android/camera/ui/OrientationIndicator;->TRIANGLE_BASE_DIS:I

    div-int/lit8 v3, v3, 0x2

    sub-int v1, v2, v3

    iget-object v2, p0, Lcom/android/camera/ui/OrientationIndicator;->mIndicatorPath:Landroid/graphics/Path;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, p0, Lcom/android/camera/ui/OrientationIndicator;->mIndicatorPath:Landroid/graphics/Path;

    sget v3, Lcom/android/camera/ui/OrientationIndicator;->TRIANGLE_BASE_LEN:I

    add-int/2addr v3, v0

    int-to-float v3, v3

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/android/camera/ui/OrientationIndicator;->mIndicatorPath:Landroid/graphics/Path;

    sget v3, Lcom/android/camera/ui/OrientationIndicator;->TRIANGLE_BASE_LEN:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v0

    int-to-float v3, v3

    sget v4, Lcom/android/camera/ui/OrientationIndicator;->TRIANGLE_BASE_HEIGHT:I

    sub-int v4, v1, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/android/camera/ui/OrientationIndicator;->mIndicatorPath:Landroid/graphics/Path;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_47
    return-void
.end method


# virtual methods
.method public enableControls(Z)V
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

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/android/camera/ui/OrientationIndicator;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/camera/ui/OrientationIndicator;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/camera/ui/OrientationIndicator;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lcom/android/camera/ui/OrientationIndicator;->getIndicatorPath()V

    iget-object v0, p0, Lcom/android/camera/ui/OrientationIndicator;->mIndicatorPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/camera/ui/OrientationIndicator;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/android/camera/ui/OrientationIndicator;->getWidth()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/camera/ui/OrientationIndicator;->getHeight()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 7

    const/4 v5, 0x1

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/camera/ui/OrientationIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/OrientationIndicator;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/camera/ui/OrientationIndicator;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/OrientationIndicator;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/camera/ui/OrientationIndicator;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/camera/ui/OrientationIndicator;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/android/camera/ui/OrientationIndicator;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/android/camera/ui/OrientationIndicator;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/OrientationIndicator;->mIndicatorPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/camera/ui/OrientationIndicator;->mIndicatorPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/camera/ui/OrientationIndicator;->mIndicatorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/camera/ui/OrientationIndicator;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public onPause()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OrientationIndicator;->updateVisible(Z)V

    return-void
.end method

.method public onResume()V
    .registers 1

    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .registers 2

    return-void
.end method

.method public updateVisible(Z)V
    .registers 6

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/camera/ui/OrientationIndicator;->mVisible:Z

    if-eq v2, p1, :cond_44

    iput-boolean p1, p0, Lcom/android/camera/ui/OrientationIndicator;->mVisible:Z

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/android/camera/ui/OrientationIndicator;->mVisible:Z

    if-eqz v2, :cond_45

    invoke-virtual {p0}, Lcom/android/camera/ui/OrientationIndicator;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/OrientationIndicator;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/OrientationIndicator;->setAlpha(F)V

    :cond_19
    :goto_19
    invoke-virtual {p0}, Lcom/android/camera/ui/OrientationIndicator;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0}, Lcom/android/camera/ui/OrientationIndicator;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/ui/OrientationIndicator;->mVisible:Z

    if-eqz v3, :cond_2a

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_2a
    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_44
    return-void

    :cond_45
    new-instance v0, Lcom/android/camera/ui/OrientationIndicator$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/OrientationIndicator$1;-><init>(Lcom/android/camera/ui/OrientationIndicator;)V

    goto :goto_19
.end method
