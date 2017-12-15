.class public Lcom/android/camera/ui/HorizontalListView;
.super Landroid/widget/AdapterView;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/HorizontalListView$1;,
        Lcom/android/camera/ui/HorizontalListView$2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mAdapter:Landroid/widget/ListAdapter;

.field private mBlockNotification:Z

.field protected mCurrentX:I

.field private mDataChanged:Z

.field private mDataObserver:Landroid/database/DataSetObserver;

.field private mDisplayOffset:I

.field private mGesture:Landroid/view/GestureDetector;

.field private mIsScrollingPerformed:Z

.field private mItemWidth:I

.field private mLastSelectImageListItem:Landroid/view/View;

.field private mLeftViewIndex:I

.field private mMaxX:I

.field protected mNextX:I

.field private mOnGesture:Landroid/view/GestureDetector$OnGestureListener;

.field private mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mPaddingWidth:I

.field private mPresetWidth:I

.field private mPreviousSelectViewIndex:I

.field private mRemovedViewQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mRightViewIndex:I

.field protected mScroller:Landroid/widget/Scroller;

.field private mSelectCenter:Z

.field private mSelectViewIndex:I

.field private mTouchDown:Z


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/HorizontalListView;)I
    .registers 2

    iget v0, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/HorizontalListView;)Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/camera/ui/HorizontalListView;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/camera/ui/HorizontalListView;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/camera/ui/HorizontalListView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/camera/ui/HorizontalListView;->mBlockNotification:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/camera/ui/HorizontalListView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/camera/ui/HorizontalListView;->mDataChanged:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/camera/ui/HorizontalListView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/camera/ui/HorizontalListView;->mIsScrollingPerformed:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/ui/HorizontalListView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->justify()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/camera/ui/HorizontalListView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->reset()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/HorizontalListView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    iput v1, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxX:I

    iput v1, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    iput-boolean v1, p0, Lcom/android/camera/ui/HorizontalListView;->mDataChanged:Z

    const/16 v0, 0xa0

    iput v0, p0, Lcom/android/camera/ui/HorizontalListView;->mItemWidth:I

    iput v1, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    iput v1, p0, Lcom/android/camera/ui/HorizontalListView;->mPreviousSelectViewIndex:I

    iput v1, p0, Lcom/android/camera/ui/HorizontalListView;->mPresetWidth:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectCenter:Z

    new-instance v0, Lcom/android/camera/ui/HorizontalListView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/HorizontalListView$1;-><init>(Lcom/android/camera/ui/HorizontalListView;)V

    iput-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mDataObserver:Landroid/database/DataSetObserver;

    new-instance v0, Lcom/android/camera/ui/HorizontalListView$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/HorizontalListView$2;-><init>(Lcom/android/camera/ui/HorizontalListView;)V

    iput-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mOnGesture:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->initView()V

    return-void
.end method

.method private addAndMeasureChild(Landroid/view/View;I)V
    .registers 7

    const/4 v1, -0x1

    const/high16 v3, -0x80000000

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_e

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_e
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/camera/ui/HorizontalListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->getWidth()I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->getHeight()I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private cacheChildItem(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_f

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_f
    return-void
.end method

.method private fillList(I)V
    .registers 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    :cond_11
    invoke-direct {p0, v1, p1}, Lcom/android/camera/ui/HorizontalListView;->fillListRight(II)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    :cond_20
    invoke-direct {p0, v1, p1}, Lcom/android/camera/ui/HorizontalListView;->fillListLeft(II)V

    return-void
.end method

.method private fillListLeft(II)V
    .registers 8

    const/4 v4, 0x0

    :goto_1
    add-int v1, p1, p2

    if-lez v1, :cond_45

    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    if-ltz v1, :cond_45

    iget-object v2, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    iget-object v1, p0, Lcom/android/camera/ui/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {v2, v3, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectCenter:Z

    if-nez v1, :cond_41

    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    iget v2, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    if-ne v1, v2, :cond_41

    iput-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mLastSelectImageListItem:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    :goto_29
    invoke-direct {p0, v0, v4}, Lcom/android/camera/ui/HorizontalListView;->addAndMeasureChild(Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->getChildWidth()I

    move-result v1

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I

    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->getChildWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I

    goto :goto_1

    :cond_41
    invoke-virtual {v0, v4}, Landroid/view/View;->setActivated(Z)V

    goto :goto_29

    :cond_45
    return-void
.end method

.method private fillListRight(II)V
    .registers 8

    const/4 v4, 0x0

    :goto_1
    add-int v1, p1, p2

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_70

    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    iget-object v2, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_70

    iget-object v2, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    iget-object v1, p0, Lcom/android/camera/ui/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {v2, v3, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectCenter:Z

    if-nez v1, :cond_6c

    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    iget v2, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    if-ne v1, v2, :cond_6c

    iput-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mLastSelectImageListItem:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    :goto_33
    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/HorizontalListView;->addAndMeasureChild(Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->getChildWidth()I

    move-result v1

    add-int/2addr p1, v1

    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    iget-object v2, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_5f

    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mPaddingWidth:I

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->getChildWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxX:I

    :cond_5f
    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxX:I

    if-gez v1, :cond_65

    iput v4, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxX:I

    :cond_65
    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    goto :goto_1

    :cond_6c
    invoke-virtual {v0, v4}, Landroid/view/View;->setActivated(Z)V

    goto :goto_33

    :cond_70
    return-void
.end method

.method private getChildWidth()I
    .registers 2

    iget v0, p0, Lcom/android/camera/ui/HorizontalListView;->mItemWidth:I

    return v0
.end method

.method private declared-synchronized initView()V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/android/camera/ui/HorizontalListView;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/android/camera/ui/HorizontalListView;->mPresetWidth:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/camera/ui/HorizontalListView;->mCurrentX:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    const v2, 0x7fffffff

    iput v2, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxX:I

    iget-boolean v2, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectCenter:Z

    if-eqz v2, :cond_6d

    iget v2, p0, Lcom/android/camera/ui/HorizontalListView;->mPresetWidth:I

    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mItemWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/camera/ui/HorizontalListView;->mPaddingWidth:I

    iget v2, p0, Lcom/android/camera/ui/HorizontalListView;->mPaddingWidth:I

    iput v2, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I

    :goto_3e
    new-instance v2, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    new-instance v2, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/HorizontalListView;->mOnGesture:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/android/camera/ui/HorizontalListView;->mGesture:Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/android/camera/ui/HorizontalListView;->mLastSelectImageListItem:Landroid/view/View;

    if-eqz v2, :cond_63

    iget-object v2, p0, Lcom/android/camera/ui/HorizontalListView;->mLastSelectImageListItem:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setActivated(Z)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/ui/HorizontalListView;->mLastSelectImageListItem:Landroid/view/View;

    :cond_63
    iget-object v2, p0, Lcom/android/camera/ui/HorizontalListView;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/camera/ActivityBase;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/camera/ActivityBase;->loadCameraSound(I)V
    :try_end_6b
    .catchall {:try_start_1 .. :try_end_6b} :catchall_71

    monitor-exit p0

    return-void

    :cond_6d
    const/4 v2, 0x0

    :try_start_6e
    iput v2, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I
    :try_end_70
    .catchall {:try_start_6e .. :try_end_70} :catchall_71

    goto :goto_3e

    :catchall_71
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private justify()V
    .registers 7

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    iget v4, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    if-le v3, v4, :cond_2f

    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    iget v4, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    if-ge v3, v4, :cond_2f

    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    iget v4, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, p0, Lcom/android/camera/ui/HorizontalListView;->mItemWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/camera/ui/HorizontalListView;->mPresetWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0xa

    if-le v3, v4, :cond_32

    const/4 v2, 0x1

    :cond_2f
    :goto_2f
    if-nez v2, :cond_34

    return-void

    :cond_32
    const/4 v2, 0x0

    goto :goto_2f

    :cond_34
    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mPaddingWidth:I

    iget v4, p0, Lcom/android/camera/ui/HorizontalListView;->mItemWidth:I

    iget v5, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/camera/ui/HorizontalListView;->mItemWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/camera/ui/HorizontalListView;->mPresetWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int v1, v3, v4

    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mPaddingWidth:I

    mul-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/android/camera/ui/HorizontalListView;->mItemWidth:I

    iget-object v5, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/camera/ui/HorizontalListView;->mPresetWidth:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxX:I

    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxX:I

    if-le v1, v3, :cond_60

    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxX:I

    :cond_60
    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mCurrentX:I

    if-eq v1, v3, :cond_6d

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->isShown()Z

    move-result v3

    if-eqz v3, :cond_6e

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/HorizontalListView;->scrollTo(I)V

    :cond_6d
    :goto_6d
    return-void

    :cond_6e
    iput v1, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->requestLayout()V

    goto :goto_6d
.end method

.method private loadItems()V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_d

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_d
    return-void
.end method

.method private notifyItemSelect(Landroid/view/View;IJ)V
    .registers 12

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/ui/HorizontalListView;->mBlockNotification:Z

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_14
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_21
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mLastSelectImageListItem:Landroid/view/View;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mLastSelectImageListItem:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    :cond_2b
    iput-object p1, p0, Lcom/android/camera/ui/HorizontalListView;->mLastSelectImageListItem:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setActivated(Z)V

    return-void
.end method

.method private positionItems(I)V
    .registers 13

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_59

    iget v8, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I

    add-int/2addr v8, p1

    iput v8, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I

    iget v6, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I

    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->getChildWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->getHeight()I

    move-result v2

    iget v8, p0, Lcom/android/camera/ui/HorizontalListView;->mPresetWidth:I

    div-int/lit8 v0, v8, 0x2

    iget v8, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    add-int/lit8 v5, v8, 0x1

    const/4 v4, 0x0

    :goto_1f
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->getChildCount()I

    move-result v8

    if-ge v4, v8, :cond_59

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v8

    if-ge v8, v0, :cond_4d

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v8

    if-le v8, v0, :cond_4d

    const/4 v7, 0x1

    :goto_36
    add-int v8, v6, v3

    invoke-virtual {v1, v6, v10, v8, v2}, Landroid/view/View;->layout(IIII)V

    iget-boolean v8, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectCenter:Z

    if-eqz v8, :cond_47

    if-ge v6, v0, :cond_47

    add-int v8, v6, v3

    if-le v8, v0, :cond_47

    if-eqz v7, :cond_4f

    :cond_47
    :goto_47
    add-int/lit8 v5, v5, 0x1

    add-int/2addr v6, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_4d
    const/4 v7, 0x0

    goto :goto_36

    :cond_4f
    iget-object v8, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    invoke-direct {p0, v1, v5, v8, v9}, Lcom/android/camera/ui/HorizontalListView;->notifyItemSelect(Landroid/view/View;IJ)V

    goto :goto_47

    :cond_59
    return-void
.end method

.method private removeNonVisibleItems(I)V
    .registers 7

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_7
    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v3, p1

    if-gtz v3, :cond_29

    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I

    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->getChildWidth()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I

    invoke-direct {p0, v0}, Lcom/android/camera/ui/HorizontalListView;->cacheChildItem(Landroid/view/View;)V

    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_7

    :cond_29
    if-lez v1, :cond_30

    add-int/lit8 v3, v1, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/ui/HorizontalListView;->removeViewsInLayout(II)V

    :cond_30
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->getChildCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    move v2, v1

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_41
    if-eqz v0, :cond_5e

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->getWidth()I

    move-result v4

    if-lt v3, v4, :cond_5e

    invoke-direct {p0, v0}, Lcom/android/camera/ui/HorizontalListView;->cacheChildItem(Landroid/view/View;)V

    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_41

    :cond_5e
    if-le v1, v2, :cond_67

    add-int/lit8 v3, v2, 0x1

    sub-int v4, v1, v2

    invoke-virtual {p0, v3, v4}, Lcom/android/camera/ui/HorizontalListView;->removeViewsInLayout(II)V

    :cond_67
    return-void
.end method

.method private declared-synchronized reset()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->initView()V

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->removeAllViewsInLayout()V

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->requestLayout()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/HorizontalListView;->mGesture:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_4e

    :cond_1a
    :goto_1a
    :pswitch_1a
    return v0

    :pswitch_1b
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/HorizontalListView;->mTouchDown:Z

    iput-boolean v2, p0, Lcom/android/camera/ui/HorizontalListView;->mBlockNotification:Z

    goto :goto_1a

    :pswitch_21
    iget-object v1, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_2e

    iput-boolean v2, p0, Lcom/android/camera/ui/HorizontalListView;->mIsScrollingPerformed:Z

    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->justify()V

    :cond_2e
    iput-boolean v2, p0, Lcom/android/camera/ui/HorizontalListView;->mTouchDown:Z

    goto :goto_1a

    :cond_31
    iget-boolean v1, p0, Lcom/android/camera/ui/HorizontalListView;->mIsScrollingPerformed:Z

    if-eqz v1, :cond_1a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_5a

    :pswitch_3c
    goto :goto_1a

    :pswitch_3d
    iget-object v1, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_4a

    iput-boolean v2, p0, Lcom/android/camera/ui/HorizontalListView;->mIsScrollingPerformed:Z

    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->justify()V

    :cond_4a
    iput-boolean v2, p0, Lcom/android/camera/ui/HorizontalListView;->mTouchDown:Z

    goto :goto_1a

    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_21
        :pswitch_1a
        :pswitch_21
    .end packed-switch

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_3c
        :pswitch_3d
    .end packed-switch
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .registers 2

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getSelectedView()Landroid/view/View;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public isScrolling()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/ui/HorizontalListView;->mIsScrollingPerformed:Z

    return v0
.end method

.method protected onDown(Landroid/view/MotionEvent;)Z
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    return v1
.end method

.method protected onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 14

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    neg-float v2, p3

    float-to-int v3, v2

    iget v6, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxX:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_17

    monitor-exit p0

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->requestLayout()V

    const/4 v0, 0x1

    return v0

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onLayout(ZIIII)V
    .registers 14

    monitor-enter p0

    :try_start_1
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    iget-object v5, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_be

    if-nez v5, :cond_a

    monitor-exit p0

    return-void

    :cond_a
    const/4 v1, 0x0

    :try_start_b
    iget-boolean v5, p0, Lcom/android/camera/ui/HorizontalListView;->mDataChanged:Z

    if-eqz v5, :cond_1d

    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mCurrentX:I

    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->initView()V

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->removeAllViewsInLayout()V

    iput v3, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/camera/ui/HorizontalListView;->mDataChanged:Z

    const/4 v1, 0x1

    :cond_1d
    iget-object v5, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v5

    if-eqz v5, :cond_2d

    iget-object v5, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    :cond_2d
    iget v5, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    if-gtz v5, :cond_3a

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    iget-object v5, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_3a
    iget v5, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    iget v6, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxX:I

    if-lt v5, v6, :cond_4a

    iget v5, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxX:I

    iput v5, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    iget-object v5, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_4a
    iget v5, p0, Lcom/android/camera/ui/HorizontalListView;->mCurrentX:I

    iget v6, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    sub-int v2, v5, v6

    iget v5, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    iput v5, p0, Lcom/android/camera/ui/HorizontalListView;->mCurrentX:I

    invoke-direct {p0, v2}, Lcom/android/camera/ui/HorizontalListView;->removeNonVisibleItems(I)V

    invoke-direct {p0, v2}, Lcom/android/camera/ui/HorizontalListView;->fillList(I)V

    invoke-direct {p0, v2}, Lcom/android/camera/ui/HorizontalListView;->positionItems(I)V

    iget-object v5, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_67

    if-eqz v1, :cond_71

    :cond_67
    new-instance v5, Lcom/android/camera/ui/HorizontalListView$3;

    invoke-direct {v5, p0}, Lcom/android/camera/ui/HorizontalListView$3;-><init>(Lcom/android/camera/ui/HorizontalListView;)V

    invoke-virtual {p0, v5}, Lcom/android/camera/ui/HorizontalListView;->post(Ljava/lang/Runnable;)Z
    :try_end_6f
    .catchall {:try_start_b .. :try_end_6f} :catchall_be

    :cond_6f
    :goto_6f
    monitor-exit p0

    return-void

    :cond_71
    :try_start_71
    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->loadItems()V

    iget-object v5, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_6f

    iget-boolean v5, p0, Lcom/android/camera/ui/HorizontalListView;->mTouchDown:Z

    if-nez v5, :cond_6f

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/camera/ui/HorizontalListView;->mIsScrollingPerformed:Z

    iget-boolean v5, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectCenter:Z

    if-eqz v5, :cond_8f

    new-instance v5, Lcom/android/camera/ui/HorizontalListView$4;

    invoke-direct {v5, p0}, Lcom/android/camera/ui/HorizontalListView$4;-><init>(Lcom/android/camera/ui/HorizontalListView;)V

    invoke-virtual {p0, v5}, Lcom/android/camera/ui/HorizontalListView;->post(Ljava/lang/Runnable;)Z

    :cond_8f
    iget v5, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    iget v6, p0, Lcom/android/camera/ui/HorizontalListView;->mPreviousSelectViewIndex:I

    if-eq v5, v6, :cond_6f

    iget v5, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    iget v6, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    if-le v5, v6, :cond_b9

    iget v5, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    iget v6, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    if-gt v5, v6, :cond_b9

    iget v5, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    iget v6, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Lcom/android/camera/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v5, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    iget-object v6, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v7, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    invoke-interface {v6, v7}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v6

    invoke-direct {p0, v0, v5, v6, v7}, Lcom/android/camera/ui/HorizontalListView;->notifyItemSelect(Landroid/view/View;IJ)V

    :cond_b9
    iget v5, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    iput v5, p0, Lcom/android/camera/ui/HorizontalListView;->mPreviousSelectViewIndex:I
    :try_end_bd
    .catchall {:try_start_71 .. :try_end_bd} :catchall_be

    goto :goto_6f

    :catchall_be
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized scrollTo(I)V
    .registers 7

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/camera/ui/HorizontalListView;->mIsScrollingPerformed:Z

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    iget v2, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    sub-int v2, p1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/widget/Scroller;->startScroll(IIII)V

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->requestLayout()V
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-void

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 4

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/android/camera/ui/HorizontalListView;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_b
    iput-object p1, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/android/camera/ui/HorizontalListView;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->reset()V

    return-void
.end method

.method public setItemWidth(I)V
    .registers 4

    iput p1, p0, Lcom/android/camera/ui/HorizontalListView;->mItemWidth:I

    iget-boolean v0, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectCenter:Z

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/android/camera/ui/HorizontalListView;->mPresetWidth:I

    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mItemWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/HorizontalListView;->mPaddingWidth:I

    iget v0, p0, Lcom/android/camera/ui/HorizontalListView;->mPaddingWidth:I

    iput v0, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I

    :cond_13
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/camera/ui/HorizontalListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/camera/ui/HorizontalListView;->mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/camera/ui/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method public setSelection(I)V
    .registers 6

    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    if-ne v1, p1, :cond_5

    return-void

    :cond_5
    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    iput v1, p0, Lcom/android/camera/ui/HorizontalListView;->mPreviousSelectViewIndex:I

    iput p1, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/camera/ui/HorizontalListView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/camera/ActivityBase;->playCameraSound(I)V

    :cond_19
    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    if-le p1, v1, :cond_34

    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    if-ge p1, v1, :cond_34

    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-direct {p0, v0, p1, v2, v3}, Lcom/android/camera/ui/HorizontalListView;->notifyItemSelect(Landroid/view/View;IJ)V

    :cond_34
    iget-boolean v1, p0, Lcom/android/camera/ui/HorizontalListView;->mIsScrollingPerformed:Z

    if-nez v1, :cond_3b

    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->justify()V

    :cond_3b
    return-void
.end method
