.class public Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;
.super Landroid/view/SurfaceView;
.source "AutoFitSurfaceView.java"


# instance fields
.field private mRatioHeight:I

.field private mRatioWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;->mRatioWidth:I

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;->mRatioHeight:I

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 7

    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v2, p0, Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;->mRatioWidth:I

    if-eqz v2, :cond_13

    iget v2, p0, Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;->mRatioHeight:I

    if-nez v2, :cond_17

    :cond_13
    invoke-virtual {p0, v1, v0}, Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;->setMeasuredDimension(II)V

    :goto_16
    return-void

    :cond_17
    iget v2, p0, Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;->mRatioWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;->mRatioHeight:I

    div-int/2addr v2, v3

    if-ge v1, v2, :cond_29

    iget v2, p0, Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;->mRatioHeight:I

    mul-int/2addr v2, v1

    iget v3, p0, Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;->mRatioWidth:I

    div-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;->setMeasuredDimension(II)V

    goto :goto_16

    :cond_29
    iget v2, p0, Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;->mRatioWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;->mRatioHeight:I

    div-int/2addr v2, v3

    invoke-virtual {p0, v2, v0}, Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;->setMeasuredDimension(II)V

    goto :goto_16
.end method

.method public setAspectRatio(II)V
    .registers 5

    if-ltz p1, :cond_4

    if-gez p2, :cond_d

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Size cannot be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput p1, p0, Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;->mRatioWidth:I

    iput p2, p0, Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;->mRatioHeight:I

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;->requestLayout()V

    return-void
.end method
