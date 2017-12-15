.class Lcom/android/camera/ui/StaticGridView;
.super Landroid/view/ViewGroup;
.source "SettingScreenView.java"


# instance fields
.field private mChildHeight:I

.field private mChildWidth:I

.field private mColumnCount:I

.field private mRowCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIII)V
    .registers 7

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/camera/ui/StaticGridView;->set(IIII)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StaticGridView;->setDrawingCacheEnabled(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StaticGridView;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected doLayout(IIII)V
    .registers 7

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/ui/StaticGridView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_d

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StaticGridView;->layoutChildByIndex(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_d
    return-void
.end method

.method protected layoutChildByIndex(I)V
    .registers 10

    iget v2, p0, Lcom/android/camera/ui/StaticGridView;->mColumnCount:I

    div-int v1, p1, v2

    iget v2, p0, Lcom/android/camera/ui/StaticGridView;->mColumnCount:I

    rem-int v0, p1, v2

    invoke-virtual {p0}, Lcom/android/camera/ui/StaticGridView;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_15

    iget v2, p0, Lcom/android/camera/ui/StaticGridView;->mColumnCount:I

    add-int/lit8 v2, v2, -0x1

    sub-int v0, v2, v0

    :cond_15
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/StaticGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/ui/StaticGridView;->mChildWidth:I

    mul-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/android/camera/ui/StaticGridView;->mChildHeight:I

    mul-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lcom/android/camera/ui/StaticGridView;->mChildWidth:I

    add-int/lit8 v6, v0, 0x1

    mul-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/android/camera/ui/StaticGridView;->mChildHeight:I

    add-int/lit8 v7, v1, 0x1

    mul-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method measureDimension(II)I
    .registers 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_18

    const/4 v0, 0x0

    return v0

    :sswitch_9
    return p2

    :sswitch_a
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    return v0

    :sswitch_f
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :sswitch_data_18
    .sparse-switch
        -0x80000000 -> :sswitch_f
        0x0 -> :sswitch_9
        0x40000000 -> :sswitch_a
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/camera/ui/StaticGridView;->doLayout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    const/high16 v3, 0x40000000    # 2.0f

    iget v0, p0, Lcom/android/camera/ui/StaticGridView;->mChildWidth:I

    iget v1, p0, Lcom/android/camera/ui/StaticGridView;->mColumnCount:I

    mul-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ui/StaticGridView;->measureDimension(II)I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/StaticGridView;->mChildHeight:I

    iget v2, p0, Lcom/android/camera/ui/StaticGridView;->mRowCount:I

    mul-int/2addr v1, v2

    invoke-virtual {p0, p2, v1}, Lcom/android/camera/ui/StaticGridView;->measureDimension(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/StaticGridView;->setMeasuredDimension(II)V

    iget v0, p0, Lcom/android/camera/ui/StaticGridView;->mChildWidth:I

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/StaticGridView;->mChildHeight:I

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/StaticGridView;->measureChildren(II)V

    return-void
.end method

.method public set(IIII)V
    .registers 7

    const/4 v1, 0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/StaticGridView;->mRowCount:I

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/StaticGridView;->mColumnCount:I

    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/StaticGridView;->mChildHeight:I

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/StaticGridView;->mChildWidth:I

    return-void
.end method
