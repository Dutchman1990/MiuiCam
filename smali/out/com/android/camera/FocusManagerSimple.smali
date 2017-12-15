.class public Lcom/android/camera/FocusManagerSimple;
.super Lcom/android/camera/FocusManagerAbstract;
.source "FocusManagerSimple.java"


# direct methods
.method public constructor <init>(IIZI)V
    .registers 6

    invoke-direct {p0}, Lcom/android/camera/FocusManagerAbstract;-><init>()V

    iput p4, p0, Lcom/android/camera/FocusManagerSimple;->mDisplayOrientation:I

    iput-boolean p3, p0, Lcom/android/camera/FocusManagerSimple;->mMirror:Z

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/FocusManagerSimple;->setPreviewSize(II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/FocusManagerSimple;->mInitialized:Z

    return-void
.end method


# virtual methods
.method public canAutoFocus()Z
    .registers 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/camera/FocusManagerSimple;->mInitialized:Z

    if-eqz v1, :cond_b

    iget v1, p0, Lcom/android/camera/FocusManagerSimple;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0
.end method

.method public canRecord()Z
    .registers 4

    const/4 v2, 0x2

    const/4 v1, 0x1

    iget v0, p0, Lcom/android/camera/FocusManagerSimple;->mState:I

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/android/camera/FocusManagerSimple;->mState:I

    if-ne v0, v2, :cond_e

    :cond_a
    iput v2, p0, Lcom/android/camera/FocusManagerSimple;->mState:I

    const/4 v0, 0x0

    return v0

    :cond_e
    return v1
.end method

.method public cancelAutoFocus()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/FocusManagerSimple;->mState:I

    iput-boolean v0, p0, Lcom/android/camera/FocusManagerSimple;->mCancelAutoFocusIfMove:Z

    return-void
.end method

.method public focusPoint()V
    .registers 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/FocusManagerSimple;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/FocusManagerSimple;->mCancelAutoFocusIfMove:Z

    return-void
.end method

.method public getDefaultFocusAreaHeight()I
    .registers 2

    iget v0, p0, Lcom/android/camera/FocusManagerSimple;->FOCUS_AREA_HEIGHT:I

    return v0
.end method

.method public getDefaultFocusAreaWidth()I
    .registers 2

    iget v0, p0, Lcom/android/camera/FocusManagerSimple;->FOCUS_AREA_WIDTH:I

    return v0
.end method

.method public getFocusArea(IIII)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/camera/FocusManagerSimple;->mInitialized:Z

    if-eqz v0, :cond_2f

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Landroid/hardware/Camera$Area;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v6, p0, Lcom/android/camera/FocusManagerSimple;->mPreviewWidth:I

    iget v7, p0, Lcom/android/camera/FocusManagerSimple;->mPreviewHeight:I

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p3

    move v2, p4

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/FocusManagerSimple;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    return-object v9

    :cond_2f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMeteringsArea(IIII)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/camera/FocusManagerSimple;->mInitialized:Z

    if-eqz v0, :cond_30

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Landroid/hardware/Camera$Area;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v6, p0, Lcom/android/camera/FocusManagerSimple;->mPreviewWidth:I

    iget v7, p0, Lcom/android/camera/FocusManagerSimple;->mPreviewHeight:I

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    const v3, 0x3fe66666    # 1.8f

    move-object v0, p0

    move v1, p3

    move v2, p4

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/FocusManagerSimple;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    return-object v9

    :cond_30
    const/4 v0, 0x0

    return-object v0
.end method

.method public isFocusingSnapOnFinish()Z
    .registers 3

    iget v0, p0, Lcom/android/camera/FocusManagerSimple;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isInValidFocus()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/camera/FocusManagerSimple;->mState:I

    if-eqz v2, :cond_b

    iget v2, p0, Lcom/android/camera/FocusManagerSimple;->mState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    move v0, v1

    goto :goto_b
.end method

.method public isNeedCancelAutoFocus()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/FocusManagerSimple;->mCancelAutoFocusIfMove:Z

    return v0
.end method

.method public onAutoFocus(Z)V
    .registers 3

    if-eqz p1, :cond_9

    const/4 v0, 0x3

    :goto_3
    iput v0, p0, Lcom/android/camera/FocusManagerSimple;->mState:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/FocusManagerSimple;->mCancelAutoFocusIfMove:Z

    return-void

    :cond_9
    const/4 v0, 0x4

    goto :goto_3
.end method

.method public onDeviceKeepMoving()V
    .registers 3

    iget v0, p0, Lcom/android/camera/FocusManagerSimple;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/android/camera/FocusManagerSimple;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_d

    :cond_a
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/FocusManagerSimple;->mState:I

    :cond_d
    return-void
.end method

.method public resetFocused()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/FocusManagerSimple;->mState:I

    return-void
.end method

.method public setPreviewSize(II)V
    .registers 4

    iget v0, p0, Lcom/android/camera/FocusManagerSimple;->mPreviewWidth:I

    if-ne v0, p1, :cond_8

    iget v0, p0, Lcom/android/camera/FocusManagerSimple;->mPreviewHeight:I

    if-eq v0, p2, :cond_f

    :cond_8
    iput p1, p0, Lcom/android/camera/FocusManagerSimple;->mPreviewWidth:I

    iput p2, p0, Lcom/android/camera/FocusManagerSimple;->mPreviewHeight:I

    invoke-virtual {p0}, Lcom/android/camera/FocusManagerSimple;->setMatrix()V

    :cond_f
    return-void
.end method
