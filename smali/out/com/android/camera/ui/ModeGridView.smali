.class Lcom/android/camera/ui/ModeGridView;
.super Landroid/view/ViewGroup;
.source "ModeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ModeGridView$1;,
        Lcom/android/camera/ui/ModeGridView$2;,
        Lcom/android/camera/ui/ModeGridView$OnChangeListener;
    }
.end annotation


# static fields
.field private static INVALID_POSITION:I


# instance fields
.field private dragResponseMS:J

.field private isDrag:Z

.field private mChildHeight:I

.field private mChildWidth:I

.field private mColumnCount:I

.field private mDownScrollBorder:I

.field private mDownX:I

.field private mDownY:I

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragImageView:Landroid/widget/ImageView;

.field private mDragPosition:I

.field private mEnableDrag:Z

.field private mGridViewHonSpacing:I

.field private mGridViewMarginTop:I

.field private mGridViewMarginWidth:I

.field private mGridViewVerSpacing:I

.field private mHandler:Landroid/os/Handler;

.field private mLongClickRunnable:Ljava/lang/Runnable;

.field private mOffset2Left:I

.field private mOffset2Top:I

.field mParent:Lcom/android/camera/ui/ScreenView;

.field private mPoint2ItemLeft:I

.field private mPoint2ItemTop:I

.field private mRowCount:I

.field private mScreenIndex:I

.field private mScrollRunnable:Ljava/lang/Runnable;

.field private mStartDragItemView:Landroid/view/View;

.field private mStatusHeight:I

.field private mTouchFrame:Landroid/graphics/Rect;

.field private mUpScrollBorder:I

.field private mVibrator:Landroid/os/Vibrator;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;

.field private moveX:I

.field private moveY:I

.field private onChangeListener:Lcom/android/camera/ui/ModeGridView$OnChangeListener;


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/ModeGridView;)I
    .registers 2

    iget v0, p0, Lcom/android/camera/ui/ModeGridView;->mDownScrollBorder:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/ModeGridView;)I
    .registers 2

    iget v0, p0, Lcom/android/camera/ui/ModeGridView;->mDownX:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/camera/ui/ModeGridView;)Landroid/os/Vibrator;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/camera/ui/ModeGridView;)I
    .registers 2

    iget v0, p0, Lcom/android/camera/ui/ModeGridView;->moveX:I

    return v0
.end method

.method static synthetic -get12(Lcom/android/camera/ui/ModeGridView;)I
    .registers 2

    iget v0, p0, Lcom/android/camera/ui/ModeGridView;->moveY:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/camera/ui/ModeGridView;)I
    .registers 2

    iget v0, p0, Lcom/android/camera/ui/ModeGridView;->mDownY:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/camera/ui/ModeGridView;)Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mDragBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/camera/ui/ModeGridView;)I
    .registers 2

    iget v0, p0, Lcom/android/camera/ui/ModeGridView;->mDragPosition:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/camera/ui/ModeGridView;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/camera/ui/ModeGridView;)I
    .registers 2

    iget v0, p0, Lcom/android/camera/ui/ModeGridView;->mScreenIndex:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/camera/ui/ModeGridView;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mScrollRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/camera/ui/ModeGridView;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mStartDragItemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/camera/ui/ModeGridView;)I
    .registers 2

    iget v0, p0, Lcom/android/camera/ui/ModeGridView;->mUpScrollBorder:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/camera/ui/ModeGridView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/camera/ui/ModeGridView;->isDrag:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/ui/ModeGridView;)I
    .registers 2

    invoke-direct {p0}, Lcom/android/camera/ui/ModeGridView;->getFirstVisiblePosition()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/camera/ui/ModeGridView;Landroid/graphics/Bitmap;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ui/ModeGridView;->createDragImage(Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/camera/ui/ModeGridView;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/ModeGridView;->onSwapItem(II)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const/4 v0, -0x1

    sput v0, Lcom/android/camera/ui/ModeGridView;->INVALID_POSITION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/ui/ScreenView;IIIII)V
    .registers 11

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/camera/ui/ModeGridView;->dragResponseMS:J

    iput-boolean v2, p0, Lcom/android/camera/ui/ModeGridView;->isDrag:Z

    iput-boolean v2, p0, Lcom/android/camera/ui/ModeGridView;->mEnableDrag:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mStartDragItemView:Landroid/view/View;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/camera/ui/ModeGridView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/ModeGridView$1;-><init>(Lcom/android/camera/ui/ModeGridView;)V

    iput-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mLongClickRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/camera/ui/ModeGridView$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/ModeGridView$2;-><init>(Lcom/android/camera/ui/ModeGridView;)V

    iput-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/android/camera/ui/ModeGridView;->set(IIII)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ModeGridView;->setDrawingCacheEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/ModeGridView;->setWillNotDraw(Z)V

    invoke-direct {p0}, Lcom/android/camera/ui/ModeGridView;->initGridViewLayout()V

    invoke-direct {p0, p2, p7}, Lcom/android/camera/ui/ModeGridView;->initDrag(Lcom/android/camera/ui/ScreenView;I)V

    return-void
.end method

.method private createDragImage(Landroid/graphics/Bitmap;II)V
    .registers 8

    const/4 v3, -0x2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/camera/ui/ModeGridView;->mPoint2ItemLeft:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mOffset2Left:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/camera/ui/ModeGridView;->mPoint2ItemTop:I

    sub-int v1, p3, v1

    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mOffset2Top:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mStatusHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x3f0ccccd    # 0.55f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x18

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/camera/ui/ModeGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mDragImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mDragImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/camera/ui/ModeGridView;->mDragImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/ui/ModeGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private getFirstVisiblePosition()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method private initDrag(Lcom/android/camera/ui/ScreenView;I)V
    .registers 5

    iput-object p1, p0, Lcom/android/camera/ui/ModeGridView;->mParent:Lcom/android/camera/ui/ScreenView;

    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mVibrator:Landroid/os/Vibrator;

    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mWindowManager:Landroid/view/WindowManager;

    iput p2, p0, Lcom/android/camera/ui/ModeGridView;->mScreenIndex:I

    return-void
.end method

.method private initGridViewLayout()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/camera/ui/ModeGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ModeGridView;->mGridViewHonSpacing:I

    invoke-virtual {p0}, Lcom/android/camera/ui/ModeGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ModeGridView;->mGridViewVerSpacing:I

    sget v0, Lcom/android/camera/Util;->sWindowWidth:I

    iget v1, p0, Lcom/android/camera/ui/ModeGridView;->mChildWidth:I

    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mColumnCount:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/ModeGridView;->mGridViewHonSpacing:I

    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mColumnCount:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/ModeGridView;->mGridViewMarginWidth:I

    invoke-virtual {p0}, Lcom/android/camera/ui/ModeGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ModeGridView;->mGridViewMarginTop:I

    iget v0, p0, Lcom/android/camera/ui/ModeGridView;->mRowCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_51

    iget v0, p0, Lcom/android/camera/ui/ModeGridView;->mGridViewMarginTop:I

    iget v1, p0, Lcom/android/camera/ui/ModeGridView;->mChildHeight:I

    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mGridViewVerSpacing:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mRowCount:I

    rsub-int/lit8 v2, v2, 0x3

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ModeGridView;->mGridViewMarginTop:I

    :cond_51
    return-void
.end method

.method private isTouchInItem(Landroid/view/View;II)Z
    .registers 8

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    if-lt p2, v0, :cond_12

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v0

    if-le p2, v2, :cond_13

    :cond_12
    return v3

    :cond_13
    if-lt p3, v1, :cond_1c

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    if-le p3, v2, :cond_1d

    :cond_1c
    return v3

    :cond_1d
    const/4 v2, 0x1

    return v2
.end method

.method private onDragItem(II)V
    .registers 6

    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/camera/ui/ModeGridView;->mPoint2ItemLeft:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mOffset2Left:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/camera/ui/ModeGridView;->mPoint2ItemTop:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mOffset2Top:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mStatusHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/camera/ui/ModeGridView;->mDragImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/ui/ModeGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/ModeGridView;->onSwapItem(II)V

    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/ui/ModeGridView;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onStopDrag()V
    .registers 3

    iget v0, p0, Lcom/android/camera/ui/ModeGridView;->mDragPosition:I

    invoke-direct {p0}, Lcom/android/camera/ui/ModeGridView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ModeGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/camera/ui/ModeGridView;->removeDragImage()V

    return-void
.end method

.method private onSwapItem(II)V
    .registers 6

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/ModeGridView;->pointToPosition(II)I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/ModeGridView;->mDragPosition:I

    if-eq v0, v1, :cond_36

    sget v1, Lcom/android/camera/ui/ModeGridView;->INVALID_POSITION:I

    if-eq v0, v1, :cond_36

    invoke-direct {p0}, Lcom/android/camera/ui/ModeGridView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ModeGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget v1, p0, Lcom/android/camera/ui/ModeGridView;->mDragPosition:I

    invoke-direct {p0}, Lcom/android/camera/ui/ModeGridView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ModeGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/ui/ModeGridView;->onChangeListener:Lcom/android/camera/ui/ModeGridView$OnChangeListener;

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/android/camera/ui/ModeGridView;->onChangeListener:Lcom/android/camera/ui/ModeGridView$OnChangeListener;

    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mDragPosition:I

    invoke-interface {v1, v2, v0}, Lcom/android/camera/ui/ModeGridView$OnChangeListener;->onChange(II)V

    :cond_34
    iput v0, p0, Lcom/android/camera/ui/ModeGridView;->mDragPosition:I

    :cond_36
    return-void
.end method

.method private removeDragImage()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mDragImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/camera/ui/ModeGridView;->mDragImageView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/camera/ui/ModeGridView;->mDragImageView:Landroid/widget/ImageView;

    :cond_e
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    iget-boolean v2, p0, Lcom/android/camera/ui/ModeGridView;->mEnableDrag:Z

    if-nez v2, :cond_9

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_d0

    :cond_10
    :goto_10
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    :pswitch_15
    iget-object v2, p0, Lcom/android/camera/ui/ModeGridView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/ui/ModeGridView;->mLongClickRunnable:Ljava/lang/Runnable;

    iget-wide v4, p0, Lcom/android/camera/ui/ModeGridView;->dragResponseMS:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/camera/ui/ModeGridView;->mDownX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/camera/ui/ModeGridView;->mDownY:I

    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mDownX:I

    iget v3, p0, Lcom/android/camera/ui/ModeGridView;->mDownY:I

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/ui/ModeGridView;->pointToPosition(II)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/ModeGridView;->mDragPosition:I

    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mDragPosition:I

    sget v3, Lcom/android/camera/ui/ModeGridView;->INVALID_POSITION:I

    if-ne v2, v3, :cond_41

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    :cond_41
    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mDragPosition:I

    invoke-direct {p0}, Lcom/android/camera/ui/ModeGridView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/ModeGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/ModeGridView;->mStartDragItemView:Landroid/view/View;

    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mDownY:I

    iget-object v3, p0, Lcom/android/camera/ui/ModeGridView;->mStartDragItemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/camera/ui/ModeGridView;->mPoint2ItemTop:I

    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mDownX:I

    iget-object v3, p0, Lcom/android/camera/ui/ModeGridView;->mStartDragItemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/camera/ui/ModeGridView;->mPoint2ItemLeft:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/android/camera/ui/ModeGridView;->mDownY:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/camera/ui/ModeGridView;->mOffset2Top:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/android/camera/ui/ModeGridView;->mDownX:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/camera/ui/ModeGridView;->mOffset2Left:I

    invoke-virtual {p0}, Lcom/android/camera/ui/ModeGridView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/android/camera/ui/ModeGridView;->mDownScrollBorder:I

    invoke-virtual {p0}, Lcom/android/camera/ui/ModeGridView;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/android/camera/ui/ModeGridView;->mUpScrollBorder:I

    iget-object v2, p0, Lcom/android/camera/ui/ModeGridView;->mStartDragItemView:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v2, p0, Lcom/android/camera/ui/ModeGridView;->mStartDragItemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/ModeGridView;->mDragBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/camera/ui/ModeGridView;->mStartDragItemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->destroyDrawingCache()V

    goto/16 :goto_10

    :pswitch_a5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    iget-object v2, p0, Lcom/android/camera/ui/ModeGridView;->mStartDragItemView:Landroid/view/View;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/camera/ui/ModeGridView;->isTouchInItem(Landroid/view/View;II)Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, p0, Lcom/android/camera/ui/ModeGridView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/ui/ModeGridView;->mLongClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_10

    :pswitch_c0
    iget-object v2, p0, Lcom/android/camera/ui/ModeGridView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/ui/ModeGridView;->mLongClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/android/camera/ui/ModeGridView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/ui/ModeGridView;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_10

    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_c0
        :pswitch_a5
    .end packed-switch
.end method

.method protected doLayout(IIII)V
    .registers 7

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeGridView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_d

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ModeGridView;->layoutChildByIndex(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_d
    return-void
.end method

.method protected layoutChildByIndex(I)V
    .registers 9

    const/4 v5, 0x0

    iget v4, p0, Lcom/android/camera/ui/ModeGridView;->mColumnCount:I

    div-int v2, p1, v4

    iget v4, p0, Lcom/android/camera/ui/ModeGridView;->mColumnCount:I

    rem-int v0, p1, v4

    iget v4, p0, Lcom/android/camera/ui/ModeGridView;->mGridViewMarginWidth:I

    iget v6, p0, Lcom/android/camera/ui/ModeGridView;->mChildWidth:I

    mul-int/2addr v6, v0

    add-int/2addr v6, v4

    if-lez v0, :cond_31

    iget v4, p0, Lcom/android/camera/ui/ModeGridView;->mGridViewHonSpacing:I

    mul-int/2addr v4, v0

    :goto_14
    add-int v1, v6, v4

    iget v4, p0, Lcom/android/camera/ui/ModeGridView;->mGridViewMarginTop:I

    iget v6, p0, Lcom/android/camera/ui/ModeGridView;->mChildHeight:I

    mul-int/2addr v6, v2

    add-int/2addr v4, v6

    if-lez v2, :cond_21

    iget v5, p0, Lcom/android/camera/ui/ModeGridView;->mGridViewVerSpacing:I

    mul-int/2addr v5, v2

    :cond_21
    add-int v3, v4, v5

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ModeGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/ModeGridView;->mChildWidth:I

    add-int/2addr v5, v1

    iget v6, p0, Lcom/android/camera/ui/ModeGridView;->mChildHeight:I

    add-int/2addr v6, v3

    invoke-virtual {v4, v1, v3, v5, v6}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_31
    move v4, v5

    goto :goto_14
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

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/camera/ui/ModeGridView;->doLayout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 8

    const/high16 v4, 0x40000000    # 2.0f

    iget v0, p0, Lcom/android/camera/ui/ModeGridView;->mGridViewMarginWidth:I

    iget v1, p0, Lcom/android/camera/ui/ModeGridView;->mChildWidth:I

    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mColumnCount:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/ModeGridView;->mGridViewHonSpacing:I

    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mColumnCount:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/ModeGridView;->mGridViewMarginWidth:I

    add-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ui/ModeGridView;->measureDimension(II)I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/ModeGridView;->mGridViewMarginTop:I

    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mChildHeight:I

    iget v3, p0, Lcom/android/camera/ui/ModeGridView;->mRowCount:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mGridViewVerSpacing:I

    iget v3, p0, Lcom/android/camera/ui/ModeGridView;->mRowCount:I

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    invoke-virtual {p0, p2, v1}, Lcom/android/camera/ui/ModeGridView;->measureDimension(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/ModeGridView;->setMeasuredDimension(II)V

    iget v0, p0, Lcom/android/camera/ui/ModeGridView;->mChildWidth:I

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/ModeGridView;->mChildHeight:I

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/ModeGridView;->measureChildren(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    iget-boolean v0, p0, Lcom/android/camera/ui/ModeGridView;->isDrag:Z

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mDragImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_34

    :goto_f
    const/4 v0, 0x1

    return v0

    :pswitch_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/ModeGridView;->moveX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/ModeGridView;->moveY:I

    iget v0, p0, Lcom/android/camera/ui/ModeGridView;->moveX:I

    iget v1, p0, Lcom/android/camera/ui/ModeGridView;->moveY:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/ModeGridView;->onDragItem(II)V

    goto :goto_f

    :pswitch_27
    invoke-direct {p0}, Lcom/android/camera/ui/ModeGridView;->onStopDrag()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/ModeGridView;->isDrag:Z

    goto :goto_f

    :cond_2e
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_27
        :pswitch_11
    .end packed-switch
.end method

.method public pointToPosition(II)I
    .registers 8

    iget-object v2, p0, Lcom/android/camera/ui/ModeGridView;->mTouchFrame:Landroid/graphics/Rect;

    if-nez v2, :cond_d

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/camera/ui/ModeGridView;->mTouchFrame:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/camera/ui/ModeGridView;->mTouchFrame:Landroid/graphics/Rect;

    :cond_d
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeGridView;->getChildCount()I

    move-result v1

    add-int/lit8 v3, v1, -0x1

    :goto_13
    if-ltz v3, :cond_2c

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/ModeGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_29

    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_29

    return v3

    :cond_29
    add-int/lit8 v3, v3, -0x1

    goto :goto_13

    :cond_2c
    const/4 v4, -0x1

    return v4
.end method

.method public set(IIII)V
    .registers 7

    const/4 v1, 0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ModeGridView;->mRowCount:I

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ModeGridView;->mColumnCount:I

    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ModeGridView;->mChildHeight:I

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ModeGridView;->mChildWidth:I

    return-void
.end method
