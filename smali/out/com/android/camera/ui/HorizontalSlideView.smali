.class public Lcom/android/camera/ui/HorizontalSlideView;
.super Landroid/view/View;
.source "HorizontalSlideView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/HorizontalSlideView$1;,
        Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;,
        Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;
    }
.end annotation


# instance fields
.field private mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mMaxX:I

.field private mMinX:I

.field private mNeedJustify:Z

.field private mOnItemSelectListener:Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;

.field private mOriginX:F

.field private mPositionX:I

.field private mScroller:Landroid/widget/Scroller;

.field private mSelectedItemIndex:I


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/HorizontalSlideView;)I
    .registers 2

    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/HorizontalSlideView;)I
    .registers 2

    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/camera/ui/HorizontalSlideView;)F
    .registers 2

    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mOriginX:F

    return v0
.end method

.method static synthetic -get3(Lcom/android/camera/ui/HorizontalSlideView;)I
    .registers 2

    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/camera/ui/HorizontalSlideView;)Landroid/widget/Scroller;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/camera/ui/HorizontalSlideView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mNeedJustify:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/ui/HorizontalSlideView;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->flingX(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/camera/ui/HorizontalSlideView;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->scroll(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/camera/ui/HorizontalSlideView;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->setPositionX(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    new-instance v0, Lcom/android/camera/ui/HorizontalSlideView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/HorizontalSlideView$1;-><init>(Lcom/android/camera/ui/HorizontalSlideView;)V

    iput-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    new-instance v0, Lcom/android/camera/ui/HorizontalSlideView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/HorizontalSlideView$1;-><init>(Lcom/android/camera/ui/HorizontalSlideView;)V

    iput-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    new-instance v0, Lcom/android/camera/ui/HorizontalSlideView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/HorizontalSlideView$1;-><init>(Lcom/android/camera/ui/HorizontalSlideView;)V

    iput-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private flingX(I)V
    .registers 11

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    iget v5, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    iget v6, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    move v3, p1

    move v4, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalSlideView;->invalidate()V

    return-void
.end method

.method private getItemGap(I)F
    .registers 3

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->measureGap(I)F

    move-result v0

    return v0
.end method

.method private getItemWidth(I)F
    .registers 3

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->measureWidth(I)F

    move-result v0

    return v0
.end method

.method private scroll(I)V
    .registers 5

    const/4 v2, 0x0

    if-eqz p1, :cond_1a

    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    if-ge v0, v1, :cond_1b

    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    sub-int p1, v0, v1

    :cond_10
    :goto_10
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    invoke-virtual {v0, v1, v2, p1, v2}, Landroid/widget/Scroller;->startScroll(IIII)V

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalSlideView;->invalidate()V

    :cond_1a
    return-void

    :cond_1b
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    if-le v0, v1, :cond_10

    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    sub-int p1, v0, v1

    goto :goto_10
.end method

.method private select(I)V
    .registers 4

    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mSelectedItemIndex:I

    if-eq v0, p1, :cond_11

    iput p1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mSelectedItemIndex:I

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mOnItemSelectListener:Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mOnItemSelectListener:Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;

    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mSelectedItemIndex:I

    invoke-interface {v0, p0, v1}, Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;->onItemSelect(Lcom/android/camera/ui/HorizontalSlideView;I)V

    :cond_11
    return-void
.end method

.method private setPositionX(I)V
    .registers 4

    iput p1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    if-ge v0, v1, :cond_10

    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMinX:I

    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    :cond_c
    :goto_c
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalSlideView;->invalidate()V

    return-void

    :cond_10
    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    iget v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    if-le v0, v1, :cond_c

    iget v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    goto :goto_c
.end method


# virtual methods
.method protected init(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v17

    if-eqz v17, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->getCurrX()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/HorizontalSlideView;->invalidate()V

    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mOriginX:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v15, v17, v18

    const/4 v6, 0x0

    move v4, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/HorizontalSlideView;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v5, v17, v18

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1af

    const/4 v8, 0x0

    :goto_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_dc

    if-nez v8, :cond_b2

    const/4 v9, 0x1

    :goto_5f
    add-int/lit8 v17, v8, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getCount()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b4

    const/4 v10, 0x1

    :goto_72
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/camera/ui/HorizontalSlideView;->getItemWidth(I)F

    move-result v16

    const/high16 v17, 0x40000000    # 2.0f

    div-float v7, v16, v17

    if-eqz v9, :cond_b6

    const/4 v11, 0x0

    :goto_7f
    if-eqz v10, :cond_b8

    const/4 v14, 0x0

    :goto_82
    if-eqz v9, :cond_86

    sub-float v6, v15, v7

    :cond_86
    if-eqz v9, :cond_c3

    move v4, v15

    :goto_89
    if-eqz v13, :cond_a9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mOriginX:F

    move/from16 v17, v0

    sub-float v3, v4, v17

    const/16 v17, 0x0

    cmpg-float v17, v3, v17

    if-gtz v17, :cond_c6

    neg-float v0, v3

    move/from16 v17, v0

    add-float v18, v7, v14

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_c6

    :goto_a2
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/camera/ui/HorizontalSlideView;->select(I)V

    const/4 v13, 0x0

    move v12, v3

    :cond_a9
    if-eqz v10, :cond_d3

    const/16 v17, 0x0

    :goto_ad
    add-float v6, v6, v17

    add-int/lit8 v8, v8, 0x1

    goto :goto_4e

    :cond_b2
    const/4 v9, 0x0

    goto :goto_5f

    :cond_b4
    const/4 v10, 0x0

    goto :goto_72

    :cond_b6
    move v11, v14

    goto :goto_7f

    :cond_b8
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/camera/ui/HorizontalSlideView;->getItemGap(I)F

    move-result v17

    const/high16 v18, 0x40000000    # 2.0f

    div-float v14, v17, v18

    goto :goto_82

    :cond_c3
    add-float v4, v6, v7

    goto :goto_89

    :cond_c6
    const/16 v17, 0x0

    cmpl-float v17, v3, v17

    if-lez v17, :cond_a9

    add-float v17, v7, v11

    cmpg-float v17, v3, v17

    if-gtz v17, :cond_a9

    goto :goto_a2

    :cond_d3
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/camera/ui/HorizontalSlideView;->getItemGap(I)F

    move-result v17

    add-float v17, v17, v16

    goto :goto_ad

    :cond_dc
    sub-float v17, v4, v15

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/ui/HorizontalSlideView;->mMaxX:I

    const/4 v8, 0x0

    :goto_ea
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_1af

    if-nez v8, :cond_178

    const/4 v9, 0x1

    :goto_fb
    add-int/lit8 v17, v8, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getCount()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_17a

    const/4 v10, 0x1

    :goto_10e
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/camera/ui/HorizontalSlideView;->getItemWidth(I)F

    move-result v16

    const/high16 v17, 0x40000000    # 2.0f

    div-float v7, v16, v17

    if-eqz v9, :cond_11c

    sub-float v6, v15, v7

    :cond_11c
    if-eqz v9, :cond_17c

    move v4, v15

    :goto_11f
    add-float v17, v6, v16

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-ltz v17, :cond_16e

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/HorizontalSlideView;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpg-float v17, v6, v17

    if-gtz v17, :cond_16e

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getAlign(I)Landroid/graphics/Paint$Align;

    move-result-object v17

    sget-object v18, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_17f

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mSelectedItemIndex:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v0, v8, :cond_1a3

    const/16 v17, 0x1

    :goto_162
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->draw(ILandroid/graphics/Canvas;Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_16e
    if-eqz v10, :cond_1a6

    const/16 v17, 0x0

    :goto_172
    add-float v6, v6, v17

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_ea

    :cond_178
    const/4 v9, 0x0

    goto :goto_fb

    :cond_17a
    const/4 v10, 0x0

    goto :goto_10e

    :cond_17c
    add-float v4, v6, v7

    goto :goto_11f

    :cond_17f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getAlign(I)Landroid/graphics/Paint$Align;

    move-result-object v17

    sget-object v18, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_199

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_150

    :cond_199
    add-float v17, v6, v16

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_150

    :cond_1a3
    const/16 v17, 0x0

    goto :goto_162

    :cond_1a6
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/camera/ui/HorizontalSlideView;->getItemGap(I)F

    move-result v17

    add-float v17, v17, v16

    goto :goto_172

    :cond_1af
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mNeedJustify:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1d5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->isFinished()Z

    move-result v17

    if-eqz v17, :cond_1d5

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/HorizontalSlideView;->mNeedJustify:Z

    float-to-int v0, v12

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/camera/ui/HorizontalSlideView;->scroll(I)V

    :cond_1d5
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 7

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    int-to-float v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mOriginX:F

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalSlideView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_19

    iput-boolean v2, p0, Lcom/android/camera/ui/HorizontalSlideView;->mNeedJustify:Z

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalSlideView;->invalidate()V

    :cond_19
    return v0
.end method

.method public setDrawAdapter(Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;)V
    .registers 4

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    iput-boolean v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mNeedJustify:Z

    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    iput v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mSelectedItemIndex:I

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalSlideView;->invalidate()V

    return-void
.end method

.method public setOnItemSelectListener(Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/camera/ui/HorizontalSlideView;->mOnItemSelectListener:Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;

    return-void
.end method

.method public setSelection(I)V
    .registers 12

    const/4 v9, 0x0

    iget v8, p0, Lcom/android/camera/ui/HorizontalSlideView;->mSelectedItemIndex:I

    if-ne v8, p1, :cond_6

    return-void

    :cond_6
    iput-boolean v9, p0, Lcom/android/camera/ui/HorizontalSlideView;->mNeedJustify:Z

    iget-object v8, p0, Lcom/android/camera/ui/HorizontalSlideView;->mScroller:Landroid/widget/Scroller;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/Scroller;->forceFinished(Z)V

    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->select(I)V

    iget v6, p0, Lcom/android/camera/ui/HorizontalSlideView;->mOriginX:F

    const/4 v1, 0x0

    move v0, v6

    iget-object v8, p0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    if-eqz v8, :cond_5d

    iget-object v8, p0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    invoke-virtual {v8}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getCount()I

    move-result v8

    if-lt p1, v8, :cond_29

    iget-object v8, p0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    invoke-virtual {v8}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getCount()I

    move-result v8

    add-int/lit8 p1, v8, -0x1

    :cond_29
    const/4 v3, 0x0

    :goto_2a
    if-gt v3, p1, :cond_5d

    if-nez v3, :cond_50

    const/4 v4, 0x1

    :goto_2f
    add-int/lit8 v8, v3, 0x1

    iget-object v9, p0, Lcom/android/camera/ui/HorizontalSlideView;->mDrawAdapter:Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;

    invoke-virtual {v9}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;->getCount()I

    move-result v9

    if-ne v8, v9, :cond_52

    const/4 v5, 0x1

    :goto_3a
    invoke-direct {p0, v3}, Lcom/android/camera/ui/HorizontalSlideView;->getItemWidth(I)F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float v2, v7, v8

    if-eqz v4, :cond_46

    sub-float v1, v6, v2

    :cond_46
    if-eqz v4, :cond_54

    move v0, v6

    :goto_49
    if-eqz v5, :cond_57

    const/4 v8, 0x0

    :goto_4c
    add-float/2addr v1, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_50
    const/4 v4, 0x0

    goto :goto_2f

    :cond_52
    const/4 v5, 0x0

    goto :goto_3a

    :cond_54
    add-float v0, v1, v2

    goto :goto_49

    :cond_57
    invoke-direct {p0, v3}, Lcom/android/camera/ui/HorizontalSlideView;->getItemGap(I)F

    move-result v8

    add-float/2addr v8, v7

    goto :goto_4c

    :cond_5d
    sub-float v8, v0, v6

    float-to-int v8, v8

    iput v8, p0, Lcom/android/camera/ui/HorizontalSlideView;->mPositionX:I

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalSlideView;->invalidate()V

    return-void
.end method
